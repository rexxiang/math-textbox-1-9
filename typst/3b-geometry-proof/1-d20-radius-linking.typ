#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, secref, tryit, pitfall
#import "../lib/diagram-packages.typ": cetz

== 圆里被锁定的线与角 <tool:d20-radius-linking>

#vocab[连半径看圆题 radius-link strategy / 圆周角定理 inscribed-angle theorem / 垂径性质 perpendicular-chord property]

#crisis[
  车轮为什么能平稳滚动？钟表刻度为什么喜欢围着圆排开？圆看起来最“柔软”，但一旦把圆心和半径引进来，它其实会立刻冒出许多非常“硬”的关系。

  *圆里哪些关系是必然成立的？怎样把圆题压回少数几个稳定工具？*
]

#history-note[
  圆最早来自绳子、车轮、天文和圆规。真正厉害的地方不在于“长得圆”，而在于它有一个极其强的定义：到圆心距离相等。只要把半径连起来，圆中的许多问题就会自动化成等腰三角形问题。
]

#discovery[
  *第一步：圆题先连半径。*

  一旦把圆上两点连到圆心，很多图就会退回等腰三角形或全等三角形。

  *第二步：圆周上的角和圆心看到的角有稳定倍数关系。*

  同一段圆周部分，从圆周去看只张开一半。

#figure(
  cetz.canvas(length: 1.5cm, {
    import cetz.draw: *
    // Circle centered at O=(2,2) radius 1.8
    let O = (2, 2)
    circle(O, radius: 1.8, stroke: 0.7pt)
    circle(O, radius: 0.05, fill: black, stroke: none)
    content(O, $O$, anchor: "south-east", padding: 3pt)
    // Points A, B on circle (bottom arc), C on top arc
    let A = (0.55, 0.80)   // angle ~215deg
    let B = (3.45, 0.80)   // angle ~325deg
    let C = (2.0, 3.8)     // angle ~90deg
    circle(A, radius: 0.05, fill: black, stroke: none)
    circle(B, radius: 0.05, fill: black, stroke: none)
    circle(C, radius: 0.05, fill: black, stroke: none)
    content(A, $A$, anchor: "north-east", padding: 3pt)
    content(B, $B$, anchor: "north-west", padding: 3pt)
    content(C, $C$, anchor: "south", padding: 3pt)
    // Central angle AOB
    line(O, A, stroke: (paint: blue, thickness: 0.7pt))
    line(O, B, stroke: (paint: blue, thickness: 0.7pt))
    content((2.0, 1.7), text(8pt, fill: blue)[$angle A O B$])
    // Inscribed angle ACB
    line(C, A, stroke: (paint: eastern, thickness: 0.7pt))
    line(C, B, stroke: (paint: eastern, thickness: 0.7pt))
    content((2.0, 3.2), text(8pt, fill: eastern)[$angle A C B$])
  }),
  caption: [圆心角 $angle A O B$（蓝色）是圆周角 $angle A C B$（绿色）的两倍：它们对应同一段弧 $overparen(A B)$]
)

  *第三步：圆心向那条线段作垂线，常常会把它平分。*

  所以角问题和线段问题，常常都能靠这三步往回压。
]

#tryit[
  先猜结论：

  + 同一段圆周部分若对应中心处的角是 $80 degree$，圆周上的那个角会是多少？
  + 若一条线段恰好穿过圆心，它所对的圆周上的那个角会是多少？
  + 圆心到那条线段的垂线会不会平分它？
]

#side-hack[
  *圆题第一反应：先连半径。*

  只要圆心出现，就先看看能不能把题目改写成等腰或全等三角形问题。
]

#blueprint[
  *一、连半径看圆题*

  看到圆心和圆上两点时，第一步常是把它们连起来。这样圆题会立刻退回等腰三角形或全等三角形。

  在同圆里，很多“这两段一样长”“这两个角一样大”的判断，本质都来自：连半径以后，能把问题改写成全等三角形。

  *二、圆周角定理*

  同一段圆周部分所对的圆周角，等于圆心所对角的一半。

  直接推论：

  - 同一段圆周部分所对的圆周角相等
  - 直径所对的圆周角是直角

  *三、垂径性质*

  若圆心向圆上一条线段作垂线，那么这条垂线会把那条线段平分；反过来，经过这条线段中点的半径也与它垂直。

  它背后的证明仍然没有换：左右两边会组成两个全等的直角三角形。

#figure(
  cetz.canvas(length: 1.4cm, {
    import cetz.draw: *
    // Circle centered at O
    let O = (2, 2)
    circle(O, radius: 1.6, stroke: 0.7pt)
    circle(O, radius: 0.05, fill: black, stroke: none)
    content(O, $O$, anchor: "south-east", padding: 3pt)
    // Chord AB (horizontal)
    let A = (0.55, 2)
    let B = (3.45, 2)
    line(A, B, stroke: 0.7pt)
    circle(A, radius: 0.05, fill: black, stroke: none)
    circle(B, radius: 0.05, fill: black, stroke: none)
    content(A, $A$, anchor: "east", padding: 3pt)
    content(B, $B$, anchor: "west", padding: 3pt)
    // Midpoint H
    let H = (2, 2)
    circle(H, radius: 0.05, fill: black, stroke: none)
    content(H, $H$, anchor: "north-east", padding: 3pt)
    // Perpendicular from O to AB (vertical)
    line(O, (2, 2), stroke: (paint: blue, thickness: 0.7pt))
    // Right angle mark at H
    line((2, 2.25), (2.25, 2.25), stroke: 0.5pt)
    line((2.25, 2.25), (2.25, 2), stroke: 0.5pt)
    // Line from O going through H to edge
    line((2, 0.4), (2, 3.6), stroke: (paint: blue, thickness: 0.5pt, dash: "dashed"))
    content((2.15, 1.2), text(8pt, fill: blue)[$O H bot A B$])
    content((1.25, 2.3), text(7pt)[$A H$])
    content((2.75, 2.3), text(7pt)[$H B$])
  }),
  caption: [垂径性质：过圆心作弦 $A B$ 的垂线，垂足 $H$ 是弦的中点，即 $A H = H B$]
)

  *例 1*：一条圆周部分所对的中心角是 $80 degree$。求同一部分所对的圆周角。

  解：圆周角为 $40 degree$。

  *例 2*：圆心 $O$ 向圆上一条线段 $A B$ 作垂线，垂足为 $H$。已知 $A H = 6$，求 $A B$。

  解：由垂径性质，$H$ 平分 $A B$，所以 $A B = 12$。
]

#pitfall[
  *陷阱 1：圆周角不是圆心角。*

  同弧所对时，圆周角只有圆心角的一半。

  *陷阱 2：垂径性质要看清条件。*

  要么是“圆心向弦作垂线”，要么是“经过弦中点的半径”，别把条件省掉。
]

#mastery[
  *基础*

  + 一条弧所对圆心角为 $150 degree$，求同弧所对圆周角。

  + 判断正误：直径所对的圆周角一定是直角。

  + 若同一段圆周部分所对的圆周角是 $35 degree$，求对应中心角。

  *应用*

  + 圆心 $O$ 向圆上一条线段 $A B$ 作垂线，垂足为 $H$。已知 $A H = 6$，求 $A B$ 的长。

  + 为什么很多圆题一开始都先连半径？

  + 直径 $A B$ 所对圆周上的一点为 $C$。若 $angle A = 28 degree$，求 $angle B$ 和 $angle C$。

  *挑战*

  + *挑战*：圆内接四边形 $A B C D$，已知 $A B$ 是直径，$A C = 3$，$B C = 4$。
    - 先说明 $angle A C B = 90°$（为什么？联系直径对应的圆周角）
    - 求斜边 $A B$（用勾股定理，#secref("d23-pythagorean-theorem")）
    - 如果还知道 $A D = 5$，$angle D A B = 90°$，求 $D B$

  + 已知一条圆上一段线被圆心垂直照到，说明为什么”先平分、再计算”会成为高频路径。

  + 解释本节和前面的全等工具怎样一起工作，把圆题压回熟悉的边角关系。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*

  + $75 degree$

  + 对。

  + 对应中心角是 $70 degree$。

  *应用*

  + 因为圆心到这条线段的垂线会平分它，所以 $A B = 2 times A H = 12$

  + 因为连半径后常能退回等腰或全等三角形，圆题就会立刻变成熟悉的旧题。

  + 因为直径所对圆周角是直角，所以 $angle C = 90 degree$。再由三角形内角和得 $angle B = 62 degree$。

  *挑战*

  + 挑战答案：$A B$ 是直径，所以圆周角 $angle A C B = 90°$（直径所对圆周角是直角，§7.6）。$A B = sqrt(A C^2 + B C^2) = sqrt(9 + 16) = 5$。$angle D A B = 90°$（已知），$D B = sqrt(A D^2 + A B^2) = sqrt(25 + 25) = 5sqrt(2)$。

  + 因为作垂线后往往能先把那条线段变成两个相等的半段，后续直角关系和长度计算都会更清楚。

  + 连半径后常会出现等腰三角形或全等三角形，于是弦、角、弧之间的关系就能退回熟悉的三角形语言来说明。
]
