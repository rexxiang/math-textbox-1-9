#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref
#import "../../lib/diagram-packages.typ": cetz

=== 一元二次方程：配方法 → 求根公式 <tool:al05-quadratic-solving>

#vocab[一元二次方程 quadratic equation][配方法 completing the square][求根公式 quadratic formula][判别式 discriminant]

#crisis[
  一块长方形花圃，长比宽多 $1$ 米，面积 $7$ 平方米。设宽 $x$ 米，那么

  $ x (x + 1) = 7 => x^2 + x - 7 = 0. $

  $x^2$ 出现了——一次方程的五步流程（#secref("al04-linear-one-variable")）原封不动套不上来。

  有时候能靠因式分解偷懒：

  $ x^2 - 5 x + 6 = 0 arrow.l.r.double (x - 2)(x - 3) = 0 $

  两因式之一为零。可是像 $x^2 + x - 7 = 0$ 这种的右边 $-7$ 不好拆。

  我们需要一个*对所有* $a x^2 + b x + c = 0$ 都奏效的解法。本节的路线是：先发明*配方法*（把左边硬补成一个平方），再把它打包成*求根公式*。
]

#history-note[
  早在约公元前 1800 年的古巴比伦泥板（如现存于耶鲁大学的 YBC 6967 号泥板）上，书吏就已经用“把式子补成完全平方”的方法来解二次问题。约公元 820 年，花拉子密（al-Khwārizmī）在《代数学》中用几何正方形拼接来演示配方法，给出了六种标准类型的二次方程的完整解法。16 世纪，意大利数学家卡尔达诺（Girolamo Cardano, 1501–1576）在《大术》（_Ars Magna_, 1545）中把求根公式推广到了三次方程。我们今天使用的统一求根公式 $x = (-b plus.minus sqrt(b^2 - 4a c)) / (2a)$，本质上就是把这一跨越三千年的配方直觉写成了一条代数式。
]

#discovery[
  *先看最简单的情形*

  若方程长成 $(x + m)^2 = k$（$k >= 0$），直接两边开方：

  $ x + m = plus.minus sqrt(k) => x = -m plus.minus sqrt(k). $

  “开方”前务必写出 $plus.minus$——这是 $k >= 0$ 下两个实数根。

  *把一般二次方程补成平方：配方法*

  对 $x^2 + 6 x + 5 = 0$，先移项：$x^2 + 6 x = -5$。注意到

  $ (x + 3)^2 = x^2 + 6 x + 9, $

  所以两边同加 $9$：$x^2 + 6 x + 9 = 4$，即 $(x + 3)^2 = 4$，再开方得 $x = -1$ 或 $x = -5$。

  “加什么”的规则：一次项系数*除以 $2$ 再平方*。因为 $(x + m)^2 = x^2 + 2 m x + m^2$，要让 $2 m = b$，必须 $m = b / 2$，补的那一项就是 $m^2 = (b / 2)^2$。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let xlen = 5
      let m = 2.5

      // x² square (blue)
      rect((0, 0), (xlen, xlen), fill: rgb("#cce5ff"), stroke: 0.7pt)
      content((xlen / 2, xlen / 2), text(size: 10pt)[$x^2$])

      // Right rectangle x × 3 (green)
      rect((xlen, 0), (xlen + m, xlen), fill: rgb("#d4edda"), stroke: 0.7pt)
      content((xlen + m / 2, xlen / 2), text(size: 9pt)[$3 x$])

      // Top rectangle 3 × x (green)
      rect((0, xlen), (xlen, xlen + m), fill: rgb("#d4edda"), stroke: 0.7pt)
      content((xlen / 2, xlen + m / 2), text(size: 9pt)[$3 x$])

      // Missing corner 3 × 3 (dashed yellow — the "补" part)
      rect((xlen, xlen), (xlen + m, xlen + m),
        fill: rgb("#fff3cd"),
        stroke: (paint: rgb("#856404"), dash: "dashed", thickness: 0.7pt))
      content((xlen + m / 2, xlen + m / 2), text(size: 9pt)[$9$])

      // Dimension labels
      content((xlen / 2, -0.7), text(size: 8pt)[$x$])
      content((xlen + m / 2, -0.7), text(size: 8pt)[$3$])
      content((-0.7, xlen / 2), text(size: 8pt)[$x$])
      content((-0.7, xlen + m / 2), text(size: 8pt)[$3$])

      // Right bracket line indicating total side = x + 3
      let bx = xlen + m + 0.5
      line((bx, 0), (bx, xlen + m), stroke: 0.4pt + rgb("#555"))
      line((bx - 0.15, 0), (bx + 0.15, 0), stroke: 0.4pt + rgb("#555"))
      line((bx - 0.15, xlen + m), (bx + 0.15, xlen + m), stroke: 0.4pt + rgb("#555"))
      content((bx + 1.2, (xlen + m) / 2), text(size: 8pt)[$x + 3$])
    }),
    caption: [配方法的几何模型：$x^2 + 6 x$ 补上虚线方块 $9$ 凑成 $(x + 3)^2$]
  )

  如果二次项系数不是 $1$，先两边同除让它变成 $1$ 再配方：

  $ 2 x^2 - 4 x - 1 = 0 => x^2 - 2 x = 1 / 2 => (x - 1)^2 = 3 / 2 => x = 1 plus.minus frac(sqrt(6), 2). $

  *把配方法的结果一次打包：求根公式*

  对一般 $a x^2 + b x + c = 0$（$a != 0$），完全照搬上面动作：

  $ x^2 + b / a x + c / a = 0 => x^2 + b / a x = - c / a. $

  两边加 $(b / (2 a))^2$：

  $ (x + b / (2 a))^2 = frac(b^2 - 4 a c, 4 a^2). $

  右边的 $b^2 - 4 a c$ 称作*判别式*，记作 $Delta$。最后开方：

  $ x = frac(- b plus.minus sqrt(Delta), 2 a). $

  *$Delta$ 的符号：实数根的个数*

  #table(
    columns: (0.8fr, 1.4fr, 1.4fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*$Delta$*], [*含义*], [*例子*],
    [$Delta > 0$], [两个*不相等*的实数根], [$x^2 - 5 x + 6 = 0$：$Delta = 1$；根 $2, 3$],
    [$Delta = 0$], [一个*二重*实数根], [$x^2 - 4 x + 4 = 0$：$Delta = 0$；$x = 2$],
    [$Delta < 0$], [在实数范围内*无解*], [$x^2 - 4 x + 5 = 0$：$Delta = -4$],
  )

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let w = 10
      let gap = 2.8

      // --- Δ > 0：两个不相等实根 ---
      let y1 = 2 * gap
      line((-1, y1), (w + 1, y1), stroke: 0.7pt + rgb("#333"), mark: (end: ">"))
      for i in range(0, 11) {
        line((float(i), y1 - 0.15), (float(i), y1 + 0.15), stroke: 0.3pt + rgb("#aaa"))
      }
      circle((3, y1), radius: 0.2, fill: rgb("#2563eb"), stroke: none)
      circle((7, y1), radius: 0.2, fill: rgb("#2563eb"), stroke: none)
      content((3, y1 - 0.7), text(size: 7pt)[$x_1$])
      content((7, y1 - 0.7), text(size: 7pt)[$x_2$])
      content((-2.8, y1), text(size: 8pt, fill: rgb("#2563eb"))[$Delta > 0$])

      // --- Δ = 0：一个二重根 ---
      let y2 = gap
      line((-1, y2), (w + 1, y2), stroke: 0.7pt + rgb("#333"), mark: (end: ">"))
      for i in range(0, 11) {
        line((float(i), y2 - 0.15), (float(i), y2 + 0.15), stroke: 0.3pt + rgb("#aaa"))
      }
      circle((5, y2), radius: 0.2, fill: rgb("#16a34a"), stroke: none)
      content((5, y2 - 0.7), text(size: 7pt)[$x_1 = x_2$])
      content((-2.8, y2), text(size: 8pt, fill: rgb("#16a34a"))[$Delta = 0$])

      // --- Δ < 0：无实根 ---
      let y3 = 0
      line((-1, y3), (w + 1, y3), stroke: 0.7pt + rgb("#333"), mark: (end: ">"))
      for i in range(0, 11) {
        line((float(i), y3 - 0.15), (float(i), y3 + 0.15), stroke: 0.3pt + rgb("#aaa"))
      }
      content((5, y3 + 0.6), text(size: 8pt, fill: rgb("#dc2626"))[无实根])
      content((-2.8, y3), text(size: 8pt, fill: rgb("#dc2626"))[$Delta < 0$])
    }),
    caption: [判别式 $Delta$ 的三种情形与实数根在数轴上的分布]
  )

  注意：“$Delta < 0$ 无解”只是在实数范围内的说法。要一并承认复数时，其实存在两个共轭复根，本书不展开。

  *因式分解法是“求根公式”的特例*

  如果左边一眼能写成 $(x - r_1)(x - r_2) = 0$，那 $x = r_1$ 或 $x = r_2$——本质上就是求根公式在 $Delta$ 是完全平方时得到“整齐根”的情形。因此因式分解法*不是第三种解法*，它只是一条*快捷入口*：能走就走，不能走退回求根公式。
]

#side-hack[
  拿到 $a x^2 + b x + c = 0$，顺序问三句：

  + 已经是 $(x + m)^2 = k$ 吗？→ 直接开方。
  + 左边一眼能*因式分解*吗？→ 走分解。
  + 都不顺？→ 算 $Delta$，套求根公式。
]

#tryit[
  按“三句话自问”的顺序，自己动手先做（各题用不同方法）：

  + 解 $x^2 - 7 x + 10 = 0$（因式分解）。
  + 解 $2 x^2 - 3 x - 2 = 0$（求根公式）。
]

#blueprint[
  *工具一：配方法*

  对 $a x^2 + b x + c = 0$（$a != 0$）：

  + 若 $a != 1$，两边同除 $a$。
  + 把常数项移到右边。
  + 左边一次项系数*除 $2$ 再平方*，两边同加该数，凑成 $(x + m)^2 = k$。
  + 开方得 $x = -m plus.minus sqrt(k)$（要求 $k >= 0$）。

  *工具二：求根公式与判别式*

  对 $a x^2 + b x + c = 0$（$a != 0$），设 $Delta = b^2 - 4 a c$：

  $ x = frac(- b plus.minus sqrt(Delta), 2 a) quad ("仅当" Delta >= 0). $

  - $Delta > 0$：两实根；
  - $Delta = 0$：一个二重根 $x = - b / (2 a)$；
  - $Delta < 0$：实数范围内无解。

  *例 1*：$x^2 + x - 7 = 0$。$a = 1, b = 1, c = -7$，$Delta = 1 + 28 = 29 > 0$。$x = frac(- 1 plus.minus sqrt(29), 2)$。

  *例 2*：$3 x^2 - 5 x + 1 = 0$。$a = 3, b = -5, c = 1$，$Delta = 25 - 12 = 13$。$x = frac(5 plus.minus sqrt(13), 6)$。

  *工具三：因式分解法（快捷入口，不是独立方法）*

  若左边能写成 $(alpha x - p)(beta x - q) = 0$，由*乘积为零 iff 某因式为零*得出根。这条路径仅在 $Delta$ 为完全平方时最顺；否则退回求根公式。

  *例 3*：$x^2 - 5 x + 6 = 0 => (x - 2)(x - 3) = 0 => x = 2, 3$。

  *例 4*：$2 x^2 + 3 x = 0 => x (2 x + 3) = 0 => x = 0, -3/2$。
]

#pitfall[
  *高频错误*

  ✗ 开平方时漏写 $plus.minus$
  → ✓ $(x - 2)^2 = 9 => x - 2 = plus.minus 3$，得到两个解，不要只留一个。

  ✗ 配方时“补几”漏了“除 2”
  → ✓ $x^2 + 6 x$ 补 $(6 / 2)^2 = 9$，不是 $6^2 = 36$。

  ✗ 套求根公式时漏掉 $b$ 的负号
  → ✓ 对 $3 x^2 - 5 x + 1 = 0$，$b = -5$，应写 $x = frac(-(-5) plus.minus sqrt(13), 6) = frac(5 plus.minus sqrt(13), 6)$。

  ✗ 看到 $Delta < 0$ 就写“$x = 0$”或“$x$ 不存在”
  → ✓ 正确说法是“在实数范围内无解”；不是 $0$，也不是“没有定义”。
]

#mastery[
  *基础*

  + 解方程：
    - $(x - 3)^2 = 25$
    - $4 x^2 - 9 = 0$
    - $x^2 + 4 x - 12 = 0$
  + 用因式分解法解：
    - $x^2 + 6 x + 8 = 0$
    - $3 x^2 - 12 x = 0$
  + 用求根公式解：
    - $x^2 - 6 x + 4 = 0$
    - $2 x^2 + 5 x - 3 = 0$

  *应用*

  + 一块长方形花圃长比宽多 $3$ 米，面积 $40$ 平方米。求长和宽。
  + 两个连续正整数的积是 $72$。求它们。
  + 判断 $x^2 + 2 x + 3 = 0$ 在实数范围内是否有解；若无解，请说明为什么。

  *挑战 ☞ 选做*

  + 用配方法解 $3 x^2 + 8 x - 3 = 0$。
  + 若方程 $x^2 - 2 k x + (k^2 - 1) = 0$ 有两个相等的实根，求 $k$。
  + 求所有使 $(m - 2) x^2 + 4 x + 1 = 0$ 有两个不相等实根的 $m$ 的范围（$m$ 是实数）。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + $x - 3 = plus.minus 5 => x = 8, -2$（开方法）；$x = plus.minus 3 / 2$（开方法）；$(x + 6)(x - 2) = 0 => x = -6, 2$（因式分解法）。
  + $(x + 2)(x + 4) = 0 => x = -2, -4$（因式分解法）；$3 x (x - 4) = 0 => x = 0, 4$（因式分解法）。
  + $x = frac(6 plus.minus sqrt(36 - 16), 2) = 3 plus.minus sqrt(5)$（求根公式）；$x = frac(-5 plus.minus sqrt(25 + 24), 4) = frac(-5 plus.minus 7, 4) = 1/2, -3$（求根公式）。

  *应用*
  + 设宽 $x$：$x (x + 3) = 40 => x^2 + 3 x - 40 = 0 => (x + 8)(x - 5) = 0$。宽取 $5$，长 $8$。
  + 设较小者 $n$：$n (n + 1) = 72 => n^2 + n - 72 = 0 => (n + 9)(n - 8) = 0$。$n = 8$，两数为 $8, 9$。
  + $Delta = 4 - 12 = -8 < 0$，实数范围内*无解*。

  *挑战 ☞ 选做*
  + 两边除 $3$：$x^2 + 8/3 x - 1 = 0 => x^2 + 8/3 x = 1$。补 $(4/3)^2 = 16 / 9$：$(x + 4/3)^2 = 25 / 9$，$x + 4/3 = plus.minus 5/3$，$x = 1/3$ 或 $-3$。
  + 两根相等 $<=>$ $Delta = 0$。$Delta = (2 k)^2 - 4 (k^2 - 1) = 4$，与 $k$ 无关，恒等于 $4 > 0$。因此*不存在*使两根相等的 $k$。
  + 要求是“二次方程”，先得 $m != 2$，然后 $Delta = 16 - 4 (m - 2) > 0 => m < 6$。合起来 $m < 6$ 且 $m != 2$。
]
