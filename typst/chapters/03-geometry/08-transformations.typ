#import "../../lib/theme.typ": *
#import "../../lib/diagram-packages.typ": cetz, fletcher

== §3.8 图形变换 <sec-3-8>

#box(
  inset: 10pt,
  fill: luma(245),
  stroke: (paint: luma(180), thickness: 0.6pt),
  radius: 3pt,
)[
  *前置知识：* #secref("3.4"), #secref("3.5")

  *适用年级：* 7-8 年级
]

=== 轴对称

#explore[
把一张纸对折，用剪刀沿折痕剪出一个图案。展开后，折痕两侧的图案完全一样。这就是轴对称。
]

#understand[
如果把一个图形沿一条直线折叠后，直线两侧的部分能够完全重合，则这个图形是*轴对称图形*，这条直线叫做*对称轴*。

#figure(caption: [轴对称：对应点到对称轴的距离相等])[
  #cetz.canvas({
    import cetz.draw: *

    // Axis of symmetry (vertical dashed line at x=0)
    line((0, -0.5), (0, 3), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))
    content((0.15, 3.2), anchor: "south-west", padding: 0.1, text(8pt)[对称轴])

    // Left triangle
    let L1 = (-3, 0)
    let L2 = (-1, 0)
    let L3 = (-2, 2)
    line(L1, L2, L3, close: true, stroke: 0.7pt + black, fill: rgb("#E8F1FF"))

    // Right triangle (mirror image)
    let R1 = (3, 0)
    let R2 = (1, 0)
    let R3 = (2, 2)
    line(R1, R2, R3, close: true, stroke: 0.7pt + black, fill: rgb("#E8F1FF"))

    // Dashed lines connecting corresponding vertices
    line(L1, R1, stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))
    line(L2, R2, stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))
    line(L3, R3, stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))

    // Vertex labels
    content((-3.2, -0.15), anchor: "north-east", padding: 0.1, text(9pt)[$A$])
    content((-0.8, -0.15), anchor: "north-west", padding: 0.1, text(9pt)[$B$])
    content((-2, 2.2), anchor: "south", padding: 0.1, text(9pt)[$C$])
    content((3.2, -0.15), anchor: "north-west", padding: 0.1, text(9pt)[$A'$])
    content((0.8, -0.15), anchor: "north-east", padding: 0.1, text(9pt)[$B'$])
    content((2, 2.2), anchor: "south", padding: 0.1, text(9pt)[$C'$])
  })
]

轴对称的性质：
- 对应点到对称轴的距离相等。
- 对应点的连线被对称轴垂直平分。
- 对应线段相等，对应角相等。

常见轴对称图形：等腰三角形、等边三角形、矩形、菱形、正方形、圆、正 $n$ 边形。
]

#workedexamples[
*例 1.* 点 $A(3, 2)$ 关于 $x$ 轴和 $y$ 轴的对称点分别是什么？

*解：* 关于 $x$ 轴：$(3,-2)$；关于 $y$ 轴：$(-3,2)$。

*例 2.* 等腰三角形 $"ABC"$ 中，$"AB" = "AC"$，$"BC" = 8$ cm，面积为 $24$ cm^2。求 $"AB"$。

*解：* 底边高 $"AD" = 6$ cm，故 $"AB" = sqrt(6^2 + 4^2) = 2sqrt(13)$ cm。

*例 3.* 河边同侧有两个村庄 $A$、$B$。要在河边建一个水泵站 $P$，使 $"PA" + "PB"$ 最短。做法是什么？

*解：* 作 $A$ 关于河岸的对称点 $A'$，连接 $A'B$，其与河岸交点即为 $P$。
]

#keytakeaway[
- 轴对称中，对应点连线被对称轴垂直平分。
- 作对称点：过原点作对称轴的垂线，等距取点。
- 利用对称性可解决最短路径问题。
]

#practice[
1. 写出点 $P(-2, 5)$ 关于 $x$ 轴、$y$ 轴、原点的对称点坐标。
2. 一个等边三角形有几条对称轴？
3. 河岸同侧有 $A(1, 3)$、$B(5, 7)$ 两点，河岸沿 $x$ 轴。在 $x$ 轴上找点 $P$ 使 $"PA" + "PB"$ 最短，求 $P$ 的坐标。
]

=== 中心对称

#explore[
把扑克牌中的黑桃 $A$ 倒过来，图案和原来完全一样。这种“旋转 $180°$ 后不变”的对称叫做中心对称。
]

#understand[
如果把一个图形绕着某一个点旋转 $180°$ 后，与原图形重合，则这个图形是*中心对称图形*，这个点叫做*对称中心*。

#figure(caption: [中心对称：对应点连线经过对称中心])[
  #cetz.canvas({
    import cetz.draw: *

    // Original triangle (upper-left)
    let A = (-2, 1)
    let B = (-3, 2)
    let C = (-1, 2.5)
    line(A, B, C, close: true, stroke: 0.7pt + black, fill: rgb("#E8F1FF"))

    // 180-degree rotated image (lower-right)
    let A2 = (2, -1)
    let B2 = (3, -2)
    let C2 = (1, -2.5)
    line(A2, B2, C2, close: true, stroke: 0.7pt + black, fill: rgb("#FFF3E0"))

    // Center of symmetry O
    circle((0, 0), radius: 0.06, fill: black, stroke: none)
    content((0.2, 0.2), anchor: "south-west", padding: 0.1, text(9pt)[$O$])

    // Dashed lines through O connecting corresponding vertices
    line(A, A2, stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))
    line(B, B2, stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))
    line(C, C2, stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))

    // Vertex labels
    content((-2.15, 0.75), anchor: "north-east", padding: 0.1, text(9pt)[$A$])
    content((-3.2, 2.1), anchor: "east", padding: 0.1, text(9pt)[$B$])
    content((-0.8, 2.7), anchor: "south", padding: 0.1, text(9pt)[$C$])
    content((2.15, -0.75), anchor: "south-west", padding: 0.1, text(9pt)[$A'$])
    content((3.2, -2.1), anchor: "west", padding: 0.1, text(9pt)[$B'$])
    content((0.8, -2.7), anchor: "north", padding: 0.1, text(9pt)[$C'$])
  })
]

常见中心对称图形：平行四边形、矩形、菱形、正方形、圆、正偶数边形。
]

#workedexamples[
*例 1.* 点 $A(2, 3)$ 关于原点的对称点是什么？

*解：* $A' = (-2, -3)$。

*例 2.* 点 $A(1, 4)$ 关于点 $C(3, 2)$ 的对称点是什么？

*解：* $A' = (5, 0)$。

*例 3.* 判断哪些是中心对称图形：(a) 等腰三角形 (b) 平行四边形 (c) 正五边形 (d) 圆。

*解：* (b) 和 (d) 是。
]

#keytakeaway[
- 中心对称 $=$ 旋转 $180°$ 后重合。
- 关于原点对称：$(x, y) → (-x, -y)$。
- 关于点 $C(a,b)$ 对称：$(x, y) → (2a-x, 2b-y)$。
]

#practice[
1. 求点 $M(3, -1)$ 关于点 $N(1, 2)$ 的对称点。
2. 下列图形中，既是轴对称又是中心对称的有哪些？(a) 矩形 (b) 等腰三角形 (c) 菱形 (d) 正五边形 (e) 圆。
]

=== 平移

#explore[
传送带上的物品沿直线移动，每个物品的形状不变、方向不变，只是位置改变了。电梯上下运行、抽屉推拉——这些都是平移运动的例子。
]

#understand[
将一个图形沿某个方向移动一定的距离，这种变换叫做*平移*。

#figure(caption: [平移变换：对应点按同一向量移动])[
  #cetz.canvas({
    import cetz.draw: *

    // Original triangle
    let A = (0, 0)
    let B = (2, 0)
    let C = (1, 1.5)
    line(A, B, C, close: true, stroke: 0.7pt + black, fill: rgb("#E8F1FF"))

    // Translated triangle (shifted by (3, 1))
    let A2 = (3, 1)
    let B2 = (5, 1)
    let C2 = (4, 2.5)
    line(A2, B2, C2, close: true, stroke: 0.7pt + black, fill: rgb("#FFF3E0"))

    // Arrows from original to translated vertices
    line(A, A2, stroke: 0.5pt + black, mark: (end: ">", fill: black))
    line(B, B2, stroke: 0.5pt + black, mark: (end: ">", fill: black))
    line(C, C2, stroke: 0.5pt + black, mark: (end: ">", fill: black))

    // Vertex labels
    content((-0.15, -0.25), anchor: "north-east", padding: 0.1, text(9pt)[$A$])
    content((2.15, -0.25), anchor: "north-west", padding: 0.1, text(9pt)[$B$])
    content((1, 1.75), anchor: "south", padding: 0.1, text(9pt)[$C$])
    content((2.85, 0.75), anchor: "north-east", padding: 0.1, text(9pt)[$A'$])
    content((5.15, 0.75), anchor: "north-west", padding: 0.1, text(9pt)[$B'$])
    content((4, 2.75), anchor: "south", padding: 0.1, text(9pt)[$C'$])

    // Translation vector label
    content((1.8, 0.85), anchor: "south", padding: 0.1, text(8pt)[平移向量])
  })
]

在坐标平面中，将图形向右平移 $a$ 个单位、向上平移 $b$ 个单位，则每个点的坐标变化为

#align(center)[
$(x, y) → (x + a, y + b)$
]
]

#workedexamples[
*例 1.* 将 $△ "ABC"$ 沿 $x$ 轴正方向平移 $3$ 个单位，$A(1,2)$、$B(4,5)$、$C(2,6)$ 的新坐标各是多少？

*解：* $A'=(4,2)$，$B'=(7,5)$，$C'=(5,6)$。

*例 2.* 点 $P(-1, 3)$ 经过平移后到达 $P'(2, 1)$，求平移方向和距离。

*解：* 向右 $3$、向下 $2$，平移距离为 $sqrt(13)$。

*例 3.* 先向右平移 $4$，再向上平移 $2$，等价于怎样的平移？

*解：* 等价于向右 $4$、向上 $2$ 的一次平移。
]

#keytakeaway[
- 平移不改变图形的形状、大小和方向。
- 坐标变换：$(x, y) → (x + a, y + b)$。
- 多次平移可以合成一次平移。
]

#practice[
1. 点 $A(2,-3)$ 先向左平移 $5$ 个单位，再向上平移 $4$ 个单位，求终点坐标。
2. $△ "ABC"$ 的三个顶点为 $A(0,0)$、$B(4,0)$、$C(2,3)$。将三角形向右平移 $2$ 个单位、向下平移 $1$ 个单位，写出新的顶点坐标。
]

=== 旋转

#explore[
风车的叶片绕中心转动、钟表指针绕表盘中心旋转。一个图形绕某个点转动一定角度后，形状不变但方向改变了。
]

#understand[
将一个图形绕一个定点（*旋转中心*）转过一定的*旋转角*，这种变换叫做*旋转*。

#figure(caption: [旋转变换：绕中心旋转后形状不变])[
  #cetz.canvas({
    import cetz.draw: *

    // Center of rotation O
    circle((0, 0), radius: 0.06, fill: black, stroke: none)
    content((-0.25, -0.25), anchor: "north-east", padding: 0.1, text(9pt)[$O$])

    // Original triangle (light blue fill)
    let A = (2, 0)
    let B = (3, 0)
    let C = (2.5, 1)
    line(A, B, C, close: true, stroke: 0.7pt + black, fill: rgb("#E8F1FF"))

    // Rotated triangle by 60 degrees counterclockwise (light orange fill)
    // Rotation: x' = x cos60 - y sin60, y' = x sin60 + y cos60
    // cos60 = 0.5, sin60 = 0.866
    let A2 = (1, 1.732)           // (2*0.5 - 0*0.866, 2*0.866 + 0*0.5)
    let B2 = (1.5, 2.598)         // (3*0.5 - 0*0.866, 3*0.866 + 0*0.5)
    let C2 = (0.384, 2.366)       // (2.5*0.5 - 1*0.866, 2.5*0.866 + 1*0.5)
    line(A2, B2, C2, close: true, stroke: 0.7pt + black, fill: rgb("#FFF3E0"))

    // Curved arrow showing rotation from OA to OA'
    arc((0, 0), start: 0deg, stop: 60deg, radius: 1.6, stroke: 0.5pt + blue, mark: (end: ">", fill: blue))

    // Rotation angle label
    content((1.3, 0.65), anchor: "south-west", padding: 0.1, text(8pt)[$60°$])

    // Vertex labels
    content((2, -0.25), anchor: "north", padding: 0.1, text(9pt)[$A$])
    content((3.15, -0.25), anchor: "north-west", padding: 0.1, text(9pt)[$B$])
    content((2.5, 1.2), anchor: "south", padding: 0.1, text(9pt)[$C$])
    content((0.8, 1.6), anchor: "east", padding: 0.1, text(9pt)[$A'$])
    content((1.65, 2.75), anchor: "south-west", padding: 0.1, text(9pt)[$B'$])
    content((0.15, 2.55), anchor: "east", padding: 0.1, text(9pt)[$C'$])
  })
]

旋转的三要素：*旋转中心*、*旋转方向*、*旋转角度*。
]

*提示：* 中心对称是旋转的特殊情况，旋转角为 $180°$。

#workedexamples[
*例 1.* 如图，$△ "ABC"$ 绕点 $C$ 旋转 $60°$，若 $"BC" = 4$ cm 且原三角形是等边三角形，求 $BB'$ 的长。

*解：* $BB' = 4$ cm。

*例 2.* 正方形 $"ABCD"$ 绕中心 $O$ 旋转多少度后与自身重合？

*解：* 最小旋转角为 $90°$。

*例 3.* 等边三角形绕中心旋转 $120°$ 后为什么与自身重合？

*解：* 因为三个顶点把外接圆三等分，每份 $120°$。
]

#keytakeaway[
- 旋转由旋转中心、旋转方向、旋转角三要素确定。
- 旋转不改变形状和大小。
- 正 $n$ 边形绕中心旋转 $(360°)/(n)$ 后与自身重合。
]

#practice[
1. 将等边 $△ "ABC"$（$"BC" = 6$ cm）绕顶点 $B$ 逆时针旋转 $60°$ 得到 $△ "DBE"$。求 $"AD"$ 的长。
2. 格点 $A(1,1)$、$B(3,1)$、$C(3,4)$。先将 $△ "ABC"$ 关于 $x$ 轴对称，再将结果向右平移 $4$ 个单位。写出最终三个顶点坐标。
]

=== 图形变换的综合应用

#explore[
在设计花纹、图案时，设计师经常综合运用对称、平移、旋转来创造出丰富多彩的图案。
]

#understand[
三种基本变换的比较：

#table(
  columns: 4,
  inset: 6pt,
  align: (left, left, left, left),
  [*变换*], [*是否改变形状大小*], [*是否改变方向*], [*关键要素*],
  [轴对称], [不变], [改变（镜像翻转）], [对称轴],
  [平移], [不变], [不变], [方向和距离],
  [旋转], [不变], [改变], [中心、角度、方向],
)

共同点：三种变换都是*等距变换*，即变换前后对应点之间的距离不变，图形的形状和大小不变。
]

#workedexamples[
*例 1.* 如图，将一排等距排列的完全相同的三角形进行分析，使用了哪些图形变换？

*解：* 这是平移变换。

*例 2.* 下列图案综合运用了哪些变换？

*解：* 通常会同时用到轴对称、平移和旋转，例如花纹、徽标、镶边图案等。
]

#keytakeaway[
- 轴对称、平移、旋转都是等距变换，保持图形的形状和大小。
- 综合运用变换可以简化几何证明和求解。
- 变换的核心思想：通过“移动”图形来发现或建立对应关系。
]

#practice[
1. 将等边 $△ "ABC"$（$"BC" = 6$ cm）绕顶点 $B$ 逆时针旋转 $60°$ 得到 $△ "DBE"$。求 $"AD"$ 的长。
2. 格点 $A(1,1)$、$B(3,1)$、$C(3,4)$。先将 $△ "ABC"$ 关于 $x$ 轴对称，再将结果向右平移 $4$ 个单位。写出最终三个顶点坐标。
]

=== 参考答案

#answer[
1. $(-2,-5)$；$(2,5)$；$(2,-5)$。
2. $3$ 条。
3. $P(2,5)$ 关于 $x$ 轴对称后是 $(1,-3)$，关于 $y$ 轴对称后是 $(-1,3)$，关于原点对称后是 $(-1,-3)$。
4. $(5,0)$。
5. (a) 和 (c)、(e)。
6. $(2,1)$。
7. $A'(0,2)$，$B'(-4,2)$，$C'(-4,5)$。
8. $"AD" = 6$ cm。
9. $(1,-1)$、$(5,-1)$、$(5,-4)$。
]
