#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut, self-check
#import "../../lib/diagram-packages.typ": cetz

=== 平方差与完全平方：两条公式，正反两用 <tool:al02-special-identities>

#vocab[平方差公式 difference of squares][完全平方公式 perfect-square identity]

#crisis[
  第 1 章里你已经会机械展开 $(a + b)(a - b)$ 和 $(a + b)^2$。可一旦换成具体数：

  - $103 times 97$ 要不要老老实实做两位数乘法？
  - $(3 x + 2)(3 x - 2)$ 展开后能不能一眼写出来？
  - 看到 $x^2 + 10 x + 25$，有没有办法不借助十字相乘，就认出它来自某个平方？

  这一节的任务：把两条最高频的展开模式*归纳成公式*，并且说清楚它们*反着用*时的长相。
]

#tryit[
  + 计算 $1001 times 999$（先把你的第一直觉答案写下来，再算）。
]

#discovery[
  计算 $103 times 97$：老老实实列竖式，$103 times 97 = 103 times (100 - 3) = 10300 - 309 = 9991$。算出来了——但用了两次乘法加一次减法。遇到 $104 times 96$、$201 times 199$，每次都得重新算。

  试着推下去——

  $104 times 96 = 104 times (100 - 4) = 10400 - 416 = 9984$；$201 times 199 = 201 times (200 - 1) = 40200 - 201 = 39999$。每次展开的步骤相同，结果不同，没有任何捷径可以一眼写出答案，也无法看出这三道题背后共享的同一种代数结构。

  逐题展开乘法行得通，但每次都在重复同一个模式（中间值 $plus.minus$ 偏差），却没有一条公式让我们*识别这种结构、直接跳过竖式*；遇到大数或字母系数时，重复展开既费力又容易抄错。

  *平方差：$(a + b)(a - b) = a^2 - b^2$*

  展开 $(a + b)(a - b)$，四个乘积里 $a b$ 和 $-a b$ 正好抵消：

  $ (a + b)(a - b) = a^2 - a b + a b - b^2 = a^2 - b^2 $

  正用是“算乘法”，反用是“把 $a^2 - b^2$ 分成两个因式的乘积”：

  $ "正用：" (3 x + 2)(3 x - 2) = (3 x)^2 - 2^2 = 9 x^2 - 4 \
    "反用：" 9 x^2 - 4 = (3 x)^2 - 2^2 = (3 x + 2)(3 x - 2) $

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue-fill = rgb("#BBDEFB")
      let red-fill = rgb("#FFCDD2")
      let green-fill = rgb("#C8E6C9")
      let blue = rgb("#1565C0")
      let red = rgb("#C62828")
      let green = rgb("#2E7D32")

      let a = 7
      let b = 3

      // ---- Left: big square with small square removed ----
      rect((0, 0), (a, a), fill: blue-fill, stroke: 1.2pt)
      // Removed b×b square at top-right
      rect((a - b, a - b), (a, a), fill: red-fill, stroke: 0.8pt + red)

      // Dimension labels
      content((-1, a / 2), text(size: 10pt)[$a$])
      content((a / 2, -0.8), text(size: 10pt)[$a$])
      content((a + 0.6, a - b / 2), text(size: 9pt, fill: red)[$b$])
      content((a - b / 2, a + 0.6), text(size: 9pt, fill: red)[$b$])
      content(((a - b) / 2, (a - b) / 2), text(size: 10pt, fill: blue)[$a^2 - b^2$])

      // Arrow
      content((a + 2.5, a / 2), text(size: 11pt)[$=$])

      // ---- Right: rearranged rectangle (a+b) × (a-b) ----
      let rx = a + 4.5
      let rw = a + b
      let rh = a - b

      rect((rx, 0.5), (rx + rw, 0.5 + rh), fill: green-fill, stroke: 1.2pt)
      // Dashed split showing two pieces
      line((rx + a, 0.5), (rx + a, 0.5 + rh), stroke: (dash: "dashed", thickness: 0.6pt))

      // Labels
      content((rx + rw / 2, -0.3), text(size: 10pt)[$a + b$])
      content((rx - 1.2, 0.5 + rh / 2), text(size: 10pt)[$a - b$])
      content((rx + rw / 2, 0.5 + rh / 2), text(size: 10pt, fill: green)[$(a+b)(a-b)$])
    }),
    caption: [平方差的面积解释：$a^2$ 去掉 $b^2$，L 形可重排为 $(a+b) times (a-b)$ 的长方形]
  )

  甚至可以帮你快速心算：

  $ 103 times 97 = (100 + 3)(100 - 3) = 100^2 - 3^2 = 9991 $

  *完全平方：$(a plus.minus b)^2 = a^2 plus.minus 2 a b + b^2$*

  同一个括号乘自己，展开会“结构对称”：

  $ (a + b)^2 = a^2 + 2 a b + b^2, quad (a - b)^2 = a^2 - 2 a b + b^2 $

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue-fill = rgb("#BBDEFB")
      let green-fill = rgb("#C8E6C9")
      let orange-fill = rgb("#FFE0B2")
      let red-fill = rgb("#FFCDD2")
      let blue = rgb("#1565C0")
      let green = rgb("#2E7D32")
      let orange = rgb("#E65100")
      let red = rgb("#C62828")

      let a = 6
      let b = 3

      // Top-left: a × a
      rect((0, b), (a, a + b), fill: blue-fill, stroke: 0.8pt)
      // Top-right: a × b
      rect((a, b), (a + b, a + b), fill: green-fill, stroke: 0.8pt)
      // Bottom-left: b × a
      rect((0, 0), (a, b), fill: orange-fill, stroke: 0.8pt)
      // Bottom-right: b × b
      rect((a, 0), (a + b, b), fill: red-fill, stroke: 0.8pt)

      // Outer boundary
      rect((0, 0), (a + b, a + b), stroke: 1.2pt)

      // Area labels
      content((a / 2, b + a / 2), text(size: 11pt, fill: blue)[$a^2$])
      content((a + b / 2, b + a / 2), text(size: 10pt, fill: green)[$a b$])
      content((a / 2, b / 2), text(size: 10pt, fill: orange)[$a b$])
      content((a + b / 2, b / 2), text(size: 11pt, fill: red)[$b^2$])

      // Dimension labels — left side
      content((-1, b + a / 2), text(size: 10pt)[$a$])
      content((-1, b / 2), text(size: 10pt)[$b$])
      // Dimension labels — top
      content((a / 2, a + b + 0.8), text(size: 10pt)[$a$])
      content((a + b / 2, a + b + 0.8), text(size: 10pt)[$b$])
    }),
    caption: [完全平方的面积证明：边长 $(a + b)$ 的正方形分成 $a^2$、两个 $a b$ 和 $b^2$ 四块]
  )

  正用就是平方展开；反用则是*看到“完全平方的样子”就能写成 $(a plus.minus b)^2$*：

  - $x^2 + 10 x + 25$：首尾是 $x^2, 5^2$；中间 $10 x = 2 dot x dot 5$，对得上，所以 $= (x + 5)^2$。
  - $4 y^2 - 12 y + 9$：首尾 $(2 y)^2, 3^2$；中间 $-12 y = -2 dot 2 y dot 3$，符号吻合，$= (2 y - 3)^2$。

  *识别一个式子是不是完全平方*，只要检查三件事：

  + 首项、末项都是某个“东西的平方”（如 $x^2$、$25 = 5^2$）；
  + 中间项（不含符号）等于*那两个“东西”乘积的 $2$ 倍*；
  + 中间项的正负号决定最终是 $(a + b)^2$ 还是 $(a - b)^2$。

  这个“中间项匹配”在下一节会被我们用来当判据，先在这里建立感觉。
]

#side-hack[
  *注意：$a^2 + b^2$ 不是平方差，也不是完全平方*。它没法在实数范围内拆成两个整式的乘积。看到“两平方之和”，先不要急着套公式。
]

#tryit[
  + 把 $16 a^2 - 49$ 和 $y^2 - 14 y + 49$ 各自写成因式的乘积。
]

#history-note[
  $(a+b)^2 = a^2 + 2a b + b^2$ 的几何证明最早出现在欧几里得（Euclid）《原本》第二卷命题 4（约公元前 300 年）：把边长为 $a+b$ 的正方形切成两个小正方形和两个 $a times b$ 矩形，面积关系一目了然。约公元 3 世纪，希腊数学家丢番图（Diophantus）在《算术》中也反复使用平方差与完全平方公式来处理不定方程。在中国，《九章算术》（约公元 1 世纪）的“勾股”章用面积拼接给出了类似的论证思路。
]

#blueprint[
  *公式一：平方差*

  $ (a + b)(a - b) = a^2 - b^2 $

  反用：$a^2 - b^2 = (a + b)(a - b)$。

  *例 1*（正）：$(3 x + 2)(3 x - 2) = 9 x^2 - 4$。\
  *例 2*（反）：$25 p^2 - 9 q^2 = (5 p + 3 q)(5 p - 3 q)$。\
  *例 3*（快速算）：$103 times 97 = 100^2 - 3^2 = 9991$。

  *公式二：完全平方*

  $ (a + b)^2 = a^2 + 2 a b + b^2, quad (a - b)^2 = a^2 - 2 a b + b^2 $

  反用：若多项式 $A^2 plus.minus 2 A B + B^2$ 的中间项与首末吻合，则它是 $(A plus.minus B)^2$。

  *例 4*（正）：$(2 m + 7)^2 = 4 m^2 + 28 m + 49$。\
  *例 5*（反）：$x^2 + 10 x + 25 = (x + 5)^2$。\
  *例 6*（反）：$4 y^2 - 12 y + 9 = (2 y - 3)^2$。

  *中间项匹配口诀*

  “首末开平方、倍数验中间、符号看中间项。”
]

#history-note[
  *艾米·诺特（Emmy Noether，1882–1935）*——她系统化地把多项式恒等式和因式分解纳入现代抽象代数框架，证明了“诺特环”的基本定理。许多我们今天视为“中学代数基础”的结构性思想，都与她奠定的代数语言有关。据说她在讲课时会随手把黑板上的计算步骤重组成更一般的结构，让同学们先看到具体、再看到背后的普遍性——和我们这本书的思路如出一辙。
]


#self-check[
  $(a + b)^2$ 和 $a^2 + b^2$ 一样吗？把中间漏掉的那一项写出来，并说说它代表什么。
]


#pitfall[
  Rania 解这道题：

  #block(inset: (left: 12pt))[
    *题目*：把 $9 + 16$ 化成"完全平方"形式。

    第 1 行：$9 = 3^2$、$16 = 4^2$。

    第 2 行：所以 $9 + 16 = 3^2 + 4^2 = (3 + 4)^2$。

    第 3 行：$(3 + 4)^2 = 7^2 = 49$。
  ]

  ✎ 但 $9 + 16 = 25$，怎么变成 $49$ 了？

  #block(width: 100%, fill: rgb("#FFFDE7"), radius: 2pt, inset: 8pt)[
    *卡在哪里*：第 2 行把 $a^2 + b^2$ 当成了 $(a + b)^2$。完全平方公式是
    $ (a + b)^2 = a^2 + 2 a b + b^2 $
    比 $a^2 + b^2$ *多了一个中间项* $2 a b$。视觉上 $a^2 + b^2$ 太对称、太像"平方和"，记忆里就把 $2 a b$ 偷偷省掉了。

    *正确做法*：$a^2 + b^2$ 在实数范围内*不能*因式分解成两个整式的乘积。$9 + 16 = 25$ 就是 $25$，写不成单一平方。

    若题目问的是 $(3 + 4)^2$，那就老实展开：$9 + 24 + 16 = 49$。两者差的 $24 = 2 dot 3 dot 4$ 正是那个被省掉的中间项。

    ✓ 正确结论：$9 + 16 = 25 != (3 + 4)^2$。
  ]

  其余常见走错：

  ✗ 平方差用错符号 → ✓ $a^2 - b^2 = (a + b)(a - b)$；$a^2 + b^2$ 不能拆；$b^2 - a^2 = (b + a)(b - a) = -(a^2 - b^2)$。

  ✗ 中间项只验数字大小、忽略符号 → ✓ $x^2 - 10 x + 25 = (x - 5)^2$、$x^2 + 10 x + 25 = (x + 5)^2$，符号跟着中间项走。
]

#side-hack[
  *两条路对比：逐项展开 vs 套特殊公式*

  #table(
    columns: (auto, 1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*情境*], [*方法 A：逐项展开*], [*方法 B：套平方差 / 完全平方公式*],
    [何时更快], [两括号不是共轭关系也不是自乘（如 $(3 x + 2 y)(2 x - y)$）：按 $(a + b)(c + d) = a c + a d + b c + b d$ 展开四项，结果可靠], [两括号只差一个符号（如 $(3 x + 2)(3 x - 2) = 9 x^2 - 4$）或同一括号自乘（如 $(5 a - 4)^2 = 25 a^2 - 40 a + 16$）：一步写出结果，心算快三倍],
    [典型陷阱], [四项展开漏中间交叉项：$(a + b)(c + d)$ 的 $a d$ 和 $b c$ 各算一次，最容易少写一个], [完全平方漏中间项：$(a + b)^2 != a^2 + b^2$；必须加上 $2 a b$；另外 $a^2 + b^2$ 在实数范围内不能分解，不要乱套],
    [建议先用], [混合类型或括号里三项以上时先逐项展开，再整理；不确定是否符合公式时也先展开对比], [一眼看出"两括号共轭"或"同一括号自乘"时直接套；对大数心算（$103 times 97 = 100^2 - 3^2 = 9991$）公式法明显更快],
  )

  *经验法则*：$(A + B)(A - B)$ → 平方差；$(A plus.minus B)^2$ → 完全平方；其余乘法逐项展开。"能不能套公式"的唯一判据：两括号是否共轭，或是否同一括号自乘。
]

#mastery[
  *基础*

  + 正用公式展开：
    - $(4 r + 3)(4 r - 3)$
    - $(3 a + 5 b)^2$
    - $(x^2 - 1)^2$
  + 用公式反用（因式分解）：
    - $49 - 9 t^2$
    - $m^2 + 6 m + 9$
    - $9 n^2 - 24 n + 16$

  *应用*

  + 用平方差公式计算 $51 times 49$、$998 times 1002$。
  + 判断下列哪些是完全平方式；是的把它写成平方形式：
    - $y^2 + 16 y + 64$
    - $4 p^2 + 4 p + 1$
    - $x^2 - 5 x + 4$
  + 把 $x^2 - 4 y^2 + 8 y - 4$ 整理并因式分解。（提示：先把后三项合成完全平方，再用平方差。）

  *挑战*

  + 利用恒等式计算 $(101)^2 - (99)^2$，并写出两种不同的做法。
  + 已知 $a + b = 6$，$a b = 7$，求 $a^2 + b^2$ 与 $(a - b)^2$。
  + 证明：对任意实数 $x$，都有 $x^2 + 1 >= 2 x$。（提示：把 $x^2 - 2 x + 1$ 写成完全平方。）
  + *[反直觉]* 小齐说："$(a + b)^2 = a^2 + b^2$，因为括号里是加法，平方就分别加。" 用 $a = 3, b = 4$ 计算左右两边证明她错了，并指出漏掉的项以及为什么"分配律不能套到平方上"。
  + *[跨知识点]* 用平方差公式快速分解 $x^4 - 16$。提示：先看成两个平方差的复合，分解后再判断各因子能否继续分解（呼应 #secref("tool:al02-factorization-as-reverse")）。
  + *[构造题]* 构造一个三项式 $a x^2 + b x + c$，要求 $a, b, c$ 都是非零整数，且能写成完全平方 $(p x + q)^2$ 的形式。给出 $a, b, c$ 与对应的 $p, q$。再问：如果给定 $a = 4$，$c = 9$，要使式子是完全平方，$b$ 必须是哪两个数？为什么有两个？

  #answer-cut[

  *基础*
  + $16 r^2 - 9$（平方差公式）；$9 a^2 + 30 a b + 25 b^2$（完全平方公式）；$x^4 - 2 x^2 + 1$（完全平方公式）。
  + $49 - 9 t^2 = (7 + 3 t)(7 - 3 t)$（平方差公式）；$m^2 + 6 m + 9 = (m + 3)^2$（完全平方公式）；$9 n^2 - 24 n + 16 = (3 n - 4)^2$（中间项匹配）。

  *应用*
  + $51 times 49 = 50^2 - 1 = 2499$；$998 times 1002 = 1000^2 - 2^2 = 999996$。
  + $y^2 + 16 y + 64 = (y + 8)^2$；$4 p^2 + 4 p + 1 = (2 p + 1)^2$；$x^2 - 5 x + 4$ 不是完全平方（$5 != 2 dot 1 dot 2 = 4$）。
  + $x^2 - 4 y^2 + 8 y - 4 = x^2 - (4 y^2 - 8 y + 4) = x^2 - (2 y - 2)^2 = (x + 2 y - 2)(x - 2 y + 2)$。

  *挑战*
  + 做法 1：$(101)^2 - (99)^2 = (101 + 99)(101 - 99) = 200 times 2 = 400$。做法 2：直接算 $10201 - 9801 = 400$。
  + $a^2 + b^2 = (a + b)^2 - 2 a b = 36 - 14 = 22$；$(a - b)^2 = a^2 - 2 a b + b^2 = 22 - 14 = 8$。
  + $x^2 - 2 x + 1 = (x - 1)^2 >= 0$，即 $x^2 + 1 >= 2 x$，当且仅当 $x = 1$ 时取等。
  + 左边 $49$、右边 $25$，差 $24$。提示：$(a + b)^2$ 展开后比 $a^2 + b^2$ 多一个交叉项；想想这个交叉项怎么来的，以及为什么乘方对加法没有分配律。
  + $x^4 - 16 = (x^2)^2 - 4^2 = (x^2 + 4)(x^2 - 4)$；继续分：$x^2 - 4 = (x + 2)(x - 2)$ 还能用平方差，$x^2 + 4$ 在实数范围内不能再分（无实平方根）。所以 $x^4 - 16 = (x^2 + 4)(x + 2)(x - 2)$（呼应 #secref("tool:al02-factorization-as-reverse")：分解到不能再分为止）。
  + 例：$4 x^2 + 12 x + 9 = (2 x + 3)^2$，对应 $a = 4, b = 12, c = 9$，$p = 2, q = 3$。给定 $a = 4, c = 9$ 时要 $(p x + q)^2 = p^2 x^2 + 2 p q x + q^2$ 与原式匹配，需 $p^2 = 4 ⇒ p = ±2$，$q^2 = 9 ⇒ q = ±3$，中间项 $b = 2 p q$。同号得 $b = ±12$（即 $b = 12$ 对应 $(2 x + 3)^2$ 或 $(-2 x - 3)^2$；$b = -12$ 对应 $(2 x - 3)^2$ 或 $(-2 x + 3)^2$）。所以 $b$ 有两个值 $±12$，原因是 $p, q$ 各自有正负两种符号选择，但它们必须满足 $2 p q$ 同号才有解。
  ]
]
