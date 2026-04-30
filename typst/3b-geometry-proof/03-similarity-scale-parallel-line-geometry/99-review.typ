#import "../../lib/theme-v2.typ": blueprint, mastery, secref, knowledge-card

== 本章回顾 <meta:similarity-scale-parallel-line-geometry>

#knowledge-card(title: "知识速查卡")[
    #table(
    columns: (1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*主题*], [*一句话小结*],
    [平行线三对角关系], [$l_1 parallel l_2$ 被截 $=>$ 同位角相等、内错角相等、同旁内角互补。],
    [相似的语言], [$triangle A B C tilde triangle D E F$ 表示三角对应相等 $+$ 三边对应成比例；字母顺序锁住对应。],
    [AA 判定], [两角对应相等 $=>$ 两三角形相似（初中最常用的相似判定法；本章只立这一条判据）。],
    [相似比 $k$], [对应边比 $= k$；周长比 $= k$。],
    [放缩规律口诀], [长度比 $= k$，面积比 $= k^2$，体积比 $= k^3$。],
    [比例尺 $1 : n$], [$k = n$；图长 $->$ 实长乘 $n$；图面积 $->$ 实面积乘 $n^2$。],
    [影长测高], [同一时刻阳光方向一致，所有“物体 $+$ 影子”直角三角形彼此相似。],
  )
]

#mastery[
  *混合自测*

  + 图中 $l_1 parallel l_2$，截线 $t$ 与它们相交于 $A$、$B$。若 $angle 1 = 72 degree$（位于 $A$ 处上方右侧），求 $B$ 处四个角（同位、内错、同旁内角）。
  + 两条平行直线被一条截线所截，一对同旁内角的度数比为 $2 : 3$。求这对同旁内角。
  + 下列条件能否判定 $triangle A B C tilde triangle D E F$？写出判据或理由。
    - $angle A = angle D$、$angle B = angle E$
    - $angle A = angle D$（只给一对角相等）
    - $angle A = angle E$、$angle B = angle D$
  + 若 $triangle A B C tilde triangle A' B' C'$，相似比 $= 3 slash 5$。已知 $triangle A B C$ 周长 $18$、面积 $12$。求 $triangle A' B' C'$ 的周长与面积。
  + 比例尺 $1 : 40000$ 的地图上，一块图示为 $5$ 厘米 $times$ $4$ 厘米的长方形地，实际面积多少平方千米？
  + 同一时刻，直立标杆 $1.2$ 米影长 $1.6$ 米；旗杆影长 $12$ 米。求旗杆高。
  + $triangle A B C$ 中 $D E parallel B C$，$D$ 在 $A B$ 上、$E$ 在 $A C$ 上。若 $A D slash D B = 2 slash 3$，求 $D E slash B C$ 与 $triangle A D E$ 与 $triangle A B C$ 的面积比。
  + 说明“AA 为什么足以判相似”——为什么两角定了就连边比也跟着定？用一句话。
  + 两个相似三角形面积比 $9 : 49$。求它们的相似比与周长比。
  + 一个立方体金属块熔铸成相似的小立方体，每条棱是原来的 $1 slash 4$。问可以熔出多少个小立方体？
  // 跨章回顾
  + 两三角形全等（#secref("ge01-congruence-correspondence")）是相似比 $= 1$ 的特殊情况。已知 $triangle A B C tilde triangle D E F$，且对应边之比为 $1 : 1$，说明为什么它们一定全等。（涉及 #secref("ge01-congruence-correspondence") + #secref("ge02-similarity-aa-ratio")）
  // 跨章回顾
  + 利用比和比例的基本性质（#secref("cb01-ratio-basics")），化简比 $12 : 8 : 20$ 为最简整数比，然后说明一个三角形三边之比为 $3 : 2 : 5$ 是否可能构成三角形。
  + 在 $triangle A B C$ 中，$D E parallel B C$，$A D = 2, D B = 4, A E = 3$。求 $E C$。用两种方法：(1) 平行线截比例定理；(2) 相似三角形对应边成比例。比较两种做法。
  // 跨章回顾
  + 在坐标系中（回顾 #secref("cb04-rectangular-system")），$triangle A B C$ 顶点 $A(0,0)$，$B(3,0)$，$C(0,4)$；$triangle D E F$ 顶点 $D(0,0)$，$E(6,0)$，$F(0,8)$。用 AA 判据（本章 #secref("ge02-similarity-aa-ratio")）说明 $triangle A B C tilde triangle D E F$，并求相似比及 $A B : D E$（回顾 #secref("cb01-proportion")）。
]

==== 参考答案

+ 同位角 $= 72 degree$、内错角 $= 72 degree$、同旁内角 $= 108 degree$、邻补角 $= 108 degree$（另两个对顶角分别为 $72 degree$ 与 $108 degree$）。
+ 设两同旁内角度数为 $2 k degree$ 与 $3 k degree$；由同旁内角互补 $2 k + 3 k = 180$，得 $k = 36$，两角为 $72 degree$ 与 $108 degree$。
+ `AA` ✓；不够（只一对角相等，形状未锁）；两对角相等但对应关系错位——若重排字母写作 $triangle A B C tilde triangle E D F$ 则合法，直接写 $triangle A B C tilde triangle D E F$ 不对。
+ 周长比 $= 3 slash 5$，故 $triangle A' B' C'$ 周长 $= 18 times 5 slash 3 = 30$；面积比 $= 9 slash 25$，故面积 $= 12 times 25 slash 9 = 100 slash 3$。
+ 图面积 $20$ 平方厘米；$k^2 = 40000^2 = 1.6 times 10^9$；实际面积 $= 3.2 times 10^{10}$ 平方厘米 $= 3.2$ 平方千米。
+ $frac(h, 1.2) = frac(12, 1.6) => h = 9$ 米。
+ $D E parallel B C => triangle A D E tilde triangle A B C$（AA）；$A D slash A B = 2 slash 5$，故 $D E slash B C = 2 slash 5$；面积比 $= 4 slash 25$。
+ 三角形内角和 $= 180 degree$，两角定了第三角也定了；形状一旦定，三边的比就随之唯一（相当于把一个三角形缩放到另一个的大小），所以 AA 已足以判相似。
+ 相似比 $= sqrt(9 slash 49) = 3 slash 7$；周长比亦 $= 3 slash 7$。
+ 体积比 $= (1 slash 4)^3 = 1 slash 64$，原体积 $= $ 单位体积，故可熔 $64$ 个小立方体。
+ 相似比 $= 1$ 意味着对应边长度全部相等（每条边比值为 $1 : 1$）；再加上三角对应相等（相似保证），三对边与三对角全部对应相等，恰好就是全等的定义。
+ $12 : 8 : 20$ 各除以公因数 $4$ 得 $3 : 2 : 5$。但最短两边之和 $3 + 2 = 5$ 等于（不大于）最长边，违反三角形三边关系"任意两边之和*大于*第三边"——所以*不能*构成三角形。
+ *方法 1*（平行线截比例）：$A D / D B = A E / E C$，即 $2/4 = 3/(E C)$，$E C = 6$。*方法 2*（相似比）：$triangle A D E tilde triangle A B C$（AA），相似比 $A D / A B = 2/6 = 1/3$，$A E / A C = 1/3$，$A C = 9$，$E C = 9 - 3 = 6$。两种方法结果一致，方法 1 更直接。
+ $triangle A B C$ 和 $triangle D E F$ 均有 $angle A = angle D = 90°$（坐标轴直角），$angle B = angle E$（两直角三角形另外两个锐角对应相等）。AA 成立，$triangle A B C tilde triangle D E F$。相似比 $A B : D E = 3 : 6 = 1 : 2$；用比例验算：$A C : D F = 4 : 8 = 1 : 2$ ✓。（参见 #secref("ge02-similarity-aa-ratio") 与 #secref("cb01-proportion")）

#blueprint[
  *巩固复习*

  - 回看 #secref("ge01-congruence-correspondence")：全等是相似比 $k = 1$ 的特例；本章把锁形锁大小松开成只锁形。
  - 回看 #secref("cb01-ratio-basics")：反比、合比、分比在相似里被频繁使用；化简不熟会卡在“读不出 $D E slash B C$”。
  - 衔接 #secref("pf08-coordinate-intuition") 与坐标几何：相似 $=>$ “点 $P$ 关于原点位似为 $P'$，坐标乘 $k$”是后续解析几何里向量 / 位似变换的几何根。
  - 衔接 3c 域函数：正比例函数 $y = k x$ 的图像——输入按 $lambda$ 放缩、输出按 $lambda$ 同步放缩——就是一维的相似。

  *☞ 高中桥*

  这只是向前看的预告，不作为后续主线先修。

  _以下是预告，现在看不懂完全正常 — 等到高中再回来。_

  - 向量：位似变换 $arrow.r.bar k overline(O P)$ 把所有相似关系代数化。
  - 平面几何：相似三角形 $+$ 直角三角形被高分两半是勾股定理、射影定理的通用证明路线。
  - 解析几何：仿射变换保留平行与比例，但不保长度；本章的 $k$ 放缩是仿射的一个特殊子类（各向同性缩放）。
  - 立体几何：相似立体的面积比 $k^2$、体积比 $k^3$ 直接推广到三角锥、棱柱；工程上核算材料、重量必用。
]
