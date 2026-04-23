#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref
#import "../../lib/diagram-packages.typ": cetz

== 平行线与三类角关系 <tool:ge02-parallel-line-angles>

#vocab[同位角 corresponding angles / 内错角 alternate interior angles / 同旁内角 co-interior angles / 截线 transversal]

#crisis[
  上一章的每一道证明，几乎都要用到“内错角相等”“同位角相等”这种“两条平行线被第三条直线截到”之后产生的等角。可它们不是从天上掉下来的——它们背后有一整个*角关系家族*，是平行线最珍贵的馈赠。

  *为什么“平行”这件事能稳定地产生一组特定的等角、补角？这三种角关系（同位 / 内错 / 同旁内）到底说的是同一件事还是三件事？反过来，能不能拿这些角关系当“证平行”的工具用？*

  这节要一次把这三件事拼到同一张图里说清。
]

#history-note[
  欧几里得《几何原本》第五公设本身讲的就是“平行”：若两直线与同一条直线相交，形成的两个同旁内角之和小于两个直角，则两直线在那一侧会相交。现代初中教材把这条公设“翻译”成我们熟悉的“两直线平行 $<=>$ 同位角相等”，三类角关系就是同一件事的三种装扮。
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
      // Intersection points (numerical)
      // line slope 3.6/5 = 0.72; x at y=2.5 => (2.5+0.3)/0.72 + 0.5 => 0.5 + 2.8/0.72 ≈ 4.389
      // x at y=0.5 => 0.5 + 0.8/0.72 ≈ 1.611
      let P = (4.389, 2.5)
      let Q = (1.611, 0.5)
      circle(P, radius: 0.06, fill: black, stroke: none)
      circle(Q, radius: 0.06, fill: black, stroke: none)
      content(P, $P$, anchor: "north-west", padding: 4pt)
      content(Q, $Q$, anchor: "north-west", padding: 4pt)
      // Label 4 of the 8 angles: 1, 2 at P; 3, 4 at Q
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

  - *同位角*：在截线同一侧，且各自处于被截线的同侧——如 $angle 2$ 与 $angle 6$，$angle 3$ 与 $angle 7$。它们的位置看起来“重合了一下”。
  - *内错角*：在截线两侧（一左一右），且都在两条平行线*内侧*——如 $angle 4$ 与 $angle 6$，$angle 3$ 与 $angle 5$。
  - *同旁内角*：在截线同一侧，且都在两条平行线*内侧*——如 $angle 3$ 与 $angle 6$，$angle 4$ 与 $angle 5$。

  *为什么“平行”能逼出这些角关系*

  看 $angle 2$ 和 $angle 6$（一对同位角）。截线 $t$ 与 $ell_1$ 交出 $angle 2$，$t$ 与 $ell_2$ 交出 $angle 6$。若 $ell_1 parallel ell_2$，则从截线的角度“看过去”，两条平行线“方向完全一样”——所以它们和截线夹出的这两个角*必须相等*。这就是同位角相等的几何直觉。

  一旦同位角相等这条抓住了，其他两条是自动的：
  - *内错角 $=$ 同位角 $+$ 对顶角*。如 $angle 4 = angle 2$（对顶），$angle 2 = angle 6$（同位），所以 $angle 4 = angle 6$。
  - *同旁内角互补 $=$ 同位角 $+$ 邻补角*。如 $angle 3 + angle 2 = 180 degree$（邻补），$angle 2 = angle 6$（同位），所以 $angle 3 + angle 6 = 180 degree$。

  也就是说，*三种角关系本质上是同一件事的三种说法*——只是你在图中“选取哪两个角”不同罢了。

  *反向使用：角相等 $=>$ 平行*

  这层关系完全可以*反着用*。它们等价于“平行 $<=>$ 某组角相等”。这一点前置章节 #secref("pf08-parallel-transversal") 已经做过；本节把三条合并到一张图里：

  #table(
    columns: (2fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*等价条件*], [*方向*],
    [两直线平行 $<=>$ 同位角相等], [同位],
    [两直线平行 $<=>$ 内错角相等], [内错],
    [两直线平行 $<=>$ 同旁内角互补（和 $= 180 degree$）], [同旁内],
  )

  这就把“证两线平行”变成了几何证明里第二大型的出口（第一大型出口是“证两三角形全等”）：*拎出一对合适的角，让它们在题目条件里落成“相等 / 互补”*，平行就证完了。
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
  + 若你想证 $A B parallel C D$，图里给了“$angle A B C = angle B C D$”这条等式。你用的是同位、内错，还是同旁内关系？
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

  *挑战*

  + 已知 $angle 1 + angle 2 = 180 degree$（一对同旁内角），求证用*内错角*这条路径也能完成相同的证明（即写出一条“由内错角相等推平行”的证明链）。

  + 两条直线 $ell_1$、$ell_2$ 被两条*不同*的截线 $t_1$、$t_2$ 分别截出两组同位角。若 $t_1$ 上同位角相等而 $t_2$ 上同位角*不*相等，能否得出 $ell_1 parallel ell_2$？为什么？

  + 反过来问：如果你手上只有“内错角相等”这一条判据，能不能推出“同位角相等”“同旁内角互补”？

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + 相等 / 相等 / 互补；平行 / 平行。
  + 同位角 $= 113 degree$；内错角 $= 113 degree$；同旁内角 $= 67 degree$。
  + 内错角；同旁内角；同位角。

  *应用*
  + 由 $angle 1 = angle 2$（同位角）$=>$ $ell_1 parallel ell_2$（同位角相等 $=>$ 两直线平行）。
  + 由 $angle A B C + angle B C D = 180 degree$（同旁内角互补）$=>$ $A B parallel C D$（同旁内角互补 $=>$ 两直线平行）。
  + 由 $A B parallel C D$ 被 $ell$ 所截：$angle A F G$ 与 $angle D G F$ 都是两平行线之间的内角，分处 $ell$ 两侧，是一对*内错角*，故 $angle D G F = angle A F G = 108 degree$；$angle C G F$ 与 $angle D G F$ 在 $C D$ 上构成邻补角，故 $angle C G F = 180 degree - 108 degree = 72 degree$。

  *挑战*
  + 设原题中同旁内角 $angle 1$、$angle 2$ 满足 $angle 1 + angle 2 = 180 degree$。取 $angle 2$ 的邻补角 $angle 2'$，则 $angle 2' = 180 degree - angle 2 = angle 1$。$angle 1$ 与 $angle 2'$ 恰好是一对内错角，相等 $=>$ 两直线平行。
  + 不能。第一条截线上同位角相等说明的仍然是同一对关系；但“两直线平行”是一种*对一切截线都同样成立*的性质——若不同截线得到的结论矛盾，题目本身或测量就有问题。具体而言，如果 $t_1$ 给出的同位角相等属实，则 $ell_1 parallel ell_2$；再由 $ell_1 parallel ell_2$ 应当推出 $t_2$ 上同位角也相等。两者矛盾即说明至少有一处数据错了。
  + 能。给定内错角 $angle 4 = angle 6$，同位角 $angle 2 = angle 4$（对顶），故 $angle 2 = angle 6$（同位）。同理同旁内角 $angle 3$ 满足 $angle 3 + angle 4 = 180 degree$（邻补），由 $angle 4 = angle 6$ 得 $angle 3 + angle 6 = 180 degree$（同旁内角互补）。
]
