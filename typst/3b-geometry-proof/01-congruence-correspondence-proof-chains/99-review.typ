#import "../../lib/theme-v2.typ": blueprint, mastery, secref

= 本章回顾 <meta:congruence-correspondence-proof-chains>

#blueprint[
  *知识速查卡*

  #table(
    columns: (1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*主题*], [*一句话抓手*],
    [全等的含义], [两个三角形可以完全重合；形状和大小都一样。],
    [对应关系], [由 $tilde.eq$ 两侧字母顺序锁定：$triangle A B C tilde.eq triangle D E F$ 一写，对应顶点 / 边 / 角就都定了。],
    [对应元素相等], [全等 $=>$ 三对边相等 $+$ 三对角相等（九条结论打包）。],
    [SSS], [三边对应相等。],
    [SAS], [两边和*夹角*对应相等；非夹角 $=>$ SSA $=>$ 失败。],
    [ASA / AAS], [两角一边，夹边是 ASA、对边是 AAS；两者同根（第三角由 $180 degree$ 自动定）。],
    [SSA 反例], [两边 $+$ 非夹角无法锁死；可以摆成两种不同三角形。],
    [两步证明], [先凑判定法得 $triangle dots tilde.eq triangle dots$，再由“对应元素相等”读结论。],
    [两栏格式], [每步分“陈述 $|$ 理由”；公共边、对顶角、中点、垂直都要单独写一行。],
  )
]

#mastery[
  *混合自测*

  + 若 $triangle A B C tilde.eq triangle D E F$，且 $angle A = 50 degree$、$angle C = 70 degree$、$A B = 6$，求 $angle E$ 与 $D E$。
  + 下列条件能否判定 $triangle A B C tilde.eq triangle D E F$？写出缩写或理由。
    - $A B = D E$、$angle B = angle E$、$B C = E F$
    - $angle A = angle D$、$angle B = angle E$、$angle C = angle F$
    - $A B = D E$、$A C = D F$、$angle C = angle F$
  + 已知 $A D$ 是 $triangle A B C$ 的中线，延长 $A D$ 到 $E$ 使 $D E = A D$。证明 $A B = C E$。（两栏证明。）
  + $triangle A B C$ 中 $A B = A C$，$A D perp B C$ 于 $D$。证明 $D$ 为 $B C$ 中点，且 $A D$ 平分 $angle B A C$。
  + 已知 $A B parallel C D$、$A B = C D$，$E$、$F$ 分别在 $A B$、$C D$ 上且 $B E = D F$。证明 $A F = C E$。
  + 若结论是 $triangle A B C tilde.eq triangle B A C$，那 $triangle A B C$ 必须具有什么特殊形状？写一句话说明。
  + 为什么 AAA 不能判全等，但 AAS 可以？用一句话区分。
  + 构造一个满足 $A B = 8$、$B C = 5$、$angle A = 25 degree$ 的 SSA 反例，并简要描述两种 $triangle A B C$ 的不同。
  + 写出“证两角相等”常用的两步模版（先……再……）。
  + 在两栏证明里，下列每种“理由”分别对应什么来源：①“公共边”；②“已知”；③“`SAS`”；④“全等对应角相等”？

  *参考答案*

  + $angle E = angle B = 180 degree - 50 degree - 70 degree = 60 degree$；$D E = A B = 6$。
  + `SAS`（$angle B$ 是 $A B$、$B C$ 的夹角）；不行（AAA，只相似）；`SAS`（$angle C$ 是 $A C$、$B C$ 的夹角）。
  + 陈述 / 理由：$B D = C D$（中点）；$A D = E D$（所作）；$angle A D B = angle E D C$（对顶角）；$triangle A B D tilde.eq triangle E C D$（`SAS`）；$A B = E C$（对应边），即 $A B = C E$。
  + 陈述：$A B = A C$（已知）；$A D = A D$（公共边）；$angle A D B = angle A D C = 90 degree$（$A D perp B C$）。在直角三角形 $triangle A B D$、$triangle A C D$ 中由勾股定理：$B D = sqrt(A B^2 - A D^2) = sqrt(A C^2 - A D^2) = C D$，故 $D$ 是 $B C$ 中点。再由 `SSS`（$A B = A C$、$A D = A D$、$B D = C D$）得 $triangle A B D tilde.eq triangle A C D$，对应角 $angle B A D = angle C A D$，即 $A D$ 平分 $angle B A C$。
  + 由 $A B = C D$、$B E = D F$ 得 $A E = A B - B E = C D - D F = C F$（若 $E$、$F$ 同向取）。因 $A B parallel C D$，连 $A F$、$C E$ 后由 `SAS` 或 `ASA` 得 $triangle A E F tilde.eq triangle C F E$（对应取法视图形），由对应边 $A F = C E$。（具体写法视图而定；要点是先凑全等再读对应。）
  + 必须 $A C = B C$（等腰），即以 $A B$ 为底边的等腰三角形。
  + AAA 只定形状不定大小；AAS 在两角的基础上*再给一条对应边*，把大小也锁死（第三角由内角和自动给出，实际就是两角一边）。
  + $A C$ 两种取值都合法（一个钝角三角形、一个锐角三角形），因 $angle A = 25 degree$ 不是 $A B$、$B C$ 的夹角，满足 SSA 反例条件。
  + 先证一对三角形全等（凑判定法） → 再由对应角相等拿出所要的角等式。
  + ①图里两个三角形共享的那条边；②题目原文给定的条件；③两边和夹角已经对应相等这条判定法；④全等三角形的对应角必相等（定义的直接推论）。
]

#blueprint[
  *螺旋复习*

  - 回看 #secref("pf07-angles")：对顶角、邻补角、角的定义是很多证明链里“免费条件”的来源。
  - 回看 #secref("pf08-parallel-transversal")：内错角、同位角、同旁内角随时在证明链里充当桥梁。
  - 回看 #secref("pf08-triangles-angle-sum")：三角形内角和 $180 degree$ 让 AAS 合法，也为“第三角自动被锁”提供依据。
  - 衔接 #secref("ch:similarity-scale-parallel-line-geometry")：下一章的相似三角形把“完全重合”松动成“同形放缩”，但“先判定、再读对应”的骨架几乎不变。
  - 衔接 #secref("ch:quadrilaterals-circles-structures")：四边形、圆里的“对角线相等”“弧等角等”类结论，几乎都先落到某对全等三角形上再读出。

  *☞ 高中桥*

  - 高中立体几何仍沿用“判定 + 对应”模式，只是把三角形全等换成空间中的刚性变换 / 平面全等。
  - 向量视角下，本章四条判定法等价于“两向量相等 $arrow.l.r.double$ 长度、方向同”；SSA 反例对应“已知两向量长度与夹角一端，另一端不唯一”。
  - 解析几何中证“两条线段相等”常转成两点距离公式之差；但构造性的两步证明仍然更简洁。
]
