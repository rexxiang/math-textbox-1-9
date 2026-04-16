#import "../../lib/theme.typ": *
#import "../../lib/diagram-packages.typ": cetz

== §3.2 角 <sec-3-2>

#box(
  inset: 10pt,
  fill: luma(245),
  stroke: (paint: luma(180), thickness: 0.6pt),
  radius: 3pt,
)[
  *前置知识：#secref("3.1")*

  *适用年级：4-7 年级*
]

=== 角的概念与表示

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

把一把折扇慢慢展开，两根扇骨从完全合拢到完全张开，它们之间形成的"张口"就是一个角。张开得越大，角越大。
]

*概念建立*

角是从同一个点出发的两条射线所组成的图形。公共端点叫做顶点，两条射线叫做角的两条边。

#figure(caption: [角 ∠AOB：顶点 O，两边分别是射线 OA 和射线 OB])[
  #cetz.canvas({
    import cetz.draw: *

    // Ray OA along x-axis
    line((0, 0), (3, 0), stroke: 0.7pt + black, mark: (end: ">", fill: black))
    // Ray OB at 50 degrees
    line((0, 0), (calc.cos(50deg) * 3, calc.sin(50deg) * 3), stroke: 0.7pt + black, mark: (end: ">", fill: black))

    // Angle arc from OA to OB
    import cetz.angle: angle
    angle((0, 0), (3, 0), (calc.cos(50deg) * 3, calc.sin(50deg) * 3), radius: 0.6, stroke: 0.5pt + blue)

    // Vertex O
    circle((0, 0), radius: 0.05, fill: black, stroke: none)

    // Labels
    content((0, 0), anchor: "north-east", padding: 0.15, text(9pt)[$O$])
    content((3.15, 0), anchor: "west", padding: 0.15, text(9pt)[$A$])
    content((calc.cos(50deg) * 3 + 0.1, calc.sin(50deg) * 3 + 0.1), anchor: "south-west", padding: 0.15, text(9pt)[$B$])
  })
]

角的表示方法有三种：

1. 用三个字母表示：∠AOB，O 是顶点，写在中间。
2. 用一个字母表示：∠O，当顶点处只有一个角时。
3. 用数字编号：∠1、∠2，当图中标注角的编号时使用。

*关键总结*

- 角由一个顶点和两条边（射线）组成。
- 三字母表示法中，顶点字母写在中间。

=== 角的度量

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

"这个角有多大？"要回答这个问题，我们需要一个度量单位。把一个圆周等分成 360 份，每一份对应的角就是 1°。
]

*概念建立*

角的度量单位是度。将一个周角等分为 360 份，每份为 1°。更精细的度量：

- 1° = 60'
- 1' = 60''

例如，30°15'20'' 读作"30 度 15 分 20 秒"。测量角的工具是量角器。

使用量角器时：

1. 将量角器的中心对准角的顶点。
2. 0° 刻度线与角的一条边重合。
3. 另一条边所对的刻度就是角的度数。

*典型例题*

- 例 1：将 1.45° 化为度、分、秒，得 1°27'。
- 例 2：将 25°30'36'' 化为小数度，得 25.51°。

*关键总结*

- 1 周角 = 360°，1° = 60'，1' = 60''。
- 度、分、秒之间的换算是 60 进制。

*练一练*

1. 将 2.35° 化为度、分、秒。
2. 将 45°18' 化为小数度。

=== 角的分类

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

生活中的角形形色色：书本的角是方方正正的直角，时钟指针在不同时刻形成大小不一的角。根据角的大小，我们可以把角分成几类。
]

*概念建立*

按角的度数大小，角可以分为：

- 锐角：0° < α < 90°
- 直角：α = 90°
- 钝角：90° < α < 180°
- 平角：α = 180°
- 周角：α = 360°

#figure(caption: [角的分类：锐角、直角、钝角与平角])[
  #cetz.canvas({
    import cetz.draw: *
    import cetz.angle: angle, right-angle

    let ray-len = 2

    // --- Acute angle (40°) at x=0 ---
    let a0 = (0, 0)
    let a0-r = (ray-len, 0)
    let a0-u = (calc.cos(40deg) * ray-len, calc.sin(40deg) * ray-len)
    line(a0, a0-r, stroke: 0.7pt + black, mark: (end: ">", fill: black))
    line(a0, a0-u, stroke: 0.7pt + black, mark: (end: ">", fill: black))
    angle(a0, a0-r, a0-u, label: text(7pt)[$40°$], radius: 0.5, stroke: 0.5pt + blue, label-radius: 170%)
    content((0, -0.5), text(9pt)[锐角])

    // --- Right angle (90°) at x=3.5 ---
    let r0 = (3.5, 0)
    let r0-r = (3.5 + ray-len, 0)
    let r0-u = (3.5, ray-len)
    line(r0, r0-r, stroke: 0.7pt + black, mark: (end: ">", fill: black))
    line(r0, r0-u, stroke: 0.7pt + black, mark: (end: ">", fill: black))
    right-angle(r0, r0-r, r0-u, stroke: 0.5pt + black, radius: 0.25)
    content((3.5 + 0.55, 0.55), text(7pt)[$90°$])
    content((3.5, -0.5), text(9pt)[直角])

    // --- Obtuse angle (130°) at x=7 ---
    let o0 = (7, 0)
    let o0-r = (7 + ray-len, 0)
    let o0-u = (7 + calc.cos(130deg) * ray-len, calc.sin(130deg) * ray-len)
    line(o0, o0-r, stroke: 0.7pt + black, mark: (end: ">", fill: black))
    line(o0, o0-u, stroke: 0.7pt + black, mark: (end: ">", fill: black))
    angle(o0, o0-r, o0-u, label: text(7pt)[$130°$], radius: 0.5, stroke: 0.5pt + blue, label-radius: 170%)
    content((7, -0.5), text(9pt)[钝角])

    // --- Straight angle (180°) at x=10.5 ---
    let s0 = (10.5, 0)
    let s0-r = (10.5 + ray-len, 0)
    let s0-l = (10.5 - ray-len, 0)
    line(s0-l, s0-r, stroke: 0.7pt + black, mark: (start: ">", end: ">", fill: black))
    circle(s0, radius: 0.05, fill: black, stroke: none)
    angle(s0, s0-r, s0-l, radius: 0.4, stroke: 0.5pt + blue)
    content((10.5, 0.65), text(7pt)[$180°$])
    content((10.5, -0.5), text(9pt)[平角])
  })
]

直角在图形中用一个小正方形标记来表示。

*典型例题*

- 例 1：时钟在 3 点整时，时针与分针所成的角是直角；4 点整时是钝角。

*关键总结*

- 角按大小分为锐角、直角、钝角、平角、周角。
- 直角 = 90°，平角 = 180°，周角 = 360°。
- 直角用小正方形标记。

*练一练*

1. 时钟在 6 点整时，时针和分针形成什么角？在 2 点整呢？
2. 一个角是 135°，它属于哪类角？

=== 互补与互余

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

一块长方形木板从一个顶点处锯开，分成了两个角。如果锯出来的一个角是 35°，另一个角是多少？它们之和恰好等于 90°。
]

*概念建立*

互余：如果两个角的和等于 90°，则这两个角互为余角。

互补：如果两个角的和等于 180°，则这两个角互为补角。

重要性质：

- 同一个角的余角相等。
- 同一个角的补角相等。

互余和互补是两个角之间的关系，不要求这两个角有公共顶点或相邻。

*典型例题*

- 例 1：一个角的余角是 52°，则这个角是 38°，它的补角是 142°。
- 例 2：一个角的补角是它的余角的 3 倍，则这个角是 45°。
- 例 3：已知 ∠1 与 ∠2 互补，且 ∠1 = 5∠2，则 ∠1 = 150°，∠2 = 30°。

*关键总结*

- 互余：两角之和 = 90°。
- 互补：两角之和 = 180°。
- 同角（或等角）的余角相等，同角（或等角）的补角相等。

*练一练*

1. 一个角是 67°，它的余角和补角分别是多少？
2. 一个角的补角比它的余角大多少？对任意角成立吗？
3. 已知 ∠A 与 ∠B 互余，∠A = 2∠B + 12°，求 ∠A 和 ∠B。

=== 对顶角

#box(inset: 10pt, fill: rgb("#FFF8E8"), stroke: (paint: rgb("#E0A000"), thickness: 0.7pt), radius: 4pt)[
*引入情境*

两条直线相交，形成两对对顶角。对顶角是指：两个角的顶点相同，且每个角的两条边分别是另一个角的两条边的反向延长线。
]

*概念建立*

两条直线相交，形成两对对顶角。对顶角相等。相邻的两个角互补。

#figure(caption: [对顶角：∠1 = ∠3，∠2 = ∠4])[
  #cetz.canvas({
    import cetz.draw: *

    // Line 1: from lower-left to upper-right
    line((-2.5, -1.5), (2.5, 1.5), stroke: 0.7pt + black, mark: (start: ">", end: ">", fill: black))
    // Line 2: from upper-left to lower-right
    line((-2.5, 1.5), (2.5, -1.5), stroke: 0.7pt + black, mark: (start: ">", end: ">", fill: black))

    // Center point O
    circle((0, 0), radius: 0.05, fill: black, stroke: none)
    content((0.2, -0.3), anchor: "north-west", text(9pt)[$O$])

    import cetz.angle: angle

    // Named ray endpoints
    let line1-r = (2.5, 1.5)   // line 1 upper-right
    let line1-l = (-2.5, -1.5) // line 1 lower-left
    let line2-r = (2.5, -1.5)  // line 2 lower-right
    let line2-l = (-2.5, 1.5)  // line 2 upper-left
    let O = (0, 0)

    // ∠1 (top): between line1-right and line2-left
    angle(O, line1-r, line2-l, label: text(7pt)[$angle 1$], radius: 0.5, stroke: 0.5pt + blue, label-radius: 150%)
    // ∠2 (left): between line2-left and line1-left
    angle(O, line2-l, line1-l, label: text(7pt)[$angle 2$], radius: 0.5, stroke: 0.5pt + blue, label-radius: 150%)
    // ∠3 (bottom): between line1-left and line2-right
    angle(O, line1-l, line2-r, label: text(7pt)[$angle 3$], radius: 0.5, stroke: 0.5pt + blue, label-radius: 150%)
    // ∠4 (right): between line2-right and line1-right
    angle(O, line2-r, line1-r, label: text(7pt)[$angle 4$], radius: 0.5, stroke: 0.5pt + blue, label-radius: 150%)
  })
]

推理过程可以这样理解：

- ∠1 与 ∠2 互补，所以 ∠1 = 180° - ∠2。
- ∠3 与 ∠2 互补，所以 ∠3 = 180° - ∠2。
- 所以 ∠1 = ∠3。

同理可得 ∠2 = ∠4。

*典型例题*

- 例 1：两条直线相交，其中一个角是 55°，其他三个角分别是 125°、55°、125°。
- 例 2：两条直线相交，其中一对对顶角的和为 100°，则四个角分别为 50°、130°、50°、130°。

#figure(caption: [三线共点：∠1 + ∠2 + ∠3 = 180°])[
  #cetz.canvas({
    import cetz.draw: *

    // Horizontal line (extends left and right from O)
    line((-3, 0), (3, 0), stroke: 0.7pt + black, mark: (start: ">", end: ">", fill: black))

    // Ray at 60° from O
    line((0, 0), (calc.cos(60deg) * 3, calc.sin(60deg) * 3), stroke: 0.7pt + black, mark: (end: ">", fill: black))

    // Ray at 130° from O
    line((0, 0), (calc.cos(130deg) * 3, calc.sin(130deg) * 3), stroke: 0.7pt + black, mark: (end: ">", fill: black))

    // Center point O
    circle((0, 0), radius: 0.05, fill: black, stroke: none)
    content((0.15, -0.3), anchor: "north-west", text(9pt)[$O$])

    import cetz.angle: angle

    // Named ray endpoints
    let ray-0 = (3, 0)                                         // 0° ray (right)
    let ray-60 = (calc.cos(60deg) * 3, calc.sin(60deg) * 3)    // 60° ray
    let ray-130 = (calc.cos(130deg) * 3, calc.sin(130deg) * 3) // 130° ray
    let ray-180 = (-3, 0)                                       // 180° ray (left)

    // ∠1: from 0° ray to 60° ray
    angle((0, 0), ray-0, ray-60, label: text(7pt)[$angle 1$], radius: 0.6, stroke: 0.5pt + blue, label-radius: 150%)
    // ∠2: from 60° ray to 130° ray
    angle((0, 0), ray-60, ray-130, label: text(7pt)[$angle 2$], radius: 0.6, stroke: 0.5pt + blue, label-radius: 150%)
    // ∠3: from 130° ray to 180° ray
    angle((0, 0), ray-130, ray-180, label: text(7pt)[$angle 3$], radius: 0.6, stroke: 0.5pt + blue, label-radius: 150%)
  })
]

- 例 3：三条直线两两相交于同一点 O，已知 ∠1 = 40°，∠2 = 90°，则 ∠3 = 50°。

*关键总结*

- 两条直线相交形成两对对顶角。
- 对顶角相等。
- 相邻角互补。

*练一练*

1. 两条直线相交，其中一个角是 72°，求其他三个角。
2. 两条直线相交，已知两个相邻角的差是 40°，求四个角的度数。
3. 三条直线交于一点，其中一个角是 46°，与它相邻的一个角是 72°，求其余各角。

*对顶角练习答案*

1. 其他三个角分别是 108°、72°、108°。
2. 四个角分别是 70°、110°、70°、110°。
3. 其余各角分别是 62°、46°、72°、62°。

=== 参考答案

1. 2.35° = 2°21'。
2. 45°18' = 45.3°。
3. 6 点整是平角，2 点整是 60°，属于锐角。
4. 135° 属于钝角。
5. 余角 23°，补角 113°。
6. 补角比余角大 90°，对有余角的角都成立。
7. ∠B = 26°，∠A = 64°。
