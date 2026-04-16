#import "../../lib/theme.typ": *
#import "../../lib/diagram-packages.typ": cetz, fletcher
#import fletcher: node, edge

== §3.5 四边形 <sec-3-5>

#box(
  inset: 10pt,
  fill: luma(245),
  stroke: (paint: luma(180), thickness: 0.6pt),
  radius: 3pt,
)[
  *前置知识：#secref("3.3"), #secref("3.4")*

  *适用年级：7-8 年级*
]

=== 多边形的内角和

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

三角形的内角和是 180°。四边形的内角和是多少？五边形呢？六边形呢？从一个顶点画对角线，把多边形分成若干三角形，就能找出规律。
]

*概念建立*

n 边形的内角和公式是 $(n - 2) * 180°$。正 n 边形的每个内角是 $((n - 2) * 180°) / n$。任意凸多边形的外角和都是 360°。

*典型例题*

- 正六边形每个内角是 120°。
- 内角和为 1440° 的多边形是十边形。
- 每个外角是 40° 的正多边形是正九边形。

*关键总结*

- n 边形内角和 = (n - 2) × 180°。
- 任意凸多边形外角和 = 360°。
- 正 n 边形每个内角 = ((n - 2) × 180°) / n。

*练一练*

1. 求正十二边形的每个内角。
2. 一个多边形的内角和是 1080°，它是几边形？
3. 一个正多边形的每个内角是 144°，求边数。

=== 平行四边形的性质与判定

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

推拉门、升降机的交叉支架、可折叠的晾衣架，都运用了平行四边形的原理。
]

*概念建立*

两组对边分别平行的四边形叫做平行四边形。平行四边形的性质：

- 对边平行
- 对边相等
- 对角相等
- 邻角互补
- 对角线互相平分

平行四边形的判定：

- 两组对边分别平行
- 两组对边分别相等
- 一组对边平行且相等
- 两组对角分别相等
- 对角线互相平分

#figure(caption: [平行四边形 ABCD：对角线 AC 和 BD 互相平分于点 O])[
  #cetz.canvas({
    import cetz.draw: *

    let A = (0, 0)
    let B = (4, 0)
    let C = (5, 2.5)
    let D = (1, 2.5)
    let O = (2.5, 1.25)

    // Sides
    line(A, B, stroke: 0.7pt + black)
    line(B, C, stroke: 0.7pt + black)
    line(C, D, stroke: 0.7pt + black)
    line(D, A, stroke: 0.7pt + black)

    // Diagonals
    line(A, C, stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))
    line(B, D, stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))

    // Arrow marks on AB and DC (parallel pair 1)
    line((1.9, -0.1), (2.1, 0.1), stroke: 0.5pt + black)
    line((1.9, 0.1), (2.1, -0.1), stroke: 0.5pt + black)
    // Not cross — use arrow chevron for parallel
    // AB: midpoint (2, 0)
    line((1.85, 0.1), (2.05, 0), stroke: 0.5pt + blue)
    line((1.85, -0.1), (2.05, 0), stroke: 0.5pt + blue)
    // DC: midpoint (3, 2.5)
    line((2.85, 2.6), (3.05, 2.5), stroke: 0.5pt + blue)
    line((2.85, 2.4), (3.05, 2.5), stroke: 0.5pt + blue)

    // Arrow marks on AD and BC (parallel pair 2)
    // AD: midpoint (0.5, 1.25)
    line((0.4, 1.35), (0.55, 1.22), stroke: 0.5pt + red)
    line((0.6, 1.35), (0.55, 1.22), stroke: 0.5pt + red)
    // BC: midpoint (4.5, 1.25)
    line((4.4, 1.35), (4.55, 1.22), stroke: 0.5pt + red)
    line((4.6, 1.35), (4.55, 1.22), stroke: 0.5pt + red)

    // Tick marks showing OA=OC (single tick on each half-diagonal)
    // OA midpoint: (1.25, 0.625)
    line((1.15, 0.55), (1.35, 0.7), stroke: 0.6pt + black)
    // OC midpoint: (3.75, 1.875)
    line((3.65, 1.8), (3.85, 1.95), stroke: 0.6pt + black)

    // Tick marks showing OB=OD (double tick on each half-diagonal)
    // OB midpoint: (3.25, 0.625)
    line((3.1, 0.72), (3.25, 0.53), stroke: 0.6pt + black)
    line((3.2, 0.72), (3.35, 0.53), stroke: 0.6pt + black)
    // OD midpoint: (1.75, 1.875)
    line((1.6, 1.97), (1.75, 1.78), stroke: 0.6pt + black)
    line((1.7, 1.97), (1.85, 1.78), stroke: 0.6pt + black)

    // Filled point at O
    circle(O, radius: 0.05, fill: black, stroke: none)

    // Labels
    content(A, anchor: "north-east", padding: 0.15, text(9pt)[$A$])
    content(B, anchor: "north-west", padding: 0.15, text(9pt)[$B$])
    content(C, anchor: "south-west", padding: 0.15, text(9pt)[$C$])
    content(D, anchor: "south-east", padding: 0.15, text(9pt)[$D$])
    content(O, anchor: "south-west", padding: 0.15, text(9pt)[$O$])
  })
]

*典型例题*

- 例 1：在平行四边形中，若 ∠A = 70°，则 ∠B = 110°，∠C = 70°，∠D = 110°。
- 例 2：若 AC = 16 cm，BD = 12 cm，则 OA = 8 cm，OB = 6 cm。
- 例 3：若 AB ∥ CD 且 AB = CD，则四边形 ABCD 是平行四边形。
- 例 4：若 OA = OC，OB = OD，则四边形 ABCD 是平行四边形。

*关键总结*

- 平行四边形：对边平行且相等，对角相等，对角线互相平分。
- 最常用的判定是"一组对边平行且相等"。

*练一练*

1. 在平行四边形 ABCD 中，AB = 8 cm，BC = 5 cm，求周长。
2. 在平行四边形 ABCD 中，∠A - ∠B = 40°，求四个角。
3. 若四边形 ABCD 中 AB = CD = 5 cm，AD = BC = 3 cm，这是不是平行四边形？

=== 矩形、菱形、正方形

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

教室的门、窗户是矩形；菱形窗花有着对称的美感；而棋盘上的小方格则是正方形。
]

*概念建立*

矩形：有一个角是直角的平行四边形。性质是四个角都是直角，对角线相等。判定是：有一个角是直角的平行四边形，或对角线相等的平行四边形。

菱形：有一组邻边相等的平行四边形。性质是四条边都相等，对角线互相垂直，每条对角线平分一组对角。面积公式是 1/2 d₁d₂。

正方形：有一个角是直角且有一组邻边相等的平行四边形。它同时具有矩形和菱形的所有性质。

*典型例题*

- 矩形 ABCD 中，AC = 10 cm，∠ACB = 30°，则 AB = 5 cm，BC = 5√3 cm。
- 菱形 ABCD 中，AB = 10 cm，∠A = 60°，则 BD = 10 cm，AC = 10√3 cm。
- 若平行四边形 ABCD 的对角线 AC = BD，则它是矩形。
- 菱形面积 = 1/2 d₁d₂。

*关键总结*

- 矩形：四角直角，对角线相等。
- 菱形：四边相等，对角线互相垂直。
- 正方形 = 矩形 + 菱形。

*练一练*

1. 矩形 ABCD 中，AB = 3 cm，BC = 4 cm，求对角线 AC。
2. 菱形 ABCD 中，对角线 AC = 16 cm，BD = 12 cm，求边长和面积。
3. 正方形 ABCD 的对角线长为 10 cm，求边长和面积。

=== 梯形

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

水坝横截面、拱桥侧面，常常呈梯形形状。梯形只有一组对边平行，比平行四边形少了一个"平行"条件。
]

*概念建立*

只有一组对边平行的四边形叫做梯形。平行的两边叫做上底和下底，不平行的两边叫做腰。等腰梯形两腰相等，同一底上的两个底角相等，对角线相等。

梯形面积公式：$S = 1/2 * (a + b) * h$。

梯形中位线：连接梯形两腰中点的线段叫做梯形中位线，且它平行于两底，长度等于两底之和的一半。

#figure(caption: [梯形：AB ∥ DC，AB 为下底，DC 为上底，AD、BC 为两腰])[
  #cetz.canvas({
    import cetz.draw: *

    let A = (0, 0)
    let B = (5, 0)
    let D = (1, 2.5)
    let C = (3.5, 2.5)

    // Sides
    line(A, B, stroke: 0.7pt + black)
    line(B, C, stroke: 0.7pt + black)
    line(C, D, stroke: 0.7pt + black)
    line(D, A, stroke: 0.7pt + black)

    // Parallel marks on AB and DC
    // AB midpoint (2.5, 0)
    line((2.35, 0.1), (2.55, 0), stroke: 0.5pt + blue)
    line((2.35, -0.1), (2.55, 0), stroke: 0.5pt + blue)
    // DC midpoint (2.25, 2.5)
    line((2.1, 2.6), (2.3, 2.5), stroke: 0.5pt + blue)
    line((2.1, 2.4), (2.3, 2.5), stroke: 0.5pt + blue)

    // Labels for vertices
    content(A, anchor: "north-east", padding: 0.15, text(9pt)[$A$])
    content(B, anchor: "north-west", padding: 0.15, text(9pt)[$B$])
    content(C, anchor: "south-west", padding: 0.15, text(9pt)[$C$])
    content(D, anchor: "south-east", padding: 0.15, text(9pt)[$D$])

    // Labels for sides
    content((2.5, -0.4), text(8pt)[下底])
    content((2.25, 2.9), text(8pt)[上底])
    content((-0.2, 1.25), anchor: "east", text(8pt)[腰])
    content((4.55, 1.25), anchor: "west", text(8pt)[腰])
  })
]

#figure(caption: [梯形面积 S = 1/2(a + b)h，h 为高])[
  #cetz.canvas({
    import cetz.draw: *

    let A = (0, 0)
    let B = (5, 0)
    let D = (1, 2.5)
    let C = (3.5, 2.5)

    // Sides
    line(A, B, stroke: 0.7pt + black)
    line(B, C, stroke: 0.7pt + black)
    line(C, D, stroke: 0.7pt + black)
    line(D, A, stroke: 0.7pt + black)

    // Height: vertical dashed line from D to AB
    line(D, (1, 0), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))

    // Right angle mark at foot of height
    line((1, 0.3), (1.3, 0.3), stroke: 0.5pt + black)
    line((1.3, 0.3), (1.3, 0), stroke: 0.5pt + black)

    // Label a (top base DC)
    content((2.25, 2.8), text(9pt, weight: "bold")[$a$])
    // Label b (bottom base AB)
    content((2.5, -0.35), text(9pt, weight: "bold")[$b$])
    // Label h (height)
    content((0.65, 1.25), text(9pt, weight: "bold")[$h$])

    // Vertex labels
    content(A, anchor: "north-east", padding: 0.15, text(9pt)[$A$])
    content(B, anchor: "north-west", padding: 0.15, text(9pt)[$B$])
    content(C, anchor: "south-west", padding: 0.15, text(9pt)[$C$])
    content(D, anchor: "south-east", padding: 0.15, text(9pt)[$D$])
  })
]

*典型例题*

- 等腰梯形中，若上底 4 cm、下底 10 cm、腰长 5 cm，则高 4 cm，面积 28 cm²。
- 若梯形中位线连接两腰中点，且上底 6 cm、下底 14 cm，则中位线长 10 cm。
- 等腰梯形中，若 ∠B = 60°、BC = 12 cm、AB = 4 cm，则 AD = 8 cm。

*关键总结*

- 梯形有且只有一组对边平行。
- 等腰梯形：两腰相等，同底上两角相等，对角线相等。
- 梯形面积 = 1/2(a + b)h。
- 梯形中位线 = 1/2(a + b)。

*练一练*

1. 梯形的上底 6 cm，下底 10 cm，高 8 cm，求面积。
2. 等腰梯形的对角线长为 13 cm，上底 5 cm，下底 11 cm，求高。
3. 等腰梯形的两底角都是 45°，上底 6 cm，下底 10 cm，求腰长和面积。

=== 四边形之间的关系

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

平行四边形、矩形、菱形、正方形，它们之间到底是什么关系？可以把它们看成一个家族。
]

*概念建立*

四边形家族层级如下：

- 四边形
- 平行四边形
- 矩形、菱形
- 正方形

更具体地说：

- 平行四边形 + 一个直角 = 矩形
- 平行四边形 + 一组邻边相等 = 菱形
- 矩形 + 一组邻边相等 = 正方形
- 菱形 + 一个直角 = 正方形

#figure(caption: [四边形家族关系])[
  #fletcher.diagram(
    spacing: (10mm, 12mm),
    node-stroke: 0.5pt,
    node((0, 0), [四边形]),
    node((0, 1), [平行四边形]),
    node((-1, 2), [矩形]),
    node((1, 2), [菱形]),
    node((0, 3), [正方形]),
    node((2, 1), [梯形]),
    node((2, 2), [等腰梯形]),
    edge((0,0), (0,1), "->"),
    edge((0,0), (2,1), "->"),
    edge((0,1), (-1,2), "->"),
    edge((0,1), (1,2), "->"),
    edge((-1,2), (0,3), "->"),
    edge((1,2), (0,3), "->"),
    edge((2,1), (2,2), "->"),
  )
]

*典型例题*

- 对角线相等的平行四边形是矩形；但对角线相等的四边形不一定是矩形。
- 对角线互相垂直的平行四边形是菱形。
- 对角线相等且互相垂直的平行四边形是正方形。

*关键总结*

- 四边形形成层级关系：平行四边形 → 矩形/菱形 → 正方形。
- 判定时要注意前提条件。
- 正方形兼具矩形和菱形的所有性质。

*练一练*

1. 一个四边形四条边都相等，它一定是正方形吗？一定是菱形吗？
2. 已知平行四边形 ABCD 的对角线 AC ⟂ BD，且 AC = BD，它是什么特殊四边形？

=== 参考答案

1. 150°。
2. 十边形。
3. 9。
4. 周长 26 cm。
5. ∠A = ∠C = 110°，∠B = ∠D = 70°。
6. 是平行四边形。
7. AC = 5 cm。
8. 边长 10 cm，面积 96 cm²。
9. 边长 5√2 cm，面积 50 cm²。
10. 面积 64 cm²。
11. 高约为 √105 cm。
12. 腰长 2√2 cm，面积 16 cm²。
13. 四条边都相等一定是菱形，不一定是正方形。
14. 这个四边形是正方形。
