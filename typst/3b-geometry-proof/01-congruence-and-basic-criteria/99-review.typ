#import "../../lib/chapter-kit.typ": blueprint, mastery, secref, diagnostic-table, answer-cut, knowledge-card

== 本章回顾 <meta:congruence-and-basic-criteria>

#blueprint[
  *一句话口诀*：数等量条件——三对边走 SSS、两边一夹角走 SAS（其余下章续）；先清点几对相等的边角，再决定要不要继续找条件或换路线。
]

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

#blueprint[
  *做题前你应该会*

  - 会从 $triangle A B C tilde.eq triangle D E F$ 的字母顺序读出对应顶点、边、角。
  - 会先清点条件，再决定是否能用 SSS 或 SAS，而不是看到“三个条件”就下结论。
  - 会解释 AAA 只保证形状相同，不保证大小相同。
  - 会把证明写成“已知条件 → 判定法 → 对应元素结论”的顺序。
]

#mastery[
  *混合自测*

  _技能分层：1–2 题查对应关系和判定法，3–6 题查证明路线，跨章与挑战题查反例和书写。_

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
  // 跨章回顾
  + 在等腰三角形 $A B C$ 中，$A B = A C$，顶角 $angle A = 80 degree$。作顶角平分线 $A D$（$D$ 在 $B C$ 上），用 SAS 全等判据（本章 #secref("ge01-sss-sas")）证明 $triangle A B D tilde.eq triangle A C D$，再用三角形内角和（回顾 #secref("pf08-triangles-angle-sum")）求底角 $angle B$、$angle C$ 的度数。

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

  *挑战*

  + *反例构造*：构造（描述或画出）两个三角形，使它们满足"两边对应相等 + 一个非夹角相等（SSA）"但不全等。说明为什么 SSA 不能判全等。
  + *找 Bug*：贝拉（Bella）在证明中写道："设 $triangle A B C tilde.eq triangle B C A$，所以 $A B = B C$"。找出错误位置，并说明：贝拉为什么会这样想？她混淆了*"三角形全等的对应关系"*与*"两个三角形是同一个三角形（自身全等）"*这两个概念——具体把哪一条读错了？$triangle A B C tilde.eq triangle B C A$ 这种"自身到自身"的全等实际上对三角形意味着什么样的对称约束？

  *串章大题*——这道题需要把整章工具串起来用：

  在 $triangle A B C$ 中，$A B = A C$（等腰），$M$ 是 $B C$ 的中点；连接 $A M$。

  + 写出 $triangle A B M$ 与 $triangle A C M$ 之间的对应顶点：$A <-> ?$、$B <-> ?$、$M <-> ?$。
  + 用 SSS 判据证明 $triangle A B M tilde.eq triangle A C M$（写出三对相等的边及理由）。
  + 由全等读出对应角与对应位置：先得 $angle B = angle C$（等腰三角形的两底角相等）；再得 $angle A M B = angle A M C$，结合 $angle A M B + angle A M C = 180 degree$（$B$、$M$、$C$ 共线）推出 $A M perp B C$。

  （思路提示见末尾参考答案；先别看答案，自己尝试。）
]

#pagebreak()

==== 参考答案（含关键步骤）

+ $angle E = angle B = 180 degree - 50 degree - 70 degree = 60 degree$；$D E = A B = 6$。
+ `SAS`（$angle B$ 是 $A B$、$B C$ 的夹角）；`SSS`（三边对应相等）；不行（AAA，只相似不全等）。
+ 陈述 / 理由：$B D = C D$（中点）；$A D = E D$（所作）；$angle A D B = angle E D C$（对顶角）；$triangle A B D tilde.eq triangle E C D$（`SAS`）；$A B = E C$（对应边），即 $A B = C E$。
+ $A B = A C$（已知）；$A D = A D$（公共边）；$angle A D B = angle A D C = 90 degree$（$A D perp B C$）；由 SAS 得 $triangle A B D tilde.eq triangle A C D$。更简单的路线：由等腰三角形底边上的高即中线得 $B D = C D$，再由 SSS 得全等。
+ 必须 $A C = B C$（等腰），即以 $A B$ 为底边的等腰三角形。
+ 任意三角形和它的放大版（比如把三边都乘以 $2$）三个角全一样，但大小不同，不全等。
+ $angle C = 180 degree - 50 degree - 70 degree = 60 degree$。另一个三角形虽然三角对应相等（AAA），但大小可以不同，所以*不一定*全等——只能说它们*相似*。
+ $A B parallel C D$，$angle A E F$ 与 $angle E F D$ 是内错角，所以 $angle E F D = angle A E F = 65 degree$。
+ 选择题（多选）答案：A（SAS，$angle B$ 是夹角）、C（SSS）。B 是 AAA（只能相似）；D 是 SSA（夹角未知，非夹角不够判全等）。
+ 选择题（单选）答案：D。$P Q$ 对应 $X Y$，而不对应 $Y Z$；$P Q = X Y$ ✓ 必然正确；$P Q = Y Z$ 不一定。
+ 选择题（单选）答案：B。找反例是判断 SSA 不足以判全等的方法：例如钝角三角形与锐角三角形可能满足 SSA 但不全等。
+ 反例（文字描述）：在 $triangle A B C$ 中取 $A B = 5, B C = 4, angle A = 30 degree$。用这三个条件可以画出两个不同形状的三角形（一个锐角一个钝角），它们满足 SSA 却不全等。这说明 SSA 条件有"二义性"。
+ 贝拉错误：$tilde.eq$ 两侧字母对应顺序代表对应关系：$triangle A B C tilde.eq triangle B C A$ 意味着 $A$ 对应 $B$，$B$ 对应 $C$，$C$ 对应 $A$，即对应边是 $A B = B C, B C = C A, C A = A B$——三边两两相等，说明三角形是等边三角形，而不是只有 $A B = B C$。贝拉漏读了全部对应关系。
+ 作顶角 $angle A$ 的平分线 $A D$（$D$ 在 $B C$ 上）。$triangle A B D$ 与 $triangle A C D$：$A B = A C$（已知），$A D = A D$（公共边），$angle B A D = angle C A D$（平分角）$->$ SAS 全等。故 $angle B = angle C = (180° - 80°)/2 = 50°$。（参见 #secref("ge01-sss-sas") 与 #secref("pf08-triangles-angle-sum")）

*串章大题参考解答*

+ 对应顶点：$A <-> A$、$B <-> C$、$M <-> M$（即 $triangle A B M tilde.eq triangle A C M$）。
+ 在 $triangle A B M$ 与 $triangle A C M$ 中：$A B = A C$（已知）、$B M = C M$（$M$ 是 $B C$ 中点）、$A M = A M$（公共边）；由 SSS 得 $triangle A B M tilde.eq triangle A C M$。
+ 由全等得 $angle B = angle C$（对应角，即等腰三角形两底角相等）。又得 $angle A M B = angle A M C$（对应角）；由 $B$、$M$、$C$ 共线，$angle A M B + angle A M C = 180 degree$，所以 $angle A M B = angle A M C = 90 degree$，即 $A M perp B C$。整章工具：对应顶点 $+$ SSS $+$ 由全等读对应元素。

查漏：若全等式字母顺序读错，回 #secref("tool:ge01-congruence-correspondence")；若 SSS / SAS 条件清点不稳，回 #secref("tool:ge01-sss-sas")；若证明顺序乱，回 #secref("tool:ge01-two-step-proof-chain")。

#blueprint[
  *巩固复习*

  - 对顶角、邻补角和直角定义常常给证明送来“免费角”：需要找角条件时，先回看 #secref("tool:pf07-angles")。
  - 平行线给同位角、内错角、同旁内角；这些旧角关系常被拿来凑 SAS 或后续 ASA。忘了就回看 #secref("tool:pf08-parallel-transversal")。
  - 下一章会补齐 ASA / AAS，并把证明写成“陈述 | 理由”：本章的“先判定、再读对应”会延续到 #secref("ch:advanced-criteria-and-proof-writing")。
  - 相似会把“完全重合”放宽成“同形放缩”，但仍要先确认对应关系：提前看看 #secref("ch:similarity-scale-parallel-line-geometry") 的入口。

  *☞ 高中桥*

  _以下是预告，现在看不懂完全正常 — 等到高中再回来。_

  这只是向前看的预告，不作为后续主线先修。

  - 高中立体几何仍沿用"判定 + 对应"模式，只是把三角形全等换成空间中的刚性变换 / 平面全等。
  - 向量视角下，SSS / SAS 等价于"两向量相等 $arrow.l.r.double$ 长度、方向同"。
  - 解析几何中证"两条线段相等"常转成两点距离公式之差；但构造性的全等证明仍然更简洁。
]

#diagnostic-table(
  [全等式两侧字母顺序读错], secref("tool:ge01-congruence-correspondence"), [$triangle A B C tilde.eq triangle D E F$ 锁定 $A <-> D$、$B <-> E$、$C <-> F$；边角都按这个顺序读],
  [只读出一条对应边，忘了全等会打包九条结论], secref("tool:ge01-congruence-correspondence"), [全等一旦成立，三对边和三对角都对应相等；但必须先确认对应顺序],
  [把全等和相似混同，看到 AAA 就判全等], secref("tool:ge01-congruence-correspondence"), [AAA 只锁形状，不锁大小；全等要求形状和大小都一样],
  [SSS 写了三条边相等，但顺序不是对应边], secref("tool:ge01-sss-sas"), [三边必须逐对对应；先写出两个三角形的对应顶点，再核对三条边],
  [SAS 中的角不是两条已知边的夹角], secref("tool:ge01-sss-sas"), [SAS 的 A 必须夹在两条 S 之间；若角在其中一边对面，就变成 SSA，不能直接判全等],
  [把 SSA 当成可用判定法], secref("tool:ge01-sss-sas"), [SSA 有二义性，可能画出两个不全等三角形；要补夹角、第三边或换路线],
  [条件不足时硬写“所以全等”], secref("tool:ge01-two-step-proof-chain"), [先清点条件：少于可用判定法所需的三组对应条件，就继续找公共边、对顶角、平行线角等],
  [证明书写先写结论，再倒回找理由], secref("tool:ge01-two-step-proof-chain"), [按“已知 / 可推出的相等 → 判定法 → 对应元素”顺序写，别把要证结论当已知],
  [公共边、对顶角、邻补角这些“免费条件”漏用], secref("tool:pf07-angles"), [图中同一条边可写公共边；相交线给对顶角；平行线给同位角 / 内错角],
  [用全等读结论时读错目标边角], secref("tool:ge01-congruence-correspondence"), [全等后再回到对应表，逐字母读出目标边或角，不要凭图形位置猜],
)
