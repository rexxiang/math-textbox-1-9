#!/usr/bin/env python3
"""Validate that optional high-school bridge notes stay outside the mainline.

Checks:
  1. Typst blocks marked "☞ 高中桥" / "☞ 继续往前" (and high-school
     bridge summary headings) include a nearby isolation note.
  2. book-graph.yaml node prerequisites / dependencies do not point at
     appendices, future-bridge paths, or optional-bridge nodes.

Pure standard library.
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

from validate_book_graph import NODE_DEPENDENCY_FIELDS, load_yaml


ROOT = Path(__file__).resolve().parents[1]
TYPST_ROOT = ROOT / "typst"
BOOK_GRAPH = ROOT / "docs" / "knowledge-graph" / "book-graph.yaml"

EXTENSION_START_RE = re.compile(
    r"(☞\s*(高中桥|继续往前))|(^\s*=+\s+.*高中桥)|速查卡：.*高中桥"
)
ISOLATION_PHRASES = (
    "不作为后续主线先修",
    "不影响本章主线",
    "可选延伸，不影响主线",
    "不进入主线",
    "不写入 readiness",
    "不计入本章主线",
)
EXTENSION_HINT_RE = re.compile(r"(可选|选做|高中|延伸|预告|向前看|继续往前|高中桥)", re.I)
NON_MAINLINE_RE = re.compile(
    r"(不\s*(?:进入|作为|影响|写入|纳入|计入|列入|成为|算作|要求)|"
    r"无需|不必|不是.{0,12}(?:先修|前置|必备)|只(?:是|作).{0,12}(?:预告|延伸))",
    re.I,
)
MAINLINE_SCOPE_RE = re.compile(r"(主线|先修|readiness|前置|必备|后续)", re.I)
FUTURE_REF_KEYWORDS = (
    "appendix",
    "appendices",
    "future-bridges",
    "future_bridge",
    "high-school",
    "high_school",
    "optional-bridge",
    "高中桥",
)


def _as_list(value) -> list:
    if value is None:
        return []
    if isinstance(value, list):
        return value
    return [value]


def has_isolation_note(window: str) -> bool:
    """Return True if a nearby note clearly marks extension content as optional.

    Keep the historical exact phrase list as a fallback, then accept phrasing
    variants that combine:
      - optional / high-school / extension context,
      - non-mainline wording,
      - a mainline / prerequisite / readiness scope.
    """
    if any(phrase in window for phrase in ISOLATION_PHRASES):
        return True
    return (
        EXTENSION_HINT_RE.search(window) is not None
        and NON_MAINLINE_RE.search(window) is not None
        and MAINLINE_SCOPE_RE.search(window) is not None
    )


def validate_typst_extension_notes() -> list[str]:
    errors: list[str] = []
    for path in sorted(TYPST_ROOT.rglob("*.typ")):
        rel = path.relative_to(ROOT)
        lines = path.read_text(encoding="utf-8").splitlines()
        for index, line in enumerate(lines):
            stripped = line.strip()
            if stripped.startswith("//"):
                continue
            if not EXTENSION_START_RE.search(line):
                continue
            start = max(0, index - 8)
            end = min(len(lines), index + 16)
            window = "\n".join(lines[start:end])
            if not has_isolation_note(window):
                errors.append(
                    f"[EXTENSION_BOUNDARY] {rel}:{index + 1} "
                    "高中桥/继续往前块附近缺少隔离说明；请加入“这只是向前看的预告，不作为后续主线先修。”"
                )
    return errors


def _is_future_ref(ref: str, item: dict | None) -> bool:
    haystack = ref
    if item:
        haystack += " " + str(item.get("id", ""))
        haystack += " " + str(item.get("path", ""))
        haystack += " " + str(item.get("title_zh", ""))
        haystack += " " + str(item.get("title_en", ""))
        haystack += " " + str(item.get("type", ""))
        if item.get("type") == "optional-bridge":
            return True
    lower = haystack.lower()
    return any(keyword.lower() in lower for keyword in FUTURE_REF_KEYWORDS)


def validate_graph_extension_refs() -> list[str]:
    data = load_yaml(str(BOOK_GRAPH))
    nodes = data.get("nodes") or []
    chapters = data.get("chapters") or []
    node_by_id = {
        node.get("id"): node for node in nodes if isinstance(node, dict) and node.get("id")
    }
    chapter_by_id = {
        ch.get("id"): ch for ch in chapters if isinstance(ch, dict) and ch.get("id")
    }

    errors: list[str] = []
    for node in nodes:
        if not isinstance(node, dict):
            continue
        nid = node.get("id", "<unknown>")
        for field in NODE_DEPENDENCY_FIELDS:
            for ref in _as_list(node.get(field)):
                target = node_by_id.get(ref) or chapter_by_id.get(ref)
                if _is_future_ref(str(ref), target):
                    errors.append(
                        f"[EXTENSION_GRAPH_REF] node '{nid}' 的 {field} "
                        f"引用了高中桥/附录/可选桥目标 '{ref}'"
                    )

    for chapter in chapters:
        if not isinstance(chapter, dict):
            continue
        cid = chapter.get("id", "<unknown>")
        for ref in _as_list(chapter.get("prerequisites")):
            target = chapter_by_id.get(ref) or node_by_id.get(ref)
            if _is_future_ref(str(ref), target):
                errors.append(
                    f"[EXTENSION_GRAPH_REF] chapter '{cid}' 的 prerequisites "
                    f"引用了高中桥/附录/可选桥目标 '{ref}'"
                )
    return errors


def main() -> int:
    errors = validate_typst_extension_notes()
    errors.extend(validate_graph_extension_refs())
    if errors:
        for error in errors:
            print(error, file=sys.stderr)
        print(f"[validate_extension_boundaries] ✗ {len(errors)} error(s)", file=sys.stderr)
        return 1
    print("[validate_extension_boundaries] ✓ extension boundaries are isolated")
    return 0


if __name__ == "__main__":
    sys.exit(main())
