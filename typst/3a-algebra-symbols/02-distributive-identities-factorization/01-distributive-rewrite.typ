#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref
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

#history-note[
  欧几里得《原本》第二卷已经在用“面积重排”来证明形如 $a(b + c) = a b + a c$ 的事实。分配律并不只是计算规则——它是“把一块面积拆成两块”或“把两块拼回一块”的代数版本。
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

  那 $6 x^2 + 9 x$ 呢？两项系数有公因数 $3$，字母有公共的 $x$，所以公因式是 $3 x$：

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
  不看后面，先自己做这三题：

  + 乘开：$-2(3 a - 4 b + 1)$
  + 提公因式：$8 m^2 - 12 m$
  + 提公因式：$x(y + 2) + 5(y + 2)$
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
  *高频错误*

  ✗ 提公因式后漏掉“$1$”
  → ✓ $4 m^2 + 4 m$ 里公因式是 $4 m$，结果是 $4 m (m + 1)$，不是 $4 m (m)$——那个 $+1$ 不能省。

  ✗ 只提到系数，忽略字母公因式
  → ✓ $6 x^2 + 9 x$ 的公因式是 $3 x$，不是只提 $3$：完整写法 $3 x (2 x + 3)$。

  ✗ 提负号时只把第一项变号
  → ✓ 括号前提出 $-1$ 后，*原式每一项都要变号*，这是分配律的一致性要求。
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

  *挑战 ☞ 选做*

  + 因式分解 $x(a - b) + y(b - a)$（提示：$(b - a) = -(a - b)$）。
  + 若 $m a + m b + m c = 45$，且 $a + b + c = 9$，求 $m$ 的值。
  + 设 $A = 3 x (y + 2) + 5(y + 2)$，$B = (y + 2)(3 x + 5) - 4$。比较 $A$ 和 $B$，说明它们的关系。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + $-6 u + 15 v - 3$；$2 p + 3 q - 4$。
  + $5 b (2 a - 3 b)$；$2 x (2 x^2 + x - 3)$。
  + $(x - y)(a - b)$；$(p + 3)(2 m + 5)$。

  *应用*
  + $a^2 b - a b^2 = a b (a - b)$。几何意义：一个长 $a b$、宽 $(a - b)$ 的长方形面积——以 $a b$ 为基底，宽度则是 $a$ 与 $b$ 的差。
  + $102 times 36 - 2 times 36 = 36 times (102 - 2) = 36 times 100 = 3600$。
  + $3 x (x + 1) - 2 (x + 1) = (x + 1)(3 x - 2)$。

  *挑战 ☞ 选做*
  + $x(a - b) + y(b - a) = x(a - b) - y(a - b) = (a - b)(x - y)$。
  + $m (a + b + c) = 45$，即 $9 m = 45$，$m = 5$。
  + $A = (y + 2)(3 x + 5)$；而 $B = (y + 2)(3 x + 5) - 4$，所以 $B = A - 4$，即 $A - B = 4$。
]
