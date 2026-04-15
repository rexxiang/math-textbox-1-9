#!/usr/bin/env python3
"""Bootstrap a Typst project skeleton from main.tex include order.

This script intentionally creates placeholders only.
It does not convert LaTeX content.
"""

from __future__ import annotations

import re
from datetime import date
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
MAIN_TEX = ROOT / "main.tex"
TYPST_ROOT = ROOT / "typst"
LIB_DIR = TYPST_ROOT / "lib"

PART_RE = re.compile(r"\\part\*?\{(.+?)\}")
INCLUDE_RE = re.compile(r"\\include\{(.+?)\}")
CHAPTER_RE = re.compile(r"\\chapter\{(.+?)\}")


def parse_main_tex(main_tex: Path) -> list[tuple[str, str]]:
    pairs: list[tuple[str, str]] = []
    current_part = "未分组"

    for raw in main_tex.read_text(encoding="utf-8").splitlines():
        part_match = PART_RE.search(raw)
        if part_match:
            current_part = part_match.group(1).strip()
            continue

        include_match = INCLUDE_RE.search(raw)
        if include_match:
            pairs.append((current_part, include_match.group(1).strip()))

    return pairs


def read_chapter_title(tex_file: Path) -> str:
    if not tex_file.exists():
        return tex_file.stem
    for line in tex_file.read_text(encoding="utf-8").splitlines():
        match = CHAPTER_RE.search(line)
        if match:
            return match.group(1).strip()
    return tex_file.stem


def ensure_theme_file(theme_file: Path) -> None:
    if theme_file.exists():
        return
    theme_file.parent.mkdir(parents=True, exist_ok=True)
    theme_file.write_text(
        """#let textbook(body) = {
  set page(paper: "iso-b5", margin: (x: 18mm, y: 18mm))
  set text(
    font: ("Libertinus Serif"),
    size: 10.5pt,
  )
  set heading(numbering: "1.1")
  set par(justify: true)
  body
}

#let lesson-box(title, fill, stroke, body) = {
  box(
    inset: 10pt,
    outset: 4pt,
    radius: 4pt,
    fill: fill,
    stroke: (paint: stroke, thickness: 0.8pt),
  )[
    #text(weight: "bold")[#title]
    #v(0.4em)
    #body
  ]
}

#let explore(body) = lesson-box([引入情境], rgb("#FFF3E0"), rgb("#EF6C00"), body)
#let understand(body) = lesson-box([概念建立], rgb("#E8F1FF"), rgb("#1E66D0"), body)
#let workedexamples(body) = lesson-box([典型例题], rgb("#F3F4F6"), rgb("#616161"), body)
#let keytakeaway(body) = lesson-box([关键总结], rgb("#E9F8EF"), rgb("#2E7D32"), body)
#let practice(body) = lesson-box([练一练], rgb("#F3E8FF"), rgb("#7E57C2"), body)
#let answer(body) = lesson-box([参考答案], rgb("#F7F7F7"), rgb("#9E9E9E"), body)
""",
        encoding="utf-8",
    )


def write_chapter_placeholder(target: Path, title: str, source_rel: str) -> None:
    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_text(
        f"""== {title}

#box(
  inset: 10pt,
  fill: luma(245),
  stroke: (paint: luma(180), thickness: 0.6pt),
  radius: 3pt,
)[
  *待迁移占位*
  来源文件：`{source_rel}`
  说明：当前阶段仅创建 Typst 目录骨架与编译链路，不转换正文内容。
]
""",
        encoding="utf-8",
    )


def write_main_typst(entries: list[tuple[str, str]]) -> None:
    grouped: dict[str, list[str]] = {}
    for part_name, include_path in entries:
        grouped.setdefault(part_name, []).append(include_path)

    lines: list[str] = []
    lines.append(f"// Auto-generated on {date.today().isoformat()} by scripts/bootstrap_typst_scaffold.py")
    lines.append('#import "lib/theme.typ": *')
    lines.append("")
    lines.append("#show: textbook")
    lines.append("")
    lines.append("#align(center)[")
    lines.append('  #text(size: 24pt, weight: "bold")[数学自学教材（1-9 年级）]')
    lines.append("  #v(0.6em)")
    lines.append("  #text(size: 12pt)[Typst 骨架版本]")
    lines.append("]")
    lines.append("")
    lines.append("#pagebreak()")
    lines.append("#outline(title: [目录])")
    lines.append("#pagebreak()")
    lines.append("")

    for part_name, include_paths in grouped.items():
        lines.append(f"= {part_name}")
        for include_path in include_paths:
            lines.append(f'#include "{include_path}.typ"')
        lines.append("")

    (TYPST_ROOT / "main.typ").write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    entries = parse_main_tex(MAIN_TEX)
    ensure_theme_file(LIB_DIR / "theme.typ")

    for _, include_path in entries:
        tex_path = ROOT / f"{include_path}.tex"
        typ_path = TYPST_ROOT / f"{include_path}.typ"
        title = read_chapter_title(tex_path)
        write_chapter_placeholder(typ_path, title, f"{include_path}.tex")

    write_main_typst(entries)
    print(f"Generated Typst scaffold: {len(entries)} chapter placeholders")


if __name__ == "__main__":
    main()
