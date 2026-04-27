#import "../../lib/chapter-kit.typ": blueprint, mastery, secref, diagnostic-table, answer-cut, knowledge-card

== 本章回顾 <meta:congruence-and-basic-criteria>

#knowledge-card(title: "知识速查卡")[
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

  *[选择题（多选）]* 下列条件中，能判定 $triangle A B C tilde.eq triangle D E F$ 的是（多选）（）

  - A. $A B = D E$，$B C = E F$，$angle B = angle E$（$angle B$ 是 $A B, B C$ 的夹角）
  - B. $angle A = angle D$，$angle B = angle E$，$angle C = angle F$
  - C. $A B = D E$，$B C = E F$，$C A = F D$
  - D. $A B = D E$，$angle A = angle D$，$angle C = angle F$（非夹角）

  *[选择题（单选）]* 若 $triangle P Q R tilde.eq triangle X Y Z$，则以下*不一定*正确的是（）

  - A. $P Q = X Y$
  - B. $angle Q = angle Y$
  - C. 面积相等
  - D. $P Q = Y Z$

  *[选择题（单选）]* 判断"SSA（两边及其中一边的对角相等）能否判全等"，正确做法是（）

  - A. SSA 总能判全等
  - B. SSA 不能判全等，须找到反例（两不全等三角形满足 SSA）
  - C. SSA 和 SAS 等价
  - D. 只需要验证特定数值

  *挑战 ☞ 选做*

  + *反例构造*：构造（描述或画出）两个三角形，使它们满足"两边对应相等 + 一个非夹角相等（SSA）"但不全等。说明为什么 SSA 不能判全等。
  + *找 Bug*：贝拉（Bella）在证明中写道："设 $triangle A B C tilde.eq triangle B C A$，所以 $A B = B C$"。找出这个推理的错误，并说明 $triangle A B C tilde.eq triangle B C A$ 实际上对三角形意味着什么。

  *参考答案*

  + $angle E = angle B = 180 degree - 50 degree - 70 degree = 60 degree$；$D E = A B = 6$。
  + `SAS`（$angle B$ 是 $A B$、$B C$ 的夹角）；`SSS`（三边对应相等）；不行（AAA，只相似不全等）。
  + 陈述 / 理由：$B D = C D$（中点）；$A D = E D$（所作）；$angle A D B = angle E D C$（对顶角）；$triangle A B D tilde.eq triangle E C D$（`SAS`）；$A B = E C$（对应边），即 $A B = C E$。
  + $A B = A C$（已知）；$A D = A D$（公共边）；$angle A D B = angle A D C = 90 degree$（$A D perp B C$）；由 HL 或 SAS 得 $triangle A B D tilde.eq triangle A C D$。更简单的路线：由等腰三角形底边上的高即中线得 $B D = C D$，再由 SSS 得全等。
  + 必须 $A C = B C$（等腰），即以 $A B$ 为底边的等腰三角形。
  + 任意三角形和它的放大版（比如把三边都乘以 $2$）三个角全一样，但大小不同，不全等。
  + $angle C = 180 degree - 50 degree - 70 degree = 60 degree$。另一个三角形虽然三角对应相等（AAA），但大小可以不同，所以*不一定*全等——只能说它们*相似*。
  + $A B parallel C D$，$angle A E F$ 与 $angle E F D$ 是内错角，所以 $angle E F D = angle A E F = 65 degree$。
  + 选择题（多选）答案：A（SAS，$angle B$ 是夹角）、C（SSS）。B 是 AAA（只能相似）；D 是 SSA（夹角未知，非夹角不够判全等）。
  + 选择题（单选）答案：D。$P Q$ 对应 $X Y$，而不对应 $Y Z$；$P Q = X Y$ ✓ 必然正确；$P Q = Y Z$ 不一定。
  + 选择题（单选）答案：B。找反例是判断 SSA 不足以判全等的方法：例如钝角三角形与锐角三角形可能满足 SSA 但不全等。
  + 反例（文字描述）：在 $triangle A B C$ 中取 $A B = 5, B C = 4, angle A = 30 degree$。用这三个条件可以画出两个不同形状的三角形（一个锐角一个钝角），它们满足 SSA 却不全等。这说明 SSA 条件有"二义性"。
  + 贝拉错误：$tilde.eq$ 两侧字母对应顺序代表对应关系：$triangle A B C tilde.eq triangle B C A$ 意味着 $A$ 对应 $B$，$B$ 对应 $C$，$C$ 对应 $A$，即对应边是 $A B = B C, B C = C A, C A = A B$——三边两两相等，说明三角形是等边三角形，而不是只有 $A B = B C$。贝拉漏读了全部对应关系。
]

#blueprint[
  *巩固复习*

  - 回看 #secref("pf07-angles")：对顶角、邻补角、角的定义是很多证明里"免费条件"的来源。
  - 回看 #secref("pf08-parallel-transversal")：内错角、同位角、同旁内角随时在证明里充当桥梁。
  - 衔接 #secref("ch:advanced-criteria-and-proof-writing")：下一章补齐 ASA / AAS 判定法，并把证明写成"陈述 | 理由"的两栏格式。
  - 衔接 #secref("ch:similarity-scale-parallel-line-geometry")：相似三角形把"完全重合"松动成"同形放缩"，但"先判定、再读对应"的骨架不变。

  *☞ 高中桥*

  _以下是预告，现在看不懂完全正常 — 等到高中再回来。_

  - 高中立体几何仍沿用"判定 + 对应"模式，只是把三角形全等换成空间中的刚性变换 / 平面全等。
  - 向量视角下，SSS / SAS 等价于"两向量相等 $arrow.l.r.double$ 长度、方向同"。
  - 解析几何中证"两条线段相等"常转成两点距离公式之差；但构造性的全等证明仍然更简洁。
]

#diagnostic-table(
  [全等时对应顶点顺序搞错],
  secref("ge01-congruence-correspondence"),
  [$tilde.eq$ 两侧字母顺序就是对应关系；对应顶点对应边对应角，一写就定],

  [SAS 和 SSA 分不清哪个能判全等],
  secref("ge01-sss-sas"),
  [SAS 要求是两边的夹角；非夹角的 SSA 存在反例，不能判全等],

  [证明步骤不知从哪开始],
  secref("ge01-two-step-proof-chain"),
  [先写已知，找出三对对应元素（边或角），再核对判定法（SSS/SAS/ASA...）],
)
