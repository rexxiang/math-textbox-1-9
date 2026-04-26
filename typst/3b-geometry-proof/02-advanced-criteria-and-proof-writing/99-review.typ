#import "../../lib/theme-v2.typ": blueprint, mastery, secref

== 本章回顾 <meta:advanced-criteria-and-proof-writing>

#blueprint[
  *知识速查卡*

  #table(
    columns: (1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*主题*], [*一句话小结*],
    [ASA], [两角及其*夹边*对应相等 $=>$ 全等。],
    [AAS], [两角及其*对边*对应相等 $=>$ 全等（第三角由 $180 degree$ 自动锁定，等价于 ASA）。],
    [SSA 反例], [两边 $+$ 非夹角无法锁死三角形；一个角可以摆出两种不同形状。],
    [两步证明], [先凑判定法得 $triangle dots tilde.eq triangle dots$，再由"对应元素相等"读结论。],
    [两栏格式], [每步分"陈述 $|$ 理由"；公共边、对顶角、中点、垂直都要单独写一行。],
  )
]

#mastery[
  *混合自测*

  + 下列条件能否判定 $triangle A B C tilde.eq triangle D E F$？写出缩写或理由。
    - $angle A = angle D$、$angle B = angle E$、$A B = D E$
    - $A B = D E$、$B C = E F$、$angle A = angle D$
    - $angle A = angle D$、$angle C = angle F$、$B C = E F$
  + 构造一个满足 $A B = 5$、$B C = 3$、$angle A = 30 degree$ 的 SSA 情形，画出两种不同的 $triangle A B C$，并简述它们的区别。
  + 已知 $A B parallel C D$，$E$ 是 $A C$ 与 $B D$ 的交点。证明 $triangle A B E tilde.eq triangle C D E$。（两栏证明。）
  + $triangle A B C$ 中 $angle B = angle C$，$D$ 在 $B C$ 上且 $A D perp B C$。用两栏证明说明 $B D = C D$。
  + 已知 $M$ 是 $A B$ 中点、$N$ 是 $C D$ 中点，$A N = C M$、$A N parallel C M$。证明 $M N$ 平分 $A C$。
  + 为什么 ASA 和 AAS 本质上是"同一回事"？用一句话解释。
  + 在两栏证明中，"对顶角相等"属于"已知"还是"定理"？为什么？

  *参考答案*

  + `AAS`（$angle A = angle D$、$angle B = angle E$ 加对边 $A B = D E$）；不行（$angle A$ 不是 $A B$、$B C$ 的夹角，属于 SSA）；`AAS`（两角加对边 $B C = E F$）。
  + $angle A = 30 degree$ 不是 $A B = 5$ 与 $B C = 3$ 的夹角；以 $A$ 为顶点画 $30 degree$ 角的一条边取 $5$ 长到 $B$，以 $B$ 为圆心 $3$ 为半径画弧，弧与另一条边可能有两个交点——一个锐角三角形、一个钝角三角形。
  + 陈述 / 理由：$angle A B E = angle C D E$（$A B parallel C D$，内错角）；$angle A E B = angle C E D$（对顶角）；$A B = C D$（需另给或由题意得出）；$triangle A B E tilde.eq triangle C D E$（`ASA`）。（注：若题目未给 $A B = C D$，则需由平行条件进一步推导。）
  + $angle B = angle C$（已知）；$angle A D B = angle A D C = 90 degree$（$A D perp B C$）；$A D = A D$（公共边）；$triangle A B D tilde.eq triangle A C D$（`AAS`）；$B D = C D$（对应边）。
  + 由 $A N parallel C M$ 且 $A N = C M$，四边形 $A N C M$（或 $A M C N$，视取法）是平行四边形（一组对边平行且相等）；平行四边形对角线互相平分，故 $M N$ 平分 $A C$。
  + 三角形内角和 $= 180 degree$，两角一旦定了第三角自动确定；所以 ASA 给的"两角 $+$ 夹边"与 AAS 给的"两角 $+$ 对边"本质都是"三个角全定 $+$ 一条边定大小"。
  + "定理"（推论）——对顶角相等不是题目告诉你的，而是你自己从图形关系推出的；它在"理由"栏里应写"对顶角相等"而非"已知"。
]

#blueprint[
  *巩固复习*

  - 回看 #secref("ge01-congruence-correspondence")：对应关系的字母顺序是本章所有判定法成立的前提。
  - 回看 #secref("ge01-sss-sas")：SSS / SAS 与本章 ASA / AAS 合在一起构成完整判定法家族。
  - 回看 #secref("pf08-triangles-angle-sum")：内角和 $180 degree$ 使 AAS 合法——第三角自动被锁。
  - 衔接 #secref("ch:similarity-scale-parallel-line-geometry")：相似判定（AA）的"先判定、再读对应"骨架与本章两步证明一脉相承。
  - 衔接 #secref("ch:quadrilateral-family") 与 #secref("ch:circles-and-inscribed-circumscribed")：四边形性质证明和圆内等角证明几乎都套用本章的两步模版。

  *☞ 高中桥*

  - 高中立体几何中仍沿用"判定 $+$ 对应"模式，只是场景从平面全等换成空间中的截面全等。
  - 向量视角下，SSA 反例对应"已知两向量长度与夹角一端，另一端不唯一"。
  - 解析几何中遇到"证两线段相等"仍可选择坐标法或构造全等；两栏证明的规范不变。
]
