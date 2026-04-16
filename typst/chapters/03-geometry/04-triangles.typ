#import "../../lib/theme.typ": *
#import "../../lib/diagram-packages.typ": cetz, fletcher
#import "../../lib/geometry-helpers.typ": equal-angle

== §3.4 三角形 <sec-3-4>

#box(
  inset: 10pt,
  fill: luma(245),
  stroke: (paint: luma(180), thickness: 0.6pt),
  radius: 3pt,
)[
  *前置知识：#secref("3.2"), #secref("3.3")*

  *适用年级：7-8 年级*
]

=== 三角形的基本概念

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

自行车的车架是三角形的。为什么不做成四边形？因为三角形更稳定，四边形更容易变形。
]

*概念建立*

由三条线段首尾依次相连围成的图形叫做三角形。三角形 ABC 记作 △ABC。

三角形的基本要素：

- 顶点：A、B、C
- 边：AB、BC、AC
- 角：∠A、∠B、∠C

三角形按角分类：锐角三角形、直角三角形、钝角三角形。按边分类：不等边三角形、等腰三角形、等边三角形。

*三角形的内角和*

△ABC 的三个内角之和等于 180°。一个常用证明是：过顶点 A 作直线 DE ∥ BC，则内错角相等，三角形三个角与平角关系可得 ∠A + ∠B + ∠C = 180°。

#figure(caption: [三角形内角和定理证明：过 A 作 BC 的平行线])[
  #cetz.canvas({
    import cetz.draw: *
    import cetz.angle: angle

    let B = (0, 0)
    let C = (5, 0)
    let A = (2, 3)
    let D = (-0.8, 3)
    let E = (4.5, 3)

    // Triangle sides
    line(B, C, stroke: 0.7pt + black)
    line(C, A, stroke: 0.7pt + black)
    line(A, B, stroke: 0.7pt + black)

    // Dashed parallel line DE through A
    line(D, E, stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))

    // ∠B at vertex B (red) — with alternate interior angle ∠1 at A
    angle(B, C, A, label: text(7pt, fill: red)[$∠B$], radius: 0.5, stroke: 0.5pt + red)
    angle(A, D, B, label: text(7pt, fill: red)[$∠1$], radius: 0.5, stroke: 0.5pt + red)

    // ∠C at vertex C (blue) — with alternate interior angle ∠2 at A
    angle(C, B, A, label: text(7pt, fill: blue)[$∠C$], radius: 0.5, stroke: 0.5pt + blue)
    angle(A, C, E, label: text(7pt, fill: blue)[$∠2$], radius: 0.5, stroke: 0.5pt + blue)

    // ∠A at vertex A (green, interior angle of triangle)
    angle(A, B, C, radius: 0.5, stroke: 0.5pt + green, direction: "cw")

    // Labels
    content(B, anchor: "north-east", padding: 0.15, text(9pt)[$B$])
    content(C, anchor: "north-west", padding: 0.15, text(9pt)[$C$])
    content(A, anchor: "south", padding: 0.15, text(9pt)[$A$])
    content(D, anchor: "south-east", padding: 0.15, text(9pt)[$D$])
    content(E, anchor: "south-west", padding: 0.15, text(9pt)[$E$])
  })
]

*典型例题*

- 例 1：∠A = 50°，∠B = 70°，则 ∠C = 60°。
- 例 2：∠A : ∠B : ∠C = 2 : 3 : 4，则三个角分别为 40°、60°、80°。
- 例 3：直角三角形中一个锐角为 35°，另一个锐角为 55°。
- 例 4：若 ∠A = 2∠B = 3∠C，则 ∠C = 360°/11，∠B = 540°/11，∠A = 1080°/11。

*关键总结*

- 三角形内角和为 180°。
- 直角三角形的两个锐角互余。
- 三角形具有稳定性。

*练一练*

1. △ABC 中，∠A = 48°，∠C = 65°，求 ∠B。
2. 一个等腰三角形的顶角是 40°，求两个底角。

=== 三角形的三边关系

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

给你三根木棒，长度分别是 3 cm、4 cm、5 cm，能搭成三角形吗？如果换成 1 cm、2 cm、5 cm 呢？第二组搭不成，因为两条短边加起来还不够长。
]

*概念建立*

三角形任意两边之和大于第三边；等价地，任意两边之差小于第三边。判断时只需检验两条较短边之和是否大于最长边。

*典型例题*

- 例 1：判断 3、4、8；5、6、10；3、3、5 是否能构成三角形。
- 例 2：两边长分别为 3 cm 和 7 cm，第三边 x 的范围是 4 < x < 10。
- 例 3：等腰三角形两边长分别为 3 和 7，周长是 17。

*关键总结*

- 三角形任意两边之和大于第三边。
- 判断时只需检验两短边之和 > 最长边。
- 已知两边求第三边：两边之差 < 第三边 < 两边之和。

*练一练*

1. 三角形的两边长分别为 5 和 9，第三边为整数，求第三边所有可能值。
2. 等腰三角形的两边长为 4 和 9，求周长。

=== 全等三角形

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

冲压模具生产出的零件，每一个的形状和大小都完全一样。两个三角形如果能完全重合，我们就说它们全等。
]

*概念建立*

如果两个三角形的形状和大小完全相同，则称这两个三角形全等，记作 △ABC ≅ △DEF。对应顶点、对应边、对应角都要一一对应。

全等三角形的判定条件有五种：

- SSS：三边分别相等
- SAS：两边及其夹角分别相等
- ASA：两角及其夹边分别相等
- AAS：两角及其中一角的对边分别相等
- HL：直角三角形的斜边和一条直角边分别相等

SSA 不能判定全等。

#figure(caption: [SSA 反例：相同的两边和非夹角无法唯一确定三角形])[
  #cetz.canvas({
    import cetz.draw: *
    import cetz.angle: angle

    let A = (0, 0)
    let B = (3, 0)
    let C1 = (3.8, 2.2)
    let C2 = (1.2, 2.2)
    let ray-end = (5, 2.89)

    // Shared side AB
    line(A, B, stroke: 0.7pt + black)

    // Angle arc at A
    angle(A, B, ray-end, label: text(7pt)[$∠A$], radius: 0.5, stroke: 0.5pt + blue)

    // Ray from A showing the angle direction
    line(A, ray-end, stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))

    // Triangle 1: A-B-C1 (acute)
    line(B, C1, stroke: 0.7pt + black)
    line(A, C1, stroke: 0.7pt + black)

    // Triangle 2: A-B-C2 (obtuse) — dashed to distinguish
    line(B, C2, stroke: (paint: blue, thickness: 0.7pt, dash: "dash-dotted"))
    line(A, C2, stroke: (paint: blue, thickness: 0.7pt, dash: "dash-dotted"))

    // Labels
    content(A, anchor: "north-east", padding: 0.15, text(9pt)[$A$])
    content(B, anchor: "north-west", padding: 0.15, text(9pt)[$B$])
    content(C1, anchor: "south-west", padding: 0.15, text(9pt)[$C_1$])
    content(C2, anchor: "south-east", padding: 0.15, text(9pt)[$C_2$])
  })
]

*典型例题*

- 例 1：在 △ABD 和 △DCB 中，若 AB = DC，∠ABD = ∠DCB，BD = CB，则两三角形全等（SAS）。
- 例 2：若 ∠A = ∠D，∠B = ∠E，BC = EF，则 △ABC ≅ △DEF（AAS）。
- 例 3：直角 △ACB 和直角 △ADB 中，若 AB 为公共斜边且 AC = AD，则两三角形全等（HL）。

#figure(caption: [SAS：AB = DE，∠A = ∠D，AC = DF])[
  #cetz.canvas({
    import cetz.draw: *
    import cetz.angle: angle

    // Left triangle △ABC
    let A = (0, 0)
    let B = (3, 0)
    let C = (0.8, 2.2)

    line(A, B, stroke: 0.7pt + black)
    line(B, C, stroke: 0.7pt + black)
    line(C, A, stroke: 0.7pt + black)

    // Tick mark on AB (single tick)
    line((1.4, -0.12), (1.6, 0.12), stroke: 0.6pt + black)

    // Tick mark on AC (double tick)
    line((0.35, 0.98), (0.47, 1.22), stroke: 0.6pt + black)
    line((0.3, 1.08), (0.42, 1.32), stroke: 0.6pt + black)

    // Angle arc at A
    angle(A, B, C, stroke: 0.5pt + blue, radius: 0.45)

    content(A, anchor: "north-east", padding: 0.15, text(9pt)[$A$])
    content(B, anchor: "north-west", padding: 0.15, text(9pt)[$B$])
    content(C, anchor: "south", padding: 0.15, text(9pt)[$C$])

    // Right triangle △DEF (offset by 5)
    let D = (5, 0)
    let E = (8, 0)
    let F = (5.8, 2.2)

    line(D, E, stroke: 0.7pt + black)
    line(E, F, stroke: 0.7pt + black)
    line(F, D, stroke: 0.7pt + black)

    // Tick mark on DE (single tick)
    line((6.4, -0.12), (6.6, 0.12), stroke: 0.6pt + black)

    // Tick mark on DF (double tick)
    line((5.35, 0.98), (5.47, 1.22), stroke: 0.6pt + black)
    line((5.3, 1.08), (5.42, 1.32), stroke: 0.6pt + black)

    // Angle arc at D
    angle(D, E, F, stroke: 0.5pt + blue, radius: 0.45)

    content(D, anchor: "north-east", padding: 0.15, text(9pt)[$D$])
    content(E, anchor: "north-west", padding: 0.15, text(9pt)[$E$])
    content(F, anchor: "south", padding: 0.15, text(9pt)[$F$])
  })
]

#figure(caption: [AAS：∠A = ∠D，∠B = ∠E，BC = EF])[
  #cetz.canvas({
    import cetz.draw: *
    import cetz.angle: angle

    // Left triangle △ABC
    let A = (0, 2.2)
    let B = (0, 0)
    let C = (2.8, 0)

    line(A, B, stroke: 0.7pt + black)
    line(B, C, stroke: 0.7pt + black)
    line(C, A, stroke: 0.7pt + black)

    // Single arc at A
    angle(A, C, B, stroke: 0.5pt + blue, radius: 0.5, direction: "near")

    // Double arc at B
    equal-angle(B, C, A, n: 2, stroke: 0.5pt + red, radius: 0.45, gap: 0.07)

    // Tick mark on BC
    line((1.3, -0.12), (1.5, 0.12), stroke: 0.6pt + black)

    content(A, anchor: "south", padding: 0.15, text(9pt)[$A$])
    content(B, anchor: "north-east", padding: 0.15, text(9pt)[$B$])
    content(C, anchor: "north-west", padding: 0.15, text(9pt)[$C$])

    // Right triangle △DEF (offset by 5)
    let D = (5, 2.2)
    let E = (5, 0)
    let F = (7.8, 0)

    line(D, E, stroke: 0.7pt + black)
    line(E, F, stroke: 0.7pt + black)
    line(F, D, stroke: 0.7pt + black)

    // Single arc at D
    angle(D, F, E, stroke: 0.5pt + blue, radius: 0.5, direction: "near")

    // Double arc at E
    equal-angle(E, F, D, n: 2, stroke: 0.5pt + red, radius: 0.45, gap: 0.07)

    // Tick mark on EF
    line((6.3, -0.12), (6.5, 0.12), stroke: 0.6pt + black)

    content(D, anchor: "south", padding: 0.15, text(9pt)[$D$])
    content(E, anchor: "north-east", padding: 0.15, text(9pt)[$E$])
    content(F, anchor: "north-west", padding: 0.15, text(9pt)[$F$])
  })
]

*关键总结*

- 全等三角形对应边相等，对应角相等。
- 五种判定方法：SSS、SAS、ASA、AAS、HL。
- SSA 不能判定全等。
- 写全等时对应顶点要写在对应位置。

*练一练*

1. 如图，AB = CD，AB ∥ CD。证明 △ABO ≅ △CDO（O 是 AC 与 BD 的交点）。
2. 如图，∠1 = ∠2，∠3 = ∠4，AD = BC。证明 △ADB ≅ △BCA。
3. 如图，直角 △ABC 与直角 △DEF 中，∠C = ∠F = 90°，AB = DE，BC = EF。证明 △ABC ≅ △DEF。

=== 等腰三角形与等边三角形

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

把一张纸对折后沿斜线剪一刀，展开后得到的三角形两边相等。若剪切角度恰当，还能得到三边都相等的等边三角形。
]

*概念建立*

等腰三角形：有两条边相等的三角形。相等的两边叫做腰，第三边叫做底边，两腰所夹的角叫做顶角，底边上的两个角叫做底角。

#figure(caption: [等腰三角形：AB = AC，底角 ∠B = ∠C])[
  #cetz.canvas({
    import cetz.draw: *

    let B = (0, 0)
    let C = (4, 0)
    let A = (2, 3)

    // Triangle sides
    line(A, B, stroke: 0.7pt + black)
    line(B, C, stroke: 0.7pt + black)
    line(C, A, stroke: 0.7pt + black)

    // Tick marks on AB (single tick) — midpoint of AB
    let ab-mx = 1.0
    let ab-my = 1.5
    // Perpendicular to AB direction
    line((ab-mx + 0.1, ab-my - 0.08), (ab-mx - 0.1, ab-my + 0.08), stroke: 0.6pt + black)

    // Tick marks on AC (single tick) — midpoint of AC
    let ac-mx = 3.0
    let ac-my = 1.5
    line((ac-mx + 0.1, ac-my + 0.08), (ac-mx - 0.1, ac-my - 0.08), stroke: 0.6pt + black)

    // Equal angle arcs at B and C
    import cetz.angle: angle
    angle(B, C, A, stroke: 0.5pt + blue, radius: 0.5)
    angle(C, A, B, stroke: 0.5pt + blue, radius: 0.5, direction: "near")

    // Labels
    content(B, anchor: "north-east", padding: 0.15, text(9pt)[$B$])
    content(C, anchor: "north-west", padding: 0.15, text(9pt)[$C$])
    content(A, anchor: "south", padding: 0.15, text(9pt)[$A$])
  })
]

等腰三角形的性质：等边对等角，且顶角平分线、底边中线、底边上的高三线合一。

等腰三角形的判定：等角对等边，如果一个三角形有两个角相等，则这两个角所对的边也相等。

等边三角形是三边都相等的三角形，它是等腰三角形的特殊情况。等边三角形三个角都等于 60°。

*典型例题*

- 例 1：等腰三角形一个角是 80°，则另两个角可能是 50°、50°，也可能是 80°、20°。
- 例 2：等腰三角形一个角是 120°，则另外两个角都是 30°。
- 例 3：若 AB = AC，BD 是 ∠ABC 的角平分线，∠A = 40°，则 ∠BDC = 75°。
- 例 4：等边三角形每个角都是 60°。

#figure(caption: [等腰三角形中，顶角的角平分线、底边中线、底边上的高三线合一])[
  #cetz.canvas({
    import cetz.draw: *

    let B = (0, 0)
    let C = (4, 0)
    let A = (2, 3.5)
    let D = (2, 0)  // midpoint of BC

    // Triangle sides
    line(A, B, stroke: 0.7pt + black)
    line(B, C, stroke: 0.7pt + black)
    line(C, A, stroke: 0.7pt + black)

    // Line from A to D (the "three in one" line)
    line(A, D, stroke: 0.7pt + red)

    import cetz.angle: angle, right-angle

    // Right angle mark at D
    right-angle(D, C, A, stroke: 0.5pt + black, radius: 0.3)

    // Tick marks on BD and DC showing D is midpoint
    line((0.9, -0.12), (1.1, 0.12), stroke: 0.6pt + black)
    line((2.9, -0.12), (3.1, 0.12), stroke: 0.6pt + black)

    // Tick marks on AB and AC (equal legs)
    line((0.9, 1.63), (1.1, 1.87), stroke: 0.6pt + black)
    line((2.9, 1.87), (3.1, 1.63), stroke: 0.6pt + black)

    // Equal angle arcs at A (bisected angle)
    angle(A, B, D, stroke: 0.5pt + blue, radius: 0.45, direction: "near")
    angle(A, D, C, stroke: 0.5pt + blue, radius: 0.45, direction: "near")

    // Labels
    content(B, anchor: "north-east", padding: 0.15, text(9pt)[$B$])
    content(C, anchor: "north-west", padding: 0.15, text(9pt)[$C$])
    content(A, anchor: "south", padding: 0.15, text(9pt)[$A$])
    content(D, anchor: "north", padding: 0.15, text(9pt)[$D$])

    // Annotation
    content((4.5, 1.75), anchor: "west", text(7pt, fill: red)[角平分线])
    content((4.5, 1.25), anchor: "west", text(7pt, fill: red)[中线])
    content((4.5, 0.75), anchor: "west", text(7pt, fill: red)[高])
  })
]

*关键总结*

- 等腰三角形：等边对等角，等角对等边。
- 等腰三角形有"三线合一"。
- 等边三角形三个角都是 60°。
- 已知一个角时，要先判断它是顶角还是底角。

*练一练*

1. 等腰三角形的一个角是 50°，求其他两个角（考虑所有情况）。
2. △ABC 中，AB = AC，D 是 BC 的中点。证明 AD ⟂ BC。
3. 已知等边 △ABC 的周长为 18 cm，求边长。

=== 相似三角形

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

把一张照片放大或缩小后，照片中的人物比例不变。这就是"相似"的直观含义：形状相同，大小可以不同。
]

*概念建立*

如果两个三角形的对应角相等、对应边成比例，则这两个三角形相似，记作 △ABC ∼ △DEF。对应边的比值叫做相似比。

相似三角形的判定方法：

- AA：两组对应角分别相等
- SAS 相似：两组对应边成比例，且夹角相等
- SSS 相似：三组对应边分别成比例

相似三角形的性质：

- 对应角相等
- 对应边成比例
- 周长比等于相似比
- 面积比等于相似比的平方

#figure(caption: [相似三角形 △ABC ∼ △DEF，相似比 2:1])[
  #cetz.canvas({
    import cetz.draw: *
    import cetz.angle: angle

    // Large triangle △ABC
    let A = (0, 0)
    let B = (4, 0)
    let C = (1, 3)

    line(A, B, stroke: 0.7pt + black)
    line(B, C, stroke: 0.7pt + black)
    line(C, A, stroke: 0.7pt + black)

    // Angle arcs on △ABC
    angle(A, B, C, stroke: 0.5pt + blue, radius: 0.45)
    angle(B, C, A, stroke: 0.5pt + red, radius: 0.5, direction: "near")
    angle(C, B, A, stroke: 0.5pt + green, radius: 0.42, direction: "near")

    content(A, anchor: "north-east", padding: 0.15, text(9pt)[$A$])
    content(B, anchor: "north-west", padding: 0.15, text(9pt)[$B$])
    content(C, anchor: "south", padding: 0.15, text(9pt)[$C$])

    // Small triangle △DEF (half size, offset to the right)
    let D = (6, 0)
    let E = (8, 0)
    let F = (6.5, 1.5)

    line(D, E, stroke: 0.7pt + black)
    line(E, F, stroke: 0.7pt + black)
    line(F, D, stroke: 0.7pt + black)

    // Matching angle arcs on △DEF
    angle(D, E, F, stroke: 0.5pt + blue, radius: 0.35)
    angle(E, F, D, stroke: 0.5pt + red, radius: 0.4, direction: "near")
    angle(F, E, D, stroke: 0.5pt + green, radius: 0.32, direction: "near")

    content(D, anchor: "north-east", padding: 0.15, text(9pt)[$D$])
    content(E, anchor: "north-west", padding: 0.15, text(9pt)[$E$])
    content(F, anchor: "south", padding: 0.15, text(9pt)[$F$])

    // Ratio label between the two triangles
    content((5, 1.2), text(10pt, weight: "bold")[$2 : 1$])
  })
]

*典型例题*

- 例 1：若 DE ∥ BC，AD = 3，DB = 6，DE = 4，则 BC = 12。
- 例 2：若 △ABC ∼ △DEF，且 AB : DE = 2 : 3，面积比为 4 : 9。
- 例 3：木棒与影子、树与影子构成相似直角三角形，树高 6 m。

*关键总结*

- 相似三角形：对应角相等，对应边成比例。
- 三种判定方法：AA、SAS 相似、SSS 相似。
- 周长比 = 相似比；面积比 = 相似比的平方。

*练一练*

1. 如图，DE ∥ BC，AD = 4，AB = 10，BC = 15。求 DE。
2. △ABC ∼ △DEF，AB = 6，DE = 9，△ABC 的面积为 20。求 △DEF 的面积。
3. 阳光下，一根 1.5 m 高的木棒影长 2 m。树的影长 8 m，求树高。

=== 三角形的中位线

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

连接三角形两边中点的线段，和第三条边有什么关系？你会发现它恰好平行于第三边，而且是第三边的一半。
]

*概念建立*

连接三角形两边中点的线段叫做三角形的中位线。三角形中位线定理：三角形的中位线平行于第三边，且等于第三边的一半。

#figure(caption: [三角形中位线定理：M、N 分别是 AB、AC 中点，则 MN ∥ BC 且 MN = 1/2 BC])[
  #cetz.canvas({
    import cetz.draw: *

    let A = (0, 3)
    let B = (0, 0)
    let C = (5, 0)
    let M = (0, 1.5)     // midpoint of AB
    let N = (2.5, 1.5)   // midpoint of AC

    // Triangle sides
    line(A, B, stroke: 0.7pt + black)
    line(B, C, stroke: 0.7pt + black)
    line(C, A, stroke: 0.7pt + black)

    // Midsegment MN
    line(M, N, stroke: 0.7pt + red)

    // Dashed parallel indicators (small arrows)
    // Arrow marks on MN and BC to show parallel
    line((-0.3, 1.5), (-0.3, 0), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))

    // Tick marks on AM and MB (M is midpoint of AB)
    line((-0.12, 2.35), (0.12, 2.15), stroke: 0.6pt + black)
    line((-0.12, 0.85), (0.12, 0.65), stroke: 0.6pt + black)

    // Tick marks on AN and NC (N is midpoint of AC)
    // Midpoint of AN: (1.25, 2.25); midpoint of NC: (3.75, 0.75)
    let an-mx = 1.25
    let an-my = 2.25
    line((an-mx - 0.1, an-my + 0.06), (an-mx + 0.1, an-my - 0.06), stroke: 0.6pt + black)
    line((an-mx - 0.06, an-my + 0.13), (an-mx + 0.14, an-my + 0.01), stroke: 0.6pt + black)

    let nc-mx = 3.75
    let nc-my = 0.75
    line((nc-mx - 0.1, nc-my + 0.06), (nc-mx + 0.1, nc-my - 0.06), stroke: 0.6pt + black)
    line((nc-mx - 0.06, nc-my + 0.13), (nc-mx + 0.14, nc-my + 0.01), stroke: 0.6pt + black)

    // Parallel indicator: small arrow marks on MN and BC
    // On MN at midpoint (1.25, 1.5)
    line((1.1, 1.6), (1.3, 1.5), stroke: 0.5pt + red)
    line((1.1, 1.4), (1.3, 1.5), stroke: 0.5pt + red)
    // On BC at midpoint (2.5, 0)
    line((2.35, 0.1), (2.55, 0), stroke: 0.5pt + red)
    line((2.35, -0.1), (2.55, 0), stroke: 0.5pt + red)

    // Filled points
    circle(M, radius: 0.05, fill: black, stroke: none)
    circle(N, radius: 0.05, fill: black, stroke: none)

    // Labels
    content(A, anchor: "east", padding: 0.15, text(9pt)[$A$])
    content(B, anchor: "north-east", padding: 0.15, text(9pt)[$B$])
    content(C, anchor: "north-west", padding: 0.15, text(9pt)[$C$])
    content(M, anchor: "east", padding: 0.2, text(9pt)[$M$])
    content(N, anchor: "south", padding: 0.15, text(9pt)[$N$])
  })
]

证明思路：延长 DE 到 F，使 EF = DE，连接 CF。由全等三角形可得相应角相等，再推出四边形是平行四边形，于是 DE ∥ BC 且 DE = 1/2 BC。

*典型例题*

- 例 1：△ABC 中，D、E 分别是 AB、AC 的中点，BC = 10 cm，则 DE = 5 cm。
- 例 2：梯形中，两腰中点的连线平行于底边，并且长度等于两底和的一半。

*关键总结*

- 三角形中位线平行于第三边，且等于第三边的一半。
- 中位线定理可用于证明平行和计算线段长度。

*练一练*

1. △ABC 中，D、E 分别是 AB、AC 的中点，DE = 7 cm，求 BC。
2. 梯形 ABCD 中，AD ∥ BC，E、F 分别是两腰 AB、CD 的中点。证明 EF ∥ BC，且 EF = 1/2(AD + BC)。

=== 参考答案

1. ∠B = 67°。
2. 两个底角都是 70°。
3. 第三边可能是 5、6、7、8、9、10、11、12、13。
4. 周长是 22。
5. 因 AB = CD、AB ∥ CD，所以 △ABO ≅ △CDO。
6. 因两角一边对应相等，所以 △ADB ≅ △BCA。
7. 由 HL，可得两直角三角形全等。
8. 可能情况有两组：50°、65°、65°；或 80°、50°、50°。
9. 因等腰三角形底角相等，可用 SSS 证明两小三角形全等，从而 AD ⟂ BC。
10. 边长是 6 cm。
11. DE = 6。
12. △DEF 的面积是 45。
13. 树高 6 m。
14. BC = 14 cm。
15. 先作辅助线并证明两小三角形全等，再用中位线定理得 EF = 1/2(AD + BC)。
