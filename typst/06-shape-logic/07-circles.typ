#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall
#import "../lib/diagram-packages.typ": cetz

== §6.7 圆 <sec-6-7>

#vocab[弦 chord / 弧 arc / 切线 tangent / 扇形 sector / 圆心角 central angle / 圆周角 inscribed angle]

#crisis[
  为什么车轮是圆的而不是方的？

  想象骑一辆「方轮自行车」——每转过一个角，车身就猛烈颠簸。而圆形车轮上的每一点到圆心的距离都相等，所以轴心（你坐的地方）始终保持同一高度，行驶平稳。

  *圆的这种「处处等距」的性质，还会带来哪些奇妙的定理？*
]

#history-note[
  *$pi$ 的追逐*：圆周率 $pi$ 是圆的周长与直径之比。古巴比伦人用 $3$ 或 $frac(25, 8) = 3.125$；古埃及人用 $frac(256, 81) approx 3.16$。阿基米德（约公元前 250 年）用正 96 边形逼近圆，得到 $frac(223, 71) < pi < frac(22, 7)$，即 $3.1408 < pi < 3.1429$。中国数学家祖冲之（公元 5 世纪）将精度推进到小数点后第 7 位：$3.1415926 < pi < 3.1415927$，给出密率 $frac(355, 113)$，领先世界约一千年。
]

#discovery[
  *第一步*：圆的定义。

  在地上钉一根钉子，用一根绳子绑住钉子，绳子另一头绑粉笔。拉紧绳子画一圈——你就画出了一个*圆*。

  *圆*：平面上到定点（*圆心*）距离等于定长（*半径*）的所有点组成的图形。

  记作 $circle.small O$，圆心 $O$，半径 $r$。直径 $d = 2r$。

  *第二步*：圆里的线段和弧。

  - *弦*：连接圆上两点的线段。经过圆心的弦叫*直径*——它是最长的弦。
  - *弧*：圆上两点之间的曲线部分。半圆是直径所对的弧。小于半圆的叫*劣弧*，大于半圆的叫*优弧*。
  - *圆心角*：顶点在圆心的角。
  - *圆周角*：顶点在圆上、两边与圆相交的角。

  #figure(
    cetz.canvas(length: 2.5cm, {
      import cetz.draw: *
      import cetz.angle: angle
      let O = (0, 0)
      let r = 1.8
      // Circle
      circle(O, radius: r, stroke: 0.7pt)
      // Center
      circle(O, radius: 0.04, fill: black, stroke: none)
      content(O, $O$, anchor: "north-east", padding: 3pt)
      // Point A at 0° (rightmost)
      let A = (r, 0)
      // Point B at about 110°
      let B = (r * calc.cos(110deg), r * calc.sin(110deg))
      // Radius OA (blue)
      line(O, A, stroke: (paint: blue, thickness: 0.7pt))
      content(((O.at(0)+A.at(0))/2, -0.22), text(8pt, fill: blue)[$r$])
      // Chord AB (red)
      line(A, B, stroke: (paint: red, thickness: 0.7pt))
      content(((A.at(0)+B.at(0))/2 + 0.1, (A.at(1)+B.at(1))/2 + 0.2),
              text(8pt, fill: red)[弦 $A B$])
      // Diameter CD (green): C at 80°, D at 260°
      let C_pt = (r * calc.cos(80deg), r * calc.sin(80deg))
      let D_pt = (r * calc.cos(260deg), r * calc.sin(260deg))
      line(C_pt, D_pt, stroke: (paint: green, thickness: 0.7pt))
      // Central angle ∠AOB (purple)
      angle(O, A, B, label: text(7pt, fill: purple)[圆心角], radius: 0.5,
            stroke: 0.5pt + purple, direction: "near", label-radius: 160%)
      line(O, B, stroke: (paint: purple, thickness: 0.5pt))
      // Inscribed angle ∠EAB (orange): inscribed angle at E on arc AB (other side)
      // E at about 320° (lower arc, opposite side from B)
      let E = (r * calc.cos(320deg), r * calc.sin(320deg))
      line(E, A, stroke: (paint: orange, thickness: 0.5pt, dash: "dashed"))
      line(E, B, stroke: (paint: orange, thickness: 0.5pt, dash: "dashed"))
      angle(E, A, B, label: text(7pt, fill: orange)[圆周角], radius: 0.45,
            stroke: 0.5pt + orange, direction: "near", label-radius: 160%)
      // Labels
      content(A, $A$, anchor: "west", padding: 4pt)
      content(B, $B$, anchor: "south-east", padding: 3pt)
      content(C_pt, $C$, anchor: "south-east", padding: 3pt)
      content(D_pt, $D$, anchor: "north-west", padding: 3pt)
      content(E, $E$, anchor: "north-west", padding: 3pt)
    }),
    caption: [圆的基本元素：圆心 $O$，半径 $r$（蓝），弦 $A B$（红），直径 $C D$（绿），圆心角（紫），圆周角（橙）]
  )
]

#tryit[
  先自己算一算，再看蓝图中的公式：

  一个圆的半径 $r = 5$，求：

  + 圆的面积（用 $pi$ 表示，再取 $pi approx 3.14$ 求近似值）
  + 圆的周长（用 $pi$ 表示，再取 $pi approx 3.14$ 求近似值）

  注意：面积和周长的公式容易搞混，先凭记忆写，写完再核对。
]

#blueprint[
  *垂径定理*

  垂直于弦的直径平分这条弦，且平分弦所对的两条弧。

  反过来：平分弦（非直径）的直径垂直于该弦。

  *圆心角定理*

  在同圆（或等圆）中，相等的圆心角所对的弧相等、所对的弦相等。反过来也成立。

  *圆周角定理*

  *一条弧所对的圆周角等于它所对的圆心角的一半。*

  $ angle_("圆周角") = frac(1, 2) angle_("圆心角") $

  推论：
  - 同弧（或等弧）所对的圆周角相等
  - *半圆（直径）所对的圆周角是直角*（$90 degree$）。反过来：$90 degree$ 的圆周角所对的弦是直径。

  *弧长与扇形面积*

  设圆心角为 $n degree$，半径为 $r$：

  - *弧长*：$l = frac(n pi r, 180)$
  - *扇形面积*：$S_("扇形") = frac(n pi r^2, 360) = frac(1, 2) l r$

  *直线与圆的位置关系*

  设圆心 $O$ 到直线 $l$ 的距离为 $d$，圆的半径为 $r$：

  #table(
    columns: (auto, auto, auto),
    align: left,
    [*位置关系*], [*交点数*], [*条件*],
    [相离], [0], [$d > r$],
    [相切], [1], [$d = r$],
    [相交], [2], [$d < r$],
  )

  #figure(
    cetz.canvas(length: 1.6cm, {
      import cetz.draw: *
      import cetz.angle: right-angle
      let r = 0.7
      // Left: 相离 (d > r), centered at x=1
      {
        let O = (1, 0)
        circle(O, radius: r, stroke: 0.7pt)
        line((0, -1.3), (2, -1.3), stroke: 0.7pt)
        content((1, -1.7), text(8pt)[相离 ($d > r$)])
        line(O, (1, -1.3), stroke: (paint: luma(150), thickness: 0.5pt, dash: "dashed"))
        content((1.2, -0.65), text(7pt, fill: luma(100))[$d$])
      }
      // Middle: 相切 (d = r), centered at x=4
      {
        let O = (4, 0)
        circle(O, radius: r, stroke: 0.7pt)
        let T = (4, -r)
        line((2.7, -r), (5.3, -r), stroke: 0.7pt)
        circle(T, radius: 0.04, fill: black, stroke: none)
        right-angle(T, O, (5.3, -r), stroke: 0.4pt)
        content((4, -1.7), text(8pt)[相切 ($d = r$)])
      }
      // Right: 相交 (d < r), centered at x=7
      {
        let O = (7, 0)
        circle(O, radius: r, stroke: 0.7pt)
        line((5.8, -0.4), (8.2, -0.4), stroke: 0.7pt)
        content((7, -1.7), text(8pt)[相交 ($d < r$)])
      }
    }),
    caption: [直线与圆的三种位置关系]
  )

  *切线*：与圆只有一个公共点的直线。切点处切线与半径垂直。

  *切线的判定*：经过半径的外端且垂直于这条半径的直线是圆的切线。

  *切线的性质*：圆的切线垂直于经过切点的半径。

  *例 1*：在 $circle.small O$ 中，圆心角 $angle A O B = 80 degree$。求弧 $A B$ 所对的圆周角。

  *解*：圆周角 $= frac(1, 2) times 80 degree = 40 degree$。

  *例 2*：半径为 $6$ 的圆中，圆心角为 $120 degree$ 的扇形面积是多少？

  *解*：$S = frac(120 times pi times 6^2, 360) = frac(120 times 36 pi, 360) = 12 pi$。

  *例 3*：圆的半径 $r = 5$，弦 $A B = 8$。求圆心到弦 $A B$ 的距离。

  *解*：由垂径定理，过圆心 $O$ 作 $O H perp A B$，则 $A H = frac(1, 2) A B = 4$。在直角 $triangle O H A$ 中，$O H = sqrt(O A^2 - A H^2) = sqrt(25 - 16) = 3$。
]

#pitfall[
  *陷阱 1*：圆的周长公式是 $C = 2 pi r$（或 $pi d$），面积公式是 $S = pi r^2$。两者容易混淆——面积有「$r^2$」，周长只有「$r$」。

  *陷阱 2*：$pi$ 是无理数，$3.14$ 只是近似值。精确计算结果要写 $pi$（如 $25 pi$），只有题目要求「取 $pi approx 3.14$」时才代入近似值。

  *陷阱 3*：弧长 $!=$ 弦长。弧长是圆上两点之间的曲线长度，弦长是连接两点的直线长度，弧长 $>$ 弦长（弯路比直路长）。
]

#side-hack[
  *直径所对的圆周角是 $90 degree$* ——这是圆中最常用的结论之一。看到直径，立刻想到直角！反过来，看到圆上一点对某条弦形成 $90 degree$ 角，这条弦一定是直径。
]

#mastery[
  *基础*

  + 在 $circle.small O$ 中，$angle A O B = 100 degree$，求弧 $A B$ 所对的圆周角。
  + 半径为 $10$ 的圆中，弦 $A B = 16$，求圆心到 $A B$ 的距离。
  + 计算半径 $r = 3$、圆心角 $60 degree$ 的弧长和扇形面积。

  *应用*

  + 如图，$A B$ 是 $circle.small O$ 的直径，$C$ 是圆上一点，$angle B A C = 35 degree$。求 $angle B O C$。
  + 一个圆形花坛的半径为 $5$ 米，现在要沿着花坛边修一段弧形小路，对应的圆心角为 $72 degree$，求小路的长度。
  + 圆心 $O$ 到直线 $l$ 的距离为 $7$，圆的半径为 $5$。判断直线与圆的位置关系。

  *挑战*

  + 如图，$A B$ 是 $circle.small O$ 的直径，$P A$ 是 $circle.small O$ 的切线，$A$ 是切点，$P B$ 与圆交于点 $C$。若 $angle P = 40 degree$，求 $angle A B C$。
  + 两个同心圆的半径分别为 $3$ 和 $5$。大圆的一条弦恰好是小圆的切线。求这条弦的长度。
  + 证明：圆的切线垂直于经过切点的半径。（提示：反证法。假设切线与半径不垂直，则圆心到直线的距离小于半径，直线与圆相交，矛盾。）

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + 圆周角 $= frac(1, 2) times 100 degree = 50 degree$
  + $O H = sqrt(10^2 - 8^2) = sqrt(100 - 64) = sqrt(36) = 6$
  + 弧长 $l = frac(60 times pi times 3, 180) = pi$。扇形面积 $S = frac(60 times pi times 9, 360) = frac(3 pi, 2)$。

  *应用*
  + $A B$ 是直径，所以 $angle A C B = 90 degree$（直径所对的圆周角）。$angle A B C = 90 degree - 35 degree = 55 degree$。$angle B O C$ 是弧 $B C$ 的圆心角，弧 $B C$ 的圆周角是 $angle B A C = 35 degree$，所以 $angle B O C = 2 times 35 degree = 70 degree$。
  + $l = frac(72 times pi times 5, 180) = 2 pi approx 6.28$（米）
  + $d = 7 > r = 5$，直线与圆相离。

  *挑战*
  + $P A$ 是切线，$A B$ 是直径，所以 $angle P A B = 90 degree$（切线 $perp$ 经过切点的半径）。在 $triangle P A B$ 中，$angle A B P = 180 degree - 90 degree - 40 degree = 50 degree$。因为 $C$ 在线段 $P B$ 上（$P B$ 与圆的另一个交点），$angle A B C$ 与 $angle A B P$ 是同一个角。所以 $angle A B C = 50 degree$。
  + 设弦为 $A B$，小圆切点 $H$，则 $O H perp A B$，$O H = 3$（小圆半径），$O A = 5$（大圆半径）。$A H = sqrt(5^2 - 3^2) = 4$。$A B = 2 times 4 = 8$。
  + 假设切线 $l$ 过切点 $T$ 与半径 $O T$ 不垂直。则 $O$ 到 $l$ 的距离 $d < O T = r$。由 $d < r$，直线 $l$ 与圆有两个交点，与「切线只有一个公共点」矛盾。故切线垂直于经过切点的半径。
]

=== 正多边形与圆

#blueprint[
  正 $n$ 边形可以内接于一个圆。此时每条边对应的圆心角为 $frac(360 degree, n)$。

  - 正三角形内接于圆（即圆是正三角形的*外接圆*）：边长 $a$，外接圆半径 $R = frac(a sqrt(3), 3)$
  - 正六边形内接于圆：边长 = 外接圆半径 $R$（因为 $frac(360 degree, 6) = 60 degree$，每个三角形都是等边三角形）
  - 当 $n$ 越来越大，正多边形越来越接近圆。这也解释了为什么圆面积 $= pi r^2$：正多边形面积 $approx frac(1, 2) times$ 周长 $times$ 边心距，极限就是 $frac(1, 2) times 2 pi r times r = pi r^2$。
]

=== 圆与圆的位置关系

#blueprint[
  两个*不重合*的圆，其位置关系由*圆心距* $d$ 与*两圆半径* $R$、$r$（$R >= r$）决定：

  #table(
    columns: (1fr, 1fr, 1fr),
    align: left,
    [*位置关系*], [*条件*], [*公切线条数*],
    [外离], [$d > R + r$], [4 条],
    [外切], [$d = R + r$], [3 条],
    [相交], [$R - r < d < R + r$], [2 条],
    [内切], [$d = R - r > 0$（即 $R > r$）], [1 条],
    [内含（含同心）], [$0 <= d < R - r$（即 $R > r$）], [0 条],
  )

  特别地，$d = 0$ 且 $R != r$ 时两圆*同心*（内含的极端情况）；$d = 0$ 且 $R = r$ 时两圆*重合*，不属于上述五种位置关系。
]

=== 课外一瞥：圆幂定理

#side-hack[
  *高中/竞赛预告*：下面内容超出本册要求，这里只做认识，不要求记忆统一表述。

  *圆幂*是一个统一三个经典定理的优美概念。

  设圆 $O$ 的半径为 $r$，点 $P$ 到圆心的距离为 $d$。定义*圆幂*为 $d^2 - r^2$。

  *定理 1（相交弦定理）*：两弦 $A B$ 和 $C D$ 交于圆内一点 $P$，则
  $ P A dot P B = P C dot P D $

  *定理 2（割线定理）*：从圆外一点 $P$ 引两条割线，分别交圆于 $A, B$ 和 $C, D$，则
  $ P A dot P B = P C dot P D $

  *定理 3（切割线定理）*：从圆外一点 $P$ 引切线切于 $T$，割线交圆于 $A, B$，则
  $ P T^2 = P A dot P B $

  这三个定理可以放在同一个框架里理解；更完整的统一表述会用到后续课程中的工具，这里先不展开。

  *例*：圆内两弦 $A B$ 和 $C D$ 交于点 $P$，$P A = 3$，$P B = 8$，$P C = 4$。求 $P D$。

  解：$P A dot P B = P C dot P D$，$3 times 8 = 4 times P D$，$P D = 6$。
]
