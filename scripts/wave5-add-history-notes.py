#!/usr/bin/env python3
"""Wave 5 task 3e: insert 3 new #history-note blocks featuring women mathematicians."""
import os
import sys

ROOT = os.path.normpath(os.path.join(os.path.dirname(__file__), ".."))


def find_block_end(text: str, anchor: str) -> int:
    i = text.find(anchor)
    if i < 0:
        return -1
    depth = 0
    j = i + len(anchor.rstrip("["))
    while j < len(text):
        c = text[j]
        if c == "[":
            depth += 1
        elif c == "]":
            depth -= 1
            if depth == 0:
                return j + 1
        j += 1
    return -1


def insert_after_blueprint(rel_path: str, note: str) -> None:
    full = os.path.join(ROOT, rel_path)
    with open(full, "r", encoding="utf-8") as f:
        text = f.read()
    end = find_block_end(text, "#blueprint[")
    if end < 0:
        raise SystemExit(f"no blueprint in {rel_path}")
    new_text = text[:end] + "\n\n" + note + "\n" + text[end:]
    with open(full, "w", encoding="utf-8") as f:
        f.write(new_text)
    print(f"inserted note into {rel_path}")


HYPATIA = """#history-note[
  *希帕蒂娅（Hypatia，约 360–415）*——亚历山大城的数学家与哲学家，她对丢番图（Diophantus）《算术》的注释保留了大量比与比例的计算技巧，成为后代学者学习分数运算的主要来源之一。她是有史料可考的最早女性数学家之一。
]"""

NOETHER = """#history-note[
  *艾米·诺特（Emmy Noether，1882–1935）*——她系统化地把多项式恒等式和因式分解纳入现代抽象代数框架，证明了“诺特环”的基本定理。许多我们今天视为“中学代数基础”的结构性思想，都与她奠定的代数语言有关。据说她在讲课时会随手把黑板上的计算步骤重组成更一般的结构，让同学们先看到具体、再看到背后的普遍性——和我们这本书的思路如出一辙。
]"""

MIRZAKHANI = """#history-note[
  *玛利亚姆·米尔扎哈尼（Maryam Mirzakhani，1977–2017）*——伊朗数学家，2014 年菲尔兹奖得主（数学界最高荣誉），也是迄今唯一获此奖的女性。她研究的核心问题就是“曲面上的变换与对称”：给定一个曲面，所有保持几何结构不变的运动构成一个群，这个群的性质决定了曲面本身的形状。中学里学的平移、旋转、对称，是这条数学线路最初的几块砖。
]"""

insert_after_blueprint(
    "typst/2-common-bridges/01-ratio-proportion-percent/02-proportion-equal-ratios.typ",
    HYPATIA,
)
insert_after_blueprint(
    "typst/3a-algebra-symbols/02-distributive-identities-factorization/02-special-identities.typ",
    NOETHER,
)
insert_after_blueprint(
    "typst/3b-geometry-proof/07-transformations-coordinate-geometry-views/01-rigid-transformations-and-congruence.typ",
    MIRZAKHANI,
)
print("done")
