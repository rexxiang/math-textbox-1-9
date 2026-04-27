#!/usr/bin/env python3
"""Wave 5: insert #self-check[] blocks across knowledge-point files.

For each target file:
1. Add `self-check` to the import list (theme-v2.typ or chapter-kit.typ).
2. Append a #self-check[...] block immediately after the closing `]` of a
   chosen anchor block (#blueprint[ preferred, otherwise #discovery[).
"""
from __future__ import annotations

import os
import re
import sys

ROOT = os.path.normpath(os.path.join(os.path.dirname(__file__), "..", "typst"))


def find_block_end(text: str, open_idx: int) -> int:
    """Given index of '[' after a function call, return index of matching ']' (exclusive end+1)."""
    depth = 0
    i = open_idx
    n = len(text)
    while i < n:
        c = text[i]
        if c == "[":
            depth += 1
        elif c == "]":
            depth -= 1
            if depth == 0:
                return i + 1
        elif c == "\\" and i + 1 < n:
            i += 2
            continue
        i += 1
    return -1


def find_anchor_end(text: str, anchor: str) -> int:
    """Find the end position (after `]`) of the LAST `anchor[` block. -1 if none."""
    pattern = re.compile(re.escape(anchor) + r"\[")
    last_end = -1
    for m in pattern.finditer(text):
        end = find_block_end(text, m.end() - 1)
        if end > 0:
            last_end = end
    return last_end


def update_imports(text: str) -> str:
    """Ensure 'self-check' appears in the theme-v2.typ or chapter-kit.typ import list."""
    # match: #import "...theme-v2.typ": a, b, c
    pat = re.compile(r'(#import\s+"[^"]*(?:theme-v2|chapter-kit)\.typ":\s*)([^\n]+)')
    m = pat.search(text)
    if not m:
        return text
    items = [s.strip() for s in m.group(2).split(",")]
    if "self-check" in items:
        return text
    items.append("self-check")
    new_line = m.group(1) + ", ".join(items)
    return text[: m.start()] + new_line + text[m.end():]


# Mapping: file path -> self-check body content (semantic, content-related).
SELF_CHECKS = {
    "2-common-bridges/01-ratio-proportion-percent/01-ratio-basics.typ":
        "在继续之前：把 $4 : 10$ 化成最简比是多少？说出你用的是“同除以一个非零数”还是“同乘”。",
    "2-common-bridges/01-ratio-proportion-percent/02-proportion-equal-ratios.typ":
        "$3 : 5 = 9 : x$，你能不算出 $x$，先说出“内项之积等于外项之积”具体是哪两个数相乘等于哪两个数相乘吗？",
    "2-common-bridges/01-ratio-proportion-percent/03-percent-scale-of-100.typ":
        "$25%$ 和分数 $1/4$ 是同一个数吗？用一句话说出“百分号”在这里到底承担了什么角色。",
    "2-common-bridges/02-number-line-negative-rational/01-number-line-extends-left.typ":
        "在数轴上，$-3$ 在 $-5$ 的左边还是右边？你判断时依靠的是“距离”还是“方向”？",
    "2-common-bridges/02-number-line-negative-rational/02-opposite-and-absolute-value.typ":
        "$|-7|$ 和 $-|7|$ 一样吗？把它们各自代表的意思用一句话说清楚。",
    "2-common-bridges/02-number-line-negative-rational/03-rational-numbers-on-line.typ":
        "$-2/3$ 在 $-1$ 的左边还是右边？说出你的依据，不要只靠“感觉”。",
    "2-common-bridges/03-rational-arithmetic/01-rational-addition.typ":
        "$(-3) + 5$ 和 $(-3) + (-5)$ 的符号判断思路一样吗？说出“同号”和“异号”两条法则的关键差别。",
    "2-common-bridges/03-rational-arithmetic/02-rational-subtraction.typ":
        "$5 - (-2)$ 你会把它改写成什么样的加法？说出“减去一个数 = 加上它的相反数”具体在这道题里怎么用。",
    "2-common-bridges/04-coordinate-position-plane/01-rectangular-system.typ":
        "在平面直角坐标系里，点 $(0, -3)$ 在哪根轴上？为什么它不属于任何象限？",
    "2-common-bridges/04-coordinate-position-plane/02-quadrants.typ":
        "点 $(-2, 5)$ 在哪个象限？把判断口诀用你自己的话说一遍——横正纵正、横负纵正、……",
    "2-common-bridges/04-coordinate-position-plane/03-plotting-and-transforming.typ":
        "把点 $(3, 2)$ 沿 $y$ 轴对称后变成什么？你是在改变 $x$ 还是 $y$ 的符号？",
    "2-common-bridges/05-letters-expressions-relationship-templates/01-letters-represent-numbers.typ":
        "在表达式 $3n + 2$ 里，$n$ 代表的是某一个具体的数，还是“任何”一个数？两种理解会让你解题方式有什么不同？",
    "2-common-bridges/05-letters-expressions-relationship-templates/02-expressions-and-like-terms.typ":
        "$3x$ 与 $3x^2$ 是同类项吗？说出你的判断依据，注意“次数”和“字母”两条都要看。",
    "2-common-bridges/05-letters-expressions-relationship-templates/03-relationship-templates.typ":
        "看到“比某数多 $5$”，你会把它写成 $x + 5$ 还是 $5 + x$？两种写法等价吗？",
    "2-common-bridges/06-equation-balance-inverse-operations/01-equation-as-balance.typ":
        "方程 $2x + 3 = 11$ 像一台天平，等号两边各代表什么？你能说出两边到底“各放了什么”吗？",
    "2-common-bridges/06-equation-balance-inverse-operations/02-equality-properties.typ":
        "等式两边同时除以 $0$ 行不行？为什么“同时乘”和“同时除”在 $0$ 这里待遇不同？",
    "2-common-bridges/06-equation-balance-inverse-operations/03-solving-linear-one-variable.typ":
        "解 $3x - 4 = 11$ 时，你会先做哪一步？为什么不是先除以 $3$？",
    "2-common-bridges/07-square-root-irrational-number-line/01-square-and-square-root.typ":
        "$sqrt(9)$ 等于 $3$ 还是 $plus.minus 3$？说出“算术平方根”和“平方根”两个说法的区别。",
    "2-common-bridges/07-square-root-irrational-number-line/02-irrational-numbers-exist.typ":
        "$sqrt(2)$ 不能写成两个整数的比——这件事是“我们没找到”还是“已经被证明不可能”？两者差别很大。",
    "2-common-bridges/07-square-root-irrational-number-line/03-real-number-line.typ":
        "数轴上每一个点都对应一个实数，每一个实数都对应数轴上的一个点。这两句话能合成一句吗？说说“一一对应”在这里的意思。",
    "3a-algebra-symbols/01-polynomials-like-terms-operations/01-monomials-coefficient-degree.typ":
        "单项式 $-3x^2 y$ 的系数是 $3$ 还是 $-3$？次数是 $2$ 还是 $3$？两条都要答对。",
    "3a-algebra-symbols/01-polynomials-like-terms-operations/04-add-subtract-polynomials.typ":
        "$(2x^2 + 3x) - (x^2 - 5x)$ 第一步去括号时，$-(x^2 - 5x)$ 展开成什么？说出符号的处理规则。",
    "3a-algebra-symbols/02-distributive-identities-factorization/03-factorization-as-reverse.typ":
        "$x^2 + 6x + 9$ 能因式分解吗？你看到了哪一个“完全平方”的特征——它的常数项和一次项有什么关系？",
    "3a-algebra-symbols/02-distributive-identities-factorization/02-special-identities.typ":
        "$(a + b)^2$ 和 $a^2 + b^2$ 一样吗？把中间漏掉的那一项写出来，并说说它代表什么。",
    "3a-algebra-symbols/04-linear-equations-systems-modeling/01-linear-equation-one-variable.typ":
        "解方程 $5x - 3 = 2x + 9$ 时，“移项”实际上做了什么？说出它和“等式两边同时加减”的关系。",
    "3a-algebra-symbols/04-linear-equations-systems-modeling/02-systems-of-linear-equations.typ":
        "代入法和加减消元法解出来的解一样吗？为什么？两种方法分别消掉了哪一个未知数？",
    "3b-geometry-proof/01-congruence-and-basic-criteria/01-congruence-and-correspondence.typ":
        "两个三角形全等，写成 $triangle A B C tilde.eq triangle D E F$ 时，$A$ 一定对应 $D$ 吗？说出“对应”在这里的严格意义。",
    "3b-geometry-proof/01-congruence-and-basic-criteria/02-sss-sas-criteria.typ":
        "用 SAS 判全等时，那个角必须是哪两条边的“夹角”？如果不是夹角，结论还成立吗？",
    "3b-geometry-proof/02-advanced-criteria-and-proof-writing/01-asa-aas-ssa-counterexample.typ":
        "为什么 SSA 不能作为全等判定？用一句话说出“双解”的几何直觉。",
    "3b-geometry-proof/02-advanced-criteria-and-proof-writing/02-two-step-proof-chain.typ":
        "写两步证明时，每一步的“理由”必须是定理还是已知条件？你能说出二者的差别吗？",
    "3b-geometry-proof/03-similarity-scale-parallel-line-geometry/01-parallel-lines-and-angle-lemmas.typ":
        "两直线平行，被第三条直线截，“同位角相等”和“内错角相等”分别看的是哪一对角？画个简图指给自己看。",
    "3b-geometry-proof/03-similarity-scale-parallel-line-geometry/02-similarity-and-ratio.typ":
        "相似三角形的对应边成比例——这个“比”指的是同一对三角形的所有对应边的比都相等，还是只有一对？",
    "3b-geometry-proof/04-quadrilateral-family/01-quadrilateral-family.typ":
        "正方形是矩形吗？是菱形吗？把“四边形家族”的包含关系用一句话讲清楚。",
    "3c-functions-change/01-function-representations/01-input-output-tables.typ":
        "在输入输出表里，同一个输入能不能对应两个不同的输出？为什么这是“函数”的关键限制？",
    "3c-functions-change/01-function-representations/02-graphs-and-correspondence.typ":
        "如何用“竖直线检验”判断一条曲线是否是函数图象？说出它背后的逻辑——为什么竖直线只能交一次？",
    "3c-functions-change/02-direct-variation-linear-functions-slope/01-direct-variation.typ":
        "正比例函数 $y = k x$ 必须经过哪一个点？为什么 $b = 0$ 是它和一般一次函数的关键差别？",
    "3c-functions-change/02-direct-variation-linear-functions-slope/03-slope-as-rate.typ":
        "斜率 $k = (Delta y) / (Delta x)$ 表达的是“$x$ 每增加 $1$，$y$ 增加多少”。如果 $k = -2$，$x$ 增加 $1$ 时 $y$ 怎么变？",
    "3c-functions-change/03-inverse-proportion-quadratic-functions/02-parabolas-and-quadratics.typ":
        "$y = a x^2$ 中，$a > 0$ 和 $a < 0$ 的图象有什么本质区别？开口方向是由谁决定的？",
    "3d-data-uncertainty/01-data-displays-descriptive-statistics/01-organizing-data.typ":
        "原始数据和整理后的频数表，哪一个适合用来回答“最常出现的值是什么”？为什么？",
    "3d-data-uncertainty/01-data-displays-descriptive-statistics/03-center-and-spread.typ":
        "平均数、中位数、众数三者一定相等吗？什么时候差距最大？举一个你自己想到的例子。",
    "3d-data-uncertainty/02-frequency-histograms-variance/01-frequency-distributions.typ":
        "频数和频率有什么区别？同一组数据，能不能让两个不同区间有相同的频率却有不同的频数？",
    "3d-data-uncertainty/02-frequency-histograms-variance/03-variance.typ":
        "方差越大，意味着数据“分散”还是“集中”？说出方差公式里“减去平均值再平方”的目的。",
    "3d-data-uncertainty/03-sample-space-probability-experimental-frequency/01-sample-spaces.typ":
        "抛两枚硬币的样本空间是 $\\{0, 1, 2\\}$（正面个数）还是有序对 $\\{(“正”,“正”), …\\}$？哪一个划分是“等可能”的？",
    "3d-data-uncertainty/03-sample-space-probability-experimental-frequency/02-probability-language.typ":
        "事件 $A$ 与事件 $B$ 互斥，$P(A “或” B) = P(A) + P(B)$ 才成立。你能说出“互斥”的判别方法吗？",
}


def insert_self_check(rel_path: str) -> tuple[bool, str]:
    full = os.path.join(ROOT, rel_path)
    if not os.path.exists(full):
        return False, f"missing: {full}"
    with open(full, "r", encoding="utf-8") as f:
        text = f.read()

    if "#self-check[" in text:
        return False, "already has self-check"

    new_text = update_imports(text)
    if new_text == text and "self-check" not in text.split("\n", 1)[0]:
        # imports not updated and no self-check there — try chapter-kit line
        pass

    body = SELF_CHECKS.get(rel_path)
    if not body:
        return False, "no body defined"

    # Choose insertion point: end of last #blueprint[ block, else last #discovery[.
    end = find_anchor_end(new_text, "#blueprint")
    if end < 0:
        end = find_anchor_end(new_text, "#discovery")
    if end < 0:
        return False, "no anchor block found"

    insert = f"\n\n#self-check[\n  {body}\n]\n"
    new_text = new_text[:end] + insert + new_text[end:]

    with open(full, "w", encoding="utf-8") as f:
        f.write(new_text)
    return True, "ok"


def main() -> int:
    success = 0
    failed = []
    for rel in SELF_CHECKS:
        ok, msg = insert_self_check(rel)
        if ok:
            success += 1
        else:
            failed.append((rel, msg))
            print(f"SKIP {rel}: {msg}", file=sys.stderr)
    print(f"Inserted {success}/{len(SELF_CHECKS)} self-checks.")
    if failed:
        print(f"Failed: {len(failed)}")
        for r, m in failed:
            print(f"  - {r}: {m}")
    return 0 if not failed else 1


if __name__ == "__main__":
    sys.exit(main())
