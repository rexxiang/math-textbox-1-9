#import "../../lib/theme.typ": *
#import "../../lib/diagram-packages.typ": cetz

== §3.1 点、线、面 <sec-3-1>

#box(
  inset: 10pt,
  fill: luma(245),
  stroke: (paint: luma(180), thickness: 0.6pt),
  radius: 3pt,
)[
  *前置知识：无*

  *适用年级：4-7 年级*
]

=== 点

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

在地图上标注一座城市的位置时，我们通常用一个小圆点来表示。这个"点"代表的是一个精确的位置，它没有大小，没有面积，只有位置。
]

*概念建立*

点是几何中最基本的概念。点没有大小、没有形状，只表示一个位置。我们用大写字母表示点，如点 A、点 B、点 C。纸面上画出的"点"其实有一定大小，但在几何学中，我们把点理解为没有大小的位置标记。

*关键总结*

- 点是几何最基本的元素，只有位置，没有大小。
- 用大写字母表示点。

=== 线段、射线与直线

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

用一根绷紧的线连接桌面上的两颗钉子，你得到的就是一条线段。若一端固定、另一端向远处延伸，就是射线；若两端都无限延伸，就是直线。
]

*概念建立*

线段是连接两个点之间的最短路径，它有两个端点，有确定的长度。射线是从一个端点出发、向一个方向无限延伸的部分。直线是向两个方向无限延伸的线，没有端点，没有长度。

#figure(caption: [线段、射线与直线的比较])[
  #cetz.canvas({
    import cetz.draw: *

    // Row 1: 线段 AB (y=2)
    content((-1.2, 2), anchor: "east", text(9pt)[线段])
    line((0, 2), (4, 2), stroke: 0.7pt + black)
    circle((0, 2), radius: 0.05, fill: black, stroke: none)
    circle((4, 2), radius: 0.05, fill: black, stroke: none)
    content((-0.15, 2), anchor: "east", padding: 0.15, text(9pt)[$A$])
    content((4.15, 2), anchor: "west", padding: 0.15, text(9pt)[$B$])

    // Row 2: 射线 CD (y=1)
    content((-1.2, 1), anchor: "east", text(9pt)[射线])
    line((0, 1), (4, 1), stroke: 0.7pt + black, mark: (end: ">", fill: black))
    circle((0, 1), radius: 0.05, fill: black, stroke: none)
    content((-0.15, 1), anchor: "east", padding: 0.15, text(9pt)[$C$])
    content((4.15, 1), anchor: "west", padding: 0.15, text(9pt)[$D$])

    // Row 3: 直线 EF (y=0)
    content((-1.2, 0), anchor: "east", text(9pt)[直线])
    line((-0.5, 0), (4.5, 0), stroke: 0.7pt + black, mark: (start: ">", end: ">", fill: black))
    circle((0, 0), radius: 0.05, fill: black, stroke: none)
    circle((4, 0), radius: 0.05, fill: black, stroke: none)
    content((-0.15, 0), anchor: "east", padding: 0.15, text(9pt)[$E$])
    content((4.15, 0), anchor: "west", padding: 0.15, text(9pt)[$F$])
  })
]

线段 AB（或 BA）表示以 A、B 为端点的线段。射线 AB 表示从 A 出发经过 B 方向延伸的射线，射线 AB 与射线 BA 不同。直线 AB（或 BA）表示经过 A、B 两点的直线，两者相同。

三者比较：

- 线段有 2 个端点，有限长。
- 射线有 1 个端点，无限长。
- 直线无端点，无限长。

基本事实：经过两个点有且只有一条直线。

*典型例题*

- 例 1：平面上有 A、B、C 三个不共线点，经过每两个点各画一条直线，共可画 3 条。
- 例 2：平面上有 4 个点，其中没有三点共线，经过每两个点画一条直线，共可画 6 条。

*关键总结*

- 线段有两个端点，有确定长度。
- 射线有一个端点，向一个方向无限延伸。
- 直线无端点，两方向无限延伸。
- 两点确定一条直线。
- 射线 AB 的端点是 A。

*练一练*

1. 判断正误：
   - 线段 AB 和线段 BA 是同一条线段。
   - 射线 AB 和射线 BA 是同一条射线。
   - 直线 AB 和直线 BA 是同一条直线。
2. 平面上有 5 个点，其中没有三点共线，经过每两个点画一条直线，共能画多少条？

=== 两点之间线段最短

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

从家到学校，你可以走弯弯曲曲的小路，也可以"直线穿过"。哪条路最短？直觉告诉我们，走直线最短。
]

*概念建立*

两点之间线段最短，这是几何中的一条基本事实。连接两点的线段的长度，叫做这两点之间的距离。后面学习的垂线段最短、三角形三边关系，都可以追溯到这条事实。

*关键总结*

- 两点之间，线段最短。
- 两点之间的距离就是连接这两点的线段的长度。

=== 线段的中点

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

一根 20 厘米长的彩带，从正中间剪一刀，每段多长？中间那个位置就是线段的中点。
]

*概念建立*

如果点 M 在线段 AB 上，且 AM = MB，则 M 是线段 AB 的中点。此时 AM = MB = 1/2 AB，也可以写成 AB = 2AM = 2MB。

#figure(caption: [中点 M：AM = MB = 1/2 AB])[
  #cetz.canvas({
    import cetz.draw: *

    // Line segment A to B
    line((0, 0), (4, 0), stroke: 0.7pt + black)

    // Points A, M, B
    circle((0, 0), radius: 0.05, fill: black, stroke: none)
    circle((2, 0), radius: 0.05, fill: black, stroke: none)
    circle((4, 0), radius: 0.05, fill: black, stroke: none)

    // Labels above points
    content((0, 0), anchor: "south", padding: 0.15, text(9pt)[$A$])
    content((2, 0), anchor: "south", padding: 0.15, text(9pt)[$M$])
    content((4, 0), anchor: "south", padding: 0.15, text(9pt)[$B$])

    // Tick marks for equal segments (small perpendicular lines)
    line((1, -0.15), (1, 0.15), stroke: 0.5pt + black)
    line((3, -0.15), (3, 0.15), stroke: 0.5pt + black)
  })
]

*典型例题*

- 例 1：已知 AB = 10 cm，M 是 AB 的中点，AM = 5 cm。
- 例 2：已知 AB = 8 cm，C 是 AB 的中点，D 是 AC 的中点，DB = 6 cm。

*关键总结*

- 线段的中点把线段分成相等的两段。
- M 是 AB 的中点，当且仅当 AM = MB = 1/2 AB。

*练一练*

1. 已知 AB = 12 cm，M 是 AB 的中点，N 是 MB 的中点，求 AN。
2. 在线段 AB 上有一点 C，使得 AC = 3 cm，CB = 5 cm。M 是 AB 的中点，求 MC。

=== 面的初步概念

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

桌面、黑板面、湖面都是我们生活中常见的"面"。和点与线一样，数学中的"面"也是一个理想化的概念。
]

*概念建立*

面是平展的、没有厚度的、向各个方向无限延伸的平面。生活中的桌面、地面只是平面的一部分，而几何学中的平面是无限大的。

平面的基本性质：

- 经过不在同一直线上的三个点，有且只有一个平面。
- 如果一条直线上有两个点在一个平面内，那么这条直线上所有的点都在这个平面内。

在初中阶段，我们主要研究平面几何，所有图形都在同一个平面内。

*关键总结*

- 平面是无限延展的、没有厚度的平展面。
- 不在同一直线上的三个点确定一个平面。
- 初中几何主要研究平面上的图形。

*练一练*

1. 下列说法正确的是（　）
   - A. 直线是线段的一部分
   - B. 线段是直线的一部分
   - C. 射线是直线的一部分
   - D. 直线是射线的一部分
2. 思考题：平面上有 n 个点，其中没有三点共线，经过每两个点画一条直线，共能画多少条？试写出表达式。

*参考答案*

1. 选 B 和 C。
2. n(n-1)/2 条。
