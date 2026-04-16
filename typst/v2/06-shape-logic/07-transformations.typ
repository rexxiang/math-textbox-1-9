#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab
#import "../../lib/diagram-packages.typ": cetz

== §6.7 图形变换 <sec-6-7>

#vocab[轴对称 reflection / 平移 translation / 旋转 rotation / 中心对称 point symmetry]

#crisis[
  拿一张纸对折，剪出一个图案。打开后——左右完全一样！

  蝴蝶的翅膀、人的面孔、雪花的六角——自然界到处是对称。

  *「对称」背后有什么数学规律？除了对折，还有哪些方式能让图形「移动」却不改变形状？*
]

#history-note[
  *伊斯兰几何艺术*：伊斯兰文化因宗教原因避免描绘人物，转而发展出极其精美的几何图案装饰。从阿尔罕布拉宫（西班牙格拉纳达）的墙面到波斯清真寺的穹顶，工匠们通过反复运用*平移*、*旋转*和*反射*，创造出令人叹为观止的无限铺排（tessellation）。数学家后来证明，平面上所有可能的对称铺排恰好有 17 种类型——阿尔罕布拉宫的工匠在数百年前就凭直觉「找到」了全部 17 种！
]

#discovery[
  *第一步*：轴对称——折纸的数学。

  把一张纸对折后剪出图案，展开后的图形关于折痕*对称*。折痕就是*对称轴*。

  对称轴两侧的对应点有什么特点？——连接任意一对对应点，对称轴是这条连线的*垂直平分线*。

  *第二步*：中心对称——旋转 $180 degree$。

  把一个图形绕某个点旋转 $180 degree$，如果能与原图形重合，这个图形就是*中心对称图形*，这个点叫*对称中心*。

  例如：平行四边形是中心对称图形（对称中心是对角线的交点），但不是轴对称图形。

  *第三步*：平移——整体滑动。

  把一个图形沿某个方向移动一定距离，不旋转、不翻转。对应点的连线平行且相等。

  *第四步*：旋转——绕点转动。

  把一个图形绕一个定点（旋转中心）转动一定角度。每个点到旋转中心的距离不变，对应点与旋转中心连线的夹角等于旋转角。
]

#blueprint[
  *轴对称*

  - 如果一个图形沿某条直线折叠后，两部分能够完全重合，则这个图形是*轴对称图形*，这条直线叫做*对称轴*。
  - 对称轴是每对对应点连线的*垂直平分线*。
  - 对应线段相等，对应角相等。

  #figure(
    cetz.canvas(length: 1.8cm, {
      import cetz.draw: *
      import cetz.angle: right-angle
      // Symmetry axis l (vertical at x=2.5)
      line((2.5, -0.3), (2.5, 3.3), stroke: (paint: blue, thickness: 0.8pt))
      content((2.5, 3.3), $l$, anchor: "south", padding: 3pt)
      // Original triangle ABC (left side)
      let A = (0.3, 2.5)
      let B = (0.5, 0.2)
      let C = (1.8, 0.8)
      line(A, B, C, A, stroke: 0.7pt)
      content(A, $A$, anchor: "east", padding: 3pt)
      content(B, $B$, anchor: "east", padding: 3pt)
      content(C, $C$, anchor: "north-east", padding: 3pt)
      // Reflected triangle A'B'C' (right side): reflect x-coords across x=2.5
      let Ap = (4.7, 2.5)  // 2.5 + (2.5 - 0.3) = 4.7
      let Bp = (4.5, 0.2)  // 2.5 + (2.5 - 0.5) = 4.5
      let Cp = (3.2, 0.8)  // 2.5 + (2.5 - 1.8) = 3.2
      line(Ap, Bp, Cp, Ap, stroke: (paint: red, thickness: 0.7pt))
      content(Ap, $A'$, anchor: "west", padding: 3pt)
      content(Bp, $B'$, anchor: "west", padding: 3pt)
      content(Cp, $C'$, anchor: "north-west", padding: 3pt)
      // Dashed line connecting A and A' (with right-angle mark at axis)
      line(A, Ap, stroke: (paint: luma(150), thickness: 0.5pt, dash: "dashed"))
      let M = (2.5, 2.5)  // midpoint of AA' on the axis
      right-angle(M, A, (2.5, 2.0), stroke: 0.4pt)
      circle(M, radius: 0.04, fill: black, stroke: none)
    }),
    caption: [轴对称：$triangle A'B'C'$ 是 $triangle A B C$ 关于 $l$ 的轴对称图形]
  )

  常见轴对称图形：
  - 等腰三角形（1 条对称轴）
  - 等边三角形（3 条对称轴）
  - 矩形（2 条）、菱形（2 条）、正方形（4 条）
  - 圆（无数条，每条直径所在直线都是对称轴）

  *垂直平分线的性质*：

  - 线段的垂直平分线上的点到线段两端点的距离相等
  - 到线段两端点距离相等的点在线段的垂直平分线上

  *中心对称*

  - 把一个图形绕某点旋转 $180 degree$ 后能与原图形重合，则这个图形是*中心对称图形*。
  - 对称中心是每对对应点连线的中点。
  - 常见中心对称图形：平行四边形、矩形、菱形、正方形、圆

  *平移*

  将图形沿某个方向移动一定距离。

  - *两个要素*：方向和距离
  - 对应点连线平行（或在同一直线上）且相等
  - 图形的形状和大小不变
  - 对应线段平行且相等

  #figure(
    cetz.canvas(length: 1.8cm, {
      import cetz.draw: *
      let shift = 2.8  // translation amount
      // Original triangle
      let A = (0, 2)
      let B = (0.5, 0)
      let C = (2, 0.5)
      line(A, B, C, A, stroke: 0.7pt)
      content(A, $A$, anchor: "east", padding: 3pt)
      content(B, $B$, anchor: "north-east", padding: 3pt)
      content(C, $C$, anchor: "north", padding: 3pt)
      // Translated triangle
      let Ap = (A.at(0)+shift, A.at(1))
      let Bp = (B.at(0)+shift, B.at(1))
      let Cp = (C.at(0)+shift, C.at(1))
      line(Ap, Bp, Cp, Ap, stroke: (paint: red, thickness: 0.7pt))
      content(Ap, $A'$, anchor: "west", padding: 3pt)
      content(Bp, $B'$, anchor: "north-west", padding: 3pt)
      content(Cp, $C'$, anchor: "north", padding: 3pt)
      // Translation arrows
      let arrow_style = (paint: blue, thickness: 0.5pt)
      line(A, Ap, stroke: arrow_style, mark: (end: ">", size: 0.2))
      line(B, Bp, stroke: arrow_style, mark: (end: ">", size: 0.2))
    }),
    caption: [平移：$triangle A'B'C'$ 由 $triangle A B C$ 向右平移所得]
  )

  *旋转*

  将图形绕一个定点转动一定角度。

  - *三个要素*：旋转中心、旋转方向（顺时针 / 逆时针）、旋转角度
  - 每个点到旋转中心的距离不变
  - 任意一对对应点与旋转中心的连线所成的角都等于旋转角
  - 图形的形状和大小不变

  #figure(
    cetz.canvas(length: 2cm, {
      import cetz.draw: *
      import cetz.angle: angle
      let O = (0, 0)  // rotation center
      // Original triangle (to the right of O)
      let A = (1.5, 0)
      let B = (2.5, 0)
      let C = (2.5, 1)
      line(A, B, C, A, stroke: 0.7pt)
      content(A, $A$, anchor: "north", padding: 3pt)
      content(B, $B$, anchor: "north-west", padding: 3pt)
      content(C, $C$, anchor: "west", padding: 3pt)
      // Rotated triangle (90° counterclockwise): (x,y) → (-y,x)
      let Ap = (0, 1.5)
      let Bp = (0, 2.5)
      let Cp = (-1, 2.5)
      line(Ap, Bp, Cp, Ap, stroke: (paint: red, thickness: 0.7pt))
      content(Ap, $A'$, anchor: "east", padding: 3pt)
      content(Bp, $B'$, anchor: "south-east", padding: 3pt)
      content(Cp, $C'$, anchor: "south", padding: 3pt)
      // Rotation center
      circle(O, radius: 0.06, fill: black, stroke: none)
      content(O, $O$, anchor: "north-east", padding: 4pt)
      // Dashed lines from O to A and O to A'
      line(O, A, stroke: (paint: luma(150), thickness: 0.4pt, dash: "dashed"))
      line(O, Ap, stroke: (paint: luma(150), thickness: 0.4pt, dash: "dashed"))
      // Rotation arc at O from A to A' (90°)
      angle(O, A, Ap, label: text(8pt)[$90degree$], radius: 0.9,
            stroke: 0.5pt + blue, direction: "ccw")
    }),
    caption: [旋转：$triangle A'B'C'$ 由 $triangle A B C$ 绕 $O$ 逆时针旋转 $90degree$ 所得]
  )

  *三种变换的共同点*：变换前后图形*全等*——形状和大小都不改变。

  *轴对称 vs 中心对称*

  #table(
    columns: (1fr, 1fr),
    align: left,
    [*轴对称*], [*中心对称*],
    [关于一条*直线*对称], [关于一个*点*对称],
    [对应点连线被对称轴*垂直平分*], [对应点连线被对称中心*平分*],
    [等腰三角形是轴对称但不是中心对称], [平行四边形是中心对称但不是轴对称],
  )

  *综合应用：坐标系中的变换*

  在直角坐标系中，设点 $P(x, y)$：

  - 关于 $x$ 轴对称 $arrow.r$ $P'(x, -y)$
  - 关于 $y$ 轴对称 $arrow.r$ $P'(-x, y)$
  - 关于原点中心对称 $arrow.r$ $P'(-x, -y)$
  - 沿 $x$ 轴正方向平移 $a$ 个单位 $arrow.r$ $P'(x + a, y)$
  - 沿 $y$ 轴正方向平移 $b$ 个单位 $arrow.r$ $P'(x, y + b)$

  *例 1*：点 $A(3, -2)$ 关于 $x$ 轴的对称点是什么？关于原点的对称点呢？

  *解*：关于 $x$ 轴：$A'(3, 2)$。关于原点：$A''(-3, 2)$。

  *例 2*：将 $triangle A B C$ 沿向右方向平移 $4$ 个单位，$A(1, 3)$，$B(4, 1)$，$C(2, 5)$，求平移后的顶点坐标。

  *解*：$A'(1+4, 3) = (5, 3)$，$B'(4+4, 1) = (8, 1)$，$C'(2+4, 5) = (6, 5)$。

  *例 3*：等边三角形有几条对称轴？是中心对称图形吗？

  *解*：$3$ 条对称轴（每条顶点到对边中点的连线）。不是中心对称图形（绕中心旋转 $180 degree$ 后不能与自身重合，但绕中心旋转 $120 degree$ 可以）。
]

#mastery[
  *基础*

  + 判断下列图形是轴对称图形还是中心对称图形（可以都是）：正三角形、平行四边形、矩形、圆、正五边形。
  + 写出点 $P(5, -3)$ 关于 $x$ 轴、$y$ 轴、原点的对称点坐标。
  + 将点 $A(2, 1)$ 沿 $x$ 轴正方向平移 $3$ 个单位，再沿 $y$ 轴正方向平移 $2$ 个单位，求最终坐标。

  *应用*

  + 正方形有几条对称轴？请描述每条对称轴的位置。
  + 在坐标系中，$triangle A B C$ 的顶点为 $A(0, 0)$，$B(4, 0)$，$C(2, 3)$。将三角形关于 $y$ 轴做轴对称变换，求变换后的顶点坐标。
  + 一个风车的四个叶片绕中心旋转 $90 degree$ 后与自身重合。这个风车有几次旋转对称性？

  *挑战*

  + 如图，$A$ 和 $B$ 在直线 $l$ 的同侧。在 $l$ 上找一点 $P$，使 $P A + P B$ 最小。（提示：将 $A$ 关于 $l$ 做轴对称得 $A'$，连 $A' B$ 交 $l$ 于 $P$。）
  + 证明：如果一个图形既是轴对称图形又是中心对称图形，那么对称中心在对称轴上。
  + 在坐标系中，将点 $P(3, 1)$ 绕原点逆时针旋转 $90 degree$，求旋转后的坐标。（提示：$(x, y) arrow.r (-y, x)$）

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + 正三角形：轴对称（3 条对称轴），不是中心对称。平行四边形：中心对称，不是轴对称。矩形：既是轴对称（2 条），也是中心对称。圆：既是轴对称（无数条），也是中心对称。正五边形：轴对称（5 条），不是中心对称。
  + 关于 $x$ 轴：$(5, 3)$；关于 $y$ 轴：$(-5, -3)$；关于原点：$(-5, 3)$。
  + 先平移：$(2+3, 1) = (5, 1)$。再平移：$(5, 1+2) = (5, 3)$。

  *应用*
  + 正方形有 $4$ 条对称轴：连接对边中点的 $2$ 条，连接对角顶点的 $2$ 条（即两条对角线所在直线）。
  + 关于 $y$ 轴对称：$A'(0, 0)$，$B'(-4, 0)$，$C'(-2, 3)$。
  + 旋转 $90 degree$ 重合，一周 $360 degree$ 内共 $4$ 次（$90 degree$、$180 degree$、$270 degree$、$360 degree$），即 $4$ 次旋转对称性（也叫 $4$ 阶旋转对称）。

  *挑战*
  + 将 $A$ 关于 $l$ 做轴对称得 $A'$（$A'$ 与 $A$ 关于 $l$ 对称）。对于 $l$ 上任意一点 $P$，$P A = P A'$（对称性）。所以 $P A + P B = P A' + P B >= A' B$（三角不等式，等号在 $P$ 在线段 $A' B$ 上时成立）。连 $A' B$ 交 $l$ 于 $P_0$，则 $P_0$ 就是使 $P A + P B$ 最小的点。
  + 设对称轴为 $l$，对称中心为 $O$。将 $O$ 关于 $l$ 做轴对称得 $O'$。因为图形关于 $l$ 对称，$O'$ 也是图形的对称中心。但中心对称图形的对称中心是唯一的（它是所有对应点连线的公共中点），所以 $O' = O$，即 $O$ 在 $l$ 上。
  + $(3, 1)$ 绕原点逆时针旋转 $90 degree$：$(x, y) arrow.r (-y, x)$，即 $(3, 1) arrow.r (-1, 3)$。
]
