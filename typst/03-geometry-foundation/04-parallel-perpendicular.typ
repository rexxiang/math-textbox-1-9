#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, vocab, tryit, pitfall
#import "../lib/diagram-packages.typ": cetz

== §3.7 平行线：两条永不相交的直线 <sec-3-7>

#vocab[平行线 parallel lines / 同位角 corresponding angles / 内错角 alternate interior angles]

#crisis[
  铁路工人铺设两条轨道：从车站出发，一直到远方，两根钢轨始终保持相同的间距。如果在某处它们忽然靠近、交叉，列车就会脱轨！

  当一条截线横穿这两条轨道时，会产生很多角。*哪些角一定相等？怎么判断？*
]

#discovery[
  *第一步*：平行线的直觉。

  拿一张横格纸，盯着任意两条相邻横线。无论把纸延伸多远，它们永远不会碰头——这就是平行。

  *定义*：在同一平面内，不相交的两条直线叫做*平行线*。记作 $a parallel b$，读作「$a$ 平行于 $b$」。

  *第二步*：截线登场。

  当一条直线（截线 $l$）斜穿过两条平行线 $a$、$b$ 时，分别在交点 $P$（在 $a$ 上）和 $Q$（在 $b$ 上）产生一系列角。

#figure(
  cetz.canvas(length: 2cm, {
    import cetz.draw: *
    // Line a (upper parallel line)
    line((-0.3, 2.2), (4.5, 2.2), stroke: 0.7pt)
    content((4.5, 2.2), $a$, anchor: "west", padding: 3pt)
    // Line b (lower parallel line)
    line((-0.3, 0), (4.5, 0), stroke: 0.7pt)
    content((4.5, 0), $b$, anchor: "west", padding: 3pt)
    // Transversal l
    line((0.5, -0.5), (3.8, 2.8), stroke: 0.7pt)
    content((3.8, 2.8), $l$, anchor: "south-west", padding: 2pt)
    // Intersection points
    // y=2.2: x = 0.5 + (2.7/3.3)*3.3 = 0.5+2.7 = 3.2  => P=(3.2, 2.2)
    // y=0:   x = 0.5 + (0.5/3.3)*3.3 = 0.5+0.5 = 1.0  => Q=(1.0, 0)
    let P = (3.2, 2.2)
    let Q = (1.0, 0)
    circle(P, radius: 0.04, fill: black, stroke: none)
    circle(Q, radius: 0.04, fill: black, stroke: none)
    content(P, $P$, anchor: "south-east", padding: 4pt)
    content(Q, $Q$, anchor: "north-east", padding: 4pt)
    // angle labels at P
    content((P.at(0)+0.38, P.at(1)+0.30), [$angle 1$])
    content((P.at(0)-0.50, P.at(1)-0.30), [$angle 2$])
    // angle labels at Q
    content((Q.at(0)+0.38, Q.at(1)+0.30), [$angle 3$])
    content((Q.at(0)-0.50, Q.at(1)-0.30), [$angle 4$])
  }),
  caption: [截线 $l$ 穿过平行线 $a$、$b$，在 $P$ 和 $Q$ 处各产生一组角]
)

  *第三步*：同位角——"站在同一位置"的角。

  观察 $angle 1$（在 $P$，截线右上方）和 $angle 3$（在 $Q$，截线右上方）：两者相对于各自的交点"站在同一位置"，这样的一对角叫做*同位角*。

  *第四步*：内错角——"夹在两线之间、分居两侧"的角。

  观察 $angle 2$（在 $P$，两线之间）和 $angle 3$（在 $Q$，两线之间）：两者都夹在平行线之间，但分居截线两侧，这样的一对角叫做*内错角*。

  两条平行轨道被截线斜穿时，每个交点处的"倾斜角度"都一样——所以同位角相等，内错角也相等。
]

#tryit[
  在上图中，$P$ 处的 $angle 1$ 是截线右上方的角，$Q$ 处的 $angle 3$ 是截线右上方的角。

  + 指出图中另一对同位角（提示：找 $P$ 处和 $Q$ 处位置相同的另一组）。
  + $angle 2$ 和 $angle 3$ 是内错角，$angle 2$ 在截线的哪一侧？$angle 3$ 在截线的哪一侧？
  + 如果 $angle 1 = 65 degree$，根据同位角相等，$angle 3 = $？
]

#blueprint[
  已知 $a parallel b$，截线 $l$ 与 $a$、$b$ 分别交于 $P$、$Q$，则：

  - *平行线*：同一平面内，不相交的两条直线。记作 $a parallel b$。

  - *同位角相等*：截线同侧、相对于各自交点"位置相同"的一对角大小相等。
    $
    a parallel b => angle_("同位") = angle_("同位")
    $

  - *内错角相等*：截线两侧、夹在两平行线之间的一对角大小相等。
    $
    a parallel b => angle_("内错") = angle_("内错")
    $

  *例题*：$a parallel b$，$angle 1 = 70 degree$，$angle 1$ 与 $angle 3$ 是内错角，求 $angle 3$。

  *解*：内错角相等，$angle 3 = 70 degree$。
]

#pitfall[
  *陷阱 1*

  ❌ 看图时发现两个"对角"大小一样，就直接说"它们是同位角，所以两线平行"

  → ✓ 这两个角可能是对顶角，和平行线毫无关系！同位角相等推平行，前提是先确认它们真的在截线同侧、对应位置。

  *陷阱 2*

  ❌ 同位角与内错角概念混淆，导致角的归类出错

  → ✓ 快速辨别：两个角都在截线同一侧 → 同位角；两个角分别在截线两侧且都在两平行线之间 → 内错角。
]

#mastery[
  *基础*

  + 在同一平面内，两条直线不相交，它们一定平行吗？
  + 如图，$a parallel b$，$angle 1 = 55 degree$，$angle 1$ 与 $angle 2$ 是同位角。求 $angle 2$。
  + 如图，$a parallel b$，$angle 3 = 112 degree$，$angle 3$ 与 $angle 4$ 是内错角。求 $angle 4$。

  *应用*

  + $a parallel b$，截线 $l$ 与两线所成的同位角为 $x degree$，写出内错角的度数。
  + 铁路两侧护栏笔直延伸、互相平行。一条检修通道斜穿而过，与左侧轨道所成的同位角是 $80 degree$，它与右侧轨道所成的对应同位角是多少度？

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + 在同一平面内，不相交的两条直线一定平行（"同一平面内"是关键条件）。
  + $angle 2 = 55 degree$（同位角相等）。
  + $angle 4 = 112 degree$（内错角相等）。

  *应用*
  + 内错角 $= x degree$（内错角与同位角相等）。
  + $80 degree$（同位角相等）。

  同旁内角——夹在两线之间且在截线同一侧的一对角——与这两组关系不同，它们是*互补*的。这与平行线的另一种"对称感"有关，下一节来讲。
]
