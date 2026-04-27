#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 平行线与三类角关系 <tool:ge02-parallel-line-angles>

#vocab[同位角 corresponding angles][内错角 alternate interior angles][同旁内角 co-interior angles][截线 transversal]

#crisis[
  几何证明里有一条铁律：*每一行结论必须给出名字明确的依据*——某条公理、某条已证定理、某条之前已经成立的等式。"看上去对"不算依据。

  小华在作业里写道：

  > "因为 $ell_1 parallel ell_2$（已知），所以 $angle 1 = angle 5$。"

  老师的批改：*✗ 没有依据。哪条定理保证了 $angle 1 = angle 5$？*

  小华愣住了——他*视觉上*确信平行线被截就有等角，可一旦要写下"凭什么"就卡了：

  - 两条平行线被截线截出 $8$ 个角。其中*哪些*角必然相等？*哪些*角必然互补？*哪些*相互之间没有任何固定关系？
  - 同样是"$angle 1$ 和 $angle 5$"这个组合，老师为什么说应当写"同位角相等"，而不是"内错角相等"？这两类角在图中怎么区分？
  - 反过来，如果题目只告诉一对角相等，能不能据此*证明*两条线平行？该用哪条定理？

  *卡住的本质*：缺少"角关系命名 $+$ 与平行的等价规则"，几何证明里所有涉及平行线的步骤都*只能写到'看起来对'就停住*——既无法引用，也无法被验证。

  *本节要做的*：把"两平行线被截"产生的 $8$ 个角分成 $3$ 个有名字的家族（同位、内错、同旁内），并把每个家族与平行的关系*写成可以双向引用的等价定理*。
]

#discovery[
  *从一张图说起*

  两条直线 $ell_1$、$ell_2$ 被第三条直线 $t$ 所截，交点分别为 $P$、$Q$。这条 $t$ 就叫*截线* transversal。截线在两个交点处一共产生 $8$ 个角。按位置分，它们可以两两分类，得到*三个家族*：

  #figure(
    cetz.canvas(length: 1cm, {
      import cetz.draw: *
      // Two parallel horizontal lines
      line((-0.5, 2.5), (6.5, 2.5), stroke: 0.7pt)
      content((6.7, 2.5), $ell_1$, anchor: "west")
      line((-0.5, 0.5), (6.5, 0.5), stroke: 0.7pt)
      content((6.7, 0.5), $ell_2$, anchor: "west")
      // Transversal (slanted)
      line((0.5, -0.3), (5.5, 3.3), stroke: (paint: blue, thickness: 0.8pt))
      content((5.6, 3.5), $t$, anchor: "south-west", fill: blue)
      let P = (4.389, 2.5)
      let Q = (1.611, 0.5)
      circle(P, radius: 0.06, fill: black, stroke: none)
      circle(Q, radius: 0.06, fill: black, stroke: none)
      content(P, $P$, anchor: "north-west", padding: 4pt)
      content(Q, $Q$, anchor: "north-west", padding: 4pt)
      content((4.05, 2.75), text(8pt)[1])
      content((4.75, 2.75), text(8pt)[2])
      content((4.05, 2.25), text(8pt)[4])
      content((4.75, 2.25), text(8pt)[3])
      content((1.25, 0.75), text(8pt)[5])
      content((1.95, 0.75), text(8pt)[6])
      content((1.25, 0.25), text(8pt)[8])
      content((1.95, 0.25), text(8pt)[7])
    }),
    caption: [两平行线 $ell_1 parallel ell_2$ 被截线 $t$ 在 $P$、$Q$ 相交，产生 $8$ 个角。]
  )

  - *同位角*：在截线同一侧、各自相对被截线处于同一侧——如 $angle 2$ 与 $angle 6$、$angle 3$ 与 $angle 7$。
  - *内错角*：在截线两侧、都在两条平行线*内部*——如 $angle 4$ 与 $angle 6$、$angle 3$ 与 $angle 5$。
  - *同旁内角*：在截线同一侧、都在两条平行线*内部*——如 $angle 3$ 与 $angle 6$、$angle 4$ 与 $angle 5$。

  *从一条公设出发，把另两类推出来*

  几何里我们需要一个*起点*——一条无须证明、被默认接受的事实。在初中范围里把这条起点取作：

  $ "公设（同位角公设）：" quad ell_1 parallel ell_2 quad arrow.l.r.double quad "同位角相等." $

  这条公设其实是欧几里得第五公设的现代等价形式——为什么必须默认它，需要一个公设的位置？这是非欧几何的关键问题，超出初中范围（详见 history-note）。

  *推导内错角相等*

  取一对内错角 $angle 4$ 与 $angle 6$。需要证 $angle 4 = angle 6$。

  - $angle 4$ 与 $angle 2$ 是*对顶角*（在 $P$ 处由两条相交的直线 $ell_1$、$t$ 围成），所以 $angle 4 = angle 2$。
  - $angle 2$ 与 $angle 6$ 是*同位角*；由公设（已知 $ell_1 parallel ell_2$）得 $angle 2 = angle 6$。
  - 串起来：$angle 4 = angle 2 = angle 6$，即 $angle 4 = angle 6$。

  所以*内错角相等*不是新事实，而是"同位角公设 $+$ 对顶角相等"组合出的*推论*。

  *推导同旁内角互补*

  取一对同旁内角 $angle 3$ 与 $angle 6$。需要证 $angle 3 + angle 6 = 180 degree$。

  - $angle 3$ 与 $angle 2$ 是*邻补角*（在 $P$ 处共顶点、共一边、互为补角），所以 $angle 3 + angle 2 = 180 degree$。
  - 由公设：$angle 2 = angle 6$。
  - 代入：$angle 3 + angle 6 = angle 3 + angle 2 = 180 degree$。

  所以*同旁内角互补*同样是"同位角公设 $+$ 邻补角"的*推论*。

  *小结：三种角关系是同一件事的三张面孔*

  从同位角公设出发，加上*对顶角相等*与*邻补角和 $= 180 degree$*这两条已经熟悉的小事实，立刻得到：

  - 平行 $=>$ 同位角相等（公设）；
  - 平行 $=>$ 内错角相等（公设 $+$ 对顶角）；
  - 平行 $=>$ 同旁内角互补（公设 $+$ 邻补角）。

  *反向也成立*：每一条都可以反过来用——给出"角相等 / 互补"的条件，就能反推出"两线平行"。这把"证两线平行"变成了几何证明里第二大型的出口（第一大型出口是"证两三角形全等"）：*拎出一对合适的角，让它们在题目条件里落成"相等 / 互补"*，平行就证完了。

  小华那行作业的正确写法是：

  > "因为 $ell_1 parallel ell_2$（已知），$angle 1$ 与 $angle 5$ 是同位角（位置判定），所以 $angle 1 = angle 5$（*平行 $=>$ 同位角相等*）。"

  *依据明确*——这就是几何证明对"严谨"的要求。
]

#side-hack[
  用图上的三个家族卡位：

  - 看到“同一侧、同侧”→ 同位角，相等 $<=>$ 平行；
  - 看到“Z 字型”（内部、两侧）→ 内错角，相等 $<=>$ 平行；
  - 看到“C 字型 / 凵字型”（内部、同侧）→ 同旁内角，互补 $<=>$ 平行。

  “Z / C” 记忆图形在草稿纸上划一下，位置错不了。
]

#tryit[
  先猜再算，别急着翻 #blueprint：

  + 图中 $ell_1 parallel ell_2$，若 $angle 1 = 72 degree$（在 $ell_1$ 上截线同一侧外部）。求它在 $ell_2$ 上的*同位角*、*内错角*、*同旁内角*各是多少？
  + 已知两直线被第三条直线所截，同旁内角和为 $160 degree$。这两条直线*是否*平行？为什么？
]

#history-note[
  约前 300 年，欧几里得（Euclid）在《几何原本》中列出了著名的第五公设："若两直线与同一条截线相交，且同旁内角之和小于两个直角，则两直线在那一侧必相交。"这条公设后来引发了两千年的争论——直到 1829 年，俄国数学家罗巴切夫斯基（Lobachevsky）证明它*不能*从其余公设推出，由此打开了非欧几何的大门。现代初中教材把第五公设"翻译"成我们熟悉的"两直线平行 $<=>$ 同位角相等"，三类角关系就是同一件事的三种装扮。

  ☞ 历史接力 → 第五公设的争议最终在 $1829$ 年由罗巴切夫斯基解决，他的非欧几何成为广义相对论的数学基础——这是本书角关系故事的远端延伸。
]

#blueprint[
  *工具一：截线产生的三类角*

  两条直线被第三条直线（*截线*）所截，在两个交点处共产生 $8$ 个角。按位置分成三类：

  #table(
    columns: (1fr, 1.5fr, 1.5fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*名称*], [*位置描述*], [*平行条件下*],
    [同位角], [截线同一侧、各自在对应位置], [相等],
    [内错角], [截线两侧、都在内部（Z 形）], [相等],
    [同旁内角], [截线同一侧、都在内部（C 形）], [互补，即 $= 180 degree$],
  )

  #figure(
    cetz.canvas(length: 1cm, {
      import cetz.draw: *
      // Z-shape for alternate interior angles
      line((0, 2), (2.5, 2), stroke: 0.6pt)
      line((1, 0), (3.5, 0), stroke: 0.6pt)
      line((2.5, 2), (1, 0), stroke: 0.7pt + rgb("#1976D2"))
      content((1.25, 2.25), text(8pt)[内错角])
      arc((2.5, 2), start: 180deg, stop: 180deg + 42deg, radius: 0.5, stroke: 0.5pt + rgb("#B71C1C"))
      arc((1, 0), start: 0deg, stop: -42deg, radius: 0.5, stroke: 0.5pt + rgb("#B71C1C"))
      content((0.5, 1), text(9pt, fill: rgb("#1976D2"))[Z])
      // C-shape for co-interior angles
      line((5, 2), (7.5, 2), stroke: 0.6pt)
      line((5, 0), (7.5, 0), stroke: 0.6pt)
      line((6, 2), (6, 0), stroke: 0.7pt + rgb("#388E3C"))
      content((5.5, 2.25), text(8pt)[同旁内角])
      arc((6, 2), start: -90deg, stop: 0deg, radius: 0.4, stroke: 0.5pt + rgb("#B71C1C"))
      arc((6, 0), start: 0deg, stop: 90deg, radius: 0.4, stroke: 0.5pt + rgb("#B71C1C"))
      content((7.8, 1), text(9pt, fill: rgb("#388E3C"))[C])
    }),
    caption: [Z 形记忆内错角（相等），C 形记忆同旁内角（互补）。]
  )

  *工具二：平行 $<=>$ 角关系（双向）*

  以下三组等价表述，任取其一即可判断 / 推出“两直线平行”：

  $ ell_1 parallel ell_2 quad arrow.l.r.double quad "同位角相等" $

  $ ell_1 parallel ell_2 quad arrow.l.r.double quad "内错角相等" $

  $ ell_1 parallel ell_2 quad arrow.l.r.double quad "同旁内角互补" $

  这三条既可以*从平行推角关系*（正用），也可以*从角关系推平行*（反用）。选用哪一条完全看题目给的是哪一对角。

  *工具三：反向用法 —— “找一对等角 $=>$ 证平行”*

  在几何证明里，“证两线平行”几乎等价于“找到一对合适的角等式”。抓取路径：

  + 画出截线（或承认题目里某条线段充当截线）；
  + 在两个交点各挑一个角；
  + 判断它们是同位 / 内错 / 同旁内中的哪一种；
  + 验证“相等（同位 / 内错）”或“互补（同旁内）”。

  一旦成立，立刻写“所以 $ell_1 parallel ell_2$（某某角相等 $=>$ 两直线平行）”。

  *例 1*（正用）：$ell_1 parallel ell_2$，截线 $t$ 在 $P$ 与 $ell_1$ 相交、在 $Q$ 与 $ell_2$ 相交。若 $P$ 处某一角 $angle 1 = 118 degree$，求 $Q$ 处该角的同位角、内错角、同旁内角。

  解：同位角 $= 118 degree$；内错角与它位于截线两侧但都在内部，由“内错角 $=$ 同位角”得 $= 118 degree$；同旁内角与它在截线同侧且都在内部，由“和 $= 180 degree$”得 $= 62 degree$。

  *例 2*（反用）：已知图中 $angle A B C = angle B C D$（$B C$ 作为截线，$A B$ 与 $C D$ 是被截的两条直线），其中 $angle A B C$ 与 $angle B C D$ 是内错角。求证 $A B parallel C D$。

  证：$angle A B C = angle B C D$（已知），这两个角是 $A B$、$C D$ 被 $B C$ 所截产生的一对内错角，由“内错角相等 $=>$ 两直线平行”，所以 $A B parallel C D$。
]

#pitfall[
  *高频错误*

  ✗ 把“同位角”写成“位置一样”的模糊感觉
  → ✓ 同位角必须在*截线同一侧*且*各自相对于两条被截线位于同一侧*。用 Z / C 字型确认位置。

  ✗ 同旁内角当成“相等”
  → ✓ 同旁内角是*互补*（和 $= 180 degree$），不是相等。相等的是同位 / 内错。

  ✗ 忘记哪条线是“截线”
  → ✓ 截线是“*第三条*”线，是它截住前两条。同一张图里谁是截线，要先声明：如 $B C$ 截 $A B$、$C D$，或 $A C$ 截 $A B$、$C D$——同一组角对，随着截线切换可能落入不同的家族。

  ✗ 看见两个角相等就写“平行”
  → ✓ 必须先把这对角归入同位、内错、同旁内*某一家族*。如果它们俩是对顶角或邻补角，跟“平行”没关系。

  ✗ 反用时不写“依据”
  → ✓ 写出“由同位角相等 $=>$ 两直线平行”这类*具体判据名*，不要只写“所以平行”。
]

#mastery[
  *基础*

  + 两条直线被第三条直线所截。填“相等”“互补”或“不一定”：
    - 若两直线平行，同位角 \_\_\_\_；内错角 \_\_\_\_；同旁内角 \_\_\_\_。
    - 若同位角相等，两直线 \_\_\_\_；若同旁内角互补，两直线 \_\_\_\_。

  + 图中 $ell_1 parallel ell_2$，截线上一角为 $113 degree$。求与它构成同位、内错、同旁内的三个角。

  + 下列三对角分别是同位、内错、同旁内中的哪一种？（假设 $B C$ 截 $A B$、$C D$。）
    - $angle A B C$ 与 $angle B C D$（一上一下、两侧）
    - $angle A B C$ 与 $angle D C B$（同一侧、两个内部角）
    - $angle A B C$ 在 $ell_1$ 外侧、$angle E C F$ 在 $ell_2$ 外侧，且位置对应

  *应用*

  + 已知 $angle 1 = 75 degree$（在 $ell_1$ 上），$angle 2 = 75 degree$（在 $ell_2$ 上，与 $angle 1$ 构成同位角）。求证 $ell_1 parallel ell_2$。

  + 已知 $angle A B C$ 与 $angle B C D$ 是 $A B$、$C D$ 被 $B C$ 所截的一对同旁内角，且 $angle A B C + angle B C D = 180 degree$。求证 $A B parallel C D$。

  + 直线 $ell$ 与两条平行线 $A B$、$C D$ 分别相交于 $F$、$G$。沿 $A B$ 看，$A$ 在 $F$ 左侧；沿 $C D$ 看，$C$ 在 $G$ 左侧；$F$、$G$ 都落在 $ell$ 上。若 $angle A F G = 108 degree$，求 $angle C G F$ 与 $angle D G F$。

  *挑战 ☞ 选做*

  + 已知 $angle 1 + angle 2 = 180 degree$（一对同旁内角），求证用*内错角*这条路径也能完成相同的证明（即写出一条“由内错角相等推平行”的证明链）。

  + 两条直线 $ell_1$、$ell_2$ 被两条*不同*的截线 $t_1$、$t_2$ 分别截出两组同位角。若 $t_1$ 上同位角相等而 $t_2$ 上同位角*不*相等，能否得出 $ell_1 parallel ell_2$？为什么？

  + 反过来问：如果你手上只有“内错角相等”这一条判据，能不能推出“同位角相等”“同旁内角互补”？

  #answer-cut[

  *基础*
  + 相等（同位角相等）/ 相等（内错角相等）/ 互补（同旁内角互补）；平行 / 平行。
  + 同位角 $= 113 degree$（同位角相等）；内错角 $= 113 degree$（内错角相等）；同旁内角 $= 67 degree$（同旁内角互补）。
  + 内错角；同旁内角；同位角。

  *应用*
  + 由 $angle 1 = angle 2$（同位角）$=>$ $ell_1 parallel ell_2$（同位角相等 $=>$ 两直线平行）。
  + 由 $angle A B C + angle B C D = 180 degree$（同旁内角互补）$=>$ $A B parallel C D$（同旁内角互补 $=>$ 两直线平行）。
  + 由 $A B parallel C D$ 被 $ell$ 所截：$angle A F G$ 与 $angle D G F$ 都是两平行线之间的内角，分处 $ell$ 两侧，是一对*内错角*，故 $angle D G F = angle A F G = 108 degree$；$angle C G F$ 与 $angle D G F$ 在 $C D$ 上构成邻补角，故 $angle C G F = 180 degree - 108 degree = 72 degree$。

  *挑战 ☞ 选做*
  + 设原题中同旁内角 $angle 1$、$angle 2$ 满足 $angle 1 + angle 2 = 180 degree$。取 $angle 2$ 的邻补角 $angle 2'$，则 $angle 2' = 180 degree - angle 2 = angle 1$。$angle 1$ 与 $angle 2'$ 恰好是一对内错角，相等 $=>$ 两直线平行。
  + 不能。第一条截线上同位角相等说明的仍然是同一对关系；但“两直线平行”是一种*对一切截线都同样成立*的性质——若不同截线得到的结论矛盾，题目本身或测量就有问题。具体而言，如果 $t_1$ 给出的同位角相等属实，则 $ell_1 parallel ell_2$；再由 $ell_1 parallel ell_2$ 应当推出 $t_2$ 上同位角也相等。两者矛盾即说明至少有一处数据错了。
  + 能。给定内错角 $angle 4 = angle 6$，同位角 $angle 2 = angle 4$（对顶），故 $angle 2 = angle 6$（同位）。同理同旁内角 $angle 3$ 满足 $angle 3 + angle 4 = 180 degree$（邻补），由 $angle 4 = angle 6$ 得 $angle 3 + angle 6 = 180 degree$（同旁内角互补）。
  ]
]
