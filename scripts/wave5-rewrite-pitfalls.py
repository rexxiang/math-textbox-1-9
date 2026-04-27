#!/usr/bin/env python3
"""Wave 5 task 2: rewrite 4 #pitfall blocks into mistake-then-fix mode."""
import os
import sys

ROOT = os.path.normpath(os.path.join(os.path.dirname(__file__), ".."))


def replace_pitfall(path: str, new_block: str) -> None:
    full = os.path.join(ROOT, path)
    with open(full, "r", encoding="utf-8") as f:
        text = f.read()
    i = text.find("#pitfall[")
    if i < 0:
        raise SystemExit(f"No #pitfall in {path}")
    depth = 0
    j = i + len("#pitfall")
    end = -1
    while j < len(text):
        c = text[j]
        if c == "[":
            depth += 1
        elif c == "]":
            depth -= 1
            if depth == 0:
                end = j + 1
                break
        j += 1
    if end < 0:
        raise SystemExit(f"Unterminated #pitfall in {path}")
    new_text = text[:i] + new_block + text[end:]
    with open(full, "w", encoding="utf-8") as f:
        f.write(new_text)
    print(f"rewrote {path}")


SQRT_BLOCK = r"""#pitfall[
  看看小泽这段解题：

  #block(inset: (left: 12pt))[
    已知 $a = -3$，求 $sqrt(a^2)$ 的值。

    第 1 行：$a^2 = (-3)^2 = 9$ $quad$ ✓

    第 2 行：$sqrt(a^2) = a$ $quad$ （“根号和平方抵消”）

    第 3 行：$therefore sqrt(a^2) = a = -3$
  ]

  ✎ 你能指出哪一行错了，错在哪里？

  #block(width: 100%, fill: rgb("#FFFDE7"), radius: 2pt, inset: 8pt)[
    *错处*：第 2 行。$sqrt(a^2) = a$ 只在 $a >= 0$ 时成立；$a < 0$ 时结果是 $-a$（正数），正确写法是 $sqrt(a^2) = |a|$。

    *正确推导*：$sqrt(a^2) = sqrt(9) = 3 = |-3| = |a|$。$quad$ ✓

    记住：$sqrt(square)$ 表示*算术平方根*，结果永远非负，不可能是 $-3$。
  ]

  另外两条常见错误一并标注：

  ✗ $sqrt(9) = plus.minus 3$ → ✓ $sqrt(9) = 3$（正值），两个平方根才是 $plus.minus 3$

  ✗ 实数范围内写 $sqrt(-4)$ → ✓ 负数在实数内无平方根，写 $sqrt(-4)$ 需加说明“此处超出实数范围”
]"""

DISTRIB_BLOCK = r"""#pitfall[
  看看这段展开计算：

  #block(inset: (left: 12pt))[
    化简 $2(x + 3y) - (x - y)$。

    第 1 行：$= 2x + 3y - x - y$ $quad$ （“2 只乘了 $x$，没乘 $3y$；后面的负号只撤掉了 $x$”）

    第 2 行：$= x + 2y$
  ]

  ✎ 第 1 行有两处错误，你能都指出来吗？

  #block(width: 100%, fill: rgb("#FFFDE7"), radius: 2pt, inset: 8pt)[
    *错处 1*：$2(x + 3y)$ 展开应乘到括号里每一项：$2x + 6y$，不是 $2x + 3y$。

    *错处 2*：$-(x - y)$ 展开应把负号分别作用于每一项：$-x + y$，不是 $-x - y$。

    *正确推导*：
    $ 2(x + 3y) - (x - y) = 2x + 6y - x + y = x + 7y $
  ]

  另外两条：

  ✗ $3x + 2y$ 合并成 $5xy$ → ✓ 字母部分不同，不是同类项，不能合并

  ✗ 合并时忘了符号：$5a - 3a = 8a$ → ✓ 是 $2a$（符号属于它后面的项）
]"""

PROB_BLOCK = r"""#pitfall[
  看看 Amara 解的这道题：

  #block(inset: (left: 12pt))[
    *题目*：同时抛两枚硬币，求“恰好一正一反”的概率。

    Amara 的解法：

    第 1 行：样本空间 = \{0 个正面，1 个正面，2 个正面\}，共 3 种。

    第 2 行：$P("恰好 1 个正面") = 1 / 3$
  ]

  ✎ 你能找出哪一步出了问题？

  #block(width: 100%, fill: rgb("#FFFDE7"), radius: 2pt, inset: 8pt)[
    *错处*：第 1 行的样本空间划分*不等可能*。“0 个正面”“1 个正面”“2 个正面”的发生机会不一样多——“1 个正面”实际上包含两种等概率结果（第 1 枚正、第 2 枚反；或反之）。

    *正确做法*：用有序对列出等可能样本点：
    $Omega = \{("正","正"), ("正","反"), ("反","正"), ("反","反")\}$，共 4 个，各 $1/4$。

    “恰好一正一反” = $\{("正","反"), ("反","正")\}$，$P = 2/4 = 1/2$。
  ]

  其余常见错误：

  ✗ 对不互斥事件用 $P(A) + P(B)$ → ✓ 先检查 $A inter B = emptyset$，否则用容斥

  ✗ 算“至少一次”时逐项枚举 → ✓ 用对立事件 $P("至少 1") = 1 - P("一次都没有")$
]"""

SSA_BLOCK = r"""#pitfall[
  看看下面这段推理：

  #block(inset: (left: 12pt))[
    已知 $triangle A B C$ 与 $triangle D E F$，$A B = D E = 5$，$B C = E F = 7$，$angle A = angle D = 40 degree$。

    第 1 行：“两边和一个非夹角都相等，类比 SAS。”

    第 2 行：$therefore triangle A B C tilde.eq triangle D E F$（用 SSA）
  ]

  ✎ 哪一步错了？为什么 SSA 不能作为全等判定法？

  #block(width: 100%, fill: rgb("#FFFDE7"), radius: 2pt, inset: 8pt)[
    *错处*：第 2 行。SSA（两边一非夹角）*不是*全等判定法。给定 $A B = D E$、$B C = E F$、$angle A = angle D$，实际上可以同时存在*两个不全等*的三角形满足这三个条件（双解情况）。

    *直觉*：想象以 $B$ 为圆心、半径 $B C = 7$ 画弧，弧可以与直线（从 $A$ 以角 $40 degree$ 出发）交于*两点*或一点——所以三角形不是唯一的。

    *正确策略*：遇到两边一非夹角，需要先判断是否满足额外条件（如第三边最长时才退化为唯一），或改用其他判定法。
  ]

  其余：

  ✗ “两角相等”即断全等 → ✓ 两角相等只能说*形状相似*，还需配一条对应边

  ✗ AAA 判全等 → ✓ AAA 只能说形状相同（相似），大小未定
]"""

replace_pitfall("typst/2-common-bridges/07-square-root-irrational-number-line/01-square-and-square-root.typ", SQRT_BLOCK)
replace_pitfall("typst/2-common-bridges/05-letters-expressions-relationship-templates/02-expressions-and-like-terms.typ", DISTRIB_BLOCK)
replace_pitfall("typst/3d-data-uncertainty/03-sample-space-probability-experimental-frequency/02-probability-language.typ", PROB_BLOCK)
replace_pitfall("typst/3b-geometry-proof/02-advanced-criteria-and-proof-writing/01-asa-aas-ssa-counterexample.typ", SSA_BLOCK)
print("All 4 pitfall blocks rewritten.")
