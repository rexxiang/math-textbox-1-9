#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 通分、分式加减与乘除 <tool:al03-common-denominator-operations>

☞ *从结构到运算*——上一节我们看清了分式 $A/B$ 的结构（含字母的分数）和它的"软肋"（$B$ 不能取使它为 $0$ 的值）。

本节把分式当成一个完整的对象来运算：加、减、乘、除。和小学分数一样，加减仍然要*统一分母*；不一样的是，分母是含字母的式子，找公分母前要先因式分解。

带着上节的"$x$ 不能让分母为零"这把警惕，进入正式运算。

#vocab[通分 finding a common denominator][最简公分母 least common denominator][分式加减 adding and subtracting rational expressions][分式乘除 multiplying and dividing rational expressions]

#crisis[
  在 #secref("pf04-fraction-arithmetic") 里，你会算 $1/3 + 1/4 = 7/12$——诀窍是先通分再相加。

  把分母换成字母，同样的问题回来了：

  - $1/a + 1/b = ?$
  - $2/(x - 1) - 1/(x + 1) = ?$
  - $(2 x)/(3 y) dot (9 y^2)/(4 x) = ?$
  - $((x + 1))/((x - 2)) div ((x + 1))/((x + 3)) = ?$

  这一节把四种基本运算一起打通：加、减要靠*通分*；乘、除要靠*约分*。分母里的字母只是把“找共同单位”的任务搬到了代数上。
]

#tryit[
  + 合并：$2/(x - 1) - 1/(x + 1)$。
]

#discovery[
  *通分：把不同单位换成同一把尺子*

  #secref("pf04-fraction-comparison") 里通分的办法是“分母取 LCM”；现在分母是整式，*最简公分母*的办法完全类比：

  + 把每个分母先因式分解；
  + 列出所有出现过的不同因式，每个因式*取最高次幂*；
  + 把它们乘起来。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#1565C0")
      let green = rgb("#2E7D32")
      let orange = rgb("#E65100")
      let gray = luma(160)

      // Step 1
      rect((0, 8), (16, 10.5), fill: rgb("#E3F2FD"), stroke: 1.2pt + blue, radius: 4pt)
      content((8, 9.25), text(size: 8pt, weight: "bold", fill: blue)[① 各分母因式分解])

      // Arrow 1→2
      line((8, 8), (8, 7), stroke: 1.2pt + gray, mark: (end: ">", fill: gray))

      // Step 2
      rect((0, 4.5), (16, 7), fill: rgb("#E8F5E9"), stroke: 1.2pt + green, radius: 4pt)
      content((8, 5.75), text(size: 8pt, weight: "bold", fill: green)[② 列出所有不同因式，取最高次幂])

      // Arrow 2→3
      line((8, 4.5), (8, 3.5), stroke: 1.2pt + gray, mark: (end: ">", fill: gray))

      // Step 3
      rect((0, 1), (16, 3.5), fill: rgb("#FFF3E0"), stroke: 1.2pt + orange, radius: 4pt)
      content((8, 2.25), text(size: 8pt, weight: "bold", fill: orange)[③ 相乘 → 最简公分母])
    }),
    caption: [求最简公分母的三步流程]
  )

  *例*：$1/a + 1/b$。分母 $a, b$ 没有公共因式，最简公分母就是 $a b$：

  $ 1/a = b/(a b), quad 1/b = a/(a b) $

  *例*：$2/(x - 1) - 1/(x + 1)$。两分母互质，最简公分母 $(x - 1)(x + 1)$：

  $ 2/(x - 1) = (2(x + 1))/((x - 1)(x + 1)), quad 1/(x + 1) = (x - 1)/((x - 1)(x + 1)) $

  *例*：$1/(x - 1) + 1/((x - 1)^2)$。两分母的最高次是 $(x - 1)^2$，所以最简公分母就是 $(x - 1)^2$，而不是 $(x - 1)^3$。

  *分式加减 = 通分 + 分子加减*

  同分母：分母不变，分子直接加减（像小学 $1/5 + 2/5$ 一样）：

  $ A/C plus.minus B/C = (A plus.minus B)/C $

  异分母：先通分，再按同分母规则；最后务必检查能否再约分。

  *例*：$2/(x - 1) - 1/(x + 1) = (2(x + 1) - (x - 1))/((x - 1)(x + 1)) = (x + 3)/(x^2 - 1)$。

  *分式乘除 = 分子乘分子 / 分母乘分母 + 约分*

  $ A/B dot C/D = (A C)/(B D), quad A/B div C/D = A/B dot D/C = (A D)/(B C) $

  实战里常常*先约分再相乘*，避免算完再化简：

  $ (2 x)/(3 y) dot (9 y^2)/(4 x) = ((2 x)(9 y^2))/((3 y)(4 x)) $

  分子有 $2 x dot 9 y^2 = 18 x y^2$；分母有 $12 x y$；约掉 $6 x y$ 得 $(3 y)/2$。

  更简洁的做法：直接在相乘形式上约掉 $2$、$3$、$x$、$y$，得到 $(3 y)/2$。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#1565C0")
      let green = rgb("#2E7D32")
      let red = rgb("#C62828")
      let gray = luma(120)

      // Left box: factored multiplication form
      rect((0, 0), (16, 7), fill: rgb("#E3F2FD"), stroke: 1.2pt + blue, radius: 4pt)
      content((8, 6.2), text(size: 7pt, weight: "bold", fill: blue)[相乘形式 — 先约再乘], anchor: "south")

      // Fraction with cancellation marks
      content((8, 4.0), text(size: 9pt)[
        $frac(cancel(2) x dot cancel(3) dot 3 dot y dot cancel(y), cancel(3) y dot cancel(2) dot 2 dot cancel(x))$
      ])

      // Cancellation note
      content((8, 1.8), text(size: 7pt, fill: gray)[约掉 $2$、$3$、$x$、$y$])

      // Arrow between boxes
      line((17, 3.5), (19, 3.5), stroke: 1.5pt + green, mark: (end: ">", fill: green))

      // Right box: simplified result
      rect((20, 1), (28, 6), fill: rgb("#E8F5E9"), stroke: 1.2pt + green, radius: 4pt)
      content((24, 4.5), text(size: 8pt, weight: "bold", fill: green)[结果], anchor: "south")
      content((24, 2.8), text(size: 11pt, weight: "bold")[
        $frac(3 y, 2)$
      ])
    }),
    caption: [先约后乘：在相乘形式上直接约掉公因式]
  )

  除法就是乘以倒数：

  $ (x + 1)/(x - 2) div (x + 1)/(x + 3) = (x + 1)/(x - 2) dot (x + 3)/(x + 1) = (x + 3)/(x - 2) quad (x != -1) $

  注意：把除法翻成乘法*之前*，被除数和倒数里原有的“分母不为零”“不除以零”这些条件都必须保留；$(x + 1)$ 被消掉了，但 $x != -1$ 不能跟着消失。
]

#side-hack[
  乘法里*先约后乘*几乎总是更舒服：分子分母成为一串因式的乘积后，就能像消公约数一样消公因式。

  加减法里*先因式分解分母*再找最简公分母——比盲目把分母相乘要省力得多。
]

#tryit[
  先自己做完，再对照下面的方法总结。

  + 合并：$1/a + 1/b$。
]

#blueprint[
  *工具一：最简公分母的找法*

  + 每个分母先因式分解；
  + 列出所有不同因式，每个取最高次幂；
  + 相乘即得最简公分母。

  *例 1*：$1/(x - 1) + 1/((x - 1)^2)$。最简公分母 $(x - 1)^2$。
    $ 1/(x - 1) + 1/((x - 1)^2) = (x - 1)/((x - 1)^2) + 1/((x - 1)^2) = x/((x - 1)^2) $

  *工具二：分式加减*

  - 同分母：$A/C plus.minus B/C = (A plus.minus B)/C$。
  - 异分母：先通分，再按同分母处理，最后化简。

  *例 2*：$2/(x - 1) - 1/(x + 1) = (2(x + 1) - (x - 1))/((x - 1)(x + 1)) = (x + 3)/((x - 1)(x + 1))$。

  *例 3*：$m/(m + 1) + 1/(m + 1) = (m + 1)/(m + 1) = 1 quad (m != -1)$。

  *工具三：分式乘除*

  $ A/B dot C/D = (A C)/(B D), quad A/B div C/D = (A D)/(B C) quad (B, C, D != 0) $

  先因式分解、再约分、最后保留限制。

  *例 4*：$(3 u^2)/(4 v) dot (8 v^3)/(9 u) = (24 u^2 v^3)/(36 u v) = (2 u v^2)/3 quad (u != 0, v != 0)$。

  *例 5*：$((x^2 - 1))/((x - 2)) div ((x - 1))/(x) = ((x + 1)(x - 1))/((x - 2)) dot x/(x - 1) = (x (x + 1))/(x - 2) quad (x != 0, 1, 2)$。
]

#pitfall[
  *高频错误*

  ✗ 异分母加减直接把分子加、分母也加
  → ✓ 必须先通分；分母不是加在一起，而是共用同一个“公分母”。

  ✗ 通分时把两分母“盲乘”取公分母
  → ✓ 先因式分解分母，按最高次幂拼最简公分母；盲乘会算得对但代价高，且最后还要再约分。

  ✗ 除法“翻分子不翻分母”
  → ✓ 除以一个分式 $=$ 乘以它的倒数；*倒数是把分子分母互换*，符号不要乱改。

  ✗ 约分只看“像同一块”就下手
  → ✓ 只能约公因式，不能跨过加减号约“项”。
]

#mastery[
  *基础*

  + 合并：
    - $3/m + 5/m$
    - $1/(2 x) + 1/(3 x)$
    - $1/(a - 2) + 1/(a + 2)$
  + 化简：
    - $(a + 1)/a dot (a^2)/(a + 1)$
    - $(3/x) div (6/x^2)$
  + 化简：
    - $1/(x - 2) - 1/(x - 3)$

  *应用*

  + 合并化简：$1/(x - 1) - 1/(x + 1) + 2/(x^2 - 1)$。
  + 计算：$(x + 2)/(x - 3) div (x^2 + 4 x + 4)/(x^2 - 9)$，写出化简后的结果与限制。
  + 一个分数的分子比分母小 $1$，且分子分母都是正整数。把这个“分数”的倒数与原来的分数相减，写成最简分式。设分子为 $n$。

  *挑战*

  + 化简 $1/(x(x - 1)) + 1/(x(x + 1))$。
  + 若 $a + b = 5, a b = 6$，求 $1/a + 1/b$ 的值。
  + 证明恒等式：对所有合法的 $x$，$1/x - 1/(x + 1) = 1/(x(x + 1))$；并用它计算 $1/(1 dot 2) + 1/(2 dot 3) + 1/(3 dot 4) + dots.c + 1/(9 dot 10)$。
  + *[反直觉]*：化简 $1/(x - 1) - 1/(x + 1) - 2/(x^2 - 1)$。结果会小到让你意外吗？说明每一步通分思路。
  + *[跨知识点 + 找 Bug]*：小张这样做：$(x^2 - 1)/(x - 1) + 2 = (x + 1) + 2 = x + 3$。结论看似简单，但他*没有写定义域*。请补上"$x$ 不能取什么值"，并说明这一步与 #secref("tool:al03-rational-expression-structure") 强调的"先定义域、后约分"是怎么对应的。
  + *[构造题]*：构造一个分式 $A(x)/B(x)$ 与 $C(x)/D(x)$（分母不同），使 $A/B + C/D = 0$ 且 $A, B, C, D$ 都是非零多项式（即*不要*靠 $A = -C$, $B = D$ 直接抵消的平凡情形）。给出一例并验证。

  #answer-cut[

  *基础*
  + $8/m$（同分母合并）；$1/(2 x) + 1/(3 x) = 3/(6 x) + 2/(6 x) = 5/(6 x)$（通分）；$((a + 2) + (a - 2))/((a - 2)(a + 2)) = (2 a)/(a^2 - 4)$（通分）。
  + $(a + 1)/a dot (a^2)/(a + 1) = a quad (a != 0, -1)$（先约后乘）；$(3/x) div (6/x^2) = (3/x) dot (x^2/6) = x/2 quad (x != 0)$（除法变乘法）。
  + $1/(x - 2) - 1/(x - 3) = ((x - 3) - (x - 2))/((x - 2)(x - 3)) = -1/((x - 2)(x - 3))$。（通分 + 分子合并）

  *应用*
  + 最简公分母 $(x - 1)(x + 1)$：$((x + 1) - (x - 1) + 2)/((x - 1)(x + 1)) = 4/((x - 1)(x + 1)) = 4/(x^2 - 1)$。
  + $(x + 2)/(x - 3) dot (x^2 - 9)/(x^2 + 4 x + 4) = (x + 2)/(x - 3) dot ((x - 3)(x + 3))/((x + 2)^2) = (x + 3)/(x + 2) quad (x != 3, x != -2)$。
  + 原分数 $n/(n + 1)$，倒数 $(n + 1)/n$。相减：$(n + 1)/n - n/(n + 1) = ((n + 1)^2 - n^2)/(n(n + 1)) = (2 n + 1)/(n(n + 1))$。

  *挑战*
  + 最简公分母 $x(x - 1)(x + 1)$：$((x + 1) + (x - 1))/(x(x - 1)(x + 1)) = (2 x)/(x(x - 1)(x + 1)) = 2/((x - 1)(x + 1)) = 2/(x^2 - 1)$。
  + $1/a + 1/b = (a + b)/(a b) = 5/6$。
  + 证明：$1/x - 1/(x + 1) = ((x + 1) - x)/(x(x + 1)) = 1/(x(x + 1))$。代入连加：$sum_(k = 1)^9 1/(k(k + 1)) = sum_(k = 1)^9 (1/k - 1/(k + 1)) = 1 - 1/10 = 9/10$。
  + 最简公分母 $(x - 1)(x + 1) = x^2 - 1$：$((x + 1) - (x - 1) - 2)/((x - 1)(x + 1)) = (x + 1 - x + 1 - 2)/(x^2 - 1) = 0/(x^2 - 1) = 0 quad (x != plus.minus 1)$。结果等于 $0$ 出乎意料——这正是恒等式 $1/(x - 1) - 1/(x + 1) = 2/(x^2 - 1)$ 的另一种写法。
  + 应当先写定义域：$x != 1$（分母 $x - 1 != 0$）。化简成立时附带条件：$(x^2 - 1)/(x - 1) + 2 = x + 3 quad (x != 1)$。这与 #secref("tool:al03-rational-expression-structure") 中"约分前先确定分母不为零"的纪律一致——一旦丢掉 $x != 1$，就把不在原式定义域内的点错误地纳入了答案。
  + 一例：$A/B = x/(x - 1)$，$C/D = -x/(x - 1)$ 不行（平凡）。换：$A/B = 1/(x - 1)$，$C/D = -1/(x - 1)$ 也平凡。要分母不同：取 $1/(x - 1) + (1 - x)/((x - 1)^2)$；通分得 $(x - 1)/(x - 1)^2 + (1 - x)/(x - 1)^2 = ((x - 1) + (1 - x))/(x - 1)^2 = 0/(x - 1)^2 = 0 quad (x != 1)$。验证：$1/(x - 1) + (1 - x)/(x - 1)^2 = (x - 1)/(x - 1)^2 - (x - 1)/(x - 1)^2 = 0$。
  ]
]
