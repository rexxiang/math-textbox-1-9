#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall
#import "../lib/diagram-packages.typ": cetz

== §3.6 角：表示、度量与基本类型 <sec-3-6>

#vocab[角 angle / 角度 degree measure / 角的类型 angle types]

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

  *第二步*：角的大小到底在比什么？

  角比的是*张开的程度*，不是边的长短。两条边就算画得更长，只要张开程度不变，角的大小就不变。

  *第三步*：怎么记、怎么量？

  通常把角记作 $angle A O B$，顶点字母写在中间。更精确地度量时，用量角器：中心对准顶点，$0 degree$ 刻度线对齐一条边，再读另一条边指向的刻度。

  当一条射线从起点转到垂直位置，是 $90 degree$；转成一条直线，是 $180 degree$；转一整圈，是 $360 degree$。
]

#tryit[
  先自己判断，再看下面的概念总结：

  + $35 degree$、$90 degree$、$127 degree$、$180 degree$ 分别属于哪一类角？
  + $30 degree 15'$ 读作什么？
]

#blueprint[
  *角的表示与度量*

  - 三个字母：$angle A O B$（$O$ 是顶点，写在中间）
  - 一个字母：$angle O$（当顶点处只有一个角时）
  - 数字编号：$angle 1$、$angle 2$
  - 角的大小看*张开程度*，不看边画得多长。
  - 角的常用单位是度：圆周平均分成 360 份，每份是 $1 degree$。
  - 更精细时还会见到分、秒：$1 degree = 60'$，$1' = 60''$。本节先会认读这种记法，如 $30 degree 15'$。

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
      {
        let O = (0, 0); let A = (1.4, 0); let B = (0.9, 1.1)
        line(O, A, stroke: 0.7pt); line(O, B, stroke: 0.7pt)
        angle(O, A, B, radius: 0.45, stroke: 0.5pt + blue, direction: "near")
        content((0.7, -0.35), text(8pt)[锐角])
      }
      {
        let O = (3, 0); let A = (4.4, 0); let B = (3, 1.4)
        line(O, A, stroke: 0.7pt); line(O, B, stroke: 0.7pt)
        right-angle(O, A, B, stroke: 0.5pt)
        content((3.7, -0.35), text(8pt)[直角])
      }
      {
        let O = (6.5, 0); let A = (7.9, 0); let B = (5.3, 1.1)
        line(O, A, stroke: 0.7pt); line(O, B, stroke: 0.7pt)
        angle(O, A, B, radius: 0.45, stroke: 0.5pt + orange, direction: "near")
        content((6.5, -0.35), text(8pt)[钝角])
      }
      {
        line((9.5, 0), (12, 0), stroke: 0.7pt)
        circle((10.75, 0), radius: 0.04, fill: black, stroke: none)
        content((10.75, 0), $O$, anchor: "north", padding: 4pt)
        content((10.75, -0.35), text(8pt)[平角 $180 degree$])
      }
    }),
    caption: [角的基本类型]
  )

  *角的类型*

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
]

#pitfall[
  *陷阱 1*：角的大小看的是张开程度，不是边的长短。图上两条边画得更长，不代表角更大。

  *陷阱 2*：把角的“大小”看成边长
  → ✓ 角只看张开程度，不看边画得多长。
]

#side-hack[
  *先拿 $90 degree$ 和 $180 degree$ 当尺子*：小于 $90 degree$ 是锐角；等于 $90 degree$ 是直角；大于 $90 degree$ 但小于 $180 degree$ 是钝角；等于 $180 degree$ 是平角。

  量角器上如果出现分、秒，只要先认得它们分别是比度更细的小单位就够了；复杂的度分秒运算留到以后需要精细测量时再练。
]

#mastery[
  *基础*

  + 在 $angle A O B$ 中，哪个字母表示顶点？这个角还可能在什么情况下记作 $angle O$？
  + 指出下列角的类型（锐角 / 直角 / 钝角 / 平角）：$35 degree$、$90 degree$、$127 degree$、$180 degree$、$89 degree$
  + 把 $30 degree 15'$ 读出来，并说出这里的 $'$ 表示什么。
  + 把 $30 degree 15'$ 读出来，并说出这里的 $'$ 表示什么。

  *应用*

  + 画一个角，并分别用三个字母、一个字母、编号三种方式给它命名。
  + 解释为什么 $89 degree$ 还是锐角，而 $91 degree$ 就已经不是锐角。

  *挑战*

  + 时钟 3 点 20 分时，时针与分针的夹角是多少度？（提示：分针每分钟转 $6 degree$，时针每分钟转 $0.5 degree$）

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + 顶点是中间的字母 $O$。当顶点处只有一个角、不容易混淆时，也可以记作 $angle O$。
  + $35 degree$——锐角；$90 degree$——直角；$127 degree$——钝角；$180 degree$——平角；$89 degree$——锐角
  + 读作“30 度 15 分”；这里的 $'$ 表示角度里的“分”，是比度更细的小单位。
  + 读作“30 度 15 分”；这里的 $'$ 表示角度里的“分”。

  *应用*
  + 略
  + 因为锐角要求小于 $90 degree$，而 $91 degree$ 已经超过直角。

  *挑战*
  + 3 点整时，分针指向 12，时针指向 3，夹角 $90 degree$。过 20 分钟：分针转 $20 times 6 degree = 120 degree$，时针转 $20 times 0.5 degree = 10 degree$，所以时针在 $90 degree + 10 degree = 100 degree$ 位置。夹角 $= 120 degree - 100 degree = 20 degree$。
]
