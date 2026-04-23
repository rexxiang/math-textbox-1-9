#!/usr/bin/env python3
"""
bootstrap_rebuild_tree.py — Scaffold the rebuilt Typst tree from book-graph.yaml.

Usage:
    python scripts/bootstrap_rebuild_tree.py <book-graph.yaml> <typst-root>

Example:
    python scripts/bootstrap_rebuild_tree.py docs/knowledge-graph/book-graph.yaml typst

The second argument is the Typst root directory (e.g. "typst").  YAML chapter
paths begin with that directory name (e.g. "typst/0-orientation/01-…"); the
script strips that leading component before joining with <typst-root>, so the
final on-disk path is always <typst-root>/<part>/<chapter>.

For every chapter listed in book-graph.yaml this script:
  1. Validates the chapter path lives under the expected typst tree.
  2. Creates the chapter directory inside <typst-root>.
  3. Writes 00-overview.typ and 99-review.typ as compile-safe stubs.

Safety:
  - Existing non-empty files are NEVER overwritten.
  - The script is idempotent: safe to rerun at any time.

No external dependencies beyond the standard library.
Reuses load_yaml() from validate_book_graph.py.
"""

import sys
from pathlib import Path

# ── Reuse load_yaml from validate_book_graph.py ──────────────────────────────
sys.path.insert(0, str(Path(__file__).parent))
from validate_book_graph import load_yaml  # noqa: E402


# ── Stub templates ────────────────────────────────────────────────────────────

OVERVIEW_TEMPLATE = """\
#import "../../lib/theme-v2.typ": blueprint, mastery

= {title_en} <{chapter_id}>

#blueprint[
  *难度*：{difficulty} \\
  *核心问题*：本章当前先锁定标题、难度、锚点与目录位置，保证 rebuilt tree 可以持续编译。 \\
  *前置旧工具*：见 `docs/knowledge-graph/book-graph.yaml` \\
  *回补入口*：本章正式回顾文件位于 `99-review.typ`
]
"""

REVIEW_TEMPLATE = """\
#import "../../lib/theme-v2.typ": blueprint, mastery

= 本章回顾 <meta:{meta_slug}>

#mastery[
- 本文件先锁定章末位置和编译入口。
- 正式速查卡、自测与答案在对应迁移计划中写入。
]
"""


def _validate_chapter_dir(typst_dir: Path, ch_rel: Path, ch_id: str, raw_path: str) -> str | None:
    """Return an error string if ch_rel is unsafe, else None.

    Rejects:
    - absolute paths
    - any '..' component in the relative portion
    - resolved paths that escape typst_dir
    """
    if ch_rel.is_absolute():
        return (
            f"chapter '{ch_id}' path '{raw_path}' produced an absolute "
            "sub-path after prefix strip — rejected"
        )
    if ".." in ch_rel.parts:
        return (
            f"chapter '{ch_id}' path '{raw_path}' contains '..' traversal "
            "after prefix strip — rejected"
        )
    resolved = (typst_dir / ch_rel).resolve()
    try:
        resolved.relative_to(typst_dir)
    except ValueError:
        return (
            f"chapter '{ch_id}' path '{raw_path}' resolves outside typst root "
            f"({resolved} is not under {typst_dir}) — rejected"
        )
    return None


def _safe_write(path: Path, content: str) -> str:
    """Write content to path only if the file is absent or empty.

    Returns: 'created' | 'skipped' | 'existed_empty_written'
    """
    if path.exists():
        if path.stat().st_size > 0:
            return "skipped"
        # File exists but is empty — fill the stub
        path.write_text(content, encoding="utf-8")
        return "existed_empty_written"
    path.write_text(content, encoding="utf-8")
    return "created"


def bootstrap(yaml_path: str, typst_root: str) -> None:
    typst_dir = Path(typst_root).resolve()
    # The YAML paths begin with the typst directory name (e.g. "typst/…").
    # We strip that leading component to get the path relative to typst_dir.
    yaml_prefix = typst_dir.name  # e.g. "typst"

    print(f"[bootstrap] typst root : {typst_dir}", file=sys.stderr)
    print(f"[bootstrap] book-graph : {yaml_path}", file=sys.stderr)
    print(f"[bootstrap] yaml prefix: {yaml_prefix}/", file=sys.stderr)

    data = load_yaml(yaml_path)
    chapters = data.get("chapters") or []

    if not chapters:
        print("[bootstrap] WARNING: no chapters found in YAML.", file=sys.stderr)
        return

    created = skipped = hard_errors = 0

    for ch in chapters:
        ch_id: str = ch.get("id", "")
        ch_path_str: str = ch.get("path", "")
        title_en: str = ch.get("title_en", ch_id)
        difficulty: int = ch.get("difficulty", 1)

        if not ch_path_str:
            print(f"[bootstrap] SKIP {ch_id!r}: no path field", file=sys.stderr)
            continue

        # YAML paths are "typst/<part>/<chapter>"; strip the leading "typst/"
        # component before joining with the resolved typst_dir.
        yaml_path_obj = Path(ch_path_str)
        try:
            ch_rel = yaml_path_obj.relative_to(yaml_prefix)
        except ValueError:
            print(
                f"[bootstrap] ERROR: chapter '{ch_id}' path '{ch_path_str}' "
                f"does not start with '{yaml_prefix}/' — rejected",
                file=sys.stderr,
            )
            hard_errors += 1
            continue

        # Reject path traversal and escapes before touching the filesystem.
        err = _validate_chapter_dir(typst_dir, ch_rel, ch_id, ch_path_str)
        if err:
            print(f"[bootstrap] ERROR: {err}", file=sys.stderr)
            hard_errors += 1
            continue

        ch_dir = typst_dir / ch_rel
        ch_dir.mkdir(parents=True, exist_ok=True)

        # Derive meta_slug: strip "ch:" prefix if present
        meta_slug = ch_id.removeprefix("ch:")

        # ── 00-overview.typ ───────────────────────────────────────────────
        overview_content = OVERVIEW_TEMPLATE.format(
            title_en=title_en,
            chapter_id=ch_id,
            difficulty=difficulty,
        )
        status = _safe_write(ch_dir / "00-overview.typ", overview_content)
        if status != "skipped":
            print(f"[bootstrap] {status:28s} {ch_path_str}/00-overview.typ")
            created += 1
        else:
            print(f"[bootstrap] {'skipped (non-empty)':28s} {ch_path_str}/00-overview.typ")
            skipped += 1

        # ── 99-review.typ ────────────────────────────────────────────────
        review_content = REVIEW_TEMPLATE.format(meta_slug=meta_slug)
        status = _safe_write(ch_dir / "99-review.typ", review_content)
        if status != "skipped":
            print(f"[bootstrap] {status:28s} {ch_path_str}/99-review.typ")
            created += 1
        else:
            print(f"[bootstrap] {'skipped (non-empty)':28s} {ch_path_str}/99-review.typ")
            skipped += 1

    print(
        f"\n[bootstrap] Done — {created} file(s) written, {skipped} skipped, "
        f"{hard_errors} invalid path error(s).",
        file=sys.stderr,
    )
    if hard_errors:
        sys.exit(1)


def main() -> None:
    if len(sys.argv) != 3:
        print(
            "Usage: bootstrap_rebuild_tree.py <book-graph.yaml> <typst-root>",
            file=sys.stderr,
        )
        sys.exit(1)
    bootstrap(sys.argv[1], sys.argv[2])


if __name__ == "__main__":
    main()
