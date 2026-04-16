#import "../../lib/theme.typ": *
#import "../../lib/diagram-packages.typ": cetz, fletcher

== §3.7 勾股定理 <sec-3-7>

#box(
  inset: 10pt,
  fill: luma(245),
  stroke: (paint: luma(180), thickness: 0.6pt),
  radius: 3pt,
)[
  *前置知识：* #secref("3.4"), #secref("2.2")

  *适用年级：* 8 年级
]

=== 勾股定理的发现

#explore[
在方格纸上画一个直角三角形，两条直角边分别占 $3$ 格和 $4$ 格。然后在每条边上向外画一个正方形。数一数，你会发现斜边上的正方形面积恰好是 $25$。也就是 $3^2 + 4^2 = 5^2$。这个规律适用于所有直角三角形吗？
]

#understand[
*勾股定理*（Pythagorean Theorem）：直角三角形两条直角边的平方和等于斜边的平方。

设直角三角形两条直角边为 $a$、$b$，斜边为 $c$，则

#align(center)[
$a^2 + b^2 = c^2$
]

#figure(caption: [勾股定理：直角三角形中 $a^2 + b^2 = c^2$])[
  #cetz.canvas({
    import cetz.draw: *

    // Right triangle: C at origin, A above, B to the right
    let C = (0, 0)
    let A = (0, 3)
    let B = (4, 0)

    // Triangle
    line(C, A, stroke: 0.7pt + black)
    line(C, B, stroke: 0.7pt + black)
    line(A, B, stroke: 0.7pt + black)

    // Right angle mark at C
    line((0, 0.3), (0.3, 0.3), stroke: 0.5pt + black)
    line((0.3, 0.3), (0.3, 0), stroke: 0.5pt + black)

    // Square on side a (vertical, left side: C to A)
    let sq-a = ((-3, 0), (-3, 3), (0, 3), (0, 0))
    line((-3, 0), (-3, 3), (0, 3), close: false, stroke: 0.7pt + black, fill: rgb("#E8F1FF"))
    line((-3, 0), (0, 0), stroke: 0.7pt + black)

    // Square on side b (horizontal, bottom: C to B)
    line((0, 0), (4, 0), (4, -4), (0, -4), close: true, stroke: 0.7pt + black, fill: rgb("#E9F8EF"))

    // Square on side c (hypotenuse: A to B)
    // Direction perpendicular to AB, outward
    // AB vector = (4, -3), perp outward = (3, 4) normalised * 5 = (3, 4)
    let A2 = (3, 7)   // A + (3,4)
    let B2 = (7, 4)   // B + (3,4)
    line(A, A2, B2, B, close: true, stroke: 0.7pt + black, fill: rgb("#FFF3E0"))

    // Labels for vertices
    content((0, 3.25), anchor: "south", padding: 0.1, text(9pt)[$A$])
    content((4.25, -0.1), anchor: "west", padding: 0.1, text(9pt)[$B$])
    content((-0.25, -0.25), anchor: "north-east", padding: 0.1, text(9pt)[$C$])

    // Labels for sides
    content((-0.35, 1.5), anchor: "east", padding: 0.1, text(9pt)[$a=3$])
    content((2, -0.35), anchor: "north", padding: 0.1, text(9pt)[$b=4$])
    content((2.4, 1.85), anchor: "south-west", padding: 0.1, text(9pt)[$c=5$])

    // Area labels inside squares
    content((-1.5, 1.5), text(9pt)[$a^2=9$])
    content((2, -2), text(9pt)[$b^2=16$])
    content((5, 5.5), text(9pt)[$c^2=25$])
  })
]

这个定理在中国古代被称为“勾股定理”——直角三角形的短直角边叫“勾”，长直角边叫“股”，斜边叫“弦”。“勾三股四弦五”就是 $3^2 + 4^2 = 5^2$。
]

#keytakeaway[
- 勾股定理：$a^2 + b^2 = c^2$（$c$ 为斜边）。
- 只适用于*直角三角形*。
- 已知任意两边，可以求第三边。
]

=== 勾股定理的证明

#explore[
勾股定理有数百种证明方法。这里介绍一种最直观的“拼正方形”证明法。
]

#understand[
*证明（赵爽弦图法）*：用四个完全相同的直角三角形（直角边为 $a$、$b$，斜边为 $c$）拼成一个大正方形。

#figure(caption: [赵爽弦图证明：面积相等推出 $c^2 = a^2 + b^2$])[
  #cetz.canvas({
    import cetz.draw: *

    // Zhao Shuang diagram: outer square of side (a+b)=7, with a=3, b=4
    // Outer square corners
    let s = 5  // scale: use side length 5 for cleaner layout
    let a = 2.14  // proportional a (3/7 * 5)
    let b = 2.86  // proportional b (4/7 * 5)

    // Outer square
    let O1 = (0, 0)
    let O2 = (s, 0)
    let O3 = (s, s)
    let O4 = (0, s)
    line(O1, O2, O3, O4, close: true, stroke: 0.7pt + black)

    // Inner tilted square vertices (the four points where triangles meet)
    // Bottom-left triangle: legs along bottom (b) and left side (a)
    let P1 = (b, 0)       // bottom edge, b from left
    let P2 = (s, a)       // right edge, a from bottom
    let P3 = (s - b, s)   // top edge, b from right = s-b from left
    let P4 = (0, s - a)   // left edge, a from top = s-a from bottom

    // Four triangles (filled)
    // Bottom triangle
    line(O1, P1, P4, close: true, stroke: 0.7pt + black, fill: rgb("#FFF3E0"))
    // Right triangle
    line(O2, P2, P1, close: true, stroke: 0.7pt + black, fill: rgb("#FFF3E0"))
    // Top triangle
    line(O3, P3, P2, close: true, stroke: 0.7pt + black, fill: rgb("#FFF3E0"))
    // Left triangle
    line(O4, P4, P3, close: true, stroke: 0.7pt + black, fill: rgb("#FFF3E0"))

    // Inner square (filled on top)
    line(P1, P2, P3, P4, close: true, stroke: 0.7pt + black, fill: rgb("#E8F1FF"))

    // Labels
    // Side labels on outer square
    content((b / 2, -0.3), anchor: "north", padding: 0.1, text(9pt)[$b$])
    content((b + (s - b) / 2, -0.3), anchor: "north", padding: 0.1, text(9pt)[$a$])
    content((-0.3, (s - a) / 2), anchor: "east", padding: 0.1, text(9pt)[$b$])
    content((-0.3, s - a / 2), anchor: "east", padding: 0.1, text(9pt)[$a$])

    // Inner square label
    content((s / 2, s / 2), text(10pt)[$c^2$])

    // Hypotenuse label
    content((b / 2 + 0.15, (s - a) / 2 + 0.15), anchor: "south-east", padding: 0.1, text(9pt)[$c$])
  })
]

将四个直角三角形排列后，大正方形的面积既等于 $c^2 + 4 × (1)/(2) a b$，也等于 $(a+b)^2$。整理即可得到 $a^2 + b^2 = c^2$。
]

#keytakeaway[
- 赵爽弦图法是最经典的中国式证明。
- 核心思想是面积相等：用两种方式计算同一图形的面积。
]

=== 勾股定理的应用

#explore[
一架 $5$ 米长的梯子斜靠在墙上，梯脚距墙 $3$ 米。梯子顶端离地面多高？
]

#understand[
勾股定理的直接应用：*已知直角三角形两边，求第三边*。

- 已知两直角边 $a$、$b$，求斜边：$c = sqrt(a^2 + b^2)$
- 已知斜边 $c$ 和一条直角边 $a$，求另一条直角边：$b = sqrt(c^2 - a^2)$
]

#workedexamples[
*例 1.* 梯子长 $5$ 米，梯脚距墙 $3$ 米，求梯子顶端离地面的高度。

*解：* 设高度为 $h$，则 $h^2 + 3^2 = 5^2$，所以 $h = 4$ 米。

*例 2.* 直角三角形的两条直角边分别为 $6$ 和 $8$，求斜边和面积。

*解：* 斜边 $c = 10$，面积 $= 24$。

*例 3.* 一块长方形草地长 $40$ m，宽 $30$ m。小明从一个角走到对角，走了多少米？

*解：* 对角线 $= 50$ m。

*例 4.* 等腰三角形 $"ABC"$ 中，$"AB" = "AC" = 10$ cm，$"BC" = 12$ cm。求底边上的高 $"AD"$。

*解：* $"BD" = 6$ cm，故 $"AD" = sqrt(100 - 36) = 8$ cm。
]

#keytakeaway[
- 勾股定理的核心应用：已知两边求第三边。
- 实际问题中，寻找或构造直角三角形是关键步骤。
]

#practice[
1. 直角三角形的两条直角边分别为 $5$ cm 和 $12$ cm，求斜边。
2. 直角三角形的斜边为 $17$ cm，一条直角边为 $8$ cm，求另一条直角边。
3. 一棵树在距地面 $3$ m 处折断，树尖落在地面上距树根 $4$ m 处。求树折断前的高度。
4. 正方形的对角线长为 $8$ cm，求边长。
]

=== 勾股定理的逆定理

#explore[
勾股定理说“如果是直角三角形，那么 $a^2 + b^2 = c^2$”。反过来能成立吗？
]

#understand[
*勾股定理的逆定理*：如果三角形的三边长 $a$、$b$、$c$ 满足 $a^2 + b^2 = c^2$，则这个三角形是直角三角形（$c$ 所对的角为直角）。

能使 $a^2 + b^2 = c^2$ 成立的三个正整数 $(a, b, c)$ 叫做*勾股数*，常见的有 $(3,4,5)$、$(5,12,13)$、$(8,15,17)$、$(7,24,25)$。

推广判断三角形类型：
- $a^2 + b^2 = c^2$：直角三角形
- $a^2 + b^2 > c^2$：锐角三角形
- $a^2 + b^2 < c^2$：钝角三角形
]

#workedexamples[
*例 1.* 判断 $6, 8, 10$；$7, 8, 11$；$9, 40, 41$ 是否能构成直角三角形的三边。

*解：* $(6,8,10)$ 和 $(9,40,41)$ 都是直角三角形；$(7,8,11)$ 是钝角三角形。

*例 2.* $△ "ABC"$ 中，$"AB" = 15$，$"BC" = 20$，$"AC" = 25$。判断形状并求面积。

*解：* 这是直角三角形，$∠ "B" = 90°$，面积为 $150$。

*例 3.* 三边长为 $sqrt(2)$、$sqrt(3)$、$sqrt(5)$，判断是否为直角三角形。

*解：* 是，因为 $2 + 3 = 5$。
]

#keytakeaway[
- 逆定理可用于判定直角三角形。
- 通过比较 $a^2 + b^2$ 与 $c^2$，还能判断锐角或钝角三角形。
- 常见勾股数要熟记。
]

#practice[
1. 判断以下各组长度能否构成直角三角形：$(11,60,61)$、$(1,1,sqrt(2))$、$(4,5,6)$。
2. 一块三角形地三边长分别为 $9$ m、$12$ m、$15$ m。这块地是什么形状？求面积。
3. 判断三边为 $sqrt(3), 2, sqrt(7)$ 的三角形是什么类型。
4. 在 $△ "ABC"$ 中，$a = 2k$，$b = k^2 - 1$，$c = k^2 + 1$（$k > 1$）。证明 $△ "ABC"$ 是直角三角形。
]

=== 参考答案

#answer[
1. $13$ cm。
2. $15$ cm。
3. $8$ m。
4. $4sqrt(2)$ cm。
5. (a) 是；(b) 是；(c) 是钝角三角形。
6. 直角三角形，面积 $54$ m^2。
7. 直角三角形。
8. $a^2 + b^2 = c^2$，故为直角三角形。
]
