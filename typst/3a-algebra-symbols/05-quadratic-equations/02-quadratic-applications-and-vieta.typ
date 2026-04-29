#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 韦达定理：从“解”反问“系数” <tool:al05-vieta>

#vocab[韦达定理 Vieta's formulas][根与系数的关系 root-coefficient relationship][对称式 symmetric expression][构造方程 constructing an equation]

#crisis[
  在 #secref("al05-quadratic-solving")，你已经知道 $a x^2 + b x + c = 0$（$Delta >= 0$）的两根是

  $ x_1 = frac(- b + sqrt(Delta), 2 a), quad x_2 = frac(- b - sqrt(Delta), 2 a). $

  现在反过来问几件事：

  + 只想知道*两根之和 $x_1 + x_2$* 与*两根之积 $x_1 x_2$*，需要把根“算出来”吗？
  + 给你两个目标根 $r, s$，能不能直接*构造一个系数就绪的二次方程*？
  + 一个二次方程不开方、也不因式分解，能不能判断它是否有两个正根？

  这些问题都可以绕过“先把 $x$ 解出来”。本节就来揭开这条捷径：*根与系数的关系*，俗称*韦达定理*。
]

#tryit[
  + 对 $x^2 - 7 x + 12 = 0$，求 $x_1 + x_2$、$x_1 x_2$、$x_1^2 + x_2^2$。
]

#discovery[
  *两根之和与之积的公式*

  把 $x_1 + x_2$ 与 $x_1 x_2$ 按上面写开：

  $ x_1 + x_2 = frac(- b + sqrt(Delta), 2 a) + frac(- b - sqrt(Delta), 2 a) = frac(- 2 b, 2 a) = - b / a. $

  $ x_1 x_2 = (frac(- b + sqrt(Delta), 2 a)) (frac(- b - sqrt(Delta), 2 a)) = frac(b^2 - Delta, 4 a^2) = frac(b^2 - (b^2 - 4 a c), 4 a^2) = c / a. $

  这就是*韦达定理*：对 $a x^2 + b x + c = 0$（$Delta >= 0$，$a != 0$），

  $ x_1 + x_2 = - b / a, quad x_1 x_2 = c / a. $

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      // Top: equation box
      rect((-3, 4), (3, 5.5), fill: rgb("#f3f4f6"),
        stroke: 0.7pt + rgb("#6b7280"), radius: 3pt)
      content((0, 4.75), text(size: 9pt, weight: "bold")[$a x^2 + b x + c = 0$])

      // Left arrow → sum (blue)
      line((-1.5, 4), (-4, 2), stroke: 1pt + rgb("#2563eb"), mark: (end: ">"))
      content((-3.5, 3.3), text(size: 7pt, fill: rgb("#2563eb"))[和], anchor: "east")

      // Right arrow → product (green)
      line((1.5, 4), (4, 2), stroke: 1pt + rgb("#16a34a"), mark: (end: ">"))
      content((3.5, 3.3), text(size: 7pt, fill: rgb("#16a34a"))[积], anchor: "west")

      // Left box: sum formula
      rect((-7, 0.5), (-1, 2), fill: rgb("#dbeafe"),
        stroke: 0.7pt + rgb("#2563eb"), radius: 3pt)
      content((-4, 1.25), text(size: 9pt, fill: rgb("#1e40af"))[$x_1 + x_2 = - b / a$])

      // Right box: product formula
      rect((1, 0.5), (7, 2), fill: rgb("#dcfce7"),
        stroke: 0.7pt + rgb("#16a34a"), radius: 3pt)
      content((4, 1.25), text(size: 9pt, fill: rgb("#166534"))[$x_1 x_2 = c / a$])
    }),
    caption: [韦达定理：从方程系数直接读出两根之和与两根之积]
  )

  *它解决三类问题*

  1. *对称式求值*：$x_1^2 + x_2^2$、$1 / x_1 + 1 / x_2$、$(x_1 - x_2)^2$ 这些表达式都可以*不解方程*就求出。

  - $x_1^2 + x_2^2 = (x_1 + x_2)^2 - 2 x_1 x_2$。
  - $1 / x_1 + 1 / x_2 = (x_1 + x_2) / (x_1 x_2)$。
  - $(x_1 - x_2)^2 = (x_1 + x_2)^2 - 4 x_1 x_2 = frac(Delta, a^2)$。

  例：$2 x^2 - 3 x + 1 = 0$，$x_1 + x_2 = 3/2$，$x_1 x_2 = 1/2$。于是 $x_1^2 + x_2^2 = 9/4 - 1 = 5/4$，完全不必先解出 $x_1, x_2$。

  2. *构造方程*：想要以 $r, s$ 为两根的二次方程，直接写

  $ x^2 - (r + s) x + r s = 0. $

  这是“$a = 1$”情形下韦达定理的反用。想要 $a != 1$ 只需两边同乘 $a$。

  例：想让 $3, -2$ 为两根，直接写 $x^2 - (3 + (-2)) x + 3 dot (- 2) = 0$，即 $x^2 - x - 6 = 0$。

  3. *不求根就验根 / 判根*：判断“两根是否同号、是否同正、是否一正一负”只看 $x_1 x_2$ 和 $x_1 + x_2$ 的符号。

  - $x_1 x_2 > 0$ 且 $x_1 + x_2 > 0$：两根同正。
  - $x_1 x_2 > 0$ 且 $x_1 + x_2 < 0$：两根同负。
  - $x_1 x_2 < 0$：两根一正一负（前提 $Delta > 0$）。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let bw = 8
      let bh = 3.2
      let gap = 0.8

      // --- Top-left: 两正 ---
      rect((0, bh + gap), (bw, 2 * bh + gap),
        stroke: 0.6pt + rgb("#2563eb"), radius: 3pt, fill: rgb("#eff6ff"))
      content((bw / 2, 2 * bh + gap - 0.5),
        text(size: 7pt)[$x_1 x_2 > 0, quad x_1 + x_2 > 0$])
      let ny1 = bh + gap + 1.0
      line((0.5, ny1), (bw - 0.5, ny1), stroke: 0.4pt + rgb("#999"))
      line((bw / 2, ny1 - 0.12), (bw / 2, ny1 + 0.12), stroke: 0.4pt)
      content((bw / 2, ny1 - 0.4), text(size: 5pt)[$0$])
      circle((bw / 2 + 1.5, ny1), radius: 0.12, fill: rgb("#2563eb"), stroke: none)
      circle((bw / 2 + 2.8, ny1), radius: 0.12, fill: rgb("#2563eb"), stroke: none)
      content((bw / 2 + 2.15, ny1 + 0.55),
        text(size: 8pt, weight: "bold", fill: rgb("#1e40af"))[两正])

      // --- Top-right: 两负 ---
      let x1 = bw + gap
      rect((x1, bh + gap), (x1 + bw, 2 * bh + gap),
        stroke: 0.6pt + rgb("#dc2626"), radius: 3pt, fill: rgb("#fef2f2"))
      content((x1 + bw / 2, 2 * bh + gap - 0.5),
        text(size: 7pt)[$x_1 x_2 > 0, quad x_1 + x_2 < 0$])
      let ny2 = bh + gap + 1.0
      line((x1 + 0.5, ny2), (x1 + bw - 0.5, ny2), stroke: 0.4pt + rgb("#999"))
      line((x1 + bw / 2, ny2 - 0.12), (x1 + bw / 2, ny2 + 0.12), stroke: 0.4pt)
      content((x1 + bw / 2, ny2 - 0.4), text(size: 5pt)[$0$])
      circle((x1 + bw / 2 - 1.5, ny2), radius: 0.12, fill: rgb("#dc2626"), stroke: none)
      circle((x1 + bw / 2 - 2.8, ny2), radius: 0.12, fill: rgb("#dc2626"), stroke: none)
      content((x1 + bw / 2 - 2.15, ny2 + 0.55),
        text(size: 8pt, weight: "bold", fill: rgb("#991b1b"))[两负])

      // --- Bottom center: 一正一负 ---
      let total-w = 2 * bw + gap
      let x2 = (total-w - bw) / 2
      rect((x2, 0), (x2 + bw, bh),
        stroke: 0.6pt + rgb("#9333ea"), radius: 3pt, fill: rgb("#faf5ff"))
      content((x2 + bw / 2, bh - 0.5),
        text(size: 7pt)[$x_1 x_2 < 0$])
      let ny3 = 1.0
      line((x2 + 0.5, ny3), (x2 + bw - 0.5, ny3), stroke: 0.4pt + rgb("#999"))
      line((x2 + bw / 2, ny3 - 0.12), (x2 + bw / 2, ny3 + 0.12), stroke: 0.4pt)
      content((x2 + bw / 2, ny3 - 0.4), text(size: 5pt)[$0$])
      circle((x2 + bw / 2 - 2.0, ny3), radius: 0.12, fill: rgb("#dc2626"), stroke: none)
      circle((x2 + bw / 2 + 2.0, ny3), radius: 0.12, fill: rgb("#2563eb"), stroke: none)
      content((x2 + bw / 2, ny3 + 0.55),
        text(size: 8pt, weight: "bold", fill: rgb("#7e22ce"))[一正一负])
    }),
    caption: [根的符号判别：由 $x_1 x_2$ 与 $x_1 + x_2$ 的正负判断两根的符号组合]
  )

  判根前要先保证 $Delta >= 0$；否则根本没有实根。
]

#side-hack[
  用韦达定理解题时常犯一个错：把 $x_1 + x_2$ 写成 $b / a$ —— *差一个负号*。记忆窍门：公式来自求根公式里的 $- b$，保留那个负号。
]

#tryit[
  用韦达定理，不解方程：

  + 构造以 $5, -1$ 为两根的二次方程（首项系数取 $1$）。
]

#history-note[
  法国数学家韦达（François Viète, 1540–1603）在 1591 年出版的《分析方法入门》（_In Artem Analyticem Isagoge_）中，首次系统地用字母同时表示已知量和未知量，并由此发现：对于 $x^2 + b x + c = 0$ 的两根 $r_1, r_2$，必有 $r_1 + r_2 = -b$、$r_1 r_2 = c$。这组被后人称为“韦达定理”（Vieta’s formulas）的关系，标志着代数学从“逐题求解”升格为“讨论一般规律”——你不需要真的解出根，就能知道根之间的关系。
]

#blueprint[
  *工具一：韦达定理*

  对 $a x^2 + b x + c = 0$（$a != 0$），若 $Delta = b^2 - 4 a c >= 0$，设两根 $x_1, x_2$：

  $ x_1 + x_2 = - b / a, quad x_1 x_2 = c / a. $

  *工具二：对称式的“两根之和/之积”桥梁*

  所有“对 $x_1, x_2$ 对称”的表达式都可以写成只涉及 $x_1 + x_2$ 和 $x_1 x_2$ 的式子：

  $ x_1^2 + x_2^2 = (x_1 + x_2)^2 - 2 x_1 x_2, $
  $ (x_1 - x_2)^2 = (x_1 + x_2)^2 - 4 x_1 x_2, $
  $ 1 / x_1 + 1 / x_2 = frac(x_1 + x_2, x_1 x_2), $
  $ x_1^3 + x_2^3 = (x_1 + x_2)^3 - 3 x_1 x_2 (x_1 + x_2). $

  *工具三：构造 / 判根*

  - 已知 $r, s$ 构造方程（首项系数 $1$）：$x^2 - (r + s) x + r s = 0$。
  - 已知 $Delta >= 0$：看 $x_1 x_2$ 与 $x_1 + x_2$ 的符号判断两根的正负组合。
  - 构造时若希望首项系数 $a$，两边同乘 $a$ 即可。

  *例 1*：$3 x^2 - 9 x + 6 = 0$。$x_1 + x_2 = 3$，$x_1 x_2 = 2$。$(x_1 - x_2)^2 = 9 - 8 = 1$，故两根差 $1$。

  *例 2*：构造以 $2, -5$ 为两根、首项系数为 $2$ 的方程：$x^2 - (2 - 5) x + (2)(- 5) = x^2 + 3 x - 10$；乘 $2$：$2 x^2 + 6 x - 20 = 0$。

  *例 3*：$x^2 - (m + 1) x + 2 m - 3 = 0$ 有两实根 $x_1, x_2$，且 $x_1 x_2 = 5$。解 $m$：$2 m - 3 = 5 => m = 4$；再验 $Delta >= 0$：$(m + 1)^2 - 4 (2 m - 3) = m^2 - 6 m + 13 = (m - 3)^2 + 4 > 0$ 恒成立 ✓。
]

#pitfall[
  *高频错误*

  ✗ 把 $x_1 + x_2$ 写成 $b / a$（少了负号）
  → ✓ 是 $- b / a$；公式来自 $- b plus.minus sqrt(Delta)$ 的“$-b$”。

  ✗ 没验 $Delta >= 0$ 就谈“两根之积等于 $c / a$”
  → ✓ 韦达定理在 $Delta < 0$ 时不能直接用在*实数根*上（这时两根成复数共轭，本书不展开）。在判断正负之前必须先确认 $Delta >= 0$。

  ✗ 构造方程时漏写了 $a$
  → ✓ “首项系数为 $a$”的方程 $a x^2 + b x + c = 0$；要让根为 $r, s$，应写 $a (x - r)(x - s) = 0$，展开即 $a x^2 - a (r + s) x + a r s = 0$。

  ✗ 用韦达定理解*一元一次*或*非标准*方程
  → ✓ 韦达定理只适用于 $a x^2 + b x + c = 0$ 这种已经化成标准形的一元二次方程；先去分母、去括号把方程化到标准形，再用。
]

#mastery[
  *基础*

  + 对下列方程，直接写出 $x_1 + x_2$ 与 $x_1 x_2$：
    - $x^2 - 5 x + 6 = 0$
    - $2 x^2 + 3 x - 1 = 0$
    - $x^2 + 7 x + 10 = 0$
  + 不解方程，求 $x^2 - 4 x + 1 = 0$ 的 $x_1^2 + x_2^2$ 与 $1 / x_1 + 1 / x_2$。

  *应用*

  + 构造以 $4, -3$ 为两根，首项系数为 $1$ 的二次方程。
  + 构造以 $1 / 2, 3$ 为两根，首项系数为 $2$ 的二次方程。
  + 已知 $2 x^2 + (k - 1) x - 3 = 0$ 的两根之积为 $- 3 / 2$，求 $k$ 使 $Delta >= 0$ 且这个两根之积成立；并求两根之和。

  *挑战*

  + 已知方程 $x^2 - 6 x + m = 0$ 两根的倒数之和为 $3$，求 $m$。
  + 方程 $x^2 - (m + 2) x + 2 m = 0$ 的两根 $x_1, x_2$ 满足 $x_1^2 + x_2^2 = 8$，求 $m$。
  + 证明：若 $a, b, c$ 为正数，则方程 $a x^2 + b x + c = 0$ 的两个实根（若存在）都是负数。

  + *[反直觉]*：判断："如果 $x_1, x_2$ 都是正数，则 $x_1 + x_2 > 0$ 且 $x_1 x_2 > 0$，所以方程 $x^2 + b x + c = 0$ 的 $b > 0$、$c > 0$。" 错在哪？请用韦达定理 $x_1 + x_2 = -b$ 改正"$b$ 的符号"。

  + *[构造题]*：构造一个二次方程，要求两根分别是 $1 + sqrt(2)$ 和 $1 - sqrt(2)$。请写出韦达和与积，再用 $x^2 - (x_1 + x_2) x + x_1 x_2 = 0$ 直接给出方程；并验证根的判别式 $Delta > 0$。

  + *[找 Bug]*：小华在求"两根之差 $|x_1 - x_2|$"时写："$|x_1 - x_2| = (x_1 + x_2) - 2 x_1 x_2$"。她错在哪？正确公式 $|x_1 - x_2| = sqrt((x_1 + x_2)^2 - 4 x_1 x_2)$ 是怎么从韦达和与积推出的？

  #answer-cut[

  *基础*
  + $5, 6$；$- 3/2, - 1/2$；$- 7, 10$。（韦达定理：$x_1 + x_2 = -b\/a$，$x_1 x_2 = c\/a$）
  + $x_1 + x_2 = 4$，$x_1 x_2 = 1$。$x_1^2 + x_2^2 = 16 - 2 = 14$（对称式求值）；$1 / x_1 + 1 / x_2 = 4 / 1 = 4$（对称式求值）。

  *应用*
  + $x^2 - (4 - 3) x + (4)(- 3) = x^2 - x - 12 = 0$。
  + 首项系数 $1$ 的写法：$x^2 - (1/2 + 3) x + (1/2)(3) = x^2 - 7/2 x + 3/2$；$times 2$：$2 x^2 - 7 x + 3 = 0$。
  + $x_1 x_2 = - 3 / 2 = c / a = - 3 / 2$，已经恒成立，$k$ 任意；再用 $Delta = (k - 1)^2 - 4 dot 2 dot (- 3) = (k - 1)^2 + 24 > 0$ 恒成立。所以 $k$ 可为任意实数，两根之和 $- (k - 1) / 2 = (1 - k) / 2$。

  *挑战*
  + $1/x_1 + 1/x_2 = (x_1 + x_2) / (x_1 x_2) = 6 / m = 3 => m = 2$；验 $Delta = 36 - 8 = 28 > 0$ ✓。
  + $x_1 + x_2 = m + 2$，$x_1 x_2 = 2 m$。$x_1^2 + x_2^2 = (m + 2)^2 - 4 m = m^2 + 4 = 8 => m^2 = 4 => m = plus.minus 2$；再验 $Delta = (m + 2)^2 - 8 m = (m - 2)^2 >= 0$ 恒成立 ✓，两解都取。
  + 若 $a, b, c$ 均正且 $Delta >= 0$，则 $x_1 + x_2 = - b / a < 0$ 且 $x_1 x_2 = c / a > 0$。两数和为负、积为正 → 两数*同负*。
  + 错。$x^2 + b x + c = 0$ 的韦达定理是 $x_1 + x_2 = -b$（注意负号），$x_1 x_2 = c$。两根都正 $=>$ $x_1 + x_2 > 0$ $=>$ $-b > 0$ $=>$ $b < 0$（不是 $> 0$）；$x_1 x_2 > 0$ $=>$ $c > 0$ ✓。所以正确结论是 $b < 0, c > 0$。
  + $x_1 + x_2 = (1 + sqrt(2)) + (1 - sqrt(2)) = 2$；$x_1 x_2 = (1 + sqrt(2))(1 - sqrt(2)) = 1 - 2 = -1$。方程 $x^2 - 2 x - 1 = 0$。判别式 $Delta = 4 + 4 = 8 > 0$ ✓，两实根。
  + 错。$|x_1 - x_2| != (x_1 + x_2) - 2 x_1 x_2$（左边非负，右边可能为负，且单位也不对）。正确推导：$(x_1 - x_2)^2 = x_1^2 - 2 x_1 x_2 + x_2^2 = (x_1^2 + 2 x_1 x_2 + x_2^2) - 4 x_1 x_2 = (x_1 + x_2)^2 - 4 x_1 x_2$，开方取非负即 $|x_1 - x_2| = sqrt((x_1 + x_2)^2 - 4 x_1 x_2)$。她漏了"完全平方公式"那一步配方。
  ]
]
