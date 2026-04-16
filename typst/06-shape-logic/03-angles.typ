#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall
#import "../lib/diagram-packages.typ": cetz

== §6.3 角 <sec-6-3>

#vocab[角 angle / 锐角 acute angle / 直角 right angle / 钝角 obtuse angle / 平角 straight angle / 周角 full angle / 互余 complementary / 互补 supplementary]

#crisis[
  你和朋友一起扇扇子。有人轻轻打开一条缝，有人哗地展开到最大。

  *扇子打开多大？*「大」和「小」太模糊了——我们需要一种精确的方法来度量「张开的程度」。
]

#history-note[
  *巴比伦人与 360°*：大约 4000 年前，古巴比伦人使用六十进制，并注意到一年大约 360 天（太阳在黄道上每天移动约 $1 degree$）。他们将一个圆周分成 360 等份，每份定义为 $1 degree$。这个约定一直沿用至今。
]

#discovery[
  *第一步*：什么是角？

  找一根吸管，把它从中间折弯。折弯后形成两条「边」（射线）和一个折弯处（顶点）。改变折弯的程度，角就变大或变小。

  *角* = 从同一个点出发的两条射线组成的图形。这个点叫*顶点*，两条射线叫做角的*两边*。

  #align(center, cetz.canvas(length: 2cm, {
    import cetz.draw: *
    import cetz.angle: angle
    let O = (0, 0)
    let A = (2, 0)
    let B = (1.2, 1.7)
    line(O, A, stroke: 0.7pt)
    line(O, B, stroke: 0.7pt)
    angle(O, A, B, label: $angle A O B$, radius: 0.55, stroke: 0.5pt + blue, direction: "near")
    content(O, $O$, anchor: "north-east", padding: 3pt)
    content(A, $A$, anchor: "west", padding: 3pt)
    content(B, $B$, anchor: "south-west", padding: 3pt)
  }))

  *第二步*：怎么度量？

  想象一个转盘。指针从一条边出发，绕顶点旋转到另一条边，扫过的「旋转量」就是角的大小。圆周被分成 360 份，每份就是 $1 degree$（度）。更精细的度量：$1 degree = 60'$（分），$1' = 60''$（秒）。

  例如 $30 degree 15' 40''$ 读作「30 度 15 分 40 秒」。

  *第三步*：用量角器量角。

  将量角器的中心对准角的顶点，$0 degree$ 刻度线对齐角的一条边，读出另一条边指向的刻度，就是角的度数。
]

#tryit[
  先自己算一算，再看下面的概念总结：

  已知 $angle A = 37 degree$，求：

  + $angle A$ 的余角（即与 $angle A$ 互余的角）是多少度？
  + $angle A$ 的补角（即与 $angle A$ 互补的角）是多少度？

  提示：互余的两角之和为 $90 degree$，互补的两角之和为 $180 degree$。
]

#blueprint[
  *角的表示方法*

  - 三个字母：$angle A O B$（$O$ 是顶点，写在中间）
  - 一个字母：$angle O$（当顶点处只有一个角时）
  - 数字编号：$angle 1$、$angle 2$

  *角的分类*

  #table(
    columns: (1fr, 1fr),
    align: left,
    [*名称*], [*范围*],
    [锐角], [$0 degree < alpha < 90 degree$],
    [直角], [$alpha = 90 degree$],
    [钝角], [$90 degree < alpha < 180 degree$],
    [平角], [$alpha = 180 degree$（两边成一条直线）],
    [周角], [$alpha = 360 degree$（旋转一整圈）],
  )

  #figure(
    cetz.canvas(length: 1.7cm, {
      import cetz.draw: *
      import cetz.angle: angle, right-angle
      // 锐角 at x≈0
      {
        let O = (0, 0); let A = (1.4, 0); let B = (0.9, 1.1)
        line(O, A, stroke: 0.7pt); line(O, B, stroke: 0.7pt)
        angle(O, A, B, radius: 0.45, stroke: 0.5pt + blue, direction: "near")
        content((0.7, -0.35), text(8pt)[锐角])
      }
      // 直角 at x≈3
      {
        let O = (3, 0); let A = (4.4, 0); let B = (3, 1.4)
        line(O, A, stroke: 0.7pt); line(O, B, stroke: 0.7pt)
        right-angle(O, A, B, stroke: 0.5pt)
        content((3.7, -0.35), text(8pt)[直角])
      }
      // 钝角 at x≈6.5
      {
        let O = (6.5, 0); let A = (7.9, 0); let B = (5.3, 1.1)
        line(O, A, stroke: 0.7pt); line(O, B, stroke: 0.7pt)
        angle(O, A, B, radius: 0.45, stroke: 0.5pt + orange, direction: "near")
        content((6.5, -0.35), text(8pt)[钝角])
      }
      // 平角 at x≈10: a straight line with O in the middle
      {
        line((9.5, 0), (12, 0), stroke: 0.7pt)
        circle((10.75, 0), radius: 0.04, fill: black, stroke: none)
        content((10.75, 0), $O$, anchor: "north", padding: 4pt)
        content((10.75, -0.35), text(8pt)[平角 $180degree$])
      }
    }),
    caption: [角的基本类型]
  )

  *互余与互补*

  - *互余*（complementary）：两个角的和等于 $90 degree$。若 $angle A + angle B = 90 degree$，则 $angle A$ 与 $angle B$ 互余。
  - *互补*（supplementary）：两个角的和等于 $180 degree$。若 $angle A + angle B = 180 degree$，则 $angle A$ 与 $angle B$ 互补。

  互余的性质：同角（或等角）的余角相等。即若 $angle A + angle C = 90 degree$ 且 $angle B + angle C = 90 degree$，则 $angle A = angle B$。

  互补同理：同角（或等角）的补角相等。

  *对顶角*

  两条直线相交，形成 4 个角。其中不相邻的两个角叫*对顶角*。

  #align(center, cetz.canvas(length: 2cm, {
    import cetz.draw: *
    line((-2, -1.3), (2, 1.3), stroke: 0.7pt)
    line((-2, 1.3), (2, -1.3), stroke: 0.7pt)
    content((0.6, 0.2), [$angle 1$])
    content((-0.6, 0.2), [$angle 2$])
    content((-0.6, -0.2), [$angle 3$])
    content((0.6, -0.2), [$angle 4$])
    content((2, 1.3), $m$, anchor: "south-west", padding: 2pt)
    content((2, -1.3), $n$, anchor: "north-west", padding: 2pt)
  }))

  *对顶角相等。*

  证明：设两条直线相交，形成 $angle 1, angle 2, angle 3, angle 4$（按顺序排列）。

  $angle 1 + angle 2 = 180 degree$（互补），$angle 2 + angle 3 = 180 degree$（互补）

  所以 $angle 1 = angle 3$。同理 $angle 2 = angle 4$。

  *度分秒换算*

  - $1 degree = 60'$，$1' = 60''$
  - 加法：分加分，度加度，满 60 进位
  - 减法：不够减时借位（$1 degree = 60'$，$1' = 60''$）

  *例*：$35 degree 42' + 27 degree 33' = 62 degree 75' = 63 degree 15'$

  *例*：$90 degree - 56 degree 28' = 89 degree 60' - 56 degree 28' = 33 degree 32'$
]

#pitfall[
  *陷阱 1*：互余与互补搞混——互余两角之和是 $90 degree$，互补两角之和是 $180 degree$。记忆法：「余」→「九十」，「补」→「一百八」。

  *陷阱 2*：「对顶角相等」只适用于*两条直线相交*形成的对顶角，不能推广到任意图形中的「对角」。例如，平行四边形的对角不是对顶角，它们相等是另一个原因（平行线性质），不要混用「对顶角相等」来解释。
]

#side-hack[
  *快速求余角和补角*：$angle A$ 的余角 $= 90 degree - angle A$，补角 $= 180 degree - angle A$。做题时直接用这两个公式，别绕弯路。
]

#mastery[
  *基础*

  + 指出下列角的类型（锐角 / 直角 / 钝角 / 平角）：$35 degree$、$90 degree$、$127 degree$、$180 degree$、$89 degree$
  + 求下列角的余角和补角（如果存在）：$37 degree$、$58 degree 30'$、$90 degree$
  + 计算：$23 degree 45' 30'' + 47 degree 28' 45''$
  + 计算：$180 degree - 73 degree 24' 18''$

  *应用*

  + 如果 $angle A$ 与 $angle B$ 互余，且 $angle A = 3 angle B$，求 $angle A$ 和 $angle B$。
  + 两条直线相交，其中一个角为 $65 degree$，求其余三个角。
  + 如果 $angle 1$ 的补角比 $angle 1$ 的余角大多少度？（对任意锐角 $angle 1$ 都成立吗？）

  *挑战*

  + 如图，三条直线交于一点，$angle 1 = 40 degree$，$angle 2 = 55 degree$，求 $angle 3$ 的度数。（提示：$angle 1 + angle 2 + angle 3 = 180 degree$）
  + 时钟 3 点 20 分时，时针与分针的夹角是多少度？（提示：分针每分钟转 $6 degree$，时针每分钟转 $0.5 degree$）

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + $35 degree$——锐角；$90 degree$——直角；$127 degree$——钝角；$180 degree$——平角；$89 degree$——锐角
  + $37 degree$：余角 $53 degree$，补角 $143 degree$；$58 degree 30'$：余角 $31 degree 30'$，补角 $121 degree 30'$；$90 degree$：没有余角（$90 degree + angle = 90 degree$ 无正角解），补角 $90 degree$
  + $23 degree 45' 30'' + 47 degree 28' 45'' = 70 degree 73' 75'' = 70 degree 74' 15'' = 71 degree 14' 15''$
  + $180 degree - 73 degree 24' 18'' = 179 degree 59' 60'' - 73 degree 24' 18'' = 106 degree 35' 42''$

  *应用*
  + $angle A + angle B = 90 degree$，$angle A = 3 angle B$，代入得 $3 angle B + angle B = 90 degree$，$4 angle B = 90 degree$，$angle B = 22.5 degree$，$angle A = 67.5 degree$
  + $65 degree$、$115 degree$、$65 degree$、$115 degree$（对顶角相等，邻补角互补）
  + $(180 degree - angle 1) - (90 degree - angle 1) = 90 degree$。是的，对任意锐角 $angle 1$ 都成立，差恒为 $90 degree$。

  *挑战*
  + $angle 3 = 180 degree - 40 degree - 55 degree = 85 degree$
  + 3 点整时，分针指向 12，时针指向 3，夹角 $90 degree$。过 20 分钟：分针转 $20 times 6 degree = 120 degree$（从 12 开始），时针转 $20 times 0.5 degree = 10 degree$（从 3 即 $90 degree$ 位置开始），时针在 $90 degree + 10 degree = 100 degree$ 位置。夹角 $= 120 degree - 100 degree = 20 degree$。
]
