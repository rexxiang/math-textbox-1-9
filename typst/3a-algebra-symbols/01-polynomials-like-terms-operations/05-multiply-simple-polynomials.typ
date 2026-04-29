#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 整式乘法：三种搭配一次打通 <tool:al01-multiply-polynomials>

#vocab[单项式乘法 monomial multiplication][指数相加法则 law of exponents (product)][多项式乘法 polynomial multiplication]

#crisis[
  一块长方形园地长 $(x + 5)$ 米、宽 $(x + 2)$ 米，求面积的整式表达式。

  这不是“一个数乘一个括号”——这是“一个括号乘另一个括号”。按 #secref("pf02-order-laws") 的分配律能不能做？怎么做才不会漏项、不会乱符号？

  更一般地，整式相乘有三种典型搭配：

  - *单项式 × 单项式*：$3 x^2 dot 4 x^3 = ?$（系数、字母、指数各自怎么处理？）
  - *单项式 × 多项式*：$2 a (a - b + 3) = ?$（这是分配律的直接应用。）
  - *多项式 × 多项式*：$(x + 5)(x + 2) = ?$（前一个括号的每一项，都得去和后一个括号的每一项握一次手。）

  这一节的任务，就是把这三种情形按顺序依次讲清楚。
]

#tryit[
  + $(x + 5)(x + 2)$
]

#discovery[
  *先用旧工具试试。* 计算 $(x+5)(x+2)$，类比整数乘法 $15 times 12$——感觉也许"首项乘首项、尾项乘尾项"就够了：$x times x = x^2$，$5 times 2 = 10$，猜测答案是 $x^2 + 10$。

  试着推下去——

  取 $x = 3$：$(3 + 5)(3 + 2) = 8 times 5 = 40$。但 $x^2 + 10 = 9 + 10 = 19$——差了 $21$，明显不对。缺少的是 $x times 2 + 5 times x = 7x$；加上后 $x^2 + 7x + 10$，代入 $x = 3$ 得 $9 + 21 + 10 = 40$ ✓。

  *这里卡住了。* 只"首乘首、尾乘尾"会漏掉*中间的交叉项*——第一个括号的每一项必须与第二个括号的每一项各乘一次，否则必然漏项。我们需要一条规则保证*不漏握手、不多握手*地展开所有配对。

  *从单项式相乘说起*

  $ 3 x^2 dot 4 x^3 = (3 dot 4) dot (x^2 dot x^3) $

  系数乘系数，字母乘字母。字母怎么乘？$x^2 dot x^3 = (x dot x)(x dot x dot x) = x^5$——把指数*相加*即可。结论：

  $ x^m dot x^n = x^(m + n) quad (m, n "都是正整数") $

  所以 $3 x^2 dot 4 x^3 = 12 x^5$。多字母情形也一样，按字母分别处理：$(-2 a^2 b)(3 a b^3) = -6 a^(2+1) b^(1+3) = -6 a^3 b^4$。

  *单项式乘多项式*

  照搬 #secref("pf02-order-laws") 的分配律：

  $ 2 a (a - b + 3) = 2 a dot a + 2 a dot (-b) + 2 a dot 3 = 2 a^2 - 2 a b + 6 a $

  就一条口诀：*单项式必须乘到括号里的每一项*，包括负号项和常数项。

  *多项式乘多项式*

  把前一个括号先当“一块”看：

  $ (x + 5)(x + 2) = x (x + 2) + 5 (x + 2) $

  两次单项式乘多项式，再相加：

  $ = x^2 + 2 x + 5 x + 10 = x^2 + 7 x + 10 $

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#1565C0")
      let orange = rgb("#E65100")
      let green = rgb("#2E7D32")
      let purple = rgb("#6A1B9A")
      let light-blue = rgb("#E3F2FD")
      let light-orange = rgb("#FFF3E0")
      let light-green = rgb("#E8F5E9")
      let light-purple = rgb("#F3E5F5")

      let w1 = 6
      let w2 = 3
      let h1 = 6
      let h2 = 4

      // Four cells with fills
      rect((0, 0), (w1, h2), fill: light-orange, stroke: 0.8pt)
      rect((w1, 0), (w1 + w2, h2), fill: light-purple, stroke: 0.8pt)
      rect((0, h2), (w1, h2 + h1), fill: light-blue, stroke: 0.8pt)
      rect((w1, h2), (w1 + w2, h2 + h1), fill: light-green, stroke: 0.8pt)

      // Cell labels
      content((w1 / 2, h2 + h1 / 2), text(size: 11pt, fill: blue, weight: "bold")[$x^2$])
      content((w1 + w2 / 2, h2 + h1 / 2), text(size: 11pt, fill: green, weight: "bold")[$2 x$])
      content((w1 / 2, h2 / 2), text(size: 11pt, fill: orange, weight: "bold")[$5 x$])
      content((w1 + w2 / 2, h2 / 2), text(size: 11pt, fill: purple, weight: "bold")[$10$])

      // Top dimension labels
      content((w1 / 2, h2 + h1 + 1.2), text(size: 10pt, weight: "bold")[$x$])
      content((w1 + w2 / 2, h2 + h1 + 1.2), text(size: 10pt, weight: "bold")[$2$])
      line((0.3, h2 + h1 + 0.5), (w1 - 0.3, h2 + h1 + 0.5), stroke: 0.6pt, mark: (start: ">", end: ">"))
      line((w1 + 0.3, h2 + h1 + 0.5), (w1 + w2 - 0.3, h2 + h1 + 0.5), stroke: 0.6pt, mark: (start: ">", end: ">"))

      // Left dimension labels
      content((-1.5, h2 + h1 / 2), text(size: 10pt, weight: "bold")[$x$])
      content((-1.5, h2 / 2), text(size: 10pt, weight: "bold")[$5$])
      line((-0.5, h2 + 0.3), (-0.5, h2 + h1 - 0.3), stroke: 0.6pt, mark: (start: ">", end: ">"))
      line((-0.5, 0.3), (-0.5, h2 - 0.3), stroke: 0.6pt, mark: (start: ">", end: ">"))
    }),
    caption: [面积模型：$(x + 5)(x + 2)$ 的四块拼合],
  )

  一般地：

  $ (a + b)(c + d) = a c + a d + b c + b d $

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#1565C0")
      let red = rgb("#C62828")
      let green = rgb("#2E7D32")
      let orange = rgb("#E65100")

      let lx = 2
      let rx = 12
      let y-top = 4
      let y-bot = 0
      let gap = 3

      // Left bracket terms
      content((lx, y-top), text(size: 12pt, weight: "bold")[$a$])
      content((lx, y-bot), text(size: 12pt, weight: "bold")[$b$])

      // Right bracket terms
      content((rx, y-top), text(size: 12pt, weight: "bold")[$c$])
      content((rx, y-bot), text(size: 12pt, weight: "bold")[$d$])

      // Bracket labels
      content((lx, y-top + 1.5), text(size: 9pt, fill: luma(100))[\( 第一个括号 \)])
      content((rx, y-top + 1.5), text(size: 9pt, fill: luma(100))[\( 第二个括号 \)])

      // Lines: a→c, a→d, b→c, b→d
      line((lx + 0.6, y-top + 0.1), (rx - 0.6, y-top + 0.1), stroke: 1.2pt + blue, mark: (end: ">"))
      content(((lx + rx) / 2, y-top + 0.9), text(size: 8pt, fill: blue)[$a c$])

      line((lx + 0.6, y-top - 0.3), (rx - 0.6, y-bot + 0.5), stroke: 1.2pt + green, mark: (end: ">"))
      content(((lx + rx) / 2 + 2.2, (y-top + y-bot) / 2 + 0.9), text(size: 8pt, fill: green)[$a d$])

      line((lx + 0.6, y-bot + 0.3), (rx - 0.6, y-top - 0.5), stroke: 1.2pt + orange, mark: (end: ">"))
      content(((lx + rx) / 2 - 2.2, (y-top + y-bot) / 2 - 0.9), text(size: 8pt, fill: orange)[$b c$])

      line((lx + 0.6, y-bot - 0.1), (rx - 0.6, y-bot - 0.1), stroke: 1.2pt + red, mark: (end: ">"))
      content(((lx + rx) / 2, y-bot - 0.9), text(size: 8pt, fill: red)[$b d$])
    }),
    caption: ["握手"图：$(a + b)(c + d)$ 展开时的四次配对],
  )

  前面括号的每一项要和后面括号的每一项各乘一次——一共*项数相乘*次乘法。别漏握手，也别握两遍。
]

#side-hack[
  “$(a+b)(c+d)$ 展开后刚好 $4$ 项”这件事值得背在心里：两项乘两项，展开一定是 $4$ 个乘积（可能有同类项合并）。如果你发现自己写出了 $3$ 项，多半漏握了一次。
]

#tryit[
  展开并整理，动手做完再看下面的方法总结 例题。

  + $2 a (a - b + 3)$
]

#blueprint[
  *工具一：单项式乘单项式*

  系数相乘，相同字母的*指数相加*，不同字母原样保留。

  *例 1*：$(-2 a^2 b)(3 a b^3) = -6 a^3 b^4$。

  *工具二：单项式乘多项式*

  $ k (a_1 + a_2 + dots.c + a_n) = k a_1 + k a_2 + dots.c + k a_n $

  单项式必须分配到*括号里的每一项*。

  *例 2*：$-3 x (2 x^2 - x + 4) = -6 x^3 + 3 x^2 - 12 x$。

  *工具三：多项式乘多项式*

  $ (a + b)(c + d) = a c + a d + b c + b d $

  前一个括号的每一项和后一个括号的每一项各乘一次，最后合并同类项。

  *例 3*：$(x + 5)(x + 2) = x^2 + 2 x + 5 x + 10 = x^2 + 7 x + 10$。

  *例 4*：$(2 x - 3)(x + 4) = 2 x^2 + 8 x - 3 x - 12 = 2 x^2 + 5 x - 12$。

  *例 5*：$(x + 1)(x^2 - x + 2) = x^3 - x^2 + 2 x + x^2 - x + 2 = x^3 + x + 2$。
]

#pitfall[
  *高频错误*

  ✗ 单项式乘多项式时漏乘常数项
  → ✓ $2 a (a - b + 3)$ 的那个 $3$ 也要被 $2 a$ 乘到，不能只乘字母项。

  ✗ 把 $x^m dot x^n$ 写成 $x^(m dot n)$
  → ✓ 指数是*相加*，不是相乘：$x^2 dot x^3 = x^5$，不是 $x^6$。

  ✗ 两括号展开时漏握手
  → ✓ $(a + b)(c + d)$ 必须写出 $a c, a d, b c, b d$ 四个乘积；别把 $b$ 只乘到 $c$ 就收手。

  ✗ 对符号掉以轻心
  → ✓ $(2 x - 3)(x + 4)$ 里的 $-3$ 要带着负号参与每一次乘法，不要到最后再拍脑袋补负号。
]

#mastery[
  *基础*

  + 计算：
    - $(-4 m^3)(5 m^2)$
    - $6 a^2 b dot (-(1/3) a b^2)$
  + 展开：
    - $4 y (y^2 - 2 y + 5)$
    - $-(1/2) p (4 p - 6 q + 8)$
  + 展开并整理：
    - $(a + 3)(a - 4)$
    - $(2 n - 1)(n + 5)$

  *应用*

  + 一块长方形菜地长 $(3 a + 2 b)$ 米，宽 $(a + b)$ 米。先写面积的整式，再展开化简。
  + 展开 $(2 x + 3)(x^2 - x + 4)$，整理为降幂排列。
  + 比较 $(m + 2)(m - 2)$ 和 $m^2 - 4$：它们是不是同一个式子？把展开过程写完整。

  *挑战*

  + 展开并整理：$(x + y)(x - y)(x^2 + y^2)$。
  + 若 $(x + a)(x + b) = x^2 + 5 x + 6$，求所有可能的 $(a, b)$。
  + 用 $(a + b)(c + d)$ 的展开规则解释“两位数乘两位数”的竖式是怎么来的——用 $(10 u + v)(10 s + t)$ 说明即可。

  + *[反直觉]*：展开 $(x + 1)^2 - (x - 1)^2$。你以为结果含 $x^2$，实际结果是什么？这说明了什么结构现象？
  + *[组合]*：若 $a + b = 5$、$a b = 3$，不求出 $a, b$ 的具体值，直接计算 $(a + b)^2 - 2 a b$（即 $a^2 + b^2$）的值。
  + *[构造题]*：写出两个不同的一次二项式，使它们的乘积展开后中间项（$x$ 的系数）为 $0$。

#answer-cut[

  *基础*
  + $-20 m^5$；$-2 a^3 b^3$。（指数相加法则）
  + $4 y^3 - 8 y^2 + 20 y$；$-2 p^2 + 3 p q - 4 p$。（分配律）
  + $a^2 - a - 12$；$2 n^2 + 9 n - 5$。（多项式乘法 + 合并同类项）

  *应用*
  + 面积 $= (3 a + 2 b)(a + b) = 3 a^2 + 3 a b + 2 a b + 2 b^2 = 3 a^2 + 5 a b + 2 b^2$。
  + $(2 x + 3)(x^2 - x + 4) = 2 x^3 - 2 x^2 + 8 x + 3 x^2 - 3 x + 12 = 2 x^3 + x^2 + 5 x + 12$。
  + 展开 $(m + 2)(m - 2) = m^2 - 2 m + 2 m - 4 = m^2 - 4$。是同一个式子。

  *挑战*
  + $(x + y)(x - y) = x^2 - y^2$；$(x^2 - y^2)(x^2 + y^2) = x^4 - y^4$。
  + $a + b = 5$，$a b = 6$，所以 $(a, b) = (2, 3)$ 或 $(3, 2)$。
  + $(10 u + v)(10 s + t) = 100 u s + 10 u t + 10 v s + v t$。四项正好对应竖式里的四部分：百位 $u s$、两个十位 $u t$ 与 $v s$、个位 $v t$——把它们按位对齐相加，就是竖式乘法。
  + 展开：$(x^2 + 2x + 1) - (x^2 - 2x + 1) = 4x$。结果没有 $x^2$ 和常数项——$x^2$ 项互相抵消了（完全平方展开 + 合并同类项，两式相减让高次项消失）。
  + $a^2 + b^2 = (a+b)^2 - 2a b = 25 - 6 = 19$（展开公式组合 + 韦达关系预热：不需要解出 $a, b$）。
  + *[构造题]*：设两个一次二项式 $(x + p)(x + q) = x^2 + (p+q)x + p q$，中间项为 $0$ 要求 $p + q = 0$，即 $q = -p$。例：$(x + 3)(x - 3) = x^2 - 9$；$(x + 5)(x - 5) = x^2 - 25$（多项式乘法 + 构造思路：互为相反数的项消去）。
]
]
