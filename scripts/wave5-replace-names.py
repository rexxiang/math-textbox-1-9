#!/usr/bin/env python3
"""Wave 5 task 3d: replace student-name occurrences with diverse names.

Goal: replace at least 30 of the 50 occurrences across the book with names
from a diversified pool, while leaving a tail so the abstract-student quota
(≤ 30%) is met. Replaces in-place; logs each substitution.
"""
from __future__ import annotations

import os
import re
import sys

ROOT = os.path.normpath(os.path.join(os.path.dirname(__file__), ".."))
TYPST_DIR = os.path.join(ROOT, "typst")
LOG_FILE = os.path.join(ROOT, "docs", "review", "wave5-name-replacements.md")

STUDENT_NAMES = ["小明", "小红", "小华", "小李", "小王"]

POOL = [
    "Amara", "Priya", "Luca", "Rania", "Kofi", "Arjun", "Fatima", "Carlos",
    "张薇", "陈俊", "林晓梅", "王阳", "赵磊",
    "Mei", "Diego", "Yusuf",
]


def collect_occurrences():
    """Yield (path, byte_index, name) for each occurrence."""
    for root, _, files in os.walk(TYPST_DIR):
        for fn in files:
            if not fn.endswith(".typ"):
                continue
            full = os.path.join(root, fn)
            with open(full, "r", encoding="utf-8") as f:
                text = f.read()
            occs = []
            for name in STUDENT_NAMES:
                for m in re.finditer(re.escape(name), text):
                    occs.append((m.start(), name))
            occs.sort()
            for idx, n in occs:
                yield full, idx, n


def main() -> None:
    # Read all files; group occurrences by file.
    files_text: dict[str, str] = {}
    occurrences: list[tuple[str, int, str]] = []  # (file, position, name)
    for path, idx, name in collect_occurrences():
        if path not in files_text:
            with open(path, "r", encoding="utf-8") as f:
                files_text[path] = f.read()
        occurrences.append((path, idx, name))

    print(f"Total occurrences: {len(occurrences)}")
    target_replace = max(30, int(len(occurrences) * 0.6))
    print(f"Replacing {target_replace}…")

    # Replace strategy:
    # - Walk occurrences in order; map each (file, name) consistently to a pool name
    #   (so 小明 in file A always becomes Amara in file A, but a different choice in file B)
    # - Skip enough so that ≤ 30% of original occurrences remain unchanged abstract.
    # First, decide which to keep (≈ 20 left as-is to keep the corpus's flavor).
    keep_count = len(occurrences) - target_replace
    # Keep a deterministic spread of indices.
    keep_set = set()
    if keep_count > 0:
        step = len(occurrences) / keep_count
        for k in range(keep_count):
            keep_set.add(int(k * step))

    # File-local mapping from original name -> chosen replacement (one per file per orig name)
    file_name_map: dict[tuple[str, str], str] = {}
    pool_idx = 0
    log_lines = ["# Wave 5 人名替换记录", ""]

    # Apply replacements per file with offset bookkeeping.
    by_file: dict[str, list[tuple[int, str, int]]] = {}
    for i, (path, idx, name) in enumerate(occurrences):
        if i in keep_set:
            continue
        key = (path, name)
        if key not in file_name_map:
            file_name_map[key] = POOL[pool_idx % len(POOL)]
            pool_idx += 1
        by_file.setdefault(path, []).append((idx, name, i))

    for path, edits in by_file.items():
        text = files_text[path]
        # Apply from end to start to preserve byte indices.
        edits.sort(reverse=True)
        for idx, name, _i in edits:
            replacement = file_name_map[(path, name)]
            text = text[:idx] + replacement + text[idx + len(name):]
        files_text[path] = text
        rel = os.path.relpath(path, ROOT)
        log_lines.append(f"## `{rel}`")
        for idx, name, _i in sorted(edits):
            log_lines.append(f"- `{name}` → `{file_name_map[(path, name)]}`")
        log_lines.append("")

    # Write all files back.
    for path, text in files_text.items():
        with open(path, "w", encoding="utf-8") as f:
            f.write(text)

    # Write log.
    os.makedirs(os.path.dirname(LOG_FILE), exist_ok=True)
    with open(LOG_FILE, "w", encoding="utf-8") as f:
        f.write("\n".join(log_lines) + "\n")
    print(f"Done. Log: {LOG_FILE}")


if __name__ == "__main__":
    main()
