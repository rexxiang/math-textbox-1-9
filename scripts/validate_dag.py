#!/usr/bin/env python3
"""
validate_dag.py  —  从 stdin 读取 YAML，验证 DAG，输出拓扑序

用法（管道）:
    python scripts/md_to_yaml.py docs/knowledge-graph/tool-dependencies.md | \
    python scripts/validate_dag.py

检查:
  1. concept_prereqs / example_prereqs 中无通配符（含 * 的 id）
  2. 所有引用的 id 在 tools 列表中存在
  3. 无环（Kahn 算法）
  4. 输出拓扑序到 stdout，供章节重排参考

退出码: 0=通过, 1=有错误
"""

import sys
from collections import defaultdict, deque


# ── 最小 YAML 解析器（只处理 md_to_yaml.py 的输出格式） ──────────────────

def parse_yaml_tools(lines: list[str]) -> list[dict]:
    """
    解析 md_to_yaml.py 输出的 YAML，返回 tool dict 列表。
    每个 dict 保证含: id, concept_prereqs(list), example_prereqs(list), flags(list)
    """
    tools: list[dict] = []
    current: dict | None = None
    current_list_key: str | None = None

    for raw_line in lines:
        line = raw_line.rstrip("\n")
        stripped = line.lstrip()

        if stripped.startswith("#") or not stripped:
            continue

        indent = len(line) - len(stripped)

        # 新工具: indent=2, "  - id: ..."
        if indent == 2 and stripped.startswith("- id:"):
            if current is not None:
                tools.append(current)
            raw_id = stripped[len("- id:"):].strip().strip('"').strip("'")
            current = {
                "id": raw_id,
                "concept_prereqs": [],
                "example_prereqs": [],
                "flags": [],
            }
            current_list_key = None
            continue

        if current is None:
            continue

        # 列表项: indent=6, "      - value"
        if indent == 6 and stripped.startswith("- ") and current_list_key:
            val = stripped[2:].strip().strip('"').strip("'")
            current[current_list_key].append(val)
            continue

        # 键值对: indent=4
        if ":" in stripped and indent == 4:
            key, _, val = stripped.partition(":")
            key = key.strip()
            val = val.strip().strip('"').strip("'")

            if key in ("concept_prereqs", "example_prereqs", "flags"):
                current_list_key = key if val == "" else None
            else:
                current_list_key = None
                if key in ("id", "name_zh", "definition_zh",
                           "source_file", "notes"):
                    current[key] = val

    if current is not None:
        tools.append(current)
    return tools


# ── 验证逻辑 ──────────────────────────────────────────────────────────────

def check_wildcards(tools: list[dict]) -> list[str]:
    errors: list[str] = []
    for t in tools:
        for field in ("concept_prereqs", "example_prereqs"):
            for ref in t.get(field, []):
                if "*" in ref:
                    errors.append(
                        f"[WILDCARD] {t['id']}: {field} 含通配符 {ref!r}，"
                        "请在 tool-dependencies.md 中直接展开"
                    )
    return errors


def check_missing_refs(tools: list[dict], known_ids: set[str]) -> list[str]:
    errors: list[str] = []
    for t in tools:
        for field in ("concept_prereqs", "example_prereqs"):
            for ref in t.get(field, []):
                if "*" not in ref and ref not in known_ids:
                    errors.append(
                        f"[MISSING_REF] {t['id']}: {field} 引用了不存在的 id {ref!r}"
                    )
    return errors


def kahn_sort(
    tools: list[dict], known_ids: set[str]
) -> tuple[list[str], list[str]]:
    """Returns (topo_order, cycle_nodes)"""
    in_degree: dict[str, int] = {t["id"]: 0 for t in tools}
    dependents: dict[str, list[str]] = defaultdict(list)

    for t in tools:
        seen: set[str] = set()
        for prereq in t.get("concept_prereqs", []) + t.get("example_prereqs", []):
            if prereq in known_ids and prereq not in seen:
                seen.add(prereq)
                in_degree[t["id"]] += 1
                dependents[prereq].append(t["id"])

    queue: deque[str] = deque(
        tid for tid, deg in in_degree.items() if deg == 0
    )
    topo_order: list[str] = []

    while queue:
        node = queue.popleft()
        topo_order.append(node)
        for dep in dependents.get(node, []):
            in_degree[dep] -= 1
            if in_degree[dep] == 0:
                queue.append(dep)

    cycle_nodes = [tid for tid, deg in in_degree.items() if deg > 0]
    return topo_order, cycle_nodes


# ── 主入口 ────────────────────────────────────────────────────────────────

def main() -> None:
    lines = sys.stdin.readlines()
    print("[validate_dag] 读取 stdin 完毕", file=sys.stderr)

    tools = parse_yaml_tools(lines)
    print(f"[validate_dag] 解析出 {len(tools)} 个工具", file=sys.stderr)

    known_ids: set[str] = {t["id"] for t in tools}
    tools_by_id: dict[str, dict] = {t["id"]: t for t in tools}

    all_errors: list[str] = []
    all_errors.extend(check_wildcards(tools))
    all_errors.extend(check_missing_refs(tools, known_ids))

    topo_order, cycle_nodes = kahn_sort(tools, known_ids)
    if cycle_nodes:
        all_errors.append(
            f"[CYCLE] 发现环，涉及 {len(cycle_nodes)} 个节点: "
            + ", ".join(sorted(cycle_nodes))
        )

    if all_errors:
        print(f"\n=== 验证失败: {len(all_errors)} 个错误 ===", file=sys.stderr)
        for err in all_errors:
            print(f"  {err}", file=sys.stderr)
        sys.exit(1)

    # 通过：输出拓扑序到 stdout
    print(f"# 拓扑序（教学顺序参考）— {len(topo_order)} 个工具")
    print("#")
    for i, tid in enumerate(topo_order, 1):
        name = tools_by_id.get(tid, {}).get("name_zh", "")
        print(f"{i:03d}. {tid}  — {name}")

    print(
        f"\n[validate_dag] ✓ 通过 — {len(tools)} 个工具，无环，所有引用已解析",
        file=sys.stderr,
    )


if __name__ == "__main__":
    main()
