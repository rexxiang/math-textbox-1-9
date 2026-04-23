#!/usr/bin/env python3
"""
validate_book_graph.py — 验证 book-graph.yaml 语义知识图谱

用法:
    python scripts/validate_book_graph.py docs/knowledge-graph/book-graph.yaml

检查:
  1. 顶级键 meta / parts / chapters / nodes 存在
  2. part-id、chapter-id、node-id 唯一性
  3. node.type 必填，限于 knowledge-point | chapter-meta | optional-bridge
  4. node.chapter 必填，且必须引用已存在的 chapter-id
  5. 每个 prerequisite 引用已存在的 node-id 或 chapter-id
  6. node prerequisites 无环（Kahn 算法）

无外部依赖（纯标准库）。

退出码: 0=通过, 1=有错误
"""

import sys
from collections import defaultdict, deque


REQUIRED_TOP_KEYS = {"meta", "parts", "chapters", "nodes"}
VALID_NODE_TYPES = {"knowledge-point", "chapter-meta", "optional-bridge"}

# ── 最小 YAML 解析器 ────────────────────────────────────────────────────────


def _scalar(val: str):
    """Parse a simple YAML scalar (string, int, bool). Strips surrounding quotes."""
    v = val.strip()
    if (v.startswith('"') and v.endswith('"')) or (
        v.startswith("'") and v.endswith("'")
    ):
        return v[1:-1]
    if v.lower() == "true":
        return True
    if v.lower() == "false":
        return False
    try:
        return int(v)
    except ValueError:
        pass
    return v


def _parse_value(val: str):
    """Parse a YAML value: inline flow list `[a, b, ...]` or scalar.

    Inline flow lists (`[n1]`, `[n1, n2]`) are parsed into Python lists.
    Empty flow list `[]` returns [].  Everything else delegates to _scalar.
    """
    v = val.strip()
    if v.startswith("[") and v.endswith("]"):
        inner = v[1:-1].strip()
        if not inner:
            return []
        return [_scalar(item.strip()) for item in inner.split(",")]
    return _scalar(v)


_BLOCK_SCALAR_INDICATORS = {">" , "|", ">-", "|-", ">+", "|+"}


def load_yaml(path: str) -> dict:
    """
    Minimal line-by-line parser for book-graph.yaml.

    Handles:
      - Top-level keys mapping to dicts (meta) or lists (parts/chapters/nodes)
      - `key: []` empty list shorthand
      - YAML block scalars (`>` / `|`) — value captured as empty string,
        continuation lines skipped
      - List-of-dicts with up to one level of nested lists (prerequisites)
    """
    with open(path, encoding="utf-8") as f:
        lines = f.readlines()

    data: dict = {}
    top_key: str | None = None
    in_block_scalar = False
    block_scalar_min_indent = 0
    cur_item: dict | None = None      # current list-item dict
    cur_nested_key: str | None = None  # key in cur_item holding a nested list

    for raw in lines:
        line = raw.rstrip("\n")
        stripped = line.lstrip()
        indent = len(line) - len(stripped)

        # Always skip blank and comment lines
        if not stripped or stripped.startswith("#"):
            continue

        # Exit block-scalar mode when indentation drops back to anchor level
        if in_block_scalar:
            if indent > block_scalar_min_indent:
                continue  # still inside block-scalar content — skip
            in_block_scalar = False

        # ── indent 0: top-level key ──────────────────────────────────────
        if indent == 0 and ":" in stripped and not stripped.startswith("-"):
            key, _, val = stripped.partition(":")
            top_key = key.strip()
            val = val.strip()
            cur_item = None
            cur_nested_key = None
            if val == "[]":
                data[top_key] = []
            elif val in _BLOCK_SCALAR_INDICATORS:
                data[top_key] = ""
                in_block_scalar = True
                block_scalar_min_indent = 0
            elif val == "":
                data[top_key] = None  # container; type determined by next line
            else:
                data[top_key] = _scalar(val)
            continue

        if top_key is None:
            continue

        # ── indent 2 ─────────────────────────────────────────────────────
        if indent == 2:
            if stripped.startswith("- "):
                # Start of a list item
                if data[top_key] is None:
                    data[top_key] = []
                rest = stripped[2:].strip()
                cur_item = {}
                cur_nested_key = None
                data[top_key].append(cur_item)
                if ":" in rest:
                    k, _, v = rest.partition(":")
                    k = k.strip()
                    v = v.strip()
                    if v in _BLOCK_SCALAR_INDICATORS:
                        cur_item[k] = ""
                        in_block_scalar = True
                        block_scalar_min_indent = 2
                    elif v == "[]":
                        cur_item[k] = []
                        cur_nested_key = None
                    elif v == "":
                        cur_item[k] = []
                        cur_nested_key = k
                    else:
                        cur_item[k] = _parse_value(v)
                        cur_nested_key = None
            elif ":" in stripped:
                # Dict field at indent 2 (e.g. meta sub-keys)
                if data[top_key] is None:
                    data[top_key] = {}
                if isinstance(data[top_key], dict):
                    k, _, v = stripped.partition(":")
                    k = k.strip()
                    v = v.strip()
                    if v in _BLOCK_SCALAR_INDICATORS:
                        data[top_key][k] = ""
                        in_block_scalar = True
                        block_scalar_min_indent = 2
                    else:
                        data[top_key][k] = _scalar(v)
            continue

        # ── indent 4: dict field inside a list item ───────────────────────
        if indent == 4 and cur_item is not None:
            if ":" in stripped and not stripped.startswith("-"):
                k, _, v = stripped.partition(":")
                k = k.strip()
                v = v.strip()
                if v in _BLOCK_SCALAR_INDICATORS:
                    cur_item[k] = ""
                    in_block_scalar = True
                    block_scalar_min_indent = 4
                    cur_nested_key = None
                elif v == "[]":
                    cur_item[k] = []
                    cur_nested_key = None
                elif v == "":
                    cur_item[k] = []
                    cur_nested_key = k
                else:
                    cur_item[k] = _parse_value(v)
                    cur_nested_key = None
            continue

        # ── indent 6: nested list value ───────────────────────────────────
        if indent == 6 and cur_item is not None and cur_nested_key and stripped.startswith("- "):
            val = stripped[2:].strip()
            cur_item[cur_nested_key].append(_scalar(val))
            continue

    return data


# ── 检查函数 ───────────────────────────────────────────────────────────────


def check_top_level_keys(data: dict) -> list[str]:
    errors: list[str] = []
    missing = REQUIRED_TOP_KEYS - data.keys()
    for key in sorted(missing):
        errors.append(f"[MISSING_KEY] 顶级键缺失: '{key}'")
    return errors


def check_part_ids(parts: list) -> tuple[list[str], set[str]]:
    """Returns (errors, part_id_set)"""
    errors: list[str] = []
    seen: set[str] = set()
    ids: set[str] = set()
    for i, part in enumerate(parts):
        if not isinstance(part, dict):
            errors.append(f"[INVALID] parts[{i}] 不是映射")
            continue
        pid = part.get("id")
        if not pid:
            errors.append(f"[MISSING_FIELD] parts[{i}] 缺少 'id' 字段")
            continue
        if pid in seen:
            errors.append(f"[DUPLICATE] part-id 重复: '{pid}'")
        else:
            seen.add(pid)
            ids.add(pid)
    return errors, ids


def check_chapter_ids(chapters: list, part_ids: set[str]) -> tuple[list[str], set[str]]:
    """Returns (errors, chapter_id_set)"""
    errors: list[str] = []
    seen: set[str] = set()
    ids: set[str] = set()
    for i, ch in enumerate(chapters):
        if not isinstance(ch, dict):
            errors.append(f"[INVALID] chapters[{i}] 不是映射")
            continue
        cid = ch.get("id")
        if not cid:
            errors.append(f"[MISSING_FIELD] chapters[{i}] 缺少 'id' 字段")
            continue
        if cid in seen:
            errors.append(f"[DUPLICATE] chapter-id 重复: '{cid}'")
        else:
            seen.add(cid)
            ids.add(cid)
        # chapter must reference a known part
        part = ch.get("part")
        if part and part not in part_ids:
            errors.append(
                f"[MISSING_REF] chapter '{cid}' 引用了不存在的 part-id '{part}'"
            )
    return errors, ids


def check_nodes(
    nodes: list, chapter_ids: set[str]
) -> tuple[list[str], set[str], dict[str, list[str]]]:
    """Returns (errors, node_id_set, prereq_map)"""
    errors: list[str] = []
    seen: set[str] = set()
    ids: set[str] = set()
    prereq_map: dict[str, list[str]] = {}

    for i, node in enumerate(nodes):
        if not isinstance(node, dict):
            errors.append(f"[INVALID] nodes[{i}] 不是映射")
            continue
        nid = node.get("id")
        if not nid:
            errors.append(f"[MISSING_FIELD] nodes[{i}] 缺少 'id' 字段")
            continue
        if nid in seen:
            errors.append(f"[DUPLICATE] node-id 重复: '{nid}'")
        else:
            seen.add(nid)
            ids.add(nid)

        # type is required and must be a valid value
        ntype = node.get("type")
        if not ntype:
            errors.append(f"[MISSING_FIELD] node '{nid}' 缺少必填字段 'type'")
        elif ntype not in VALID_NODE_TYPES:
            errors.append(
                f"[INVALID_TYPE] node '{nid}' 的 type '{ntype}' 无效；"
                f"允许值: {sorted(VALID_NODE_TYPES)}"
            )

        # chapter is required and must reference an existing chapter-id
        ch_ref = node.get("chapter")
        if not ch_ref:
            errors.append(f"[MISSING_FIELD] node '{nid}' 缺少必填字段 'chapter'")
        elif ch_ref not in chapter_ids:
            errors.append(
                f"[MISSING_REF] node '{nid}' 的 chapter '{ch_ref}' 不存在"
            )

        prereqs = node.get("prerequisites") or []
        if not isinstance(prereqs, list):
            prereqs = [prereqs]
        prereq_map[nid] = prereqs

    return errors, ids, prereq_map


def check_prereq_refs(
    prereq_map: dict[str, list[str]],
    node_ids: set[str],
    chapter_ids: set[str],
) -> list[str]:
    errors: list[str] = []
    valid_refs = node_ids | chapter_ids
    for nid, prereqs in prereq_map.items():
        for ref in prereqs:
            if ref not in valid_refs:
                errors.append(
                    f"[MISSING_REF] node '{nid}' 的 prerequisite '{ref}' "
                    "既不是已知 node-id 也不是已知 chapter-id"
                )
    return errors


def check_cycles(
    node_ids: set[str], prereq_map: dict[str, list[str]]
) -> list[str]:
    """Kahn's algorithm — only considers node→node edges (chapter refs are leaves)."""
    in_degree: dict[str, int] = {nid: 0 for nid in node_ids}
    dependents: dict[str, list[str]] = defaultdict(list)

    for nid, prereqs in prereq_map.items():
        seen_in_node: set[str] = set()
        for ref in prereqs:
            if ref in node_ids and ref not in seen_in_node:
                seen_in_node.add(ref)
                in_degree[nid] += 1
                dependents[ref].append(nid)

    queue: deque[str] = deque(nid for nid, deg in in_degree.items() if deg == 0)
    visited = 0
    while queue:
        node = queue.popleft()
        visited += 1
        for dep in dependents.get(node, []):
            in_degree[dep] -= 1
            if in_degree[dep] == 0:
                queue.append(dep)

    cycle_nodes = [nid for nid, deg in in_degree.items() if deg > 0]
    if cycle_nodes:
        return [
            f"[CYCLE] prerequisites 中存在环，涉及 {len(cycle_nodes)} 个节点: "
            + ", ".join(sorted(cycle_nodes))
        ]
    return []


# ── 主入口 ─────────────────────────────────────────────────────────────────


def main() -> None:
    if len(sys.argv) != 2:
        print("用法: validate_book_graph.py <book-graph.yaml>", file=sys.stderr)
        sys.exit(1)

    path = sys.argv[1]
    print(f"[validate_book_graph] 载入 {path}", file=sys.stderr)
    data = load_yaml(path)

    all_errors: list[str] = []

    # 1. Top-level keys
    all_errors.extend(check_top_level_keys(data))
    if all_errors:
        # Cannot proceed without required keys
        _report(all_errors)

    parts = data.get("parts") or []
    chapters = data.get("chapters") or []
    nodes = data.get("nodes") or []

    # 2. Part IDs
    part_errs, part_ids = check_part_ids(parts)
    all_errors.extend(part_errs)

    # 3. Chapter IDs
    ch_errs, chapter_ids = check_chapter_ids(chapters, part_ids)
    all_errors.extend(ch_errs)

    # 4. Node IDs, types, chapter refs
    node_errs, node_ids, prereq_map = check_nodes(nodes, chapter_ids)
    all_errors.extend(node_errs)

    # 5. Prerequisite references
    all_errors.extend(check_prereq_refs(prereq_map, node_ids, chapter_ids))

    # 6. Cycle detection
    all_errors.extend(check_cycles(node_ids, prereq_map))

    _report(all_errors, parts=parts, chapters=chapters, nodes=nodes)


def _report(
    errors: list[str],
    parts: list | None = None,
    chapters: list | None = None,
    nodes: list | None = None,
) -> None:
    if errors:
        print(f"\n=== 验证失败: {len(errors)} 个错误 ===", file=sys.stderr)
        for err in errors:
            print(f"  {err}", file=sys.stderr)
        sys.exit(1)

    print(
        f"[validate_book_graph] ✓ 通过 — "
        f"{len(parts or [])} 个 part, "
        f"{len(chapters or [])} 个 chapter, "
        f"{len(nodes or [])} 个 node，无重复，无缺失引用，无环",
        file=sys.stderr,
    )
    sys.exit(0)


if __name__ == "__main__":
    main()
