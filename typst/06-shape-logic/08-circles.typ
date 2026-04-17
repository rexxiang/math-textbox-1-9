#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall
#import "../lib/diagram-packages.typ": cetz

== §6.8 圆 <sec-6-8>

#vocab[弦 chord / 弧 arc / 扇形 sector / 圆心角 central angle / 圆周角 inscribed angle / 垂径 perpendicular to a chord]

#crisis[
  为什么车轮是圆的而不是方的？

  想象骑一辆「方轮自行车」——每转过一个角，车身就猛烈颠簸。而圆形车轮上的每一点到圆心的距离都相等，所以轴心（你坐的地方）始终保持同一高度，行驶平稳。

  *圆的这种“处处等距”的性质，还会逼出哪些必然成立的角和线段关系？*
]

#history-note[
  从古代车轮、圆规和天文观测开始，人们很早就意识到：圆不是“看起来圆”，而是“到圆心距离都相等”。这条定义极其强大——一旦每条半径都相等，圆里就会不断冒出等腰三角形，于是角度和长度关系会被锁得很死。
]

#discovery[
  *第一步*：圆的定义。

  在地上钉一根钉子，用一根绳子绑住钉子，绳子另一头绑粉笔。拉紧绳子画一圈——你就画出了一个*圆*。

  *圆*：平面上到定点（*圆心*）距离等于定长（*半径*）的所有点组成的图形。

  记作 $circle.small O$，圆心 $O$，半径 $r$。直径 $d = 2r$。

  *第二步*：圆里的很多问题，其实都在偷偷变成等腰三角形问题。

  任选圆上两点 $A$、$B$，连到圆心 $O$，就得到 $triangle A O B$。因为 $O A = O B = r$，它一定是等腰三角形。

  这很重要：*只要在圆里连半径，你就在制造等腰三角形。*

  *第三步*：弦、弧、圆心角、圆周角。

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

  *第四步*：同一段弧，中心看到的角，和圆周上看到的角，会不会有固定关系？

  如果我们把弧 $A B$ 固定住，再分别从圆心和圆周上去看它，直觉上圆心会“看得更开”，圆周会“看得更窄”。

  这时再连一条半径 $O P$，问题又回到了两个等腰三角形里：$triangle O P A$ 和 $triangle O P B$。圆的角关系，就是这样被一点点逼出来的。
]

#tryit[
  先猜，再证明：

  + 若一条弧所对的圆心角是 $80 degree$，那么同弧所对的圆周角大约是多少？
  + 如果 $A B$ 是直径，点 $P$ 在圆上，你觉得 $angle A P B$ 会是多少？

  把你的猜想记下来，等会儿看能不能用“半径相等”把它们证明出来。
]

#blueprint[
  *一、圆里最常见的秘密：半径一连，就出现等腰三角形*

  圆里最常见的几种对象：

  - 圆心：$O$
  - 半径：$r$
  - 直径：$d = 2r$
  - 弦：连接圆上两点的线段
  - 弧：圆上两点之间的曲线部分
  - 圆心角：顶点在圆心的角
  - 圆周角：顶点在圆上的角

  *二、同圆中，相等的圆心角和相等的弦是绑在一起的*

  在同圆中：

  - 相等的圆心角所对的弦相等
  - 相等的弦所对的圆心角相等

  *证明（圆心角相等 $arrow.r$ 弦相等）*：

  若 $angle A O B = angle C O D$，因为 $O A = O B = O C = O D = r$，所以在 $triangle A O B$ 与 $triangle C O D$ 中，两边和夹角分别相等，故两三角形全等（SAS），从而 $A B = C D$。

  *反过来*，若 $A B = C D$，再加上四条半径都相等，可用 SSS 得到 $angle A O B = angle C O D$。

  *三、圆周角为什么是圆心角的一半？*

  设点 $P$ 在弧 $A B$ 的另一侧，连接 $O P$。记

  $angle A P O = x, quad angle O P B = y$

  那么 $angle A P B = x + y$。

  又因为 $O A = O P$，$O B = O P$，所以 $triangle O P A$ 和 $triangle O P B$ 都是等腰三角形：

  $angle A O P = 180 degree - 2x, quad angle P O B = 180 degree - 2y$

  围绕点 $O$ 的角度总和是 $360 degree$，所以

  $ angle A O B
    &= 360 degree - angle A O P - angle P O B \
    &= 360 degree - (180 degree - 2x) - (180 degree - 2y) \
    &= 2x + 2y \
    &= 2(x + y) \
    &= 2 angle A P B $

  因而得到：

  $ angle_("圆周角") = frac(1, 2) angle_("圆心角") $

  直接推论：

  - 同弧所对的圆周角相等
  - 直径所对的圆周角是直角

  *四、垂直于弦的半径为什么会平分弦？*

  设 $O H perp A B$，其中 $H$ 在弦 $A B$ 上。

  在直角三角形 $triangle O H A$ 和 $triangle O H B$ 中：

  - $O A = O B$（半径相等）
  - $O H = O H$（公共边）
  - $angle O H A = angle O H B = 90 degree$

  所以两三角形全等（HL），从而 $A H = H B$。

  于是我们得到：*垂直于弦的半径平分这条弦。*

  反过来，若一条半径经过弦的中点，也能用全等倒推出它垂直于这条弦。

  *五、弧长与扇形面积来自“占整圆的几分之几”*

  如果圆心角是 $n degree$，它占整圆的比例就是 $frac(n, 360)$。

  所以：

  - 弧长 $l = frac(n, 360) times 2 pi r = frac(n pi r, 180)$
  - 扇形面积 $S_("扇形") = frac(n, 360) pi r^2$

  *例 1*：若弧 $A B$ 所对圆心角为 $80 degree$，求同弧所对圆周角。

  解：圆周角 $= frac(1, 2) times 80 degree = 40 degree$。

  *例 2*：已知 $circle.small O$ 的半径为 $5$，弦 $A B = 8$。求圆心到弦的距离。

  解：过 $O$ 作 $O H perp A B$，则 $A H = frac(1, 2) A B = 4$。在直角三角形 $triangle O H A$ 中，

  $O H = sqrt(O A^2 - A H^2) = sqrt(25 - 16) = 3$

  *例 3*：半径为 $6$ 的圆中，圆心角为 $120 degree$ 的弧长和扇形面积分别是多少？

  解：

  $l = frac(120 pi times 6, 180) = 4 pi$

  $S = frac(120, 360) pi times 6^2 = 12 pi$
]

#pitfall[
  *陷阱 1：圆心角和圆周角别混成一样大。*

  同弧所对的圆周角是圆心角的一半，不是相等。

  *陷阱 2：弧长不等于弦长。*

  弧长是沿着圆弯过去的长度，弦长是直着连过去的长度。除非退化成一个点，否则弧总比对应弦更长。

  *陷阱 3：精确结果尽量保留 $pi$。*

  只有题目要求近似值时，才把 $pi$ 换成 $3.14$ 或计算器结果。
]

#side-hack[
  *看到直径，先想到直角。*

  这是圆里最好用的快捷键之一：如果一条弦是直径，那么圆上任一点看这条弦，看到的一定是 $90 degree$。
]

#mastery[
  *基础*

  + 在 $circle.small O$ 中，$angle A O B = 100 degree$，求弧 $A B$ 所对的圆周角。
  + 若 $A B$ 是直径，点 $P$ 在圆上，求 $angle A P B$。
  + 半径为 $10$ 的圆中，弦 $A B = 16$，求圆心到弦 $A B$ 的距离。
  + 计算半径 $r = 3$、圆心角 $60 degree$ 的弧长和扇形面积。

  *应用*

  + 如图，$A B$ 是 $circle.small O$ 的直径，$C$ 是圆上一点，$angle B A C = 35 degree$。求 $angle B O C$。
  + 已知同圆中两条弦 $A B$、$C D$ 相等，且 $angle A O B = 70 degree$。求 $angle C O D$。
  + 一个圆形花坛半径为 $5$ 米，要沿花坛边修一段对应圆心角 $72 degree$ 的弧形小路。求小路长度。

  *挑战*

  + 证明：同弧所对的圆周角相等。
  + 已知半径为 $5$ 的圆中，一条弦到圆心的距离为 $4$。求这条弦的长度。
  + 在 $circle.small O$ 中，弧 $A B$ 所对圆心角为 $120 degree$。点 $P$ 在大弧 $A B$ 上。求 $angle A P B$。再说明如果点 $Q$ 也在大弧 $A B$ 上，为什么 $angle A Q B$ 也相等。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + 圆周角 $= frac(1, 2) times 100 degree = 50 degree$。
  + $angle A P B = 90 degree$。
  + 过圆心作垂线到弦中点，半弦长为 $8$，所以距离 $= sqrt(10^2 - 8^2) = 6$。
  + 弧长 $l = frac(60 pi times 3, 180) = pi$；扇形面积 $S = frac(60, 360) pi times 9 = frac(3 pi, 2)$。

  *应用*
  + 弧 $B C$ 的圆周角是 $angle B A C = 35 degree$，所以圆心角 $angle B O C = 70 degree$。
  + 同圆中等弦对等圆心角，所以 $angle C O D = 70 degree$。
  + $l = frac(72 pi times 5, 180) = 2 pi approx 6.28$（米）。

  *挑战*
  + 因为同弧所对的圆心角固定，而圆周角总等于该圆心角的一半，所以同弧所对的圆周角都相等。
  + 设弦中点为 $H$，则 $O H = 4$，$O A = 5$。在直角三角形 $triangle O H A$ 中，$A H = sqrt(5^2 - 4^2) = 3$，故弦长 $A B = 2 times 3 = 6$。
  + 因为圆心角是 $120 degree$，所以 $angle A P B = frac(1, 2) times 120 degree = 60 degree$。点 $Q$ 也在同一大弧上，所以它看到的是同一条弧 $A B$，于是 $angle A Q B$ 也等于 $60 degree$。
]

