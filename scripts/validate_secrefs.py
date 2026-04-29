#!/usr/bin/env python3
"""Validate that every #secref("...") in typst/ resolves to an anchor.

Anchors are <tool:...>, <ch:...>, <meta:...>.

A secref call "foo" with no prefix defaults to tool:foo (matches theme-v2).
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1] / "typst"
ANCHOR_RE = re.compile(r"<(tool|ch|meta):([^>]+)>")
SECREF_RE = re.compile(r'#secref\("([^"]+)"\)')


def main() -> int:
    tool, ch, meta = set(), set(), set()
    for p in ROOT.rglob("*.typ"):
        for kind, slug in ANCHOR_RE.findall(p.read_text(encoding="utf-8")):
            {"tool": tool, "ch": ch, "meta": meta}[kind].add(slug)

    broken: list[tuple[Path, int, str]] = []
    for p in ROOT.rglob("*.typ"):
        for lineno, line in enumerate(p.read_text(encoding="utf-8").splitlines(), 1):
            for slug in SECREF_RE.findall(line):
                if slug.startswith("ch:"):
                    if slug[3:] not in ch:
                        broken.append((p, lineno, slug))
                elif slug.startswith("meta:"):
                    if slug[5:] not in meta:
                        broken.append((p, lineno, slug))
                elif slug.startswith("tool:"):
                    if slug[5:] not in tool:
                        broken.append((p, lineno, slug))
                else:
                    if slug not in tool:
                        broken.append((p, lineno, slug))

    if broken:
        for path, lineno, slug in broken:
            print(f"{path}:{lineno}  unresolved secref: {slug}")
        print(f"--- {len(broken)} broken secref(s)")
        return 1
    print(f"[validate_secrefs] ✓ all #secref targets resolve")
    return 0


if __name__ == "__main__":
    sys.exit(main())
