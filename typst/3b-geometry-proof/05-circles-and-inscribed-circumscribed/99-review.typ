#import "../../lib/theme-v2.typ": blueprint, mastery, secref

== 本章回顾 <meta:circles-and-inscribed-circumscribed>

#blueprint[
  *知识速查卡*

  #table(
    columns: (1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*主题*], [*一句话小结*],
    [圆周角定理], [同弧圆周角 $= 1 slash 2$ 对应圆心角；同弧圆周角彼此相等。],
    [Thales], [直径所对圆周角 $= 90 degree$；反之亦然。],
    [外心 / 内心], [外心 $=$ 中垂线交点，$O A = O B = O C$；内心 $=$ 角平分线交点，$I$ 到三边等距。],
    [面积与内切圆], [三角形面积 $= s r$（$s =$ 半周长）。],
    [正多边形], [内接圆与外接圆同心，$R^2 = r^2 + (a slash 2)^2$。],
  )
]

#mastery[
  *混合自测*

  + $A B$ 是圆 $O$ 直径，$C$ 在圆上，$angle A B C = 25 degree$。求 $angle A C B$ 与 $angle B A C$。
  + 圆 $O$ 中 $angle A O B = 108 degree$。求劣弧 $A B$ 对应的圆周角、优弧 $A B$ 对应的圆周角。
  + 直角三角形两直角边 $9$、$12$。求外接圆半径与内切圆半径。
  + 正三角形边长 $= 4$。求它的外接圆半径、内切圆半径、面积。
  + 下列说法是否正确？简述。
    - "圆内接四边形的对角一定互补。"
    - "任意三角形都有外接圆。"
    - "任意四边形都有外接圆。"
  + 正六边形边长 $= 2$。用 $R$、$r$ 公式核对边心距 $r = sqrt(3)$。
  + 已知 $triangle A B C$ 中 $angle A = 90 degree$，$D$ 是 $B C$ 中点。说明 $D A = D B = D C$，即 $D$ 是外接圆圆心。
  // 跨章回顾
  + 用全等三角形（#secref("ge01-sss-sas")）证明：圆的同一条弦的两条半径与弦组成的三角形是等腰三角形。
  // 跨章回顾
  + 在圆中，若弦 $A B$ 经过圆心，则 $angle A C B = 90 degree$（泰勒斯定理）。利用三角形内角和（#secref("pf08-triangles-angle-sum")）求当 $angle C A B = 35 degree$ 时 $angle A B C$ 的度数。
  + 不用精确计算，判断：一个半径为 $5$ 的圆的内接正三角形的边长是否大于 $8$？说明理由。  // 跨章回顾
  + 已知圆的半径 $r$ cm，面积 $= pi r^2$，周长 $= 2 pi r$（回顾 #secref("pf07-perimeter-area") 圆的公式）。若圆的面积等于周长的 $5$ 倍（$pi r^2 = 5 times 2 pi r$），用一元方程（回顾 #secref("al04-linear-one-variable")）求 $r$。
  // 跨章回顾：勾股定理求弦长
  + 圆 $O$ 的半径 $= 5$，弦 $A B$ 到圆心 $O$ 的距离（即 $O$ 到 $A B$ 的垂线段长）$= 3$。利用勾股定理（回顾 #secref("ge04-pythagorean")）求弦长 $A B$。提示：连 $O A$ 得直角三角形，斜边 $= R$，一条直角边 $=$ 弦心距，另一条 $= A B slash 2$。
]

==== 参考答案

+ Thales $=>$ $angle A C B = 90 degree$；$angle B A C = 90 degree - 25 degree = 65 degree$。
+ 劣弧 $A B$ 圆心角 $= 108 degree$，其圆周角 $= 54 degree$；优弧圆心角 $= 360 degree - 108 degree = 252 degree$，其圆周角 $= 126 degree$。
+ 斜边 $= sqrt(81 + 144) = 15$；外接圆 $R = 7.5$。面积 $= 54$；$s = 18$；$r = 54 slash 18 = 3$。
+ $R = 4 slash sqrt(3) = 4 sqrt(3) slash 3$；$r = 4 slash (2 sqrt(3)) = 2 sqrt(3) slash 3$；面积 $= sqrt(3) dot 16 slash 4 = 4 sqrt(3)$。
+ 对（将来几何补充证明，可由圆周角定理推出：对边弧相加 $= 360 degree$，对应圆周角相加 $= 180 degree$）；对（三角形三条中垂线交于一点，即外心，且到三顶点等距）；不对（只有*圆内接四边形*才有外接圆，一般四边形未必四点共圆）。
+ 正六边形是 $6$ 个等边三角形拼起来的，所以 $R = a = 2$；由 $R^2 = r^2 + (a slash 2)^2$ 得 $r = sqrt(4 - 1) = sqrt(3)$。✓
+ $angle A = 90 degree$ $=>$ $B C$ 是直径（Thales 逆定理）；$D$ 是 $B C$ 中点即圆心，故 $D A = D B = D C = B C slash 2$。
+ 设弦为 $A B$，圆心为 $O$，则 $O A = O B = R$（都是半径）。$triangle O A B$ 中 $O A = O B$，所以它是等腰三角形。
+ $angle A C B = 90 degree$（泰勒斯定理）；$angle C A B + angle A B C = 90 degree$（三角形内角和）；$angle A B C = 90 degree - 35 degree = 55 degree$。
+ 内接正三角形边长 $= R sqrt(3) = 5 sqrt(3) approx 5 times 1.732 = 8.66 > 8$。所以边长大于 $8$。估算时只需知道 $sqrt(3) approx 1.73$。
+ $pi r^2 = 10 pi r$；除以 $pi r$（$r > 0$）得 $r = 10$ cm。（参见 #secref("pf07-perimeter-area") 与 #secref("al04-linear-one-variable")）
+ 设 $M$ 为 $O$ 到 $A B$ 的垂足，则 $A M = A B slash 2$。在直角 $triangle O M A$ 中：$O A = 5$（半径，斜边），$O M = 3$（弦心距）。由勾股定理 $A M = sqrt(5^2 - 3^2) = sqrt(16) = 4$，所以 $A B = 2 times 4 = 8$。（参见 #secref("ge04-pythagorean")）

#blueprint[
  *巩固复习*

  - 回看 #secref("ge01-sss-sas")：外心 / 内心的证明依赖全等三角形（中垂线上的点到两端等距）。
  - 回看 #secref("ge02-similarity-aa-ratio")：圆里的弦长比例、相似四边形的相关问题用 AA。
  - 衔接下一章（勾股）：$R^2 = r^2 + (a slash 2)^2$ 就是直角三角形勾股式；Thales 定理让直径对面的角成为 $90 degree$，直接连到勾股。
  - 衔接第 7 章变换（未来章节）：旋转对称作用在正多边形上是对称群最早的例子；圆的旋转对称是连续对称群的最简模型。

  *☞ 高中桥*

  _以下是预告，现在看不懂完全正常 — 等到高中再回来。_

  - 圆周角定理是高中《解析几何》中"同弧圆周角""四点共圆"等反复登场的基础。
  - 正 $n$ 边形通用公式 $R = a slash (2 sin(pi slash n))$、$r = a slash (2 tan(pi slash n))$，以及三角形外接圆公式 $R = a b c slash (4 "面积")$ 与海伦公式，都在高中《三角恒等变换》《解三角形》里系统化。本章只用勾股 $R^2 = r^2 + (a slash 2)^2$ 在 $n in {3, 4, 6}$ 上算。
]
