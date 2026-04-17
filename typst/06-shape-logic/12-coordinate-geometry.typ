#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall
#import "../lib/diagram-packages.typ": cetz

== §6.12 坐标几何：用坐标读图形 <sec-6-12>

#vocab[坐标 coordinate / 距离公式 distance formula / 中点 midpoint / 象限 quadrant]

#crisis[
  你打开手机地图，想知道从学校到图书馆的*直线距离*。地图上学校的坐标是 $(3, 1)$，图书馆的坐标是 $(7, 4)$（单位：百米）。

  可是你没法直接走直线——中间隔着楼房和马路。但直线距离到底有多远？

  *能不能只用两个点的坐标，就算出它们之间的直线距离？*
]

#history-note[
  坐标几何的发明通常归功于*笛卡尔*（Descartes, 1637），但实际上*费马*（Fermat）几乎同时独立提出了类似的想法。费马在 1636 年的手稿中已经用坐标描述曲线，只是没有正式出版。两人用不同的方式把代数和几何嫁接在一起，这一成就被称为「解析几何的诞生」——它为后来牛顿和莱布尼茨发明微积分铺平了道路。
]

#discovery[
  *第一步*：回顾坐标系。

  在平面上画两条互相垂直的数轴，水平的叫 $x$ 轴，竖直的叫 $y$ 轴，交点为*原点* $O$。任何一个点都可以用一对有序数 $(x, y)$ 来表示。

  四个象限：
  - 第一象限：$x > 0, y > 0$
  - 第二象限：$x < 0, y > 0$
  - 第三象限：$x < 0, y < 0$
  - 第四象限：$x > 0, y < 0$

  #figure(
    cetz.canvas(length: 1.8cm, {
      import cetz.draw: *
      import cetz.angle: right-angle
      // Axes
      line((-0.5, 0), (4.5, 0), stroke: 0.7pt, mark: (end: ">", size: 0.15))
      line((0, -0.5), (0, 3), stroke: 0.7pt, mark: (end: ">", size: 0.15))
      content((4.5, 0), $x$, anchor: "west", padding: 3pt)
      content((0, 3), $y$, anchor: "south", padding: 3pt)
      content((0, 0), $O$, anchor: "north-east", padding: 3pt)
      // Quadrant labels
      content((2.5, 1.8), text(8pt, fill: luma(120))[第一象限])
      // Points A(3,1) and B(7,4) scaled to fit canvas
      // Scale: 1 unit = 0.5cm on canvas, so A→(1.5, 0.5), B→(3.5, 2)
      let sc = 0.5
      let A = (3*sc, 1*sc)   // (1.5, 0.5)
      let B = (7*sc, 4*sc)   // (3.5, 2.0)
      circle(A, radius: 0.05, fill: black, stroke: none)
      circle(B, radius: 0.05, fill: black, stroke: none)
      content(A, text(8pt)[$A(3,1)$], anchor: "north", padding: 4pt)
      content(B, text(8pt)[$B(7,4)$], anchor: "south-west", padding: 3pt)
      // Right triangle for distance
      let C = (B.at(0), A.at(1))  // corner point
      line(A, C, stroke: (paint: blue, thickness: 0.5pt, dash: "dashed"))
      line(C, B, stroke: (paint: blue, thickness: 0.5pt, dash: "dashed"))
      right-angle(C, A, B, stroke: 0.4pt)
      // Dimension labels
      content(((A.at(0)+C.at(0))/2, C.at(1)-0.2), text(8pt, fill: blue)[$4$])
      content((C.at(0)+0.2, (C.at(1)+B.at(1))/2), text(8pt, fill: blue)[$3$])
      // AB hypotenuse label
      content(((A.at(0)+B.at(0))/2 - 0.3, (A.at(1)+B.at(1))/2),
              text(8pt, fill: red)[$A B = 5$])
      line(A, B, stroke: (paint: red, thickness: 0.6pt))
    }),
    caption: [坐标系中 $A(3,1)$、$B(7,4)$：水平差 $= 4$，竖直差 $= 3$，$A B = sqrt(4^2 + 3^2) = 5$]
  )

  *第二步*：用坐标表示平移。

  把点 $(2, 3)$ 向右移 $4$ 个单位 → $(2 + 4, 3) = (6, 3)$
  把点 $(2, 3)$ 向上移 $5$ 个单位 → $(2, 3 + 5) = (2, 8)$

  规律：*向右加、向左减、向上加、向下减*。

  *第三步*：用坐标表示轴对称。

  - 关于 $x$ 轴对称：$(a, b) → (a, -b)$（$y$ 变号）
  - 关于 $y$ 轴对称：$(a, b) → (-a, b)$（$x$ 变号）
  - 关于原点对称：$(a, b) → (-a, -b)$（都变号）

  *第四步*：推导距离公式。

  学校 $A(3, 1)$，图书馆 $B(7, 4)$。画辅助线构成直角三角形：

  - 水平距离：$7 - 3 = 4$
  - 竖直距离：$4 - 1 = 3$
  - 由勾股定理：$A B = sqrt(4^2 + 3^2) = sqrt(16 + 9) = sqrt(25) = 5$

  直线距离是 $5$ 百米 $= 500$ 米！
]

#tryit[
  先试一试：求点 $A(-2, 3)$ 和 $B(4, -1)$ 之间的距离，以及它们的中点坐标。

  思路：距离公式是勾股定理的坐标版本，先算横差、竖差，再开根。
]

#pitfall[
  *距离公式里的减法顺序不影响结果，但平方不能少！*

  ❌ $A B = sqrt((4-(-2)) + (-1-3)) = sqrt(6 + (-4))$（忘了平方！）

  ✓ $A B = sqrt((4-(-2))^2 + (-1-3)^2) = sqrt(36 + 16) = sqrt(52)$

  另外，*中点公式是坐标的平均值*，不是差值：

  ❌ 中点 $= (frac(4-(-2), 2), frac(-1-3, 2)) = (3, -2)$（用了差）

  ✓ 中点 $= (frac(-2+4, 2), frac(3+(-1), 2)) = (1, 1)$（用和除以2）
]

#blueprint[
  === 平面直角坐标系

  由两条互相垂直且有公共原点的数轴组成。点 $P$ 的坐标 $(a, b)$ 中：
  - $a$ 叫做*横坐标*（$x$ 坐标）
  - $b$ 叫做*纵坐标*（$y$ 坐标）

  *特殊点的坐标特征*：
  - $x$ 轴上的点：$y = 0$
  - $y$ 轴上的点：$x = 0$
  - 原点：$(0, 0)$

  === 坐标与变换

  *平移*：将点 $(a, b)$ 向右移 $m$、向上移 $n$ 个单位后得 $(a + m, b + n)$。

  *轴对称*：
  - 关于 $x$ 轴：$(a, b) → (a, -b)$
  - 关于 $y$ 轴：$(a, b) → (-a, b)$
  - 关于原点：$(a, b) → (-a, -b)$

  === 两点间的距离公式

  设 $A(x_1, y_1)$，$B(x_2, y_2)$，则：

  $ A B = sqrt((x_2 - x_1)^2 + (y_2 - y_1)^2) $

  这是勾股定理在坐标系中的直接应用。

  *特殊情形*：点 $A$ 到原点的距离 $= sqrt(x_1^2 + y_1^2)$。

  === 中点公式

  线段 $A B$ 的中点 $M$ 的坐标为：

  $ M = (frac(x_1 + x_2, 2), frac(y_1 + y_2, 2)) $

  直觉：中点的坐标就是两端点坐标的*平均值*。

  #align(center, cetz.canvas(length: 1.8cm, {
    import cetz.draw: *
    // Axes
    line((-0.3, 0), (4, 0), stroke: 0.6pt, mark: (end: ">", size: 0.12))
    line((0, -0.3), (0, 2.5), stroke: 0.6pt, mark: (end: ">", size: 0.12))
    content((4, 0), $x$, anchor: "west", padding: 2pt)
    content((0, 2.5), $y$, anchor: "south", padding: 2pt)
    // Points
    let A = (0.5, 0.5)
    let B = (3.5, 2.0)
    let M = ((A.at(0)+B.at(0))/2, (A.at(1)+B.at(1))/2)
    line(A, B, stroke: 0.7pt)
    circle(A, radius: 0.07, fill: black, stroke: none)
    circle(B, radius: 0.07, fill: black, stroke: none)
    circle(M, radius: 0.07, fill: red, stroke: none)
    content(A, text(8pt)[$A(x_1, y_1)$], anchor: "north-east", padding: 3pt)
    content(B, text(8pt)[$B(x_2, y_2)$], anchor: "south-west", padding: 3pt)
    content(M, text(8pt, fill: red)[$M$], anchor: "south", padding: 5pt)
    // Dotted projections to axes
    line(A, (A.at(0), 0), stroke: (paint: luma(180), thickness: 0.4pt, dash: "dotted"))
    line(B, (B.at(0), 0), stroke: (paint: luma(180), thickness: 0.4pt, dash: "dotted"))
    line(M, (M.at(0), 0), stroke: (paint: red, thickness: 0.4pt, dash: "dotted"))
  }))

  *例题 1*：求 $A(-2, 3)$ 和 $B(4, -1)$ 之间的距离。

  解：
  $ A B = sqrt((4 - (-2))^2 + (-1 - 3)^2) = sqrt(6^2 + (-4)^2) = sqrt(36 + 16) = sqrt(52) = 2sqrt(13) $

  *例题 2*：求 $A(1, 5)$ 和 $B(7, -3)$ 的中点坐标。

  解：$M = (frac(1 + 7, 2), frac(5 + (-3), 2)) = (4, 1)$

  *例题 3*：三角形三个顶点为 $A(0, 0)$、$B(6, 0)$、$C(3, 4)$。判断这是什么三角形。

  解：
  $ A B = 6, quad A C = sqrt(9 + 16) = 5, quad B C = sqrt(9 + 16) = 5 $
  因为 $A C = B C = 5 != A B$，所以这是一个*等腰三角形*。

  *例题 4*：已知 $A(2, -1)$、$B(x, 3)$，$A B = 5$，求 $x$。

  解：$sqrt((x - 2)^2 + (3 - (-1))^2) = 5$，$(x - 2)^2 + 16 = 25$，$(x - 2)^2 = 9$，$x - 2 = plus.minus 3$，$x = 5$ 或 $x = -1$。
]

#mastery[
  *基础*

  + 写出下列各点关于 $x$ 轴、$y$ 轴、原点的对称点坐标：$A(3, -2)$、$B(-1, 4)$。
  + 求下列两点间的距离：
    - $P(1, 2)$ 和 $Q(4, 6)$
    - $M(-3, 1)$ 和 $N(2, -2)$
  + 求 $A(-1, 3)$ 和 $B(5, -1)$ 的中点坐标。

  *应用*

  + 在坐标系中，正方形的一个顶点在原点，相邻两个顶点为 $(4, 0)$ 和 $(0, 4)$。求第四个顶点的坐标，以及对角线的长度。
  + 已知三角形三个顶点为 $A(1, 1)$、$B(5, 1)$、$C(3, 5)$。求三角形的周长。

  *挑战*

  + 点 $P(x, y)$ 到 $A(1, 0)$ 和 $B(5, 0)$ 的距离相等，求 $x$ 和 $y$ 的关系。这条线是什么？
  + 已知 $A(0, 0)$、$B(8, 0)$、$C(2, 6)$。求 $triangle A B C$ 的面积。（提示：底 $A B$ 在 $x$ 轴上，高就是 $C$ 的纵坐标。）

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + $A(3, -2)$：关于 $x$ 轴 $(3, 2)$，关于 $y$ 轴 $(-3, -2)$，关于原点 $(-3, 2)$。$B(-1, 4)$：关于 $x$ 轴 $(-1, -4)$，关于 $y$ 轴 $(1, 4)$，关于原点 $(1, -4)$。
  + $P Q = sqrt(9 + 16) = 5$。$M N = sqrt(25 + 9) = sqrt(34)$。
  + 中点 $(frac(-1 + 5, 2), frac(3 + (-1), 2)) = (2, 1)$。

  *应用*
  + 第四个顶点 $(4, 4)$。对角线长 $= sqrt(4^2 + 4^2) = 4sqrt(2)$。
  + $A B = 4$，$A C = sqrt(4 + 16) = sqrt(20) = 2sqrt(5)$，$B C = sqrt(4 + 16) = 2sqrt(5)$。周长 $= 4 + 4sqrt(5)$。

  *挑战*
  + $sqrt((x - 1)^2 + y^2) = sqrt((x - 5)^2 + y^2)$，两边平方化简：$(x - 1)^2 = (x - 5)^2$，展开得 $-2x + 1 = -10x + 25$，$8x = 24$，$x = 3$。$y$ 可以是任意值。这是直线 $x = 3$——线段 $A B$ 的*垂直平分线*。
  + 底 $A B = 8$，$C$ 的纵坐标为 $6$（即高为 $6$）。面积 $= frac(1, 2) times 8 times 6 = 24$。
]
