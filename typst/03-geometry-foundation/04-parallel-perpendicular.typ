#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, vocab, tryit, pitfall
#import "../lib/diagram-packages.typ": cetz

== §3.7 平行与垂直 <sec-3-7>

#vocab[平行 parallel / 垂直 perpendicular / 截线角关系 transversal angle relations]

#crisis[
  铁轨由两根钢轨组成，它们从起点到终点始终保持相同的间距。如果两根钢轨在某处交叉了会怎样？——火车会脱轨！

  *两条直线「永不相交」，该怎么精确描述？它们之间有什么特殊的角度关系？*
]

#discovery[
  *第一步*：平行的直觉。

  拿一张横格纸。每一条横线都与相邻的横线保持固定间距，无论延长多远都不会相交。这就是*平行*。

  *定义*：在同一平面内，不相交的两条直线叫做*平行线*。记作 $a parallel b$，读作「$a$ 平行于 $b$」。

  *第二步*：截线与八个角。

  当一条直线（截线 $l$）与两条平行线 $a$、$b$ 相交时，会产生 8 个角。读图时最常用的是三组*截线角关系*：位置相同的一组、夹在两线之间且分居两侧的一组、夹在两线之间又在同侧的一组。

#figure(
  cetz.canvas(length: 2cm, {
    import cetz.draw: *
    // Line a (upper parallel line)
    line((-0.3, 2.2), (4.5, 2.2), stroke: 0.7pt)
    content((4.5, 2.2), $a$, anchor: "west", padding: 3pt)
    // Line b (lower parallel line)
    line((-0.3, 0), (4.5, 0), stroke: 0.7pt)
    content((4.5, 0), $b$, anchor: "west", padding: 3pt)
    // Transversal l: from lower-left to upper-right
    line((0.5, -0.5), (3.8, 2.8), stroke: 0.7pt)
    content((3.8, 2.8), $l$, anchor: "south-west", padding: 2pt)
    // P = intersection with y=2.2, Q = intersection with y=0
    // Transversal: direction (3.3, 3.3), from (0.5,-0.5)
    // y=2.2: t=2.7/3.3=0.818 -> x=0.5+2.7=3.2  => P=(3.2, 2.2)
    // y=0:   t=0.5/3.3=0.152 -> x=0.5+0.5=1.0  => Q=(1.0, 0)
    let P = (3.2, 2.2)
    let Q = (1.0, 0)
    circle(P, radius: 0.04, fill: black, stroke: none)
    circle(Q, radius: 0.04, fill: black, stroke: none)
    content(P, $P$, anchor: "south-east", padding: 4pt)
    content(Q, $Q$, anchor: "north-east", padding: 4pt)
    // angle labels at P: ∠1 above-right (exterior), ∠2 below-left (interior)
    content((P.at(0)+0.35, P.at(1)+0.28), [$angle 1$])
    content((P.at(0)-0.5, P.at(1)-0.28), [$angle 2$])
    // angle labels at Q: ∠3 above-right (interior), ∠4 above-left (interior)
    content((Q.at(0)+0.35, Q.at(1)+0.28), [$angle 3$])
    content((Q.at(0)-0.5, Q.at(1)+0.28), [$angle 4$])
  }),
    caption: [$angle 1$ 与 $angle 3$ 位置相同；$angle 2$ 与 $angle 3$ 分居截线两侧且都在两线之间；$angle 2$ 与 $angle 4$ 在截线同侧且都在两线之间]
)

  *第三步*：垂直。

  两条直线相交成 $90 degree$（直角）时，称它们*互相垂直*。记作 $a perp b$，读作「$a$ 垂直于 $b$」。交点叫做*垂足*。
]

#tryit[
  如图，两条平行线 $a parallel b$，被截线 $l$ 所截，交点分别为 $P$（在 $a$ 上）和 $Q$（在 $b$ 上），形成 8 个角。

  先自己在草稿纸上画出图形，标出以下角对（答案在下面的蓝图中）：

  + 找出一对同位角，并说明它们在截线的哪一侧
  + 找出一对内错角，并说明它们在截线的哪一侧
  + 找出一对同旁内角，判断它们的关系（相等还是互补？）
]

#blueprint[
  *看图时最常用的截线角关系*

  已知 $a parallel b$，又被直线 $l$ 所截时：

  + 位置相同的一对角一样大
  + 夹在两条平行线之间、分居截线两侧的一对角一样大
  + 夹在两条平行线之间、又在截线同侧的一对角加起来是 $180 degree$

  *垂直*

  - 两条直线相交所成的角为 $90 degree$ 时，称这两条直线互相*垂直*。记作 $a perp b$

  *点到直线的距离*

  从直线外一点 $P$ 向直线 $l$ 作垂线，垂足为 $H$，线段 $P H$ 的长度就是*点 $P$ 到直线 $l$ 的距离*。

#align(center, cetz.canvas(length: 2cm, {
  import cetz.draw: *
  import cetz.angle: right-angle
  line((-1.5, 0), (3, 0), stroke: 0.7pt)
  content((3, 0), $l$, anchor: "west", padding: 2pt)
  let P = (0.8, 1.5)
  let H = (0.8, 0)
  line(P, H, stroke: 0.7pt)
  right-angle(H, P, (2, 0), stroke: 0.5pt)
  content(P, $P$, anchor: "south-east", padding: 3pt)
  content(H, $H$, anchor: "north-west", padding: 3pt)
  content((0.8, 0.75), text(8pt, fill: blue)[$P H$], anchor: "east", padding: 6pt)
}))

  *看图例 1*：如图，$a parallel b$。若 $angle 1 = 70 degree$，求 $angle 2$（$angle 1$ 与 $angle 2$ 是内错角）。

  *解*：$angle 2 = 70 degree$。

  *看图例 2*：如图，$a parallel b$，$angle 1 = 50 degree$，求 $angle 2$（$angle 1$ 与 $angle 2$ 是同旁内角）。

  *解*：$angle 2 = 180 degree - 50 degree = 130 degree$。
]

#pitfall[
  *陷阱 1*：同位角相等、内错角也相等——但同旁内角*互补*（和为 $180 degree$），不是相等！这三组角的关系容易搞混。

  *陷阱 2*：看角之前先看图里有没有明确告诉你两条直线平行。没有这个前提，就不能直接套用这三组角关系。
]

#mastery[
  *基础*

  + 下列说法正确的是哪个？
    - (A) 不相交的两条直线一定平行
    - (B) 在同一平面内，不相交的两条直线一定平行
    - (C) 两条平行线之间的距离可以不相等
    - (D) 过一点可以画无数条直线与已知直线平行
  + 如图，交点上方的是 $P$，下方的是 $Q$。若 $angle 1 = 58 degree$，求与它对应的同位角、内错角和同旁内角的度数。
  + 一条直线与另一条直线相交，如果其中一个角是 $90 degree$，其余三个角各是多少？

  *应用*

  + 如图，$a parallel b$，若一个同位角是 $125 degree$，与它对应的内错角和同旁内角分别是多少？
  + 一根旗杆垂直于地面，阳光与地面成 $35 degree$ 角照射。求阳光与旗杆的夹角。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + (B)。(A) 错：空间中异面直线不相交也不平行；(C) 错：平行线间距处处相等；(D) 错：有且仅有一条。
  + 同位角 $= 58 degree$，内错角 $= 58 degree$，同旁内角 $= 180 degree - 58 degree = 122 degree$。
  + 其余三个角中，有两个是 $90 degree$，另一个也是 $90 degree$；四个角全是直角。

  *应用*
  + 内错角 $= 125 degree$；同旁内角 $= 180 degree - 125 degree = 55 degree$。
  + 旗杆垂直地面，阳光与地面成 $35 degree$ 角，所以阳光与旗杆的夹角 $= 90 degree - 35 degree = 55 degree$。
]
