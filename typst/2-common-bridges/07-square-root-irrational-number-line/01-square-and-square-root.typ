#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut, self-check
#import "../../lib/diagram-packages.typ": cetz

=== 平方、平方根与算术平方根 <tool:cb07-square-and-square-root>

#vocab[平方 square][平方根 square root][算术平方根 principal square root][根号 radical sign][完全平方数 perfect square]

#crisis[
  边长 $4$ 的正方形面积是 $16$。反过来：面积是 $16$ 的正方形，边长是多少？

  对 $16$ 你立刻说 $4$；对 $25$ 你说 $5$。那如果面积是 $2$ 呢？有没有一种写法，不必先算出具体值，就能直接指代"哪个正数平方等于这个数"？
]

#tryit[
  + 一个正方形的面积是 $25$，它的边长是多少？面积是 $36$ 呢？面积是 $2$ 呢？对面积等于 $2$ 的情况，你能找到一个*精确的数*（不是近似值）作为答案吗？
]

#discovery[
  面积 $2$ 的正方形边长是多少？用小数逼近：$1.4^2 = 1.96$，差了 $0.04$；$1.41^2 = 1.9881$，差了 $0.0119$；$1.414^2 = 1.999396$，差了不到 $0.001$。再精确一点就够了？

  试着推下去——

  $1.4142^2 = 1.99997164$，$1.41421^2 = 1.9999897...$，$1.414213^2 = 1.999998409...$——每次都"接近" $2$，但永远差一丁点，没有任何有限小数能平方恰好等于 $2$。

  有限小数的平方只能趋近 $2$，无法精确等于 $2$；而"写出更多位"是永无止境的追逐。我们手上没有任何现有记号能*精确指代*"哪个正数的平方等于 $2$"——只能写一段越来越长的近似，却始终说不出"它本身"。

  *平方*：一个数自己乘以自己，就叫它的平方：

  $ a^2 = a times a $

  如图 @fig-square-area-and-side 所示。
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
  ) <fig-square-area-and-side>

  *平方根*：若 $x^2 = a$，就把 $x$ 叫做 $a$ 的一个平方根。

  比如 $9$ 的平方根有两个：$3$ 和 $-3$（因为 $3^2 = (-3)^2 = 9$）。对于每一个非负数 $a$，它的*非负*那一个平方根叫*算术平方根*，记作：

  $ sqrt(a) $

  约定 $sqrt(a) >= 0$。于是 $sqrt(9) = 3$、$sqrt(0) = 0$；若 $a < 0$，则 $sqrt(a)$ 在实数范围内*不存在*——没有任何实数平方等于一个负数；作为可选预告，高中桥接会引入更大的数系（复数）来处理这种情形；这不影响本章主线。

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
  古巴比伦的 YBC 7289 泥板（约前 $1800$—$1600$ 年）用六十进制刻下了 $sqrt(2)$ 的近似值，换算成十进制后精度相当于约 $5$ 位小数。巴比伦人还发明了一种反复取平均的逼近算法来求平方根，后人称之为"巴比伦方法"。在中国，南北朝的祖冲之（$429$—$500$ 年）也精通开方术，他算出的圆周率精度领先世界近千年。古希腊几何学家则把"求一条边，使其平方等于给定面积"视为核心操作——平方根，就是这条操作的代数名字。

  ☞ 这条历史线索后续在： 希帕索斯的无理数危机最终推动了实数系统的完备化；见 #secref("cb07-real-number-line")。
]

#blueprint[
  - *平方*：$a^2 = a times a$；特别地，$0^2 = 0$，$a^2 >= 0$。
  - *完全平方数*：能写成 $n = k^2$（$k$ 为非负整数）的整数，例如 $0, 1, 4, 9, 16, 25, dots$
  - *平方根*：若 $x^2 = a$（$a >= 0$），则 $x$ 是 $a$ 的平方根；$a > 0$ 时有两个，互为相反数；$a = 0$ 时只有 $0$。
  - *算术平方根*：$sqrt(a)$ 规定取非负；$a < 0$ 时 $sqrt(a)$ 在实数范围内无定义。
  - *基本关系*：$(sqrt(a))^2 = a$（$a >= 0$）；$bold(sqrt(a^2) = |a|)$（对*所有*实数 $a$）。
    ☞ 这里的*绝对值不能去掉*——当 $a < 0$ 时，$sqrt(a^2)$ 的值是 $-a$（一个正数），而不是 $a$ 本身。和下面 pitfall 配套读，确保你不会把 $sqrt(a^2)$ 直接写成 $a$。

  如图 @fig-perfect-squares-on-line 所示。
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
  ) <fig-perfect-squares-on-line>
]

#self-check[
  $sqrt(9)$ 等于 $3$ 还是 $plus.minus 3$？说出“算术平方根”和“平方根”两个说法的区别。
]


#side-hack[
  *完整示例*——从正方形面积反推边长

  + *看题*：一个正方形花坛面积是 $50$ 平方米，求边长 $s$。
  + *选工具*：正方形面积 $= "边长"^2$。从面积回到边长，就是求算术平方根。
  + *动手*：列式 $s^2 = 50$，边长为正，所以 $s = sqrt(50) approx 7.07$ 米。
  + *回看*：$7.07^2 approx 49.98$，接近 $50$；若写 $s = -sqrt(50)$，虽然平方也是 $50$，但长度不能为负。
]

#pitfall[
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
  + 正方形 A 的面积是 $9$，正方形 B 的面积是 $36$。B 的面积是 A 的 $4$ 倍，边长是几倍？解释为什么面积倍数不能直接当成边长倍数。
  + 求 $sqrt((-4)^2)$ 的值。

  *挑战*

  + 若 $x^2 = 5$，用 $sqrt(\ )$ 表示 $x$ 的所有取值。
  + *[反例 / 解释]*：判断：“对任意实数 $a$，都有 $sqrt(a^2) = a$。”若不对，给反例，并改成永远正确的式子。
  + *[反直觉]*：判断对错并改正——"两个正数 $a, b$ 满足 $a > b$，则 $sqrt(a) - sqrt(b) = sqrt(a - b)$"。给反例（取 $a = 25$, $b = 9$ 试一试）。
  + *[跨知识点]*：边长 $a$ 的正方形面积 $a^2$，与边长 $1/a$（$a > 0$）的正方形面积之间是什么关系？请用 $sqrt(\ )$ 把"已知面积为 $S$ 求边长"和 #secref("tool:pf07-perimeter-area") 中"已知边长求面积"明确写成一对反向操作，并各举一例。
  + *[构造题]*：构造一个无理边长的正方形——给一个面积为 $7$ 的正方形的边长（不能化成有限小数），并验证它确实平方等于 $7$。它指向了 #secref("tool:cb07-irrational-numbers") 即将引入的什么概念？
  + *[找 Bug]*：小李算 $sqrt((-3)^2 + (-4)^2)$，写成 $sqrt((-3)^2) + sqrt((-4)^2) = -3 + (-4) = -7$。两步都"对"了，结果却离谱。指出每一步的具体错误，并给出正确答案。

  #answer-cut[
  + $100$ 的平方根 $plus.minus 10$，算术平方根 $sqrt(100) = 10$；$144$ 的平方根 $plus.minus 12$，算术平方根 $sqrt(144) = 12$（平方根成对出现，算术平方根取非负）。
  + $sqrt(49) = 7$，$sqrt(81) = 9$，$sqrt(0) = 0$，$sqrt(9/16) = 3/4$（算术平方根定义，取非负值）。
  + 正确（$(-5)^2 = (-5) times (-5) = 25$，负负得正）。
  + $6/7$（算术平方根定义：$sqrt(36/49) = sqrt(36) / sqrt(49) = 6/7$）。
  + 错误。$0$ 的平方根只有一个：$0$（$0^2 = 0$，没有另一个数的平方也等于 $0$）。
  + $6$ 厘米（$sqrt(36) = 6$，开方是求面积的反向操作）。
  + $sqrt(50) = 5sqrt(2)$ 厘米（化简：$50 = 25 times 2$，$sqrt(50) = sqrt(25) times sqrt(2) = 5sqrt(2)$）。
  + A 的边长 $sqrt(9) = 3$，B 的边长 $sqrt(36) = 6$，所以边长是 $2$ 倍。面积是二维量，边长放大 $2$ 倍时面积放大 $2^2 = 4$ 倍；反过来从面积倍数 $4$ 求边长倍数，要开方得到 $sqrt(4) = 2$。
  + $4$（$sqrt((-4)^2) = sqrt(16) = 4 = |-4|$，关键公式 $sqrt(a^2) = |a|$）。
  + $x = plus.minus sqrt(5)$（$x^2 = 5$ 有两个平方根，互为相反数）。
  + 不对。反例：$a = -3$，$sqrt(a^2) = sqrt(9) = 3$，但 $a = -3$。永远正确的是 $sqrt(a^2) = |a|$（对任意实数 $a$；当 $a >= 0$ 时 $= a$，当 $a < 0$ 时 $= -a$）。
  + 错。反例 $a = 25, b = 9$：$sqrt(25) - sqrt(9) = 5 - 3 = 2$，而 $sqrt(25 - 9) = sqrt(16) = 4 != 2$。开方不"逐项分发"减法，必须先做减法再开方或先开方再相减（开方与减法的运算次序）。
  + 一对反向：边长 $-> $ 面积是平方 $a |-> a^2$；面积 $-> $ 边长是开方 $S |-> sqrt(S)$。例：边长 $5 -> $ 面积 $25$；面积 $36 -> $ 边长 $6$。它们正是开方/平方互逆（与 #secref("tool:pf07-perimeter-area") 的面积公式呼应）。
  + 边长 $sqrt(7)$。验证 $(sqrt(7))^2 = 7$ 由算术平方根定义直接得出。$sqrt(7) approx 2.6457...$，*不能写成有限小数也不能写成分数*——这种数不属于已学的有理数，正是 #secref("tool:cb07-irrational-numbers") 引入的"无理数"。
  + 第一步错：$sqrt(a + b) != sqrt(a) + sqrt(b)$（开方不分发到加法），应当先把 $(-3)^2 + (-4)^2 = 9 + 16 = 25$ 整体算出来再开方。第二步又错：$sqrt((-3)^2) = |-3| = 3$（结果非负），不是 $-3$。正确：$sqrt(9 + 16) = sqrt(25) = 5$。
  ]
]

#side-hack[
  ☞ 这个符号会在代数求根公式、几何勾股定理 $c = sqrt(a^2 + b^2)$、函数 $y = sqrt(x)$ 里反复出现——它在这一节才有了正式的名字。
]
