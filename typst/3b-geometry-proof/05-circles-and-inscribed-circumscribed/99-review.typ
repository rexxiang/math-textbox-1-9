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

  *参考答案*

  + Thales $=>$ $angle A C B = 90 degree$；$angle B A C = 90 degree - 25 degree = 65 degree$。
  + 劣弧 $A B$ 圆心角 $= 108 degree$，其圆周角 $= 54 degree$；优弧圆心角 $= 360 degree - 108 degree = 252 degree$，其圆周角 $= 126 degree$。
  + 斜边 $= sqrt(81 + 144) = 15$；外接圆 $R = 7.5$。面积 $= 54$；$s = 18$；$r = 54 slash 18 = 3$。
  + $R = 4 slash sqrt(3) = 4 sqrt(3) slash 3$；$r = 4 slash (2 sqrt(3)) = 2 sqrt(3) slash 3$；面积 $= sqrt(3) dot 16 slash 4 = 4 sqrt(3)$。
  + 对（将来几何补充证明，可由圆周角定理推出：对边弧相加 $= 360 degree$，对应圆周角相加 $= 180 degree$）；对（三角形三条中垂线交于一点，即外心，且到三顶点等距）；不对（只有*圆内接四边形*才有外接圆，一般四边形未必四点共圆）。
  + 正六边形是 $6$ 个等边三角形拼起来的，所以 $R = a = 2$；由 $R^2 = r^2 + (a slash 2)^2$ 得 $r = sqrt(4 - 1) = sqrt(3)$。✓
  + $angle A = 90 degree$ $=>$ $B C$ 是直径（Thales 逆定理）；$D$ 是 $B C$ 中点即圆心，故 $D A = D B = D C = B C slash 2$。
]

#blueprint[
  *巩固复习*

  - 回看 #secref("ge01-sss-sas")：外心 / 内心的证明依赖全等三角形（中垂线上的点到两端等距）。
  - 回看 #secref("ge02-similarity-aa-ratio")：圆里的弦长比例、相似四边形的相关问题用 AA。
  - 衔接下一章（勾股）：$R^2 = r^2 + (a slash 2)^2$ 就是直角三角形勾股式；Thales 定理让直径对面的角成为 $90 degree$，直接连到勾股。
  - 衔接第 7 章变换（未来章节）：旋转对称作用在正多边形上是对称群最早的例子；圆的旋转对称是连续对称群的最简模型。

  *☞ 高中桥*

  - 圆周角定理是高中《解析几何》中"同弧圆周角""四点共圆"等反复登场的基础。
  - 正 $n$ 边形通用公式 $R = a slash (2 sin(pi slash n))$、$r = a slash (2 tan(pi slash n))$，以及三角形外接圆公式 $R = a b c slash (4 "面积")$ 与海伦公式，都在高中《三角恒等变换》《解三角形》里系统化。本章只用勾股 $R^2 = r^2 + (a slash 2)^2$ 在 $n in {3, 4, 6}$ 上算。
]
