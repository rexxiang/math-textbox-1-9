#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 证明链的书写：已知 → 推出 → 结论 <tool:ge01-two-step-proof-chain>

#vocab[证明 proof][证明链 proof chain][理由栏 reason column][两步证明 two-step proof]

#crisis[
  前两节我们发明了“全等”这套语言，也拿到了四位判定大将。可是一旦进入考试题，很多同学仍然卡在同一处：*知道要用 SAS，可不知道怎么“写出来”*。

  几何证明的字样看起来像一堆“因为……所以……”的复读，但它的内核其实非常直接：*从已知出发，用定义 / 判定 / 定理 / 公理，一步一步推出结论*。每一步都必须能在前面的条件或者几何常识里*找到理由*——写不出理由的一步就是漏洞。

  *这一节要把“证明”的写法压成一张固定格式：上栏是已知与推导，下栏是每一步的“为什么”。一旦这个骨架写对，两步证明就稳住了。*
]

#discovery[
  *一条证明链的最小骨架*

  任何几何证明都可以拆成这三段：

  + *已知*：题目给你的条件（原样抄下，不加不减）。
  + *推出*：用判定法 / 定义 / 已证定理等，*一步一步* 往前挪。每一步都要写理由。
  + *结论*：题目要求你证的东西（也原样抄，不要偷改）。

  “一步”通常长这样：

  $ "因为"  "条件 A 和条件 B"，quad "所以"  "结论 C" quad ("理由：某定义 / 某定理 / 某判定"). $

  这不是客套，而是*可检验性*的硬要求：读者随时能在旁边标出“这一步是靠什么成立的”。

  *标准两栏法：陈述 $|$ 理由*

  把证明整理成两栏，左边写“得到了什么”，右边写“凭什么”。这就是教科书最常用、改卷老师最容易打对勾的格式。

  举例：证 $triangle A B D tilde.eq triangle A C D$，其中 $A D$ 平分 $angle B A C$，$A B = A C$。

  #table(
    columns: (2fr, 2fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*陈述（我得到什么）*], [*理由（凭什么）*],
    [$A B = A C$], [已知],
    [$angle B A D = angle C A D$], [$A D$ 平分 $angle B A C$（已知）],
    [$A D = A D$], [公共边],
    [$triangle A B D tilde.eq triangle A C D$], [`SAS` 判定（#secref("ge01-sss-sas"))],
    [$B D = C D$], [全等对应边相等（#secref("ge01-congruence-correspondence"))],
  )

  #figure(
    cetz.canvas(length: 1cm, {
      import cetz.draw: *
      let A = (2, 3)
      let B = (0, 0)
      let C = (4, 0)
      let D = (2, 0)
      // Triangle
      line(B, C, stroke: 0.7pt)
      line(A, B, stroke: 0.7pt)
      line(A, C, stroke: 0.7pt)
      // Angle bisector
      line(A, D, stroke: 0.5pt + luma(120))
      // Labels
      content((2, 3.3), $A$)
      content((-0.3, -0.2), $B$)
      content((4.3, -0.2), $C$)
      content((2, -0.35), $D$)
      // Equal side marks
      content((0.8, 1.7), text(7pt)[$|$])
      content((3.2, 1.7), text(7pt)[$|$])
      // Angle bisector marks
      arc(A, start: -90deg + 27deg, stop: -90deg, radius: 0.45, stroke: 0.4pt + rgb("#B71C1C"))
      arc(A, start: -90deg, stop: -90deg - 27deg, radius: 0.45, stroke: 0.4pt + rgb("#B71C1C"))
    }),
    caption: [等腰 $triangle A B C$（$A B = A C$），$A D$ 平分 $angle B A C$——典型的"先全等、后对应"证明配置。]
  )

  注意几个细节：

  - 每一行*只做一件事*，不混并陈述。
  - “公共边”“对顶角”“平分”“垂直”都要单独占一行写出，虽然看起来显而易见——*不写就是不能用*。
  - 最后一步要明确点出“由全等得对应边 / 对应角相等”这条出口。

  *两步证明：典型的“先全等，后对应”*

  初中几何里超过一半的证明题都落在这个模版上：

  #table(
    columns: (0.4fr, 3fr),
    inset: 6pt,
    stroke: 0.4pt,
    [第 1 步], [*证出全等* —— 集齐三项条件（SSS / SAS / ASA / AAS），写出 $triangle dots tilde.eq triangle dots$。],
    [第 2 步], [*读出结论* —— 由全等得对应边 / 对应角相等，拎出题目要的那一条。],
  )

  绝大多数“证两边相等 / 两角相等 / 两线平行 / 两直线垂直”的几何题，都能套这个两步模版。先想“我要证的东西能不能翻译成*某对应边 / 对应角的结论*”，翻译成了，剩下的就是凑出一对全等三角形。
]

#side-hack[
  写证明先列三栏草稿：

  + *要证*（抄题目结论）；
  + *已知*（抄条件，一条一行）；
  + *可用中间桥*（公共边 / 对顶角 / 平分 / 垂直 / 平行线角关系 / 中点）。

  凑够三项条件 → 选判定法 → 正式写两栏。草稿阶段的“够三项没够三项”决定能不能动笔。
]

#tryit[
  先在草稿纸上只摆“三栏草稿”，别急着正式写：

  + 已知 $A B = A C$，$A D perp B C$ 于 $D$。要证：$B D = C D$。先列“要证 / 已知 / 中间桥”，再选判定法。
  + 已知 $A B parallel C D$，$O$ 为 $A D$ 与 $B C$ 的交点。要证：若 $A O = D O$，则 $B O = C O$。先列三栏草稿。
]

#history-note[
  "证明"这件事最早可追溯到泰勒斯（Thales，约前 624–546 年）——这位古希腊米利都人据说是第一个给几何命题做出演绎论证的人。约前 300 年，欧几里得（Euclid）在《几何原本》里把这套方法体系化：从 5 条公设和 5 条公理出发，用 465 个命题搭起一条无断点的推理链，每一步都必须在前面的陈述、公设或已证定理里有依据。今天各版初中教科书的"两栏证明"（陈述 / 理由）正是这套传统的缩影。它逼着初学者把"心里过得去"升级成"写在纸上挑不出毛病"。
]

#blueprint[
  *工具一：证明链的骨架*

  任何几何证明都是：

  $ "已知" arrow "(一步一步的)推出" arrow "结论". $

  每“一步”都必须写出：*我在用的条件*$+$*我得到的结论*$+$*这一步的理由*。

  *工具二：标准两栏格式*

  用“陈述 $|$ 理由”两栏把过程写清楚。常见的“理由”清单：

  #table(
    columns: (1fr, 2fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*来源*], [*常见写法*],
    [题目直接给的], [已知],
    [图中公共元素], [公共边 / 公共角 / 对顶角],
    [定义], [$A D$ 平分 $angle B A C$ / $D$ 为 $B C$ 中点 / $A D perp B C$ 于 $D$],
    [前置章节定理], [对顶角相等、邻补角互补（#secref("pf07-angles"))；内错角相等（#secref("pf08-parallel-transversal"))；三角形内角和 $= 180 degree$（#secref("pf08-triangles-angle-sum"))],
    [判定法], [`SSS` / `SAS` / `ASA` / `AAS`（#secref("ge01-sss-sas") / #secref("ge01-asa-aas-ssa")）],
    [对应元素相等], [由全等得对应边 / 对应角相等（#secref("ge01-congruence-correspondence"))],
  )

  *工具三：两步证明模版*

  + *第 1 步*：证两个三角形全等。
  + *第 2 步*：用“对应元素相等”拿到结论。


  #figure(
    cetz.canvas(length: 1cm, {
      import cetz.draw: *
      // Two triangles sharing edge AB||CD through point O
      let A = (0, 1.5)
      let B = (0, -1.5)
      let O = (2.5, 0)
      let C = (5, 1.2)
      let D = (5, -1.2)
      // Triangle ABO
      line(A, B, stroke: 0.7pt)
      line(A, O, stroke: 0.7pt)
      line(B, O, stroke: 0.7pt)
      // Triangle CDO
      line(C, D, stroke: 0.7pt + rgb("#1976D2"))
      line(C, O, stroke: 0.7pt + rgb("#1976D2"))
      line(D, O, stroke: 0.7pt + rgb("#1976D2"))
      // Labels
      content((-0.3, 1.7), $A$)
      content((-0.3, -1.7), $B$)
      content((2.5, 0.35), $O$)
      content((5.3, 1.4), $C$)
      content((5.3, -1.4), $D$)
      // Mark equal sides
      content((1.1, 0.95), text(7pt)[$|$])
      content((3.95, 0.8), text(7pt)[$|$])
      content((1.1, -0.95), text(7pt)[$||$])
      content((3.95, -0.8), text(7pt)[$||$])
      // Vertical angle mark at O
      circle(O, radius: 0.06, fill: black, stroke: none)
    }),
    caption: [两三角形共顶点 $O$：常见的“对顶角 $+$ 两对等边”构型——第 1 步证 $triangle A B O tilde.eq triangle C D O$，第 2 步取对应边 / 角。]
  )

  *完整范例*：已知 $A B = A C$，$angle 1 = angle 2$（即 $A D$ 平分 $angle B A C$），$D$ 在 $B C$ 上。求证 $B D = C D$ 且 $A D perp B C$。

  证明：

  #table(
    columns: (2fr, 2fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*陈述*], [*理由*],
    [$A B = A C$], [已知],
    [$angle B A D = angle C A D$], [$A D$ 平分 $angle B A C$（已知）],
    [$A D = A D$], [公共边],
    [$triangle A B D tilde.eq triangle A C D$], [`SAS`],
    [$B D = C D$], [全等对应边相等],
    [$angle A D B = angle A D C$], [全等对应角相等],
    [$angle A D B + angle A D C = 180 degree$], [邻补角],
    [$angle A D B = 90 degree$], [由前两行联立],
    [$A D perp B C$], [垂直的定义],
  )

  证毕。

  这就是一条教科书式的*两步证明*：前半段凑 SAS 得全等，后半段借全等把“要证的两件事”一次拿下来。
]

#pitfall[
  *高频错误*

  ✗ 把要证的结论当条件用
  → ✓ 要证 $B D = C D$，推导里就不能再“设 $B D = C D$”——那叫循环论证。结论必须出现在*最后一行*，并且是一条有理由的推出。

  ✗ “显然成立”/“易证” 写在理由栏
  → ✓ 评卷以“能否指出具体依据”为准，“显然”不是依据。每一步都要点名某条定义 / 定理 / 判定 / 已知。

  ✗ 写了三项条件就直接写结论，没标 `SSS` / `SAS` / `ASA` / `AAS`
  → ✓ 必须显式写出判据名，读者才知道这一步靠哪条定律。判据不同，对条件的严格要求也不同（例如 SAS 里那个角必须是夹角）。

  ✗ 忘记把“公共边”“对顶角”“中点平分”“垂直产生直角”写进陈述
  → ✓ 这些都不算“自动成立”，必须单独写一行并给出理由（公共 / 对顶 / 定义）。否则这一步缺条件。

  ✗ 错乱字母顺序（例如写 $triangle A B C tilde.eq triangle E D F$，之后却用 $A B = D E$）
  → ✓ 字母顺序决定对应关系，写完 $tilde.eq$ 那一刻就锁死了对应；后面使用对应边 / 角时必须严格按这张对应表。
]

#mastery[
  *基础*

  + 用两栏格式完成下列证明：已知 $A B = C D$，$A B parallel C D$。求证 $triangle A B O tilde.eq triangle C D O$，其中 $O$ 为 $A C$、$B D$ 的交点。

  + 下列证明哪些“理由”写得*不够具体*？把它们修到位。
    - 陈述：$angle A = angle D$；理由：图上看出来。
    - 陈述：$A B = D E$；理由：显然。
    - 陈述：$triangle A B C tilde.eq triangle D E F$；理由：有三项条件。

  + 已知 $triangle A B C$ 中 $A B = A C$，$D$ 为 $B C$ 中点。用两步模版证 $angle B = angle C$。

  *应用*

  + 已知 $angle 1 = angle 2$（$A D$ 平分 $angle B A C$），$A B = A C$。求证 $B D = C D$（沿用上文完整范例之外的写法：只需要写两步模版，两栏证明足够）。

  + 已知 $A B parallel C D$，$A B = C D$。求证 $A D parallel B C$。（提示：连 $A C$，证 $triangle A B C tilde.eq triangle C D A$，再读出对应角。）

  + 已知 $triangle A B C$ 与 $triangle A' B' C'$ 中，$A B = A' B'$，$angle B = angle B'$，$angle C = angle C'$。求证 $A C = A' C'$。（写两栏证明。）

  *挑战 ☞ 选做*

  + 点 $P$ 在 $angle A O B$ 的内部，过 $P$ 向 $O A$、$O B$ 作垂线，垂足为 $M$、$N$。若 $P M = P N$，求证 $O P$ 平分 $angle A O B$。（提示：先证 $triangle O P M tilde.eq triangle O P N$。）

  + 已知 $triangle A B C$ 为正三角形，在 $A B$、$B C$、$C A$ 上分别取点 $P$、$Q$、$R$ 使 $A P = B Q = C R$。求证 $triangle P Q R$ 也是正三角形。（只需构思“一次全等多次复用”的证明链，两栏写出一对全等即可。）

  + 说明：为什么“证两线平行”常常也能套“先全等、后对应”这条两步模版？（提示：平行性常由内错角相等 / 同位角相等来推出，而这些角相等又常源自全等。）

  #answer-cut[

  *基础*
  + 陈述 / 理由：$A B = C D$ / 已知；$A B parallel C D$ / 已知；$angle A B O = angle C D O$ / 两直线平行，内错角相等（$B D$ 截 $A B$、$C D$）；$angle B A O = angle D C O$ / 同理（$A C$ 截）；$triangle A B O tilde.eq triangle C D O$ / `AAS`（$angle A B O$、$A B$、$angle B A O$ 与对应三项）。或更直接 `ASA`：$angle A B O$、$A B$（对应 $C D$）、$angle B A O$。
  + 三条都要修。具体：
    - “$angle A = angle D$；图上看出来” → 理由要写“已知”或由某条定理 / 平行线 / 对顶角推出，不能“看图”。
    - “$A B = D E$；显然” → 必须替换为“已知”或某一具体推理。
    - “$triangle A B C tilde.eq triangle D E F$；有三项条件” → 要写明判据名（`SSS` / `SAS` / `ASA` / `AAS`）。
  + 陈述 / 理由：$A B = A C$ / 已知；$B D = C D$ / $D$ 为 $B C$ 中点；$A D = A D$ / 公共边；$triangle A B D tilde.eq triangle A C D$ / `SSS`；$angle B = angle C$ / 全等对应角相等。

  *应用*
  + 陈述：$A B = A C$（已知）；$angle B A D = angle C A D$（$A D$ 平分 $angle B A C$）；$A D = A D$（公共边）；$triangle A B D tilde.eq triangle A C D$（`SAS`）；$B D = C D$（对应边）。
  + 连 $A C$。陈述：$A B = C D$（已知）；$A B parallel C D => angle B A C = angle D C A$（内错角，$A C$ 是截线）；$A C = C A$（公共边）；$triangle A B C tilde.eq triangle C D A$（`SAS`）；由对应角 $angle B C A = angle D A C$；所以 $A D parallel B C$（内错角相等 $=>$ 两直线平行）。
  + 陈述：$angle B = angle B'$（已知）；$angle C = angle C'$（已知）；$A B = A' B'$（已知）；$triangle A B C tilde.eq triangle A' B' C'$（`AAS`：两角和 $angle B$ 的对边 $A C$ / $A' C'$ 之*另一对应*——注意 $A B$ 是 $angle C$ 的对边）；$A C = A' C'$（对应边）。

  *挑战 ☞ 选做*
  + 陈述：$angle O M P = angle O N P = 90 degree$（垂直定义）；$P M = P N$（已知）；$O P = O P$（公共边）。在直角三角形 $triangle O M P$、$triangle O N P$ 中由直角三角形三边关系（☞ 正式证明见勾股定理章节）：$O M = sqrt(O P^2 - P M^2) = sqrt(O P^2 - P N^2) = O N$；再由 `SSS`（$O P$、$P M = P N$、$O M = O N$）得 $triangle O P M tilde.eq triangle O P N$，对应角 $angle M O P = angle N O P$，所以 $O P$ 平分 $angle A O B$。
  + 在 $triangle A P R$ 与 $triangle B Q P$ 中：$A P = B Q$（已知）、$angle A = angle B = 60 degree$（正三角形）、$A R = A C - C R = A B - A P = B P$（由 $A B = A C$ 与已知长度等式）；`SAS` 得 $triangle A P R tilde.eq triangle B Q P$，故 $P R = Q P$。同理 $Q P = R Q$，于是 $triangle P Q R$ 三边相等，是正三角形。
  + 因为“两线平行”等价于“被第三线所截时同位角 / 内错角相等”，而这种“两角相等”往往正是一对全等三角形的对应角结论。所以真实发生的路径是：先拼一对全等三角形 → 读出对应角相等 → 由同位 / 内错角相等判定平行。两步模版照用。
  ]
]
