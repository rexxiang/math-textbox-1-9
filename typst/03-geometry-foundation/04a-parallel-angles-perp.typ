#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, vocab, tryit, pitfall
#import "../lib/diagram-packages.typ": cetz

== §3.7A 同旁内角与垂直 <sec-3-7A>

#vocab[同旁内角 co-interior angles / 垂直 perpendicular / 垂足 foot of perpendicular / 点到直线距离 distance from point to line]

#crisis[
  上一节我们知道：平行线被截线所截时，同位角相等、内错角也相等。

  可是，同旁内角呢——那两个夹在平行线之间、待在截线*同一侧*的角——它们是相等的吗？

  直觉上，它们看起来并不"对称"……*为什么同位角/内错角相等，同旁内角却是补角？*
]

#discovery[
  *第一步*：同旁内角是什么？

  在平行线 $a parallel b$ 被截线 $l$ 所截时，找出两个都夹在平行线之间、且都在截线同一侧的角，就是*同旁内角*。

  回到上一节的图：$angle 2$（在 $P$，截线左侧，两线之间）和 $angle 4$（在 $Q$，截线左侧，两线之间）就是一对同旁内角。

  *第二步*：为什么它们互补？

  我们知道 $angle 2$ 和 $angle 3$ 是内错角，所以 $angle 2 = angle 3$。

  而 $angle 3$ 和 $angle 4$ 在同一个交点 $Q$，它们是邻角关系，合在一起恰好是平角（$180 degree$）——也就是说 $angle 3 + angle 4 = 180 degree$。

  因此：$angle 2 + angle 4 = angle 3 + angle 4 = 180 degree$。

  同旁内角*互补*，就是这样来的！

  *第三步*：垂直——夹角恰好是 $90 degree$。

  两条直线相交时，如果交角恰好是 $90 degree$（直角），就说这两条直线*互相垂直*，记作 $a perp b$，读作「$a$ 垂直于 $b$」。交点叫做*垂足*。

#figure(
  cetz.canvas(length: 2cm, {
    import cetz.draw: *
    import cetz.angle: right-angle
    // two perpendicular lines
    line((-1.5, 0), (2.5, 0), stroke: 0.7pt)
    content((2.5, 0), $b$, anchor: "west", padding: 3pt)
    line((0.5, -1.2), (0.5, 1.8), stroke: 0.7pt)
    content((0.5, 1.8), $a$, anchor: "south", padding: 3pt)
    let O = (0.5, 0)
    circle(O, radius: 0.04, fill: black, stroke: none)
    content(O, $O$, anchor: "north-east", padding: 3pt)
    right-angle(O, (-1.5, 0), (0.5, 1.8), stroke: 0.5pt)
  }),
  caption: [$a perp b$，垂足为 $O$，四个角全是 $90 degree$]
)

  *第四步*：点到直线的距离。

  直线外有一点 $P$，从 $P$ 向直线 $l$ 作垂线，垂足为 $H$。线段 $P H$ 的长度，就是*点 $P$ 到直线 $l$ 的距离*。

  为什么偏偏选垂线？因为垂线是从 $P$ 到 $l$ 上所有点中最短的路径。

#align(center, cetz.canvas(length: 2cm, {
  import cetz.draw: *
  import cetz.angle: right-angle
  line((-1.5, 0), (3, 0), stroke: 0.7pt)
  content((3, 0), $l$, anchor: "west", padding: 2pt)
  let P = (0.8, 1.5)
  let H = (0.8, 0)
  line(P, H, stroke: (paint: blue, thickness: 0.7pt))
  right-angle(H, P, (2, 0), stroke: 0.5pt)
  circle(P, radius: 0.04, fill: black, stroke: none)
  circle(H, radius: 0.04, fill: black, stroke: none)
  content(P, $P$, anchor: "south-east", padding: 3pt)
  content(H, $H$, anchor: "north-west", padding: 3pt)
  content((0.8, 0.75), text(8pt, fill: blue)[$P H$], anchor: "east", padding: 6pt)
}))
]

#tryit[
  + 两条平行线 $a parallel b$ 被截线 $l$ 所截，截线左侧的一对同旁内角分别是 $angle alpha$ 和 $angle beta$。如果 $angle alpha = 65 degree$，求 $angle beta$。
  + 一条直线与地面垂直，地面上一点 $A$ 距垂足 $3 "cm"$，从 $A$ 到这条垂直线的距离是多少？（提示：点到直线的距离是垂线段。）
]

#blueprint[
  - *同旁内角互补*：两条平行线被截线所截，夹在两线之间且在截线同一侧的两个角之和等于 $180 degree$。
    $
    a parallel b => angle_("同旁内") + angle_("同旁内") = 180 degree
    $

  - *垂直*：两条直线相交，夹角为 $90 degree$，则称两线互相垂直，记作 $a perp b$；交点叫*垂足*。

  - *点到直线的距离*：直线外一点 $P$ 到直线 $l$ 的距离，等于从 $P$ 向 $l$ 所作垂线的垂线段长度 $P H$（$H$ 是垂足）。

  *例题 1*：$a parallel b$，截线 $l$ 与两线所成同旁内角之一为 $50 degree$，求另一个同旁内角。

  *解*：$180 degree - 50 degree = 130 degree$。

  *例题 2*：直线 $l$ 上有一点 $H$，直线外一点 $P$，$P H perp l$，$P H = 4 "cm"$，直线上另有一点 $Q$，$H Q = 3 "cm"$。求 $P$ 到直线 $l$ 的距离和 $P Q$ 的长度。

  *解*：$P$ 到 $l$ 的距离 $= P H = 4 "cm"$。$P Q = sqrt(P H^2 + H Q^2) = sqrt(16 + 9) = 5 "cm"$（此题略超小学范围，供拓展）。
]

#pitfall[
  *陷阱 1*：以为同旁内角和内错角一样相等。

  内错角在截线*两侧*，性质是相等；同旁内角在截线*同一侧*，性质是互补。位置的差别直接决定了关系的不同。

  *陷阱 2*：把"垂足"理解成"垂线本身"。

  垂足只是垂线与直线的*交点*，垂线是那条线段。

  *陷阱 3*：以为直线上离 $P$ 最近的点不一定是垂足。

  恰恰相反——$P H perp l$ 时，$H$ 就是 $l$ 上离 $P$ 最近的点，$P H$ 就是最短路径。
]

#mastery[
  *基础*

  + 两条平行线被截线所截，一个同旁内角为 $72 degree$，另一个是多少？
  + 两条直线相交，若其中一个角是 $90 degree$，其余三个角各是多少度？
  + 直线 $l$ 外有一点 $P$，从 $P$ 向 $l$ 作垂线，垂足为 $H$，$P H = 6 "cm"$。$P$ 到 $l$ 的距离是多少？

  *应用*

  + $a parallel b$，截线 $l$ 所截，同位角为 $110 degree$。求同旁内角。
  + 在坐标方格纸上，点 $P = (2, 5)$，$x$ 轴是直线 $l$。过 $P$ 作 $l$ 的垂线，垂足在哪里？$P$ 到 $x$ 轴的距离是多少？
  + 旗杆垂直于地面竖立，阳光与地面成 $40 degree$ 角照射。求阳光与旗杆的夹角。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + $180 degree - 72 degree = 108 degree$。
  + 其余三个角也全是 $90 degree$（两线垂直时四个角均为直角）。
  + $P$ 到 $l$ 的距离 $= P H = 6 "cm"$。

  *应用*
  + 同位角 $= 110 degree$，同旁内角 $= 180 degree - 110 degree = 70 degree$。
  + 垂足为 $(2, 0)$；$P$ 到 $x$ 轴的距离 $= 5$（纵坐标值）。
  + 旗杆垂直地面，即旗杆与地面成 $90 degree$。阳光与地面成 $40 degree$，所以阳光与旗杆的夹角 $= 90 degree - 40 degree = 50 degree$。
]
