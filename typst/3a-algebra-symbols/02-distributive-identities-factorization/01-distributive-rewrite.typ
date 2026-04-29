#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut, self-check
#import "../../lib/diagram-packages.typ": cetz

=== 分配律的双向使用 <tool:al02-distributive-rewrite>

#vocab[乘法分配律 distributive law][提公因式 factoring out the common factor]

#crisis[
  在 #secref("pf02-order-laws") 里，分配律只被当成“乘开括号”的工具：

  $ 3 (x + 4) = 3 x + 12 $

  但现实里常常来的是反方向：

  - 你看到 $5 a + 5 b$，有没有办法写得更短？
  - 你看到 $6 x^2 + 9 x$，它和“长 $times$ 宽”之间能不能写成乘积形状？
  - 你看到 $x (y - 3) + 4 (y - 3)$，这里的 $(y - 3)$ 能不能被“拎”出来？

  分配律其实是一条双向公路——一头叫“乘开”，另一头叫“提公因式”。这一节就要把这条公路两端都走熟。
]

#tryit[
  + 提公因式：$x(y + 2) + 5(y + 2)$
]

#discovery[
  先把“乘开”和“提公因式”并排写出来：

  $ "乘开：" quad a (b + c) = a b + a c \
    "提公因式：" quad a b + a c = a (b + c) $

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue-fill = rgb("#BBDEFB")
      let orange-fill = rgb("#FFE0B2")
      let blue = rgb("#1565C0")
      let orange = rgb("#E65100")

      let h = 5
      let w1 = 5
      let w2 = 3.5

      // Left part: area ab
      rect((0, 0), (w1, h), fill: blue-fill, stroke: 0.8pt)
      // Right part: area ac
      rect((w1, 0), (w1 + w2, h), fill: orange-fill, stroke: 0.8pt)
      // Outer boundary
      rect((0, 0), (w1 + w2, h), stroke: 1.2pt)

      // Dashed divider
      line((w1, 0), (w1, h), stroke: (dash: "dashed", thickness: 0.6pt))

      // Height label
      content((-1.2, h / 2), text(size: 11pt)[$a$])
      // Width labels
      content((w1 / 2, h + 0.8), text(size: 11pt)[$b$])
      content((w1 + w2 / 2, h + 0.8), text(size: 11pt)[$c$])

      // Area labels inside
      content((w1 / 2, h / 2), text(size: 11pt, fill: blue)[$a b$])
      content((w1 + w2 / 2, h / 2), text(size: 11pt, fill: orange)[$a c$])

      // Total width
      content(((w1 + w2) / 2, -1), text(size: 10pt)[总面积 $= a(b + c)$])
    }),
    caption: [分配律的面积模型：高 $a$、宽 $b + c$ 的长方形，面积既是 $a(b+c)$，也是 $a b + a c$]
  )

  两行是同一条规则，读法不同而已。

  *什么叫提公因式？*

  在 $5 a + 5 b$ 里，每一项都带 $5$。把这个共同部分拎到括号外：

  $ 5 a + 5 b = 5 (a + b) $

  那 $6 x^2 + 9 x$ 呢？

  #self-check[
    合上书或遮住下面，先自己写一个回答，再读后续。具体写：找出 $6x^2 + 9x$ 的公因式，把它提出来，写出提完后的式子，再往下读。
  ]

  两项系数有公因数 $3$，字母有公共的 $x$，所以公因式是 $3 x$：

  $ 6 x^2 + 9 x = 3 x (2 x + 3) $

  *公因式是整式也可以*

  $x(y - 3) + 4(y - 3)$ 里，两项共同的“公因式”是整式 $(y - 3)$，直接拎出来：

  $ x(y - 3) + 4(y - 3) = (y - 3)(x + 4) $

  整式做公因式和数字做公因式没有本质区别——它只是个“共同的乘数”。

  *提公因式的判据*

  找公因式时，*系数取最大公因数，相同字母取最低次幂*；括号里填的是原式每一项除以公因式后的结果。写完后可以验证：把它乘回去，能得到原式，就算提对了。
]

#side-hack[
  一个万用检查：提完公因式后，反向乘开一下，能回到原式才算对。这是免费、可靠、不需要背的“对答案”法。
]

#tryit[
  + 提公因式：$8 m^2 - 12 m$
]

#history-note[
  约公元前 300 年，欧几里得（Euclid）在《原本》第二卷命题 1 中，用矩形面积的分拆证明了 $a(b + c) = a b + a c$——这是分配律最早的严格论证。公元 820 年前后，波斯数学家花拉子密（al-Khwārizmī）在《代数学》中大量隐式运用同一法则来展开和化简方程。不过，“分配律”（_distributive_）这个正式名称要等到 1814 年才由法国军官数学家塞尔瓦（François-Joseph Servois）在一篇关于运算性质的论文中命名。

  ☞ 历史接力 → 韦达 $1591$ 年大量使用分配律展开通用代数式，为今天的多项式运算奠基；代数分支完整展开见 #secref("al02-distributive-rewrite")。
]

#blueprint[
  *工具一：分配律 · 正向（乘开）*

  $ a (b + c) = a b + a c, quad a (b - c) = a b - a c $

  *例 1*：$-2(3 a - 4 b + 1) = -6 a + 8 b - 2$。

  *工具二：分配律 · 反向（提公因式）*

  识别每一项共同的乘数，把它“拎”到括号外。数字取 GCD，字母取最低次幂。

  *例 2*：$8 m^2 - 12 m$

  - 系数公因数 $4$；字母公因式 $m$；公因式 $= 4 m$。
  - $8 m^2 - 12 m = 4 m (2 m - 3)$。

  *例 3*：$x(y + 2) + 5(y + 2)$

  公因式就是整式 $(y + 2)$：

  $ x(y + 2) + 5(y + 2) = (y + 2)(x + 5) $

  *例 4*（提负号）：$-6 x^2 + 9 x = -3 x (2 x - 3)$。

  提出负号能让括号里首项更干净；它改变每一项的符号，不改变值。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#1565C0")
      let green = rgb("#2E7D32")
      let light-blue = rgb("#E3F2FD")
      let light-green = rgb("#E8F5E9")

      // Left box: factored form
      rect((0, 0), (7, 3), fill: light-blue, stroke: 0.8pt + blue, radius: 0.3)
      content((3.5, 1.5), text(size: 11pt, fill: blue)[$a(b + c)$])

      // Right box: expanded form
      rect((12, 0), (19, 3), fill: light-green, stroke: 0.8pt + green, radius: 0.3)
      content((15.5, 1.5), text(size: 11pt, fill: green)[$a b + a c$])

      // Top arrow: expand (left → right)
      line((7.2, 2.2), (11.8, 2.2), stroke: 0.8pt + blue, mark: (end: ">", fill: blue))
      content((9.5, 2.9), text(size: 9pt, fill: blue)[展开（乘开）])

      // Bottom arrow: factor (right → left)
      line((11.8, 0.8), (7.2, 0.8), stroke: 0.8pt + green, mark: (end: ">", fill: green))
      content((9.5, 0.1), text(size: 9pt, fill: green)[提公因式])
    }),
    caption: ["乘开"与"提公因式"是分配律的正反两个方向]
  )
]

#pitfall[
  Kofi 这样提公因式：

  #block(inset: (left: 12pt))[
    *题目*：把 $4 m^2 + 4 m$ 因式分解。

    第 1 行：两项都有 $4 m$。

    第 2 行：第一项 $4 m^2 = 4 m dot m$，第二项 $4 m = 4 m dot m$。

    第 3 行：所以 $4 m^2 + 4 m = 4 m (m + m) = 4 m dot 2 m = 8 m^2$。
  ]

  ✎ 检验：代入 $m = 1$，原式 $= 4 + 4 = 8$，Kofi 的答案 $8 m^2 = 8$，恰巧对得上——可代 $m = 2$，原式 $= 16 + 8 = 24$，Kofi 的答案 $8 m^2 = 32$。错在哪？

  #block(width: 100%, fill: rgb("#FFFDE7"), radius: 2pt, inset: 8pt)[
    *卡在哪里*：第 2 行的 $4 m = 4 m dot m$ 是错的——$4 m dot m = 4 m^2$，不是 $4 m$。Kofi 想"把每一项都凑成 $4 m$ 乘点东西"，对第二项硬塞了一个多余的 $m$。第二项 $4 m$ 提出 $4 m$ 后剩下的*恰好就是 $1$*，不是 $m$。

    *正确做法*：
    $ 4 m^2 + 4 m = 4 m dot m + 4 m dot 1 = 4 m (m + 1) $

    剩下的那个 $1$ 不能省——少写一个 $1$，括号里就缺一项，结果整体就错。

    ✓ 正确答案：$4 m (m + 1)$。
  ]

  其余常见走错：

  ✗ 只提到系数，忽略字母公因式 → ✓ $6 x^2 + 9 x$ 的公因式是 $3 x$（连字母一并提），完整写法 $3 x (2 x + 3)$。

  ✗ 提负号时只把第一项变号 → ✓ 提出 $-1$ 后，*原式每一项都要变号*。
]

#mastery[
  *基础*

  + 乘开并整理：
    - $-3(2 u - 5 v + 1)$
    - $(1/2)(4 p + 6 q - 8)$
  + 提公因式：
    - $10 a b - 15 b^2$
    - $4 x^3 + 2 x^2 - 6 x$
  + 用整式做公因式提：
    - $a(x - y) - b(x - y)$
    - $2 m(p + 3) + 5(p + 3)$

  *应用*

  + 将 $a^2 b - a b^2$ 先提公因式，再说一说它表示什么样的几何意义（提示：把 $a b$ 看作一块基础面积）。
  + 用分配律快速算：$102 times 36 - 2 times 36$。
  + 化简并因式分解：$3 x (x + 1) - 2 (x + 1)$。

  *挑战*

  + 因式分解 $x(a - b) + y(b - a)$（提示：$(b - a) = -(a - b)$）。
  + 若 $m a + m b + m c = 45$，且 $a + b + c = 9$，求 $m$ 的值。
  + 设 $A = 3 x (y + 2) + 5(y + 2)$，$B = (y + 2)(3 x + 5) - 4$。比较 $A$ 和 $B$，说明它们的关系。
  + *估算 / 量级题*：用分配律估算 $99 times 101$，不用计算器，在 $5$ 秒内给出答案。写出你的思路（提示：把 $99$ 和 $101$ 都改写为 $100 plus.minus 1$）。
  + *[反例 / 找 Bug]*：小明写 $(a + b)^2 = a^2 + b^2$。请用 $a = 3, b = 4$ 反驳，并用分配律完整展开 $(a + b)(a + b)$，指出他遗漏了哪一项；这与 #secref("tool:al02-special-identities") 即将证明的"完全平方公式"是同一回事。
  + *[构造题]*：构造一个三项整式 $A x + B y + C z$（$A, B, C$ 为不全相同的整数），使得它能整体提取一个非平凡公因式（即不是 $1$ 或 $-1$）。给一例并写出提取后的形式；再说明在什么条件下"无公因式"恰好成立。

  #answer-cut[

  *基础*
  + $-6 u + 15 v - 3$；$2 p + 3 q - 4$。（分配律展开）
  + $5 b (2 a - 3 b)$；$2 x (2 x^2 + x - 3)$。（提公因式）
  + $(x - y)(a - b)$；$(p + 3)(2 m + 5)$。（整式公因式提取）

  *应用*
  + $a^2 b - a b^2 = a b (a - b)$。几何意义：一个长 $a b$、宽 $(a - b)$ 的长方形面积——以 $a b$ 为基底，宽度则是 $a$ 与 $b$ 的差。
  + $102 times 36 - 2 times 36 = 36 times (102 - 2) = 36 times 100 = 3600$。
  + $3 x (x + 1) - 2 (x + 1) = (x + 1)(3 x - 2)$。

  *挑战*
  + $x(a - b) + y(b - a) = x(a - b) - y(a - b) = (a - b)(x - y)$。
  + $m (a + b + c) = 45$，即 $9 m = 45$，$m = 5$。
  + $A = (y + 2)(3 x + 5)$；而 $B = (y + 2)(3 x + 5) - 4$，所以 $B = A - 4$，即 $A - B = 4$。
  + $99 times 101 = (100 - 1)(100 + 1) = 100^2 - 1^2 = 10000 - 1 = 9999$。这正是平方差公式 $(a-b)(a+b) = a^2 - b^2$，一种分配律的直接应用。
  + 反例：$a = 3, b = 4$，$(a + b)^2 = 49$，$a^2 + b^2 = 9 + 16 = 25$，$49 != 25$。完整展开 $(a + b)(a + b) = a(a + b) + b(a + b) = a^2 + a b + b a + b^2 = a^2 + 2 a b + b^2$。小明丢了交叉项 $2 a b$。这就是 #secref("tool:al02-special-identities") 的完全平方公式。
  + 一例：$6 x + 9 y + 12 z = 3(2 x + 3 y + 4 z)$（公因式 $3$）；或 $2 a x + 4 a y + 6 a z = 2 a (x + 2 y + 3 z)$（公因式 $2 a$）。"无非平凡公因式"成立当且仅当三系数的最大公因数 $gcd(A, B, C) = 1$ 且无变量公因子，例如 $2 x + 3 y + 5 z$（$gcd(2,3,5) = 1$）。
  ]
]
