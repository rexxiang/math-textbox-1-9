#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, lab, answer-cut, self-check
#import "../../lib/diagram-packages.typ": cetz

=== SSS 与 SAS：两条最基本的判定法 <tool:ge01-sss-sas>

#vocab[判定法 criterion][边边边 SSS][边角边 SAS]

#crisis[
  上一节的定义说：两个三角形全等当且仅当*三条边、三个角一一对应相等*。可是真做题时，谁有耐心把六项都量一遍？何况有些边、有些角*根本没告诉你*。

  自然就想偷懒：*能不能只核几项就下结论？* 一条肯定不够，两条也压不死形状，那*三条*信息够不够？选哪三条？

  这一节先从最扎实的两条开始：*只比三条边* 的 `SSS`，和*两边加它们的夹角* 的 `SAS`。下一节再把两角一边的情形补齐，并交代"两边一角"里那条会翻车的路线——SSA。
]

#discovery[
  *为什么要判定法？*

  回到定义：“全等 $=$ 三边三角一一对应相等”是 6 个条件。若每次都要对 6 项，几何证明会寸步难行。*判定法* 就是一张“最短清单”：告诉你*某几个条件合起来已经逼出了剩下的全部*，所以验到那里就可以宣布全等。

  核心只有一问：*哪几项信息已经把三角形的形状与大小锁死？*

  *三条绳子 → SSS*

  手边有三段长度固定的绳子：$a$、$b$、$c$。把它们首尾相接想围出一个三角形——能摆出来吗？能围成的话，摆法唯一吗？答案是*两个都是*：只要 $a$、$b$、$c$ 满足三角形不等式，围出的三角形就*只有一种形状*。换句话说——

  $ text("三条对应边相等") quad ⟹ quad text("三角形全等"). $

  这就是 `SSS`（Side-Side-Side）。它的直觉：三根硬杆铰接起来就是一个刚性三角形，没有“掰”的余地。

  *两根杆 $+$ 夹角 → SAS*

  另一种常见场景：我只量到了*两条边*，加上它们*中间的那个角*。这够吗？

  想象两条长度给定的杆子，一端铰接在一起，中间夹角可调。*一旦夹角也定下来*，另一端的位置就被唯一确定，剩下那条“第三边”的长度也被逼出来。没有选择余地，形状锁死。

  $ (A B, angle A, A C) text(" 分别相等") quad ⟹ quad text("三角形全等"). $

  这就是 `SAS`（Side-Angle-Side）。请牢牢记住：SAS 里的 `A` 必须是*两条已知边之间的那个角*，不是外侧的对角。

  *三句话总结*

  #table(
    columns: (0.6fr, 2fr, 1.4fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*缩写*], [*条件*], [*直觉*],
    [`SSS`], [三条对应边分别相等], [三条绳子长度定了，形状没得挑],
    [`SAS`], [两条对应边*及其夹角*分别相等], [两杆一开口，第三边被逼出来],
  )

  #figure(
    cetz.canvas(length: 1cm, {
      import cetz.draw: *
      // Triangle ABD
      let A = (0, 0)
      let B = (3, 0)
      let C = (1.5, 2.2)
      line(A, B, C, close: true, stroke: 0.7pt)
      content((-0.3, -0.2), $A$)
      content((3.3, -0.2), $B$)
      content((1.5, 2.5), $C$)
      // Triangle DEF
      let D = (5, 0)
      let E = (8, 0)
      let F = (6.5, 2.2)
      line(D, E, F, close: true, stroke: 0.7pt + rgb("#1976D2"))
      content((4.7, -0.2), $D$)
      content((8.3, -0.2), $E$)
      content((6.5, 2.5), $F$)
      // tick marks: single on AB=DE
      content((1.5, -0.3), text(7pt)[$|$])
      content((6.5, -0.3), text(7pt)[$|$])
      // double on BC=EF
      content((2.5, 1.25), text(7pt)[$||$])
      content((7.5, 1.25), text(7pt)[$||$])
      // triple on AC=DF
      content((0.5, 1.25), text(7pt)[$|||$])
      content((5.5, 1.25), text(7pt)[$|||$])
      content((4, -0.7), text(8pt)[SSS：三条对应边分别相等])
    }),
    caption: [SSS 判定：三条对应边分别相等 $arrow.r.double$ 全等。]
  )

  *一个警告先挂在这里*

  如果“一个角”站在外侧（即是其中一条已知边的*对角*而不是夹角），形状会不会也锁死？——*不一定*。这正是下一节要把 SSA 单独拎出来讨论的原因。现在只需记住一句话：*SAS 的 A 必须在两条边中间*。
]


#lab[
  *吸管三角形：哪些长度能围成三角形？*

  *材料*：吸管若干根、剪刀、直尺、记录表。

  *步骤*：

  + 剪出以下几组吸管（单位 cm）：$(3, 4, 5)$、$(2, 3, 6)$、$(5, 5, 5)$、$(1, 2, 3)$、$(4, 6, 9)$。
  + 逐组试着把三根吸管首尾相接，围成一个三角形。记录每组能否成功围合。
  + 对于能围成三角形的组，试着改变围法（换个角度、换个顺序）——形状会不会变？用力掰一掰，三角形会不会变形？
  + 对于不能围成三角形的组，观察：短的两根加起来和最长那根比，是什么关系？

  *观察*：
  - 能围成三角形的三根吸管满足什么条件？（提示：比较任意两根之和与第三根。）
  - 三根长度一旦固定，三角形形状是不是唯一的？这和 SSS 判定法有什么关系？
  - 如果把三角形的一个"关节"换成可以活动的铰链，形状还能保持不变吗？对比四边形试试。
]

#tryit[
  先写出能用的判定法缩写，若还缺条件则写“信息不足”：

  + $triangle A B C$ 与 $triangle D E F$：$A B = D E = 5$、$B C = E F = 4$、$A C = D F = 6$。
  + $triangle P Q R$ 与 $triangle S T U$：$P Q = S T$、$angle Q = angle T$、$Q R = T U$。
]

#history-note[
  约前 300 年，欧几里得（Euclid）在《几何原本》第一卷把 SAS 定为第 4 条公设（即命题 I.4，他认为"夹角相等、两边相等则三角形叠合"是不证自明的），而 SSS 则作为命题 I.8 被严格证出。不同公理体系下哪一条当公理、哪一条当定理可以互换，但"三条信息就能锁死三角形"这件事非常稳固——本节就从这两条最干净的判定法开始。
]

#blueprint[
  *工具一：SSS（边边边）*

  若 $triangle A B C$ 与 $triangle D E F$ 中

  $ A B = D E, quad B C = E F, quad A C = D F, $

  则 $triangle A B C tilde.eq triangle D E F$。

  *工具二：SAS（边角边）*

  若

  $ A B = D E, quad angle A = angle D, quad A C = D F, $

  （$angle A$ 必须是*边 $A B$ 与 $A C$ 的夹角*，$angle D$ 同理）则 $triangle A B C tilde.eq triangle D E F$。

  #figure(
    cetz.canvas(length: 1cm, {
      import cetz.draw: *
      // Triangle ABC with angle A highlighted
      let A = (0, 0)
      let B = (3.2, 0)
      let C = (0.8, 2.0)
      line(A, B, stroke: 0.7pt)
      line(A, C, stroke: 0.7pt)
      line(B, C, stroke: 0.4pt + luma(160))
      content((-0.3, -0.2), $A$)
      content((3.5, -0.2), $B$)
      content((0.6, 2.25), $C$)
      // angle arc at A
      arc(A, start: 0deg, stop: 68deg, radius: 0.6, stroke: 0.5pt + rgb("#B71C1C"))
      // Triangle DEF
      let D = (5, 0)
      let E = (8.2, 0)
      let F = (5.8, 2.0)
      line(D, E, stroke: 0.7pt + rgb("#1976D2"))
      line(D, F, stroke: 0.7pt + rgb("#1976D2"))
      line(E, F, stroke: 0.4pt + luma(160))
      content((4.7, -0.2), $D$)
      content((8.5, -0.2), $E$)
      content((5.6, 2.25), $F$)
      // angle arc at D
      arc(D, start: 0deg, stop: 68deg, radius: 0.6, stroke: 0.5pt + rgb("#B71C1C"))
      // labels
      content((1.6, -0.3), text(7pt)[$|$])
      content((6.6, -0.3), text(7pt)[$|$])
      content((0.2, 1.1), text(7pt)[$||$])
      content((5.2, 1.1), text(7pt)[$||$])
      content((4, -0.7), text(8pt)[SAS：两边及其*夹角*分别相等])
    }),
    caption: [SAS 判定：两条对应边*及其夹角*（红色弧）分别相等 $arrow.r.double$ 全等。]
  )

  *例 1（SSS）*：$triangle A B C$ 中，$A D$ 是底边 $B C$ 上的中线，且 $A B = A C$。求证 $triangle A B D tilde.eq triangle A C D$。

  证：在 $triangle A B D$ 与 $triangle A C D$ 中，
  - $A B = A C$（已知）
  - $B D = C D$（$D$ 是中点）
  - $A D = A D$（公共边）

  故 $triangle A B D tilde.eq triangle A C D$（`SSS`）。

  *例 2（SAS）*：$A D$ 是 $triangle A B C$ 的中线，延长 $A D$ 至 $E$ 使 $D E = A D$。求证 $triangle A B D tilde.eq triangle E C D$。

  证：在 $triangle A B D$ 与 $triangle E C D$ 中，
  - $B D = C D$（$D$ 是中点）
  - $angle A D B = angle E D C$（对顶角）
  - $A D = E D$（所作）

  故 $triangle A B D tilde.eq triangle E C D$（`SAS`）。

  *使用顺序建议*

  + 数一下条件里有几条边、几条角。
  + 若是*三条边* → 直接写 `SSS`。
  + 若是*两边一角* → *先查这个角是不是两条边的夹角*；是就 `SAS`，不是就别急着下结论（下一节的 SSA 反例在等你）。
  + 公共边、对顶角、等腰底角、垂直产生的直角都是常见“免费条件”，记得把它们也列进条件清单。
]

#self-check[
  用 SAS 判全等时，那个角必须是哪两条边的“夹角”？如果不是夹角，结论还成立吗？
]


#pitfall[
  *高频错误*

  ✗ 把“非夹角”当成“夹角”套 SAS
  → ✓ SAS 的 `A` 必须在两条已知边*中间*。角站在外侧（即是其中一边的对角）就不再是 SAS，要参考下一节的 SSA 讨论。

  ✗ 写“$A B = D E$、$B C = E F$、$A C = E F$”就宣布 SSS
  → ✓ 三条边要*一一对应*：$A B ↔ D E$、$B C ↔ E F$、$A C ↔ D F$。对应顶点错位了等于没证。

  ✗ 忘掉“公共边 / 公共角 / 对顶角”这些免费条件
  → ✓ 很多题能凑齐 SSS 或 SAS 的“临门一脚”就是公共元素；列条件清单时要主动把它们写进去。
]

#mastery[
  *基础*

  + 写出能用的判定法缩写；若只给了三项但还不够，说明为什么。
    - $A B = D E$、$B C = E F$、$A C = D F$
    - $A B = D E$、$angle A = angle D$、$A C = D F$
    - $A B = D E$、$B C = E F$、$angle B = angle E$
    - $A B = D E$、$B C = E F$、$angle A = angle D$（$angle A$ 在两条已知边之间吗？）

  + $triangle A B C$ 与 $triangle D E F$ 中 $A B = D E = 4$、$B C = E F = 5$、$angle B = angle E = 70 degree$。判定能否全等，并说明用了哪条判定法。

  *应用*

  + 等腰 $triangle A B C$ 中 $A B = A C$。作 $angle A$ 的平分线交 $B C$ 于 $D$。求证：$triangle A B D tilde.eq triangle A C D$，并由此得 $angle B = angle C$。

  + 正方形 $A B C D$ 中，$E$、$F$ 分别是 $B C$、$C D$ 的中点。求证：$A E = A F$。（提示：找一对全等三角形；看清夹角。）

  *挑战 ☞ 选做*

  + 已知 $triangle A B C$ 与 $triangle D E F$ 中 $A B = D E$、$A C = D F$，再补一项让结论成立。你会补 $B C = E F$（SSS）还是 $angle A = angle D$（SAS）？两者各有什么优势？能不能补 $angle B = angle E$？为什么不行？

  + 为什么 SSS 不需要给出任何角度就能锁死全等？用“三根绳子的围法”直觉给出一段一句话解释。

  #answer-cut[

  *基础*
  + `SSS` ✓；`SAS` ✓（$angle A$ 是 $A B, A C$ 的夹角）；`SAS` ✓（$angle B$ 是 $A B, B C$ 的夹角）；不够（$angle A$ 不是 $A B, B C$ 的夹角，落在 SSA 区，见下一节）。
  + 可以（SAS），$angle B$ 是 $A B$ 与 $B C$ 的夹角。

  *应用*
  + 在 $triangle A B D$ 与 $triangle A C D$ 中：$A B = A C$（已知）、$angle B A D = angle C A D$（$A D$ 是角平分线）、$A D = A D$（公共边）。由 `SAS` 得 $triangle A B D tilde.eq triangle A C D$，故对应角 $angle B = angle C$。
  + 在 $triangle A B E$ 与 $triangle A D F$ 中：$A B = A D$（正方形边）、$B E = D F$（都是边的一半）、$angle A B E = angle A D F = 90 degree$（$angle A B E$ 是 $A B, B E$ 的夹角）。由 `SAS` 得 $triangle A B E tilde.eq triangle A D F$，故 $A E = A F$。

  *挑战 ☞ 选做*
  + 补 $B C = E F$ 得 SSS——纯测量、不依赖角度，适合角度难量的题；补 $angle A = angle D$ 得 SAS——只要能读出夹角就非常快。补 $angle B = angle E$ 不行：$angle B$ 既不是 $A B, A C$ 的夹角，也不是 $A B, B C$ 的夹角对应方关系，落进 SSA 风险区（下一节详解）。
  + 三段确定长度的“硬杆”首尾铰接，角度都不能自由调——杆子一围起来，形状就只有一种，连同所有三个内角一起被自动固定。
  ]
]
