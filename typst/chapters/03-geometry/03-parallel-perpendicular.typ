#import "../../lib/theme.typ": *
#import "../../lib/diagram-packages.typ": cetz

== §3.3 平行与垂直 <sec-3-3>

#box(
  inset: 10pt,
  fill: luma(245),
  stroke: (paint: luma(180), thickness: 0.6pt),
  radius: 3pt,
)[
  *前置知识：#secref("3.2")*

  *适用年级：7 年级*
]

=== 平行线的概念

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

铁轨的两条钢轨永远不会交叉，无论它们向前延伸多远，始终保持相同的间距。这就是"平行"的直观含义。
]

*概念建立*

在同一平面内，不相交的两条直线叫做平行线。直线 a 与直线 b 平行，记作 a ∥ b。

#figure(caption: [平行线 a ∥ b：同一平面内不相交的两条直线])[
  #cetz.canvas({
    import cetz.draw: *

    // Line a (top)
    line((-3, 1), (3, 1), stroke: 0.7pt + black, mark: (start: ">", end: ">", fill: black))
    content((3.3, 1), anchor: "west", text(9pt)[$a$])

    // Line b (bottom)
    line((-3, -1), (3, -1), stroke: 0.7pt + black, mark: (start: ">", end: ">", fill: black))
    content((3.3, -1), anchor: "west", text(9pt)[$b$])
  })
]

平行公理：经过直线外一点，有且只有一条直线与已知直线平行。

由此推出：如果两条直线都与第三条直线平行，那么这两条直线也互相平行。

*关键总结*

- 同一平面内，不相交的两条直线是平行线。
- 经过直线外一点，有且只有一条直线与已知直线平行。
- 平行具有传递性。

=== 平行线的判定

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

工人砌墙时会用一根横线和一把角尺来检查砖缝是否平行。他检查的其实就是某些角是否相等，这正是平行线判定的核心思想。
]

*概念建立*

当一条直线（称为截线）与两条直线相交时，会形成 8 个角。三类常见的角对是：

- 同位角：在截线同侧、在两条被截线的同方位。
- 内错角：在截线两侧、在两条被截线之间。
- 同旁内角：在截线同侧、在两条被截线之间。

#figure(caption: [截线 l 与直线 a、b 相交形成 8 个角])[
  #cetz.canvas({
    import cetz.draw: *
    import cetz.angle: angle

    // Line a (top, y=1.5)
    line((-3, 1.5), (3, 1.5), stroke: 0.7pt + black, mark: (start: ">", end: ">", fill: black))
    content((3.3, 1.5), anchor: "west", text(9pt)[$a$])

    // Line b (bottom, y=-1.5)
    line((-3, -1.5), (3, -1.5), stroke: 0.7pt + black, mark: (start: ">", end: ">", fill: black))
    content((3.3, -1.5), anchor: "west", text(9pt)[$b$])

    // Transversal l: cuts a at P=(0.75, 1.5) and b at Q=(-0.75, -1.5)
    line((-1.5, -3), (1.5, 3), stroke: 0.7pt + black, mark: (start: ">", end: ">", fill: black))
    content((1.7, 3), anchor: "west", text(9pt)[$l$])

    // Named intersection points and ray directions
    let P = (0.75, 1.5)
    let Q = (-0.75, -1.5)
    let right-a = (3, 1.5)
    let left-a = (-3, 1.5)
    let right-b = (3, -1.5)
    let left-b = (-3, -1.5)
    let trans-up = (1.5, 3)
    let trans-down = (-1.5, -3)

    // 8 angles at top intersection P (CCW ordering for each sector)
    angle(P, right-a, trans-up, label: text(7pt)[$1$], radius: 0.4, stroke: 0.5pt + blue)
    angle(P, trans-up, left-a, label: text(7pt)[$2$], radius: 0.4, stroke: 0.5pt + blue)
    angle(P, left-a, trans-down, label: text(7pt)[$3$], radius: 0.4, stroke: 0.5pt + blue)
    angle(P, trans-down, right-a, label: text(7pt)[$4$], radius: 0.4, stroke: 0.5pt + blue)

    // 8 angles at bottom intersection Q
    angle(Q, right-b, trans-up, label: text(7pt)[$5$], radius: 0.4, stroke: 0.5pt + blue)
    angle(Q, trans-up, left-b, label: text(7pt)[$6$], radius: 0.4, stroke: 0.5pt + blue)
    angle(Q, left-b, trans-down, label: text(7pt)[$7$], radius: 0.4, stroke: 0.5pt + blue)
    angle(Q, trans-down, right-b, label: text(7pt)[$8$], radius: 0.4, stroke: 0.5pt + blue)
  })
]

平行线的判定方法：

1. 同位角相等，两直线平行。
2. 内错角相等，两直线平行。
3. 同旁内角互补，两直线平行。

*典型例题*

- 例 1：如图，直线 l 截直线 a、b，∠1 = ∠2，说明 a ∥ b。
- 例 2：若 ∠BAC = 70°，∠ACD = 110°，则 AB ∥ CD。
- 例 3：若 ∠1 = ∠2 = 45°，则 a ∥ b。

*关键总结*

- 平行的判定是由角的关系推出平行。
- 三种判定方法分别对应同位角、内错角、同旁内角。

*练一练*

1. 如图，直线 l 截直线 a、b，∠1 = 120°，∠2 = 60°。a 与 b 平行吗？
2. 若 ∠A = 50°，∠C = 50°，且它们是内错角，AB 与 CD 平行吗？

=== 平行线的性质

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

判定告诉我们"什么条件下两直线平行"。现在反过来问：已知两直线平行，能得出什么结论？
]

*概念建立*

平行线的性质：

1. 两直线平行，同位角相等。
2. 两直线平行，内错角相等。
3. 两直线平行，同旁内角互补。

性质与判定方向相反：

- 判定：角的关系 ⇒ 平行。
- 性质：平行 ⇒ 角的关系。

*典型例题*

- 例 1：a ∥ b，∠1 = 65°，则 ∠2 = 65°，∠3 = 115°。
- 例 2：AB ∥ CD，∠ABE = 50°，∠DCE = 30°，则 ∠BEC = 80°。
- 例 3：AB ∥ CD，∠A = 40°，∠C = 30°，则 ∠AEC = 70°。

#figure(caption: [a ∥ b，∠1 = 65°；同位角 ∠2 = 65°；同旁内角 ∠3 = 115°])[
  #cetz.canvas({
    import cetz.draw: *
    import cetz.angle: angle

    // Line a (top, y=1.5)
    line((-3, 1.5), (3, 1.5), stroke: 0.7pt + black, mark: (start: ">", end: ">", fill: black))
    content((3.3, 1.5), anchor: "west", text(9pt)[$a$])

    // Line b (bottom, y=-1.5)
    line((-3, -1.5), (3, -1.5), stroke: 0.7pt + black, mark: (start: ">", end: ">", fill: black))
    content((3.3, -1.5), anchor: "west", text(9pt)[$b$])

    // Transversal
    line((-1.5, -3), (1.5, 3), stroke: 0.7pt + black, mark: (start: ">", end: ">", fill: black))
    content((1.7, 3), anchor: "west", text(9pt)[$l$])

    // Named points
    let P = (0.75, 1.5)       // top intersection
    let Q = (-0.75, -1.5)     // bottom intersection
    let right-a = (3, 1.5)
    let left-b = (-3, -1.5)
    let right-b = (3, -1.5)
    let trans-up = (1.5, 3)

    // ∠1 = 65° at top intersection (between line-a-right and transversal-up)
    angle(P, right-a, trans-up, label: text(7pt)[$angle 1$], radius: 0.5, stroke: 0.5pt + blue)
    content((0.75 + 0.75, 1.5 + 0.3), text(8pt, fill: blue)[$65°$])

    // ∠2 = 65° at bottom intersection (corresponding angle)
    angle(Q, right-b, trans-up, label: text(7pt)[$angle 2$], radius: 0.5, stroke: 0.5pt + blue)
    content((-0.75 + 0.75, -1.5 + 0.3), text(8pt, fill: blue)[$65°$])

    // ∠3 = 115° at bottom (co-interior angle, between transversal-up and line-b-left)
    angle(Q, trans-up, left-b, label: text(7pt)[$angle 3$], radius: 0.5, stroke: 0.5pt + blue)
    content((-0.75 - 0.5, -1.5 + 0.6), text(8pt, fill: blue)[$115°$])
  })
]

#figure(caption: [AB ∥ CD，∠ABE = 50°，∠DCE = 30°，求 ∠BEC])[
  #cetz.canvas({
    import cetz.draw: *

    // AB (top line, y=2)
    line((-3, 2), (3, 2), stroke: 0.7pt + black, mark: (start: ">", end: ">", fill: black))
    content((-3.3, 2), anchor: "east", text(9pt)[$A$])
    content((3.3, 2), anchor: "west", text(9pt)[$B$])

    // CD (bottom line, y=-2)
    line((-3, -2), (3, -2), stroke: 0.7pt + black, mark: (start: ">", end: ">", fill: black))
    content((-3.3, -2), anchor: "east", text(9pt)[$C$])
    content((3.3, -2), anchor: "west", text(9pt)[$D$])

    // Point E between the lines
    let ex = 0
    let ey = 0
    circle((ex, ey), radius: 0.05, fill: black, stroke: none)
    content((ex + 0.25, ey), anchor: "west", text(9pt)[$E$])

    // Line BE: from B(3,2) to E(0,0)
    line((3, 2), (ex, ey), stroke: 0.7pt + black)
    // Line CE: from C(-3,-2) to E(0,0)
    line((-3, -2), (ex, ey), stroke: 0.7pt + black)

    // Dashed auxiliary line through E parallel to AB and CD
    line((-2.5, ey), (2.5, ey), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))

    // Angle labels
    // ∠ABE = 50° at B
    content((2.2, 1.75), text(8pt, fill: blue)[$50°$])
    // ∠DCE = 30° at C
    content((-2.2, -1.75), text(8pt, fill: blue)[$30°$])
    // ∠BEC = 80° at E
    content((ex - 0.7, ey + 0.5), text(8pt, fill: blue)[$80°$])
  })
]

#figure(caption: [AB ∥ CD，∠A = 40°，∠C = 30°，求 ∠AEC = 70°])[
  #cetz.canvas({
    import cetz.draw: *

    // AB (top line, y=2)
    line((-3, 2), (3, 2), stroke: 0.7pt + black, mark: (start: ">", end: ">", fill: black))
    content((-3.3, 2), anchor: "east", text(9pt)[$A$])
    content((3.3, 2), anchor: "west", text(9pt)[$B$])

    // CD (bottom line, y=-2)
    line((-3, -2), (3, -2), stroke: 0.7pt + black, mark: (start: ">", end: ">", fill: black))
    content((-3.3, -2), anchor: "east", text(9pt)[$C$])
    content((3.3, -2), anchor: "west", text(9pt)[$D$])

    // Point E between the lines (right side)
    let ex = 1.5
    let ey = 0
    circle((ex, ey), radius: 0.05, fill: black, stroke: none)
    content((ex + 0.25, ey), anchor: "west", text(9pt)[$E$])

    // Line AE: from A(-3,2) to E
    line((-3, 2), (ex, ey), stroke: 0.7pt + black)
    // Line CE: from C(-3,-2) to E
    line((-3, -2), (ex, ey), stroke: 0.7pt + black)

    // Dashed auxiliary line through E parallel to AB and CD
    line((-1.5, ey), (3, ey), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))

    // Angle labels
    // ∠A = 40° at A
    content((-2.1, 1.75), text(8pt, fill: blue)[$40°$])
    // ∠C = 30° at C
    content((-2.1, -1.75), text(8pt, fill: blue)[$30°$])
    // ∠AEC = 70° at E
    content((ex - 1, ey + 0.4), text(8pt, fill: blue)[$70°$])
  })
]

*关键总结*

- 两直线平行 ⇒ 同位角相等、内错角相等、同旁内角互补。
- 折线型角度问题常用"过折点作平行线"。

*练一练*

1. a ∥ b，截线 l 截出的 ∠1 = 72°，求它的内错角和同旁内角。
2. AB ∥ CD，∠B = 65°，∠D = 40°，求 ∠BED。
3. AB ∥ CD，BE 平分 ∠ABC，∠BCD = 70°，求 ∠BEC。

=== 垂直的概念

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

建筑工人用铅垂线来检查墙壁是否竖直。铅垂线是竖直向下的，而地面是水平的，它们之间的夹角恰好是 90°。
]

*概念建立*

当两条直线相交所成的角为 90° 时，这两条直线互相垂直。其中一条直线叫做另一条直线的垂线，交点叫做垂足。直线 a 与直线 b 垂直，记作 a ⟂ b。

#figure(caption: [a ⟂ b：直线 a 与直线 b 垂直，交点 O 为垂足])[
  #cetz.canvas({
    import cetz.draw: *

    // Line a (horizontal)
    line((-2.5, 0), (2.5, 0), stroke: 0.7pt + black, mark: (start: ">", end: ">", fill: black))
    content((2.7, 0), anchor: "west", text(9pt)[$a$])

    // Line b (vertical)
    line((0, -2.5), (0, 2.5), stroke: 0.7pt + black, mark: (start: ">", end: ">", fill: black))
    content((0, 2.7), anchor: "south", text(9pt)[$b$])

    // Right angle mark (small square at origin)
    line((0.25, 0), (0.25, 0.25), stroke: 0.5pt + black)
    line((0.25, 0.25), (0, 0.25), stroke: 0.5pt + black)

    // Point O at intersection
    circle((0, 0), radius: 0.05, fill: black, stroke: none)
    content((0.2, -0.25), anchor: "north-west", text(9pt)[$O$])
  })
]

*关键总结*

- 当两条直线相交所成的角为 90° 时，这两条直线互相垂直。
- 垂足是垂线和被垂直直线的交点。

=== 垂线段最短与点到直线的距离

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

从直线外一点到直线上的不同点有很多连线，但其中垂直那一条最短。
]

*概念建立*

从直线外一点到这条直线的各条连线中，垂线段最短。结论可以写成：若 PH ⟂ l，且 A 在 l 上且 A ≠ H，则 PH < PA。点到直线的距离，就是从点到这条直线的垂线段长度。

#figure(caption: [垂线段最短：PH ⟂ l，PH 是点 P 到直线 l 的距离])[
  #cetz.canvas({
    import cetz.draw: *

    // Line l (horizontal)
    line((-2, 0), (4, 0), stroke: 0.7pt + black, mark: (start: ">", end: ">", fill: black))
    content((4.3, 0), anchor: "west", text(9pt)[$l$])

    // Point P above the line
    circle((2, 2.5), radius: 0.05, fill: black, stroke: none)
    content((2, 2.7), anchor: "south", text(9pt)[$P$])

    // Foot H on line l (directly below P)
    circle((2, 0), radius: 0.05, fill: black, stroke: none)
    content((2, -0.25), anchor: "north", text(9pt)[$H$])

    // Perpendicular line PH (solid)
    line((2, 2.5), (2, 0), stroke: 0.7pt + black)

    // Right angle mark at H
    line((2.25, 0), (2.25, 0.25), stroke: 0.5pt + black)
    line((2.25, 0.25), (2, 0.25), stroke: 0.5pt + black)

    // Point A on line l (to the left)
    circle((-0.5, 0), radius: 0.05, fill: black, stroke: none)
    content((-0.5, -0.25), anchor: "north", text(9pt)[$A$])

    // Dashed line PA
    line((2, 2.5), (-0.5, 0), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))

    // Label PH < PA
    content((3.2, 1.25), text(8pt)[$P H < P A$])
  })
]

两条平行线之间的距离处处相等。三角形中，顶点到对边的垂线段就是高。

*典型例题*

- 例 1：点 P 到直线 l 的距离若为 4 cm，则垂线段长度就是 4 cm。
- 例 2：两条平行线之间的距离为 8 cm，则在一条线上取点 P、另一条上取点 Q，PQ 的最小值是 8 cm。
- 例 3：若 ∠AOB = 30°，点 P 到 OA 的距离为 3 cm，则 OP = 6 cm。

*关键总结*

- 从直线外一点到直线的所有连线中，垂线段最短。
- 点到直线的距离 = 垂线段的长度。
- 两平行线之间的距离处处相等。
- 三角形中，顶点到对边的垂线段就是高。

*练一练*

1. 点 P 到直线 l 的距离为 4 cm。在直线 l 上取一点 A，使得 PA = 5 cm。这样的点 A 有几个？
2. 两条平行线之间的距离为 8 cm。在一条平行线上取一点 P，在另一条上取一点 Q。PQ 的最小值是多少？
3. 如图，∠AOB = 30°，P 是 ∠AOB 内部一点，P 到 OA 的距离是 3 cm。求 OP。

=== 参考答案

1. ∠1 + ∠2 = 120° + 60° = 180°，所以 a ∥ b。
2. ∠A = ∠C = 50°，是内错角，所以 AB ∥ CD。
3. 内错角 = 72°，同旁内角 = 108°。
4. ∠BED = 105°。
5. ∠BEC = 125°。
6. 一个点 A，有 2 个。
7. 最小值是 8 cm。
8. OP = 6 cm。
