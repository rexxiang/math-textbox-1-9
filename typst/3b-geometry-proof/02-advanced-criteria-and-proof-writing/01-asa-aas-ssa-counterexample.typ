#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref
#import "../../lib/diagram-packages.typ": cetz

=== ASA、AAS 与 SSA 反例：哪些判定能成、哪条不行 <tool:ge01-asa-aas-ssa>

#vocab[角边角 ASA][角角边 AAS][SSA 反例 SSA counterexample]

#crisis[
  上一节把 `SSS`、`SAS` 立起来了：*三条边* 或 *两边夹角* 都能锁死三角形。但真做题时有两类条件我们还没讨论：

  - *两角一边*：两角都量到了，边却只有一条——还够不够？如果够，边放在哪里才算数？
  - *两边一非夹角*：两条边加一个不是夹角的角。看起来和 SAS 差不多，可真能判全等吗？

  这一节一次性处理这两件事：*判定法家族还剩两条——ASA 和 AAS；另外还得说清楚 SSA 为什么不算数*。
]

#history-note[
  `ASA` 在《几何原本》里是命题 I.26。欧几里得没有单独写 `AAS`——他把它当作 `ASA` 的直接推论，因为*一旦两个角给定，第三个角就被 $180 degree$ 自动锁死*。近代的初中教材普遍把 `AAS` 单列为独立工具，方便学生套用。SSA 之所以落选，不是“还没人证出来”，而是*真的存在反例*——本节中段给出一个只需一次的干净反例。
]

#discovery[
  *两角一边：`ASA` 与 `AAS`*

  手边有两个已知角和一条已知边——能锁死三角形吗？先把“两个角”这件事拆干净：三角形三个内角之和恒为 $180 degree$（见 #secref("pf08-triangles-angle-sum")）。*一旦两个角定了，第三个角自动定下来*——三个内角全部锁死，三角形的*形状*就定了。

  形状定，剩下只缺*大小*。再给一条*对应边*相等，三角形的大小也一并锁死。所以“两角一边”稳稳能判全等。

  区别只在*那条边站在哪里*：

  #table(
    columns: (0.6fr, 2fr, 1.4fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*缩写*], [*条件*], [*直觉*],
    [`ASA`], [两个对应角*及它们夹着的那条边*分别相等], [两条射线方向定了，夹边又定了长度，形状与大小一起锁死],
    [`AAS`], [两个对应角*及其中一角的对边*分别相等], [两角定 $⟹$ 三角全定 $⟹$ 形状定；再配一条对应边 $⟹$ 大小定],
  )

  这两条判定法的根子是同一件事：*两角一边足以锁死三角形*。边在哪个位置，不影响结论，只决定你写缩写时叫它 `ASA` 还是 `AAS`。

  *两边一非夹角：SSA 为什么不成立*

  现在换成“两条边 $+$ 一个*非夹角*的角”——也就是角站在其中一条边的外侧而不是两条边中间。能锁死吗？

  我们来构造一个干净的反例：取 $A B = 7$、$B C = 5$、$angle A = 30 degree$（$angle A$ 是*边 $A B$ 的同侧角*，不是夹角）。以 $A$ 为端点画出一条与 $A B$ 成 $30 degree$ 的射线；$C$ 必须落在这条射线上。同时 $C$ 必须离 $B$ 恰好 $5$——这个条件画成以 $B$ 为圆心、半径 $5$ 的圆。射线与这个圆*相交在两个点*：$C_1$ 和 $C_2$。

  #figure(
    cetz.canvas(length: 1cm, {
      import cetz.draw: *
      let A = (0, 0)
      let B = (7, 0)
      // ray from A at 30°, circle at B radius 5: t² - 12.124 t + 24 = 0
      // t = (12.124 ± 7.141)/2 = 9.633 or 2.491
      let C1 = (9.633 * 0.866, 9.633 * 0.5)
      let C2 = (2.491 * 0.866, 2.491 * 0.5)
      line(A, B, stroke: 0.8pt)
      line(A, C1, stroke: (paint: blue, thickness: 0.8pt))
      line(B, C1, stroke: (paint: blue, thickness: 0.8pt))
      line(A, C2, stroke: (paint: red, thickness: 0.8pt))
      line(B, C2, stroke: (paint: red, thickness: 0.8pt))
      content(A, $A$, anchor: "north-east", padding: 3pt)
      content(B, $B$, anchor: "north-west", padding: 3pt)
      content(C1, $C_1$, anchor: "south-west", padding: 3pt)
      content(C2, $C_2$, anchor: "south-east", padding: 3pt)
      content((3.5, -0.35), text(8pt)[$A B = 7$])
      content((7.7, 3.1), text(8pt, fill: blue)[$B C_1 = 5$])
      content((4.5, 1.1), text(8pt, fill: red)[$B C_2 = 5$])
      content((0.9, 0.4), text(8pt)[$angle A = 30 degree$])
    }),
    caption: [SSA 反例：$A B = 7$、$B C = 5$、$angle A = 30 degree$ 同时许可 $triangle A B C_1$ 与 $triangle A B C_2$——两个三角形形状不同。]
  )

  两个三角形 $triangle A B C_1$ 与 $triangle A B C_2$ *都满足同一组 SSA 条件*，却显然*形状不同*（$A C_1 approx 8.34$，$A C_2 approx 2.16$）。这说明：*SSA 条件不足以锁死三角形，因此不是判定法*。

  *结论*：碰到“两边一角”，先看这个角是不是*两条已知边的夹角*——是就 SAS 稳赢，不是就得换路线（换成 ASA / AAS，或再补一个条件）。
]

#side-hack[
  *看题数条件的一张小抄*

  - 3 边 → `SSS`
  - 2 边 $+$ 1 角 → 夹角？`SAS` ✓；非夹角？*当心 SSA*，要换判据或补条件
  - 2 角 $+$ 1 边 → 夹边 `ASA`；对边 `AAS`——两条都行（$180 degree$ 帮你把第三角免费补出来）
  - 3 角（AAA）→ 形状定，*大小没定*；这属于相似，不是全等（详见 #secref("ge02-similarity-aa-ratio")）
]

#tryit[
  先写出能用的判定法缩写；若不够，标“信息不足”：

  + $triangle X Y Z$ 与 $triangle M N O$：$angle X = angle M$、$angle Y = angle N$、$Y Z = N O$。
  + $triangle A B C$ 与 $triangle D E F$：$angle A = angle D$、$angle B = angle E$、$A B = D E$。
  + $triangle P Q R$ 与 $triangle S T U$：$P Q = S T = 6$、$Q R = T U = 4$、$angle P = angle S = 40 degree$（$angle P$ 不是 $P Q, Q R$ 的夹角）。
]

#blueprint[
  *工具一：ASA（角边角）*

  若 $triangle A B C$ 与 $triangle D E F$ 中

  $ angle A = angle D, quad A B = D E, quad angle B = angle E, $

  （$A B$ 是 $angle A$ 与 $angle B$ *夹着* 的边）则 $triangle A B C tilde.eq triangle D E F$。

  *工具二：AAS（角角边）*

  若

  $ angle A = angle D, quad angle B = angle E, quad B C = E F, $

  （$B C$ 是 $angle A$ 的*对边*；可换成任一组“角 $+$ 对边”）则 $triangle A B C tilde.eq triangle D E F$。

  *负面结论：SSA 不成立*

  只给“两条对应边 $+$ 其中一边的对角相等”，不足以判定全等；存在双解反例（见上图）。

  *例（AAS）*：$triangle A B C$ 中 $A B = A C$，$B D perp A C$ 于 $D$，$C E perp A B$ 于 $E$。求证 $B D = C E$。

  证：在 $triangle B D C$ 与 $triangle C E B$ 中，
  - $angle B D C = angle C E B = 90 degree$
  - $angle D C B = angle E B C$（等腰底角相等）
  - $B C = C B$（公共边）

  由 `AAS` 得 $triangle B D C tilde.eq triangle C E B$，故对应边 $B D = C E$。

  *使用顺序建议*

  + 数出条件里有几条边、几条角。
  + 若是*两角一边*：边在两角中间即 `ASA`，边是某一角的对边即 `AAS`；两者都能判。
  + 若是*两边一角*：角是夹角 → `SAS`（上一节）；角不是夹角 → *落进 SSA 警戒区*，此路不通，换判据或补条件。
  + 公共边、对顶角、等腰底角、垂直产生的直角仍然是常见“免费条件”，别漏记。
]

#pitfall[
  *高频错误*

  ✗ 看到“两角相等”就断全等
  → ✓ 两角只能证*形状相同*（相似），不能证*大小相同*（全等）。必须再配一条对应边——见 #secref("ge02-similarity-aa-ratio")。

  ✗ 把 `AAS` 里的那条边跟“任意一条对应边”划等号
  → ✓ AAS 的那条边必须是其中一角的*对边*（或换个说法：随便挑一条对应边都行，因为两角已确定全形状，关键是“边要对应”）。真正要防的是把非对应位置的边当对应边。

  ✗ 两边一非夹角凑上 SSA，却误写 `SAS`
  → ✓ `SAS` 的 `A` 必须在两条边*中间*。SSA 下存在双解反例，不是判定法；遇到时要主动寻找别的条件。

  ✗ 用 `AAA` 当判据
  → ✓ 三角都相等只说明*形状相同*，不代表*大小相同*；这是相似。
]

#mastery[
  *基础*

  + 对每组条件，判断能否判定 $triangle A B C tilde.eq triangle D E F$，写出缩写；不能则说明理由。
    - $angle A = angle D$、$A B = D E$、$angle B = angle E$
    - $angle A = angle D$、$angle B = angle E$、$B C = E F$
    - $angle A = angle D$、$angle B = angle E$、$angle C = angle F$
    - $A B = D E$、$B C = E F$、$angle A = angle D$（$angle A$ 是 $A B$ 与 $A C$ 的夹角，不是 $A B, B C$ 的夹角）

  + $triangle A B C$ 与 $triangle D E F$ 中 $angle A = angle D = 50 degree$、$angle B = angle E = 70 degree$、$A C = D F = 6$。判定能否全等；若能，说明用了哪条判定法。

  *应用*

  + $triangle A B C$ 与 $triangle D E F$ 中，$A B = D E$、$angle A = angle D$、$angle B = angle E$。求证：$B C = E F$。

  + $O$ 为线段 $A B$ 的中点；过 $O$ 作直线分别与直线 $l_1$（过 $A$）、$l_2$（过 $B$）相交于 $C$、$D$，且 $l_1 parallel l_2$。求证：$O C = O D$。

  + 自己构造一组具体数据演示 SSA 的双解反例：给出 $A B$、$B C$、$angle A$ 的具体数值，并画出两种不同的 $triangle A B C$。

  *挑战 ☞ 选做*

  + 为什么“两边一角”这三个字不能简写——必须说清“是夹角还是对角”？用一句话说清。

  + 两三角形已有 $angle A = angle D$、$A B = D E$。再补一项让它判*唯一*的全等结论：写出两种能补的选择，并说明为什么不能补 $B C = E F$。

  + 直角三角形里"斜边（直角对面最长的那条边）$+$ 一条直角边"（HL）就能判全等——请用本节的工具把它翻译成 `AAS`（或想一想：在直角三角形里，知道斜边和一直角边，为什么另一直角边也唯一确定？）。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + `ASA` ✓（$A B$ 是 $angle A, angle B$ 的夹边）；`AAS` ✓（$B C$ 是 $angle A$ 的对边）；不能，只是 `AAA`，属相似；不够——这里 $angle A$ 不是 $A B, B C$ 的夹角，落进 SSA 反例区。
  + 可以，`AAS`（$A C$ 是 $angle B$ 的对边）；等价地也可以视为 `ASA` 的再排列，结论相同。

  *应用*
  + 由 `ASA`（$angle A$、$A B$、$angle B$）得 $triangle A B C tilde.eq triangle D E F$，故对应边 $B C = E F$。
  + 在 $triangle A O C$ 与 $triangle B O D$ 中：$A O = B O$（中点）、$angle A O C = angle B O D$（对顶角）、$angle O A C = angle O B D$（两直线平行被第三线所截，内错角相等——见 #secref("pf08-parallel-transversal")）。由 `AAS` 得 $triangle A O C tilde.eq triangle B O D$，故 $O C = O D$。
  + 一例：$A B = 7$、$B C = 5$、$angle A = 30 degree$（$angle A$ 不是 $A B, B C$ 的夹角）；可以配出两种 $triangle A B C$——$A C approx 8.34$ 与 $A C approx 2.16$。两者都合法，形状不同。

  *挑战 ☞ 选做*
  + “两边一角”在*夹角*下给的是 SAS（可判），在*非夹角*下给的是 SSA（不可判）——判与不判只差一字，省了就错了。
  + 补 $A C = D F$（同一个顶点 $A / D$ 出发的另一条边）得 `SAS`；或补 $angle B = angle E$ 得 `ASA`。选 $B C = E F$ 是不够的——那会让三项变成 $A B$、$B C$ 两边加 $angle A$（$angle A$ 是 $A B$ 的对角而不是夹角），落入 SSA 反例区。
  + 在两个直角三角形中，直角对应相等（$90 degree = 90 degree$），斜边与一条直角边给出；两角（一个直角 $+$ 一个由斜边与已知直角边决定的底角）相等，再配那条给定的直角边即 `AAS`。等价地，由勾股把第三边算出来，再 `SSS` 也行。
]
