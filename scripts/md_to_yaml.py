#!/usr/bin/env python3
"""
md_to_yaml.py  —  解析 tool-dependencies.md，输出 YAML 文本到 stdout

用法（管道）:
    python scripts/md_to_yaml.py docs/knowledge-graph/tool-dependencies.md | \
    python scripts/validate_dag.py

前提：MD 文件中不含通配符（* 已展开），否则 validate_dag.py 会报错。
"""

import re
import sys
import textwrap
from pathlib import Path


def _split_comma_outside_parens(s: str) -> list[str]:
    parts: list[str] = []
    depth = 0
    current: list[str] = []
    for ch in s:
        if ch in "([（【":
            depth += 1
            current.append(ch)
        elif ch in ")]）】":
            depth -= 1
            current.append(ch)
        elif ch == "," and depth == 0:
            parts.append("".join(current))
            current = []
        else:
            current.append(ch)
    if current:
        parts.append("".join(current))
    return parts


def parse_prereq_cell(cell: str) -> tuple[list[str], list[str]]:
    """Returns (ids, orphan_ids). Does NOT expand wildcards — they must be pre-expanded."""
    cell = cell.strip()
    if cell in ("—", "-", ""):
        return [], []

    ids: list[str] = []
    orphan_ids: list[str] = []

    for part in _split_comma_outside_parens(cell):
        part = part.strip()
        if not part or part == "—":
            continue

        is_orphan = "⚠" in part or "orphan-dep" in part
        clean = re.sub(r"⚠\s*", "", part)
        clean = re.sub(r"\(.*?\)", "", clean)
        clean = re.sub(r"（.*?）", "", clean).strip()

        backtick_ids = re.findall(r"`([^`]+)`", clean)
        if not backtick_ids:
            backtick_ids = [clean] if clean else []

        for raw_id in backtick_ids:
            raw_id = raw_id.strip()
            if raw_id:
                ids.append(raw_id)
                if is_orphan:
                    orphan_ids.append(raw_id)

    return ids, orphan_ids


def parse_md(md_path: Path) -> list[dict]:
    tools: list[dict] = []
    current_domain: int | None = None

    with md_path.open(encoding="utf-8") as f:
        for line in f:
            line = line.rstrip("\n")

            m = re.match(r"^## 第\s*(\d+)\s*域", line)
            if m:
                current_domain = int(m.group(1))
                continue

            if not line.startswith("|"):
                continue
            if re.match(r"^\|[\s\-|]+\|$", line.strip()) or "tool-id" in line:
                continue

            cols = [c.strip() for c in line.split("|")]
            while cols and cols[0] == "":
                cols.pop(0)
            while cols and cols[-1] == "":
                cols.pop()

            if len(cols) < 5:
                continue

            raw_id_cell, name_def, concept_raw, example_raw, source_raw = cols[:5]
            m2 = re.search(r"`([^`]+)`", raw_id_cell)
            if not m2:
                continue
            tool_id = m2.group(1).strip()

            concept_ids, concept_orphans = parse_prereq_cell(concept_raw)
            example_ids, example_orphans = parse_prereq_cell(example_raw)

            is_planned = "规划" in source_raw
            source_file = re.sub(r"\*\*\(规划\)\*\*\s*", "", source_raw).strip()

            flags: list[str] = []
            if is_planned:
                flags.append("planned")
            if concept_orphans or example_orphans:
                flags.append("orphan-dep-ref")

            if "—" in name_def:
                name_zh, _, definition_zh = name_def.partition("—")
            else:
                name_zh, definition_zh = name_def, ""

            tools.append({
                "id": tool_id,
                "name_zh": name_zh.strip(),
                "definition_zh": definition_zh.strip(),
                "domain": current_domain,
                "concept_prereqs": concept_ids,
                "example_prereqs": example_ids,
                "source_file": source_file,
                "flags": flags,
            })

    return tools


def yaml_str(s: str) -> str:
    if not s:
        return '""'
    needs_quote = any(ch in s for ch in ':#{}[]|>&*!,\'"') or s.startswith(" ")
    if needs_quote:
        return '"' + s.replace("\\", "\\\\").replace('"', '\\"') + '"'
    return s


def dump_yaml(tools: list[dict]) -> None:
    print(textwrap.dedent(f"""\
        # tool-dependencies YAML (generated from tool-dependencies.md)
        meta:
          schema_version: "1.0"
          total_tools: {len(tools)}
        """))
    print("tools:")
    for tool in tools:
        print(f"  - id: {yaml_str(tool['id'])}")
        print(f"    name_zh: {yaml_str(tool['name_zh'])}")
        print(f"    definition_zh: {yaml_str(tool['definition_zh'])}")
        if tool["domain"] is not None:
            print(f"    domain: {tool['domain']}")

        def print_list(key: str, items: list[str]) -> None:
            if not items:
                print(f"    {key}: []")
            else:
                print(f"    {key}:")
                for item in items:
                    print(f"      - {yaml_str(item)}")

        print_list("concept_prereqs", tool["concept_prereqs"])
        print_list("example_prereqs", tool["example_prereqs"])
        print(f"    source_file: {yaml_str(tool['source_file'])}")
        print_list("flags", tool["flags"])


def main() -> None:
    if len(sys.argv) != 2:
        print("用法: md_to_yaml.py <tool-dependencies.md>", file=sys.stderr)
        sys.exit(1)
    md_path = Path(sys.argv[1])
    if not md_path.exists():
        print(f"错误: 找不到 {md_path}", file=sys.stderr)
        sys.exit(1)
    tools = parse_md(md_path)
    print(f"[md_to_yaml] 解析出 {len(tools)} 个工具", file=sys.stderr)
    dump_yaml(tools)


if __name__ == "__main__":
    main()
