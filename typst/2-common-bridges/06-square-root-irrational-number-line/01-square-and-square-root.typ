#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 平方、平方根与算术平方根 <tool:cb06-square-and-square-root>

#vocab[平方 square][平方根 square root][算术平方根 principal square root][根号 radical sign]

#crisis[
  边长 $4$ 的正方形面积是 $16$。反过来：面积是 $16$ 的正方形，边长是多少？

  对 $16$ 你立刻说 $4$；对 $25$ 你说 $5$。那如果面积是 $2$ 呢？*我们需要一种记号，能直接表示“哪个正数的平方是给定数”，不用每次求具体值。*
]

#discovery[
  *平方*：一个数自己乘以自己，就叫它的平方：

  $ a^2 = a times a $

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *
      // Square with side a and area a^2
      let s = 7
      rect((0, 0), (s, s), fill: rgb("#E3F2FD"), stroke: 1.5pt + rgb("#1565C0"), radius: 2pt)
      // Side labels
      content((s / 2, -0.8), text(size: 10pt, weight: "bold", fill: rgb("#1565C0"))[$a$], anchor: "north")
      content((-0.8, s / 2), text(size: 10pt, weight: "bold", fill: rgb("#1565C0"))[$a$], anchor: "east")
      // Area label
      content((s / 2, s / 2), text(size: 12pt, weight: "bold", fill: rgb("#0D47A1"))[$a^2$])
      // Bidirectional arrows
      let ax = s + 3
      line((ax, s / 2 + 0.5), (ax, s / 2 + 2), stroke: 1.2pt + rgb("#2E7D32"), mark: (end: ">"))
      content((ax + 1.5, s / 2 + 1.5), text(size: 7pt, fill: rgb("#2E7D32"))[平方], anchor: "west")
      line((ax, s / 2 - 0.5), (ax, s / 2 - 2), stroke: 1.2pt + rgb("#C62828"), mark: (end: ">"))
      content((ax + 1.5, s / 2 - 1.5), text(size: 7pt, fill: rgb("#C62828"))[开方], anchor: "west")
    }),
    caption: [正方形：已知边长 $a$ 求面积是*平方*，已知面积求边长是*开方*],
  )

  *平方根*：若 $x^2 = a$，就把 $x$ 叫做 $a$ 的一个平方根。

  比如 $9$ 的平方根有两个：$3$ 和 $-3$（因为 $3^2 = (-3)^2 = 9$）。对于每一个非负数 $a$，它的*非负*那一个平方根叫*算术平方根*，记作：

  $ sqrt(a) $

  约定 $sqrt(a) >= 0$。于是 $sqrt(9) = 3$、$sqrt(0) = 0$；若 $a < 0$，则 $sqrt(a)$ 在实数范围内*无定义*。

  带负号的那一个平方根写作 $-sqrt(a)$；合起来，$a$ 的两个平方根是 $plus.minus sqrt(a)$。
]

#side-hack[
  “平方”“平方根”是一对反向动作。$sqrt(\ )$ 只输出非负值是人为约定，目的是让每个非负数对应唯一的 $sqrt(\ )$ 结果。
]

#tryit[
  + 求 $64$ 的两个平方根；写出它的算术平方根。
  + 判断：$sqrt(-9)$ 在实数范围内是否有定义？为什么？
]

#history-note[
  约公元前 $1800$ 年，古巴比伦的一块泥板（编号 YBC 7289）上刻着 $sqrt(2) approx 1.41421$，精确到小数点后五位。巴比伦人发明了一种反复取平均的逼近算法来求平方根，后人称之为"巴比伦方法"。在中国，南北朝的祖冲之（$429$—$500$ 年）也精通开方术，他算出的圆周率精度领先世界近千年。古希腊几何学家则把"求一条边，使其平方等于给定面积"视为核心操作——平方根就是这条操作的代数名字。
]

#blueprint[
  - *平方*：$a^2 = a times a$；特别地，$0^2 = 0$，$a^2 >= 0$。
  - *平方根*：若 $x^2 = a$（$a >= 0$），则 $x$ 是 $a$ 的平方根；$a > 0$ 时有两个，互为相反数；$a = 0$ 时只有 $0$。
  - *算术平方根*：$sqrt(a)$ 规定取非负；$a < 0$ 时 $sqrt(a)$ 在实数范围内无定义。
  - *基本关系*：$(sqrt(a))^2 = a$（$a >= 0$）；$sqrt(a^2) = |a|$（对所有实数 $a$，请注意带绝对值）。

  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *
      let ox = 10
      let s = 2.5
      // Number line
      line((ox - 1 * s, 0), (ox + 5.3 * s, 0), stroke: 1.5pt + rgb("#333"), mark: (end: ">"))
      // Ticks for 0-5
      for i in range(0, 6) {
        let tx = ox + i * s
        line((tx, -0.3), (tx, 0.3), stroke: 0.8pt + rgb("#555"))
        content((tx, -0.8), text(size: 7pt)[#str(i)], anchor: "north")
      }
      // Perfect square roots
      let roots = ((1, [$sqrt(1) = 1$], rgb("#2E7D32")),
                   (2, [$sqrt(4) = 2$], rgb("#1565C0")),
                   (3, [$sqrt(9) = 3$], rgb("#7B1FA2")),
                   (4, [$sqrt(16) = 4$], rgb("#E65100")))
      for (val, label, clr) in roots {
        let tx = ox + val * s
        circle((tx, 0), radius: 0.25, fill: clr, stroke: 1pt + clr)
        content((tx, 1.2), text(size: 7pt, weight: "bold", fill: clr)[#label], anchor: "south")
      }
      // Origin
      circle((ox, 0), radius: 0.2, fill: rgb("#333"), stroke: 1pt + rgb("#333"))
    }),
    caption: [完全平方数的算术平方根落在整数位置上],
  )
]

#pitfall[
  *高频错误*

  ✗ 写成 $sqrt(9) = plus.minus 3$
  → ✓ $sqrt(9) = 3$；两个平方根是 $plus.minus 3$，但 $sqrt(\ )$ 本身只取非负。

  ✗ 对 $a < 0$ 写 $sqrt(a) = -sqrt(-a)$
  → ✓ 实数范围内 $sqrt(a)$ 根本无定义；这一步在虚数范围才有意义。

  ✗ 把 $sqrt(a^2)$ 直接写成 $a$
  → ✓ $sqrt(a^2) = |a|$；若 $a = -3$，$sqrt((-3)^2) = 3$ 而不是 $-3$。
]

#mastery[
  *基础*

  + 求 $100$、$144$ 的两个平方根，分别写出它们的算术平方根。
  + 计算：$sqrt(49)$、$sqrt(81)$、$sqrt(0)$、$sqrt(9/16)$。
  + 判断对错：$(-5)^2 = 25$。
  + $sqrt(36/49)$ 等于多少？
  + 判断对错：$0$ 的平方根有两个。

  *应用*

  + 一正方形面积 $36$ 平方厘米，边长多少？
  + 一正方形面积 $50$ 平方厘米，边长写成最简根号形式（只写表达式，不求近似）。
  + 求 $sqrt((-4)^2)$ 的值。

  *挑战 ☞ 选做*

  + 若 $x^2 = 5$，用 $sqrt(\ )$ 表示 $x$ 的所有取值。
  + 判断：如果 $a >= 0$，那么 $sqrt(a)^2 = a$。如果 $a$ 可以为任意实数，则 $sqrt(a^2) = ?$。

  #answer-cut[
  + $100$ 的平方根 $plus.minus 10$，算术平方根 $sqrt(100) = 10$；$144$ 的平方根 $plus.minus 12$，算术平方根 $sqrt(144) = 12$（平方根成对出现，算术平方根取非负）。
  + $sqrt(49) = 7$，$sqrt(81) = 9$，$sqrt(0) = 0$，$sqrt(9/16) = 3/4$（算术平方根定义，取非负值）。
  + 正确（$(-5)^2 = (-5) times (-5) = 25$，负负得正）。
  + $6/7$（算术平方根定义：$sqrt(36/49) = sqrt(36) / sqrt(49) = 6/7$）。
  + 错误。$0$ 的平方根只有一个：$0$（$0^2 = 0$，没有另一个数的平方也等于 $0$）。
  + $6$ 厘米（$sqrt(36) = 6$，开方是求面积的反向操作）。
  + $sqrt(50) = 5sqrt(2)$ 厘米（化简：$50 = 25 times 2$，$sqrt(50) = sqrt(25) times sqrt(2) = 5sqrt(2)$）。
  + $4$（$sqrt((-4)^2) = sqrt(16) = 4 = |-4|$，关键公式 $sqrt(a^2) = |a|$）。
  + $x = plus.minus sqrt(5)$（$x^2 = 5$ 有两个平方根，互为相反数）。
  + $sqrt(a^2) = |a|$（对任意实数 $a$；当 $a >= 0$ 时 $= a$，当 $a < 0$ 时 $= -a$，绝对值定义）。
  ]
]

#side-hack[
  *☞ 这会在后面哪里再出现*

  - 代数分支一元二次方程的直接开平方法、求根公式里会反复出现 $sqrt(\ )$。
  - 几何分支勾股定理“$c = sqrt(a^2 + b^2)$”把本节符号直接用起来。
  - 函数分支讨论 $y = sqrt(x)$ 的定义域和图象。
]
