#!/usr/bin/env python3
"""Wave 5 context audit: counts abstract student names + mathematician mentions."""
from __future__ import annotations

import datetime
import os
import re
from collections import Counter

ROOT = os.path.normpath(os.path.join(os.path.dirname(__file__), ".."))
TYPST_DIR = os.path.join(ROOT, "typst")
OUT_FILE = os.path.join(ROOT, "docs", "review", "wave5-context-audit.md")

STUDENT_NAMES = ["小明", "小红", "小华", "小李", "小王"]
MATHEMATICIANS = [
    ("欧拉", False), ("高斯", False), ("牛顿", False), ("莱布尼茨", False),
    ("帕斯卡", False), ("费马", False), ("阿基米德", False), ("毕达哥拉斯", False),
    ("刘徽", False), ("祖冲之", False), ("柯西", False), ("黎曼", False),
    ("卡瓦列里", False), ("希帕蒂娅", True), ("诺特", True), ("萨默维尔", True),
    ("阿涅西", True), ("热尔曼", True), ("洛芙莱斯", True), ("乌伦贝克", True),
    ("米尔扎哈尼", True),
]


def iter_typ_files():
    for root, _, files in os.walk(TYPST_DIR):
        for fn in files:
            if fn.endswith(".typ"):
                yield os.path.join(root, fn)


def find_history_notes(text: str) -> list[str]:
    """Return list of inner contents of #history-note[ ... ] blocks."""
    out = []
    i = 0
    needle = "#history-note["
    while True:
        i = text.find(needle, i)
        if i < 0:
            break
        depth = 0
        j = i + len("#history-note")
        start = j + 1
        while j < len(text):
            c = text[j]
            if c == "[":
                depth += 1
            elif c == "]":
                depth -= 1
                if depth == 0:
                    out.append(text[start:j])
                    i = j + 1
                    break
            j += 1
        else:
            break
    return out


def main() -> None:
    student_counts = Counter()
    math_counts = Counter()
    history_blocks = 0

    for path in iter_typ_files():
        with open(path, "r", encoding="utf-8") as f:
            text = f.read()
        for name in STUDENT_NAMES:
            student_counts[name] += text.count(name)
        for note in find_history_notes(text):
            history_blocks += 1
            for name, _female in MATHEMATICIANS:
                math_counts[name] += note.count(name)

    os.makedirs(os.path.dirname(OUT_FILE), exist_ok=True)
    lines = []
    lines.append("# Wave 5 情境审计报告")
    lines.append("")
    lines.append(f"扫描时间：{datetime.datetime.now().isoformat(timespec='seconds')}")
    lines.append(f"扫描目录：`typst/`")
    lines.append(f"`#history-note` 块总数：{history_blocks}")
    lines.append("")
    lines.append("## 抽象学生人名出现次数")
    lines.append("")
    lines.append("| 人名 | 出现次数 |")
    lines.append("|---|---|")
    total_students = 0
    for name in STUDENT_NAMES:
        c = student_counts[name]
        total_students += c
        lines.append(f"| {name} | {c} |")
    lines.append(f"| **合计** | **{total_students}** |")
    lines.append("")
    lines.append("## `#history-note` 中数学家出现次数")
    lines.append("")
    lines.append("| 数学家 | 性别 | 出现次数 |")
    lines.append("|---|---|---|")
    male_total = 0
    female_total = 0
    for name, female in MATHEMATICIANS:
        c = math_counts[name]
        gender = "女" if female else "男"
        if female:
            female_total += c
        else:
            male_total += c
        lines.append(f"| {name} | {gender} | {c} |")
    lines.append(f"| **男性合计** | — | **{male_total}** |")
    lines.append(f"| **女性合计** | — | **{female_total}** |")
    lines.append("")
    total_math = male_total + female_total
    if total_math > 0:
        ratio = female_total / total_math * 100
        lines.append(f"**女性数学家占比**：{female_total}/{total_math} = {ratio:.1f}%")
    else:
        lines.append("**女性数学家占比**：暂无数据")
    lines.append("")
    lines.append("（目标：女性占比 ≥ 25%）")

    with open(OUT_FILE, "w", encoding="utf-8") as f:
        f.write("\n".join(lines) + "\n")
    print(f"Wrote {OUT_FILE}")


if __name__ == "__main__":
    main()
