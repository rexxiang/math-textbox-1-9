#import "../../lib/theme-v2.typ": blueprint, mastery, secref

== 本章回顾 <meta:congruence-and-basic-criteria>

#blueprint[
  *知识速查卡*

  #table(
    columns: (1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*主题*], [*一句话小结*],
    [全等的含义], [两个三角形可以完全重合；形状和大小都一样。],
    [对应关系], [由 $tilde.eq$ 两侧字母顺序锁定：$triangle A B C tilde.eq triangle D E F$ 一写，对应顶点 / 边 / 角就都定了。],
    [对应元素相等], [全等 $=>$ 三对边相等 $+$ 三对角相等（九条结论打包）。],
    [SSS], [三边对应相等。],
    [SAS], [两边和*夹角*对应相等；非夹角 $=>$ SSA $=>$ 失败（详见下一章）。],
  )
]

#mastery[
  *混合自测*

  + 若 $triangle A B C tilde.eq triangle D E F$，且 $angle A = 50 degree$、$angle C = 70 degree$、$A B = 6$，求 $angle E$ 与 $D E$。
  + 下列条件能否判定 $triangle A B C tilde.eq triangle D E F$？写出缩写或理由。
    - $A B = D E$、$angle B = angle E$、$B C = E F$
    - $A B = D E$、$A C = D F$、$B C = E F$
    - $angle A = angle D$、$angle B = angle E$、$angle C = angle F$
  + 已知 $A D$ 是 $triangle A B C$ 的中线，延长 $A D$ 到 $E$ 使 $D E = A D$。证明 $A B = C E$。
  + $triangle A B C$ 中 $A B = A C$，$A D perp B C$ 于 $D$。用 SSS 或 SAS 证明 $triangle A B D tilde.eq triangle A C D$。
  + 若结论是 $triangle A B C tilde.eq triangle B A C$，那 $triangle A B C$ 必须具有什么特殊形状？写一句话说明。
  + 为什么 AAA 不能判全等？举一个例子。
  // 跨章回顾
  + 在 $triangle A B C$ 中，$angle A = 50 degree$、$angle B = 70 degree$。先用三角形内角和（#secref("pf08-triangles-angle-sum")）求 $angle C$，再判断：若另一个三角形也有 $angle A' = 50 degree$、$angle B' = 70 degree$，两三角形一定全等吗？为什么？
  // 跨章回顾
  + 已知 $A B parallel C D$（#secref("pf08-parallel-transversal")），被截线 $E F$ 分别交 $A B, C D$ 于 $E, F$，且 $angle A E F = 65 degree$。求 $angle E F D$ 的度数。

  *参考答案*

  + $angle E = angle B = 180 degree - 50 degree - 70 degree = 60 degree$；$D E = A B = 6$。
  + `SAS`（$angle B$ 是 $A B$、$B C$ 的夹角）；`SSS`（三边对应相等）；不行（AAA，只相似不全等）。
  + 陈述 / 理由：$B D = C D$（中点）；$A D = E D$（所作）；$angle A D B = angle E D C$（对顶角）；$triangle A B D tilde.eq triangle E C D$（`SAS`）；$A B = E C$（对应边），即 $A B = C E$。
  + $A B = A C$（已知）；$A D = A D$（公共边）；$angle A D B = angle A D C = 90 degree$（$A D perp B C$）；由 HL 或 SAS 得 $triangle A B D tilde.eq triangle A C D$。更简单的路线：由等腰三角形底边上的高即中线得 $B D = C D$，再由 SSS 得全等。
  + 必须 $A C = B C$（等腰），即以 $A B$ 为底边的等腰三角形。
  + 任意三角形和它的放大版（比如把三边都乘以 $2$）三个角全一样，但大小不同，不全等。
  + $angle C = 180 degree - 50 degree - 70 degree = 60 degree$。另一个三角形虽然三角对应相等（AAA），但大小可以不同，所以*不一定*全等——只能说它们*相似*。
  + $A B parallel C D$，$angle A E F$ 与 $angle E F D$ 是内错角，所以 $angle E F D = angle A E F = 65 degree$。
]

#blueprint[
  *巩固复习*

  - 回看 #secref("pf07-angles")：对顶角、邻补角、角的定义是很多证明里"免费条件"的来源。
  - 回看 #secref("pf08-parallel-transversal")：内错角、同位角、同旁内角随时在证明里充当桥梁。
  - 衔接 #secref("ch:advanced-criteria-and-proof-writing")：下一章补齐 ASA / AAS 判定法，并把证明写成"陈述 | 理由"的两栏格式。
  - 衔接 #secref("ch:similarity-scale-parallel-line-geometry")：相似三角形把"完全重合"松动成"同形放缩"，但"先判定、再读对应"的骨架不变。

  *☞ 高中桥*

  - 高中立体几何仍沿用"判定 + 对应"模式，只是把三角形全等换成空间中的刚性变换 / 平面全等。
  - 向量视角下，SSS / SAS 等价于"两向量相等 $arrow.l.r.double$ 长度、方向同"。
  - 解析几何中证"两条线段相等"常转成两点距离公式之差；但构造性的全等证明仍然更简洁。
]
