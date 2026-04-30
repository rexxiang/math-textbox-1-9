#!/usr/bin/env python3
"""Validate bridge readiness contracts.

Checks that each branch-entry readiness file contains the five required
contract parts: mastered prior tools, common misjudgment, repair route,
passing standard, and signal to continue.

Pure standard library.
"""
from __future__ import annotations

import re
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
READINESS_DIR = ROOT / "typst" / "2-common-bridges" / "08-bridge-readiness-contracts"
READINESS_FILES = (
    "01-ready-for-algebra.typ",
    "02-ready-for-geometry-proof.typ",
    "03-ready-for-functions.typ",
    "04-ready-for-data.typ",
)

REQUIRED_PATTERNS: dict[str, tuple[str, ...]] = {
    "已掌握旧工具": (
        r"已掌握",
        r"前面学过的知识",
        r"已经会",
        r"已会",
        r"旧工具",
        r"前置工具",
    ),
    "常见误判": (
        r"常见.*误判",
        r"最常见的误判",
        r"常见错误",
        r"误区",
        r"容易.*误判",
    ),
    "回补或查漏": (
        r"回补",
        r"查漏",
        r"哪里不会回哪里",
        r"忘了可以回到",
        r"卡在哪一类题",
        r"补一补",
    ),
    "通过标准": (
        r"通过标准",
        r"达标",
        r"合格线",
        r"全部正确",
    ),
    "继续前进信号": (
        r"继续前进信号",
        r"可以进入",
        r"可进入",
        r"进入.{0,12}分支",
        r"继续前进",
        r"继续往前",
    ),
}


def _matches_any(text: str, patterns: tuple[str, ...]) -> bool:
    return any(re.search(pattern, text, re.IGNORECASE) for pattern in patterns)


def validate_file(path: Path) -> list[str]:
    rel = path.relative_to(ROOT)
    if not path.exists():
        return [f"[READINESS_MISSING_FILE] {rel} 不存在"]

    text = path.read_text(encoding="utf-8")
    errors: list[str] = []
    for label, patterns in REQUIRED_PATTERNS.items():
        if not _matches_any(text, patterns):
            errors.append(f"[READINESS_CONTRACT] {rel} 缺少“{label}”或可识别变体")
    return errors


def main() -> int:
    errors: list[str] = []
    for filename in READINESS_FILES:
        errors.extend(validate_file(READINESS_DIR / filename))

    if errors:
        for error in errors:
            print(error, file=sys.stderr)
        print(f"[validate_readiness_contracts] ✗ {len(errors)} error(s)", file=sys.stderr)
        return 1

    print("[validate_readiness_contracts] ✓ readiness contracts are complete")
    return 0


if __name__ == "__main__":
    sys.exit(main())
