#import "../../lib/theme-v2.typ": blueprint, mastery, secref

== 本章回顾 <meta:quadrilateral-family>

#blueprint[
  *知识速查卡*

  #table(
    columns: (1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*主题*], [*一句话小结*],
    [四边形内角和], [任意四边形 $= 360 degree$。],
    [平行四边形性质], [对边平行 $+$ 对边相等 $+$ 对角相等 $+$ 对角线互相平分。],
    [平行四边形判定], [两对边平行 $|$ 两对边相等 $|$ 一对对边平行且相等 $|$ 两对角相等 $|$ 对角线互相平分。],
    [矩形], [平行四边形 $+$ 一角直角；对角线相等。],
    [菱形], [平行四边形 $+$ 邻边相等；对角线互相垂直。],
    [正方形], [既矩又菱；四角直角 $+$ 四边相等 $+$ 对角线相等且互相垂直平分。],
    [等腰梯形], [两腰相等；两底角相等；对角线相等。],
  )
]

#mastery[
  *混合自测*

  + 下列四边形是不是平行四边形？
    - 两组对角分别相等
    - 一组对边平行、另一组对边相等
    - 对角线互相平分
    - 一组对边平行且相等
  + 矩形 $A B C D$ 中 $A B = 3$、$B C = 4$。求对角线长度与两对角线交点到各顶点的距离。
  + 菱形 $A B C D$ 中 $angle A = 60 degree$、$A B = 6$。求较短的那条对角线长。
  + $square A B C D$ 是平行四边形，且 $A C = B D$。判断它是什么特殊四边形。
  + 下列说法是否正确？简述。
    - "所有矩形都是正方形。"
    - "所有正方形都是矩形。"
    - "所有菱形都是平行四边形。"
  + 等腰梯形两底分别为 $4$ 和 $10$，腰长为 $5$。作高，求梯形的高。
  // 跨章回顾
  + 用全等三角形（#secref("ge01-sss-sas")）证明：平行四边形的对角线互相平分。（提示：找两对全等三角形。）
  // 跨章回顾
  + 一个四边形四个内角之和等于 $360 degree$（#secref("pf08-triangles-angle-sum") 的推论）。若平行四边形一个角是 $70 degree$，求其余三个角。
  // 跨章回顾
  + 矩形长 $a$ 厘米、宽 $b$ 厘米，对角线 $= sqrt(a^2 + b^2)$（回顾 #secref("ge04-pythagorean") 勾股定理）。若 $a + b = 14$ cm、对角线 $= 10$ cm，先用完全平方公式（回顾 #secref("al02-special-identities")）由 $(a + b)^2 = a^2 + 2 a b + b^2$ 求出 $a b$，再列一元二次方程（回顾 #secref("al05-quadratic-solving")）求 $a$ 和 $b$。

]

==== 参考答案

+ 是（两对角相等判定）；不是（两个条件独立，不足以判定）；是（对角线互相平分判定）；是（一组对边平行且相等判定）。
+ 对角线 $= sqrt(9 + 16) = 5$。矩形对角线互相平分且相等 $=>$ 交点到四顶点都 $= 5 slash 2$。
+ $angle A = 60 degree$，$triangle A B D$ 是等边（$A B = A D$、$angle A = 60 degree$），故 $B D = 6$（这是较短对角线）。
+ 平行四边形 $+$ 对角线相等 $=>$ 矩形。
+ 错（矩形不一定四边相等）；对（正方形是邻边相等的矩形）；对（菱形是四边相等的平行四边形）。
+ 作高后底边多出的部分 $= (10 - 4) slash 2 = 3$，高 $= sqrt(5^2 - 3^2) = sqrt(16) = 4$。
+ 设平行四边形 $A B C D$，对角线 $A C$ 与 $B D$ 交于 $O$。在 $triangle A O B$ 与 $triangle C O D$ 中：$A B = C D$（平行四边形对边相等）；$angle O A B = angle O C D$（$A B parallel C D$，内错角）；$angle A O B = angle C O D$（对顶角）。由 ASA 得 $triangle A O B tilde.eq triangle C O D$，故 $O A = O C$、$O B = O D$——即对角线互相平分。
+ 平行四边形对角相等，所以对角也是 $70 degree$；邻角互补，$180 degree - 70 degree = 110 degree$。四个角为 $70 degree$、$110 degree$、$70 degree$、$110 degree$。
+ $a + b = 14$，$a^2 + b^2 = 100$。由完全平方公式 $(a + b)^2 = a^2 + 2 a b + b^2 = 196$，得 $2 a b = 196 - 100 = 96$，$a b = 48$。联立 $a + b = 14$、$a b = 48$，由韦达定理 $a, b$ 是一元二次方程 $t^2 - 14 t + 48 = 0$ 的两根；分解 $(t - 6)(t - 8) = 0$，得 $t = 6$ 或 $t = 8$。故 $a = 8, b = 6$（或反之）。验算：$sqrt(64 + 36) = 10$ ✓。（参见 #secref("ge04-pythagorean")、#secref("al02-special-identities") 与 #secref("al05-quadratic-solving")）

#blueprint[
  *巩固复习*

  - 回看 #secref("ge01-sss-sas")：矩形 / 菱形的很多"对角线相关性质"都落到一对全等三角形。
  - 回看 #secref("ge02-similarity-aa-ratio")：梯形 / 相似四边形的相关问题用 AA。
  - 衔接 #secref("ch:circles-and-inscribed-circumscribed")：圆内接四边形的对角互补，是四边形继承树的一条侧枝延伸。
  - 衔接 #secref("ch:pythagorean-radicals-trigonometric-ratios")：矩形对角线 $= sqrt(a^2 + b^2)$ 就是勾股定理。

  *☞ 高中桥*

  _以下是预告，现在看不懂完全正常 — 等到高中再回来。_

  - 四边形继承树是后续*平面向量*"平行四边形法则"的几何根。
  - 正多边形的性质（外接圆、内切圆）在下一章"圆与内接外切"里正式展开。
]
