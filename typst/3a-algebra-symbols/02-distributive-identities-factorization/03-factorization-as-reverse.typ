#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut, self-check
#import "../../lib/diagram-packages.typ": cetz

=== 因式分解的流程与“中间项匹配” <tool:al02-factorization-as-reverse>

#vocab[因式分解 factorization][分解流程 factorization procedure][中间项匹配 middle-term match]

#crisis[
  到这里你已经会了两种拆法：

  - 提公因式（#secref("al02-distributive-rewrite")）；
  - 平方差 / 完全平方的反用（#secref("al02-special-identities")）。

  但现实里多项式不会贴好标签等你：$3 x^3 - 12 x$、$2 y^2 + 16 y + 32$、$x^2 + 7 x + 10$，*第一步到底先看哪一样？*

  三样工具都会了，但遇到一道新题，该先用哪个？每次都靠试错，太没方向。
]

#tryit[
  + $3 x^3 - 12 x$
]

#discovery[
  看到 $3x^3 - 12x$，想直接用"中间项匹配"——找两个数使和等于某系数、积等于常数项。但这是三次多项式，不是 $x^2 + b x + c$ 的标准二次三项式形式，中间项匹配的入口条件根本不满足。

  试着推下去——

  硬把 $3x^3 - 12x$ 套成 $x^2 + b x + c$：没有 $x^2$ 项故 $b = 0$，常数项为 $0$ 故 $c = 0$；"找和为 $0$、积为 $0$ 的两数"——$0$ 和 $0$，得 $x(x+0)(x+0) = x^3$；但 $x^3 != 3x^3 - 12x$，系数 $3$ 和 $-12$ 完全未被处理，结果错误。

  中间项匹配要求首项系数为 $1$ 的纯二次三项式；遇到系数不为 $1$ 或次数超过 $2$ 就失效，且题目里还有公因式 $3x$ 没有先提出来——这一步不做，任何后续工具都用不对，结果就是"工具一堆、却不知道先用哪个"。

  *固定顺序：先提 → 再看公式 → 再问“中间项”*

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#1565C0")
      let green = rgb("#2E7D32")
      let orange = rgb("#E65100")
      let purple = rgb("#6A1B9A")
      let light-blue = rgb("#E3F2FD")
      let light-green = rgb("#E8F5E9")
      let light-orange = rgb("#FFF3E0")
      let light-purple = rgb("#F3E5F5")

      let cx = 7

      // Step 1: 有公因式？
      let s1y = 14
      line((cx, s1y + 1.5), (cx + 4, s1y), (cx, s1y - 1.5), (cx - 4, s1y),
        close: true, fill: light-blue, stroke: 0.8pt + blue)
      content((cx, s1y), text(size: 9pt, fill: blue)[有公因式？])
      // Yes → action
      line((cx + 4, s1y), (cx + 8, s1y), stroke: 0.8pt + green, mark: (end: ">", fill: green))
      rect((cx + 8, s1y - 1), (cx + 14, s1y + 1),
        fill: light-green, stroke: 0.8pt + green, radius: 0.2)
      content((cx + 11, s1y), text(size: 9pt, fill: green)[先提出来])
      content((cx + 5.8, s1y + 0.6), text(size: 8pt, fill: green)[是])
      // No ↓
      line((cx, s1y - 1.5), (cx, s1y - 3.5), stroke: 0.8pt, mark: (end: ">"))
      content((cx + 0.8, s1y - 2.5), text(size: 8pt)[否])

      // Step 2: 平方差 / 完全平方？
      let s2y = 9
      line((cx, s2y + 1.5), (cx + 5, s2y), (cx, s2y - 1.5), (cx - 5, s2y),
        close: true, fill: light-orange, stroke: 0.8pt + orange)
      content((cx, s2y), text(size: 8pt, fill: orange)[平方差 / 完全平方？])
      // Yes → action
      line((cx + 5, s2y), (cx + 8, s2y), stroke: 0.8pt + green, mark: (end: ">", fill: green))
      rect((cx + 8, s2y - 1), (cx + 14, s2y + 1),
        fill: light-green, stroke: 0.8pt + green, radius: 0.2)
      content((cx + 11, s2y), text(size: 9pt, fill: green)[套公式])
      content((cx + 6.2, s2y + 0.6), text(size: 8pt, fill: green)[是])
      // No ↓
      line((cx, s2y - 1.5), (cx, s2y - 3.5), stroke: 0.8pt, mark: (end: ">"))
      content((cx + 0.8, s2y - 2.5), text(size: 8pt)[否])

      // Step 3: x² + bx + c ？
      let s3y = 4
      line((cx, s3y + 1.5), (cx + 4.5, s3y), (cx, s3y - 1.5), (cx - 4.5, s3y),
        close: true, fill: light-purple, stroke: 0.8pt + purple)
      content((cx, s3y), text(size: 8pt, fill: purple)[$x^2 + b x + c$ ？])
      // → action
      line((cx + 4.5, s3y), (cx + 8, s3y), stroke: 0.8pt + green, mark: (end: ">", fill: green))
      rect((cx + 8, s3y - 1), (cx + 14, s3y + 1),
        fill: light-green, stroke: 0.8pt + green, radius: 0.2)
      content((cx + 11, s3y), text(size: 9pt, fill: green)[找和积匹配])
      // ↓ to end
      line((cx, s3y - 1.5), (cx, s3y - 3.5), stroke: 0.8pt, mark: (end: ">"))

      // End box
      let ey = -0.8
      rect((cx - 5.5, ey), (cx + 5.5, ey + 1.6),
        fill: rgb("#FFF9C4"), stroke: 0.8pt + rgb("#F57F17"), radius: 0.2)
      content((cx, ey + 0.8), text(size: 9pt, fill: rgb("#E65100"))[每个括号还能再分吗？])
    }),
    caption: [因式分解三步决策流程：按固定顺序逐步排查]
  )

  每道因式分解题，都按下面这条顺序问自己三个问题：

  + *有没有公因式？* 有就先提——连系数和字母都要查；这一步几乎不会错过。
  + *剩下的是不是平方差 / 完全平方？* 照 #secref("al02-special-identities") 的中间项匹配来判断。
  + *是首项系数 $= 1$ 的二次三项式 $x^2 + b x + c$ 吗？* 那就进入“中间项匹配”这一节的新工具——找两个数，*和为 $b$、积为 $c$*。

  *新工具：匹配 $x^2 + b x + c$ 的中间项*

  想要 $x^2 + b x + c = (x + p)(x + q)$，把右边乘开：

  $ (x + p)(x + q) = x^2 + (p + q) x + p q $

  对照两边系数，$p, q$ 必须满足：

  $ p + q = b, quad p dot q = c $

  所以，对 $x^2 + 7 x + 10$：要找两个数，*和是 $7$*、*积是 $10$*——$2$ 和 $5$ 刚好；于是

  $ x^2 + 7 x + 10 = (x + 2)(x + 5) $

  这就是“中间项匹配”的核心。它的成立条件是首项系数 $1$、项数三项、常数项明确。如果 $c$ 是负数，说明 $p$ 和 $q$ *异号*；如果 $c$ 是正数但 $b$ 是负数，说明两数*同负*。

  *分解不彻底是最隐蔽的错*

  $3 x^3 - 12 x$ 的第一步是 $3 x$ 当公因式：

  $ 3 x^3 - 12 x = 3 x (x^2 - 4) $

  到这儿还没完——$x^2 - 4$ 是平方差，还得继续：

  $ = 3 x (x + 2)(x - 2) $

  口诀：*每个括号里不能再分为止。*
]

#side-hack[
  “中间项匹配”被放在一个流水线里：先问公因式，再问公式，*最后*才用它。别急着一上来就找“两个数”——很多时候公因式提完，里面的结构就自动变成公式或没剩下中间项匹配的必要。
]

#tryit[
  按三步顺序做，不要跳步。

  + $x^2 + 7 x + 10$
]

#history-note[
  因式分解的思想可以追溯到古巴比伦（约公元前 1800 年）：泥板上的书吏已经会把 $x^2 - a^2$ 类的问题转化为两个因子的乘积来求解。到了 16—17 世纪，法国数学家韦达（François Viète, 1540–1603）明确建立了“多项式 $= 0$ 的根”与“多项式的因式”之间的对应关系，把因式分解正式确立为解方程的核心工具。这也解释了为什么分解到“每个括号里不能再分”才算完成——因为未分解的因式里可能还藏着方程的根。
]

#blueprint[
  *工具一：因式分解三步流程（图见上）*

  上面 discovery 已经画过流程决策图。这里 *blueprint 不再写文字步骤*——请看完下面的 side-hack 后，再回头看那张流程图，把三步用自己的话写一遍。

  *例 1*：$3 x^3 - 12 x$

  提公因式 $3 x$：$3 x (x^2 - 4)$；$x^2 - 4$ 再用平方差：

  $ 3 x^3 - 12 x = 3 x (x + 2)(x - 2) $

  *例 2*：$2 y^2 + 16 y + 32$

  提 $2$：$2 (y^2 + 8 y + 16)$；$y^2 + 8 y + 16$ 是完全平方：

  $ 2 y^2 + 16 y + 32 = 2 (y + 4)^2 $

  *例 3*：$x^2 + 7 x + 10$

  无公因式；不是完全平方（$7 != 2 dot 1 dot sqrt(10)$）；和为 $7$、积为 $10$ 的两个数是 $2, 5$：

  $ x^2 + 7 x + 10 = (x + 2)(x + 5) $

  *工具二：两数匹配的符号判断表*

  #table(
    columns: (1fr, 1fr, 2fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*$c$ 的符号*], [*$b$ 的符号*], [*$p, q$ 的符号*],
    [$+$], [$+$], [两正数],
    [$+$], [$-$], [两负数],
    [$-$], [$+$], [一正一负，正数绝对值更大],
    [$-$], [$-$], [一正一负，负数绝对值更大],
  )

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#1565C0")
      let red = rgb("#C62828")
      let green = rgb("#2E7D32")
      let orange = rgb("#E65100")
      let light-blue = rgb("#E3F2FD")
      let light-red = rgb("#FFEBEE")
      let light-green = rgb("#E8F5E9")
      let light-orange = rgb("#FFF3E0")

      let w = 7
      let h = 5

      // Grid frame
      rect((0, 0), (2 * w, 2 * h), stroke: 1.2pt)
      line((w, 0), (w, 2 * h), stroke: 0.8pt)
      line((0, h), (2 * w, h), stroke: 0.8pt)

      // Column headers
      content((w / 2, 2 * h + 1), text(size: 10pt, fill: blue)[$c > 0$])
      content((w + w / 2, 2 * h + 1), text(size: 10pt, fill: red)[$c < 0$])
      // Row headers
      content((-1.8, h + h / 2), text(size: 10pt, fill: blue)[$b > 0$])
      content((-1.8, h / 2), text(size: 10pt, fill: red)[$b < 0$])

      // Top-left: c>0, b>0
      rect((0.15, h + 0.15), (w - 0.15, 2 * h - 0.15), fill: light-blue)
      content((w / 2, h + h / 2 + 0.6), text(size: 9pt, fill: blue)[$p, q$ 同正])
      content((w / 2, h + h / 2 - 0.8), text(size: 8pt)[例：$x^2 + 7 x + 10$])
      content((w / 2, h + h / 2 - 1.7), text(size: 8pt)[$p = 2, q = 5$])

      // Bottom-left: c>0, b<0
      rect((0.15, 0.15), (w - 0.15, h - 0.15), fill: light-green)
      content((w / 2, h / 2 + 0.6), text(size: 9pt, fill: green)[$p, q$ 同负])
      content((w / 2, h / 2 - 0.8), text(size: 8pt)[例：$x^2 - 5 x + 6$])
      content((w / 2, h / 2 - 1.7), text(size: 8pt)[$p = -2, q = -3$])

      // Top-right: c<0, b>0
      rect((w + 0.15, h + 0.15), (2 * w - 0.15, 2 * h - 0.15), fill: light-orange)
      content((w + w / 2, h + h / 2 + 0.6), text(size: 9pt, fill: orange)[一正一负，正大])
      content((w + w / 2, h + h / 2 - 0.8), text(size: 8pt)[例：$x^2 + 3 x - 10$])
      content((w + w / 2, h + h / 2 - 1.7), text(size: 8pt)[$p = 5, q = -2$])

      // Bottom-right: c<0, b<0
      rect((w + 0.15, 0.15), (2 * w - 0.15, h - 0.15), fill: light-red)
      content((w + w / 2, h / 2 + 0.6), text(size: 9pt, fill: red)[一正一负，负大])
      content((w + w / 2, h / 2 - 0.8), text(size: 8pt)[例：$x^2 - x - 12$])
      content((w + w / 2, h / 2 - 1.7), text(size: 8pt)[$p = 3, q = -4$])
    }),
    caption: [符号判断图：根据 $b$ 和 $c$ 的正负快速锁定 $p, q$ 的符号组合]
  )

  *工具三：“能不能再分”的判据*

  - 每一步后都要检查所有括号，判断是否还能继续提公因式、套公式、做两数匹配。
  - 如果剩下的式子在实数范围内确实无法再分（例如 $x^2 + 1$），就可以收笔。
]

#side-hack[
  *blueprint 留给你*——这张流程图的每一步在说什么？试着不看文字、只看 discovery 段那张三层菱形图，把三步用自己的话写在笔记本上。和"工具二"的符号判断表对照，看看你写的步骤覆盖了几样判别。
]

#self-check[
  $x^2 + 6x + 9$ 能因式分解吗？你看到了哪一个“完全平方”的特征——它的常数项和一次项有什么关系？
]


#pitfall[
  *高频错误*

  ✗ 提完公因式就收手
  → ✓ 例如 $3 x^3 - 12 x = 3 x (x^2 - 4)$ 不是终点，$x^2 - 4$ 还能被平方差继续分。

  ✗ 把 $x^2 + 9$ 当成 $(x + 3)^2$
  → ✓ 实数范围内 $x^2 + 9$ 无法因式分解；完全平方必须匹配中间项 $2 dot x dot 3 = 6 x$。

  ✗ 中间项匹配时忽略符号
  → ✓ $x^2 - 5 x + 6$ 里 $c = +6, b = -5$，应找“同负”的一对：$-2, -3$；所以结果是 $(x - 2)(x - 3)$，不是 $(x + 2)(x + 3)$。
]

#mastery[
  *基础*

  + 因式分解：
    - $a^2 - 16$
    - $4 b^2 - 20 b + 25$
    - $m^2 - 11 m + 24$
  + 先提公因式，再继续分解：
    - $5 a^2 - 45$
    - $3 x^2 - 18 x + 27$
  + 用两数匹配：
    - $x^2 + 3 x - 10$
    - $x^2 - x - 12$

  *应用*

  + 因式分解 $2 p^3 + 6 p^2 + 4 p$（三步都会用上）。
  + 把 $x^4 - 81$ 分解到实数范围内不能再分为止。
  + 已知 $x^2 - k x + 15$ 能分解为 $(x - r_1)(x - r_2)$，其中 $r_1, r_2$ 为正整数。写出所有可能的 $k$。

  *挑战*

  + 因式分解 $x^2 - y^2 - 4 x + 4$（提示：前三项凑成一个完全平方）。
  + 因式分解 $a^4 + a^2 - 2$（提示：设 $t = a^2$ 再分解，最后还原）。
  + 解方程 $x^2 - 8 x + 12 = 0$——把左边因式分解后直接读出两个根；再用同样的方法解 $2 x^2 + 10 x = 0$。

  + *[反直觉]*：判断 $x^2 + 4$ 能否在整数系数范围内因式分解。给出理由（提示：考虑"平方差"和"完全平方"的条件）。
  + *[组合]*：先因式分解 $x^2 - 9$，再把结果用来计算 $101^2 - 9$ 的值（不用计算器）。
  + *[构造题]*：写出一个四项多项式，使它能被分组后因式分解为两个二项式的乘积。

#answer-cut[

  *基础*
  + $a^2 - 16 = (a + 4)(a - 4)$（平方差公式）；$4 b^2 - 20 b + 25 = (2 b - 5)^2$（完全平方公式）；$m^2 - 11 m + 24 = (m - 3)(m - 8)$（中间项匹配）。
  + $5 a^2 - 45 = 5(a^2 - 9) = 5(a + 3)(a - 3)$（提公因式 + 平方差）；$3 x^2 - 18 x + 27 = 3(x^2 - 6 x + 9) = 3(x - 3)^2$（提公因式 + 完全平方）。
  + $x^2 + 3 x - 10 = (x + 5)(x - 2)$（中间项匹配）；$x^2 - x - 12 = (x - 4)(x + 3)$（中间项匹配）。

  *应用*
  + $2 p^3 + 6 p^2 + 4 p = 2 p (p^2 + 3 p + 2) = 2 p (p + 1)(p + 2)$。
  + $x^4 - 81 = (x^2 + 9)(x^2 - 9) = (x^2 + 9)(x + 3)(x - 3)$（$x^2 + 9$ 在实数范围内不可再分）。
  + 设 $(x - r_1)(x - r_2) = x^2 - (r_1 + r_2) x + r_1 r_2$，故 $k = r_1 + r_2$。$r_1 r_2 = 15$ 的正整数对 $(1, 15), (3, 5)$，对应 $k = 16$ 或 $k = 8$。

  *挑战*
  + $x^2 - y^2 - 4 x + 4 = (x^2 - 4 x + 4) - y^2 = (x - 2)^2 - y^2 = (x - 2 + y)(x - 2 - y)$。
  + 设 $t = a^2$，$t^2 + t - 2 = (t + 2)(t - 1)$；还原：$(a^2 + 2)(a^2 - 1) = (a^2 + 2)(a + 1)(a - 1)$。
  + $x^2 - 8 x + 12 = (x - 2)(x - 6)$，所以 $x = 2$ 或 $x = 6$；$2 x^2 + 10 x = 2 x(x + 5)$，所以 $x = 0$ 或 $x = -5$。
  + *[反直觉]*：$x^2 + 4$ 不能在整数系数范围内因式分解——它既非"平方差"形式（需要减法），也不是完全平方（$x^2 + 4 x + 4$ 才是）。$x^2 + 4$ 是"不可约"的二次多项式（因式分解范围：整数系数，区别于实数域）。
  + $x^2 - 9 = (x+3)(x-3)$。令 $x = 101$：$101^2 - 9 = (101+3)(101-3) = 104 times 98 = 10192$（因式分解 + 代值数学计算）。
  + *[构造题]*：例如 $a x + a y + b x + b y = a(x + y) + b(x + y) = (a + b)(x + y)$。具体数字版本：$2x + 6 + x y + 3y = 2(x+3) + y(x+3) = (2+y)(x+3)$（分组因式分解 + 构造思路：选两对能提公因子的项）。
]
]

#history-note[
  *夏洛特·斯科特（Charlotte Angas Scott，$1858$–$1931$）*——英国数学家。$1880$ 年她在剑桥大学完成数学荣誉考试（Tripos），成绩相当于"第八名优等"（eighth wrangler），但因当时剑桥不向女性授予学位，她后来从伦敦大学获得了正式的数学学士与博士学位，并赴美国布林莫尔学院创办了首屈一指的女性数学研究生项目。她的研究方向是代数曲线的因式分解与奇点分析：一条复杂曲线的方程能被因式分解成几个更简单方程的乘积，每个因子代表曲线的一支或一个组成部分。这正是这一节"分解就是把乘开过程倒着走"思想的高级版本——不仅整式可以分解，连图形都可以被分解。
]
