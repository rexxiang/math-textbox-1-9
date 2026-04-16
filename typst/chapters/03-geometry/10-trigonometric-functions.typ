#import "../../lib/theme.typ": *
#import "../../lib/diagram-packages.typ": cetz, fletcher

== §3.10 锐角三角函数 <sec-3-10>

#box(
  inset: 10pt,
  fill: luma(245),
  stroke: (paint: luma(180), thickness: 0.6pt),
  radius: 3pt,
)[
  *前置知识：* #secref("3.4"), #secref("3.7")

  *适用年级：* 9 年级
]

=== 锐角三角函数的定义

#explore[
一座山的坡面与水平面的夹角是 $30°$。如果你沿着坡面走了 $100$ 米，你实际上升了多少米？要回答这个问题，我们需要知道 $30°$ 角对应的“对边与斜边的比值”。
]

#understand[
在直角三角形中，设一个锐角为 $∠ "A"$，则：

#figure(caption: [锐角三角函数定义：$sin$、$cos$、$tan$])[
  #cetz.canvas({
    import cetz.draw: *

    // Right triangle: A at origin, C at (4,0), B at (4,2.5)
    let A = (0, 0)
    let C = (4, 0)
    let B = (4, 2.5)

    // Triangle sides
    line(A, C, stroke: 0.7pt + black)
    line(C, B, stroke: 0.7pt + black)
    line(A, B, stroke: 0.7pt + black)

    import cetz.angle: angle, right-angle

    // Right angle mark at C
    right-angle(C, A, B, stroke: 0.5pt + black, radius: 0.3)

    // Angle arc at A
    angle(A, C, B, label: text(9pt)[$A$], radius: 0.6, stroke: 0.5pt + blue, label-radius: 130%)

    // Vertex labels
    content((-0.25, -0.15), anchor: "north-east", padding: 0.1, text(9pt)[$A$])
    content((4.2, -0.15), anchor: "north-west", padding: 0.1, text(9pt)[$C$])
    content((4.2, 2.6), anchor: "south-west", padding: 0.1, text(9pt)[$B$])

    // Side labels
    content((2, -0.35), anchor: "north", padding: 0.1, text(9pt)[邻边])
    content((4.45, 1.25), anchor: "west", padding: 0.1, text(9pt)[对边])
    content((1.7, 1.55), anchor: "south-east", padding: 0.1, text(9pt)[斜边])
  })
]

其中：
- *对边*：$∠ "A"$ 的对面那条边
- *邻边*：$∠ "A"$ 的旁边那条直角边
- *斜边*：直角的对面那条边，即最长的边
]

#workedexamples[
*例 1.* 在 $"Rt"△ "ABC"$ 中，$∠ "C" = 90°$，$"AC" = 3$，$"BC" = 4$，$"AB" = 5$。求 $sin A$、$cos A$、$tan A$。

*解：* $sin A = (4)/(5)$，$cos A = (3)/(5)$，$tan A = (4)/(3)$。

*例 2.* 在 $"Rt"△ "ABC"$ 中，$∠ "C" = 90°$，$sin A = (5)/(13)$。求 $cos A$ 和 $tan A$。

*解：* $cos A = (12)/(13)$，$tan A = (5)/(12)$。

*例 3.* 在 $"Rt"△ "ABC"$ 中，$∠ "C" = 90°$，$tan B = 2$，$"BC" = 6$。求 $"AC"$ 和 $"AB"$。

*解：* $"AC" = 12$，$"AB" = 6sqrt(5)$。
]

#keytakeaway[
- $sin A = "对边"/"斜边"$，$cos A = "邻边"/"斜边"$，$tan A = "对边"/"邻边"$。
- 三角函数值只取决于角度大小，与三角形的大小无关。
- 已知一个三角函数值和一条边，可以求出其他边。
]

#practice[
1. 在 $"Rt"△ "ABC"$ 中，$∠ "C" = 90°$，$"AB" = 10$，$"AC" = 8$。求 $sin A$、$cos A$、$tan A$。
2. 在 $"Rt"△ "ABC"$ 中，$∠ "C" = 90°$，$cos B = (3)/(5)$，$"AB" = 15$。求 $"BC"$ 和 $"AC"$。
3. 在 $"Rt"△ "ABC"$ 中，$∠ "C" = 90°$，$tan A = sqrt(3)$。求 $∠ "A"$。
]

=== 特殊角的三角函数值

#explore[
虽然大多数角的三角函数值需要查表或用计算器，但有三个特殊角——$30°$、$45°$、$60°$——的三角函数值可以精确计算出来，值得记住。
]

#understand[
*$45°$ 角*：等腰直角三角形中，两直角边相等。设直角边为 $1$，则斜边为 $sqrt(2)$。

#align(center)[
$sin 45° = (sqrt(2))/(2),   cos 45° = (sqrt(2))/(2),   tan 45° = 1$
]

*$30°$ 和 $60°$ 角*：将一个等边三角形沿高对折，得到含 $30°$ 和 $60°$ 角的直角三角形。设等边三角形边长为 $2$，则短直角边 $= 1$，长直角边 $= sqrt(3)$，斜边 $= 2$。

#figure(caption: [特殊角三角函数的精确值])[
  #cetz.canvas({
    import cetz.draw: *

    // === Left: 30-60-90 triangle ===
    // Right angle at bottom-right, sides: 1 (short), sqrt(3) (long), 2 (hypotenuse)
    // Scale up for visibility
    let scale = 1.5
    let L-A = (0, 0)                      // bottom-left (60 degree angle)
    let L-B = (calc.sqrt(3) * scale, 0)   // bottom-right (right angle)
    let L-C = (calc.sqrt(3) * scale, 1 * scale)  // top-right (30 degree angle)

    line(L-A, L-B, stroke: 0.7pt + black)
    line(L-B, L-C, stroke: 0.7pt + black)
    line(L-A, L-C, stroke: 0.7pt + black)

    import cetz.angle: angle, right-angle

    // Right angle mark at bottom-right
    right-angle(L-B, L-A, L-C, stroke: 0.5pt + black, radius: 0.3)

    // Angle labels
    // 60 degree at bottom-left
    angle(L-A, L-B, L-C, label: text(8pt)[$60°$], radius: 0.5, stroke: 0.5pt + blue, label-radius: 130%)
    // 30 degree at top-right
    angle(L-C, L-A, L-B, label: text(8pt)[$30°$], radius: 0.4, stroke: 0.5pt + blue, label-radius: 130%, direction: "near")

    // Side labels
    let rb = calc.sqrt(3) * scale
    content((rb / 2, -0.3), anchor: "north", padding: 0.1, text(9pt)[$sqrt(3)$])
    content((rb + 0.35, scale / 2), anchor: "west", padding: 0.1, text(9pt)[$1$])
    content((rb / 2 - 0.3, scale / 2 + 0.3), anchor: "south-east", padding: 0.1, text(9pt)[$2$])

    // === Right: 45-45-90 triangle ===
    let offset = 4.5
    let R-A = (offset, 0)                     // bottom-left (45 degree)
    let R-B = (offset + 1.5, 0)               // bottom-right (right angle)
    let R-C = (offset + 1.5, 1.5)             // top-right (45 degree)

    line(R-A, R-B, stroke: 0.7pt + black)
    line(R-B, R-C, stroke: 0.7pt + black)
    line(R-A, R-C, stroke: 0.7pt + black)

    // Right angle mark at bottom-right
    right-angle(R-B, R-A, R-C, stroke: 0.5pt + black, radius: 0.3)

    // Angle labels
    // 45 degree at bottom-left
    angle(R-A, R-B, R-C, label: text(8pt)[$45°$], radius: 0.45, stroke: 0.5pt + blue, label-radius: 130%)
    // 45 degree at top-right
    angle(R-C, R-A, R-B, label: text(8pt)[$45°$], radius: 0.4, stroke: 0.5pt + blue, label-radius: 130%, direction: "near")

    // Side labels
    content((offset + 0.75, -0.3), anchor: "north", padding: 0.1, text(9pt)[$1$])
    content((offset + 1.5 + 0.3, 0.75), anchor: "west", padding: 0.1, text(9pt)[$1$])
    content((offset + 0.5, 1.05), anchor: "south-east", padding: 0.1, text(9pt)[$sqrt(2)$])
  })
]

#table(
  columns: 4,
  inset: 6pt,
  align: (left, left, left, left),
  [*角度*], [*$sin$*], [*$cos$*], [*$tan$*],
  [$30°$], [$(1)/(2)$], [$(sqrt(3))/(2)$], [$(sqrt(3))/(3)$],
  [$45°$], [$(sqrt(2))/(2)$], [$(sqrt(2))/(2)$], [$1$],
  [$60°$], [$(sqrt(3))/(2)$], [$(1)/(2)$], [$sqrt(3)$],
)

记忆技巧：$sin$ 值从 $30°$ 到 $60°$ 依次增大，$cos$ 值变化相反。
]

#workedexamples[
*例 1.* 求 $sin 30° + cos 60°$ 的值。

*解：* $1$。

*例 2.* 求 $sin^2 45° + cos^2 45°$ 的值。

*解：* $1$。

*例 3.* 在 $"Rt"△ "ABC"$ 中，$∠ "C" = 90°$，$∠ "A" = 30°$，$"AB" = 10$。求 $"BC"$ 和 $"AC"$。

*解：* $"BC" = 5$，$"AC" = 5sqrt(3)$。
]

#keytakeaway[
- $30°$、$45°$、$60°$ 的三角函数值是精确值，必须记住。
- $sin$ 从 $30°$ 到 $60°$ 递增，$cos$ 递减。
- $tan 45° = 1$ 是一个重要的分界点。
]

#practice[
1. 计算 $2 sin 30° × cos 60° + tan 45°$。
2. 在 $"Rt"△ "ABC"$ 中，$∠ "C" = 90°$，$∠ "B" = 60°$，$"AC" = 6$。求 $"AB"$ 和 $"BC"$。
3. 已知 $sin α = (sqrt(3))/(2)$，$α$ 为锐角，求 $α$。
]

=== 三角函数之间的关系

#explore[
观察特殊角的三角函数值表，你能发现一些规律吗？比如 $sin 30° = cos 60°$——一个角的正弦等于另一个角（它的余角）的余弦。
]

#understand[
设直角三角形中两个锐角分别为 $∠ "A"$ 和 $∠ "B"$（$∠ "A" + ∠ "B" = 90°$）。

*互余关系*：

#align(center)[
$sin A = cos B = cos(90° - A)$
]

#align(center)[
$cos A = sin B = sin(90° - A)$
]

*商的关系*：

#align(center)[
$tan A = (sin A)/(cos A)$
]

*平方关系*：

#align(center)[
$sin^2 A + cos^2 A = 1$
]
]

#workedexamples[
*例 1.* 已知 $sin 28° ≈ 0.469$，求 $cos 62°$。

*解：* $cos 62° ≈ 0.469$。

*例 2.* 已知 $sin α = (3)/(5)$（$α$ 为锐角），求 $cos α$ 和 $tan α$。

*解：* $cos α = (4)/(5)$，$tan α = (3)/(4)$。

*例 3.* 化简 $(sin 50°)/(cos 40°)$。

*解：* $1$。

*例 4.* 化简 $sin^2 25° + sin^2 65°$。

*解：* $1$。
]

#keytakeaway[
- $sin A = cos(90° - A)$，$cos A = sin(90° - A)$。
- $tan A = (sin A)/(cos A)$。
- $sin^2 A + cos^2 A = 1$。
]

#practice[
1. 已知 $cos 35° ≈ 0.819$，求 $sin 55°$。
2. 已知 $cos α = (5)/(13)$，求 $sin α$ 和 $tan α$。
3. 化简 $cos^2 40° + cos^2 50°$。
]

=== 解直角三角形

#explore[
消防员要用云梯救人。已知窗户离地面 $12$ 米，云梯与地面的夹角不能超过 $60°$。云梯至少需要多长？这就是“解直角三角形”。
]

#understand[
*解直角三角形*就是在直角三角形中，根据已知的边和角，求出所有未知的边和角。

在 $"Rt"△ "ABC"$（$∠ "C" = 90°$）中，常用关系：
- $∠ "A" + ∠ "B" = 90°$
- $a^2 + b^2 = c^2$
- $sin A = (a)/(c)$，$cos A = (b)/(c)$，$tan A = (a)/(b)$
]

#workedexamples[
*例 1.* 在 $"Rt"△ "ABC"$ 中，$∠ "C" = 90°$，$∠ "A" = 35°$，$c = 20$。求 $a$ 和 $b$。

*解：* $a ≈ 11.48$，$b ≈ 16.38$。

*例 2.* 在 $"Rt"△ "ABC"$ 中，$∠ "C" = 90°$，$a = 5$，$b = 8$。求 $∠ "A"$ 和 $c$。

*解：* $∠ "A" ≈ 32°$，$c ≈ 9.43$。

*例 3.* 云梯问题：窗户离地面 $12$ m，云梯与地面的夹角为 $60°$。求云梯长度和梯脚到墙壁的距离。

*解：* 云梯长 $8sqrt(3)$ m，梯脚到墙壁的距离为 $4sqrt(3)$ m。
]

#keytakeaway[
- 解直角三角形需要至少两个已知量（其中至少一条边）。
- 根据已知和未知的组合，选择合适的三角函数关系。
- 解题时优先使用包含“一个已知量和一个未知量”的等式。
]

#practice[
1. 在 $"Rt"△ "ABC"$ 中，$∠ "C" = 90°$，$∠ "A" = 45°$，$a = 7$。求 $b$ 和 $c$。
2. 在 $"Rt"△ "ABC"$ 中，$∠ "C" = 90°$，$a = 8$，$c = 10$。求 $∠ "A"$、$∠ "B"$ 和 $b$。
3. 一根电线杆高 $10$ m，从杆顶向地面拉一根绳子，绳子与地面成 $30°$ 角。求绳子的长度和绳子固定点到杆底的距离。
]

=== 应用：测量、坡度、仰角与俯角

#explore[
古人没有飞机和卫星，却能测量金字塔的高度、河流的宽度。他们的秘密武器就是三角函数。
]

#understand[
*仰角与俯角*：
- 从水平线向上看某个目标的角度叫做*仰角*。
- 从水平线向下看某个目标的角度叫做*俯角*。

#figure(caption: [仰角与俯角：从水平视线向上和向下量起])[
  #cetz.canvas({
    import cetz.draw: *

    // Observer point E (left, mid-height)
    let E = (0, 0)
    circle(E, radius: 0.06, fill: black, stroke: none)
    content((-0.3, 0), anchor: "east", padding: 0.1, text(9pt)[$E$])

    // Horizontal dashed line (line of sight)
    line((-0.5, 0), (5, 0), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))
    content((5.1, 0), anchor: "west", padding: 0.1, text(8pt)[水平视线])

    // Object above: F (upper right)
    let F = (4, 2.5)
    circle(F, radius: 0.06, fill: black, stroke: none)
    content((4.15, 2.65), anchor: "south-west", padding: 0.1, text(9pt)[$F$])

    // Object below: G (lower right)
    let G = (4, -2)
    circle(G, radius: 0.06, fill: black, stroke: none)
    content((4.15, -2.15), anchor: "north-west", padding: 0.1, text(9pt)[$G$])

    // Line EF (elevation)
    line(E, F, stroke: 0.7pt + black)

    // Line EG (depression)
    line(E, G, stroke: 0.7pt + black)

    import cetz.angle: angle
    let horiz-right = (5, 0)

    // Angle alpha (elevation angle) above horizontal
    angle(E, horiz-right, F, label: text(9pt)[仰角 $alpha$], radius: 1.2, stroke: 0.5pt + blue, label-radius: 120%)

    // Angle beta (depression angle) below horizontal
    angle(E, G, horiz-right, label: text(9pt)[俯角 $beta$], radius: 1.2, stroke: 0.5pt + blue, label-radius: 120%)
  })
]

*坡度*：坡面的铅直高度与水平距离的比叫做坡度（也叫坡比）。

#align(center)[
$"坡度" = tan α = "铅直高度"/"水平距离"$
]

其中 $α$ 是坡面与水平面的夹角（坡角）。
]

#workedexamples[
*例 1.* 小明站在距楼 $50$ m 远处，测得楼顶的仰角为 $45°$，眼睛离地 $1.5$ m。求楼高。

*解：* 楼高为 $51.5$ m。

*例 2.* 山顶看到山脚树底的俯角为 $60°$，树顶的俯角为 $45°$，山高 $100$ m。求树高。

*解：* 树高约为 $42.3$ m。

*例 3.* 一段公路坡度为 $1:5$，坡长 $200$ m。求铅直高度和水平距离。

*解：* 水平距离约 $196.1$ m，铅直高度约 $39.2$ m。

*例 4.* 要测量河对岸一棵树 $A$ 到河岸的距离，已知 $"BC" = 100$ m，$∠ "ABC" = 90°$，$∠ "ACB" = 60°$。求 $"AB"$。

*解：* $"AB" = 100sqrt(3) ≈ 173.2$ m。
]

#keytakeaway[
- 仰角：向上看的角度；俯角：向下看的角度。
- 坡度：$tan α = "铅直高度"/"水平距离"$。
- 实际测量问题的关键：识别直角三角形，确定已知和未知元素。
]

#practice[
1. 小华站在距塔底 $30$ m 处，测得塔顶仰角为 $60°$。求塔高。
2. 一段坡路的坡角为 $30°$，沿坡面走了 $600$ m，实际升高了多少米？水平前进了多少米？
3. 飞机在 $1000$ m 高空飞行，飞行员看到前方地面目标的俯角为 $45°$。求飞机到目标的水平距离。
4. 在河岸一侧取 $B$、$C$ 两点，$"BC" = 80$ m，$∠ "B" = 90°$，测得对岸标志物 $A$ 使 $∠ "ACB" = 45°$。求 $"AB"$。
]

=== 参考答案

#answer[
1. $a = 8sqrt(2)$，$b = 8sqrt(2)$。
2. $"BC" = 9$，$"AC" = 12$。
3. $∠ "A" = 60°$。
4. $1.5$。
5. $"AB" = 6sqrt(3)$。
6. $55°$。
7. $4sqrt(3)$。
8. $"AB" = 80$ m。
9. $30$ m。
10. 升高 $300$ m，水平前进 $300sqrt(3)$ m。
11. $1000$ m。
12. $80$ m。
]
