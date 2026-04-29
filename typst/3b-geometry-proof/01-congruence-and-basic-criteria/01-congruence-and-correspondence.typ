#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, lab, answer-cut, self-check
#import "../../lib/diagram-packages.typ": cetz

=== 全等的含义与对应关系 <tool:ge01-congruence-correspondence>

#vocab[全等 congruent][对应顶点 corresponding vertices][对应边 corresponding sides][对应角 corresponding angles][记号 $tilde.eq$]

#crisis[
  $1889$ 年，巴黎万国博览会的标志——埃菲尔铁塔——由 $18\,000$ 多个铁制零件拼装而成。这些零件并不在同一个工厂里制造，而是分散在法国各地数十家车间。

  设计师古斯塔夫·埃菲尔（Gustave Eiffel）在图纸上写下一条要求："*同一型号的零件必须可以互换*"——比如所有标号为'$T 7$ 型铆接支架'的三角形零件，无论出自 A 厂还是 B 厂，都必须能装到任何位置上。

  这意味着：当 A 厂的工程师指着自己车间的支架说"两个看起来一样"时，是远远不够的——*差 $0.5$ 毫米的孔位就装不进去*。他们必须把"一样"翻译成可以*独立检验*、可以*书面规定*的精确条件：哪条边等于哪条边，到毫米数；哪个角等于哪个角，到度数。每个验收员只需用尺子和量角器，就能判定这个零件合不合格。

  几何证明里也是同一个困难。考试题写"$triangle A B C$ 与 $triangle D E F$ 是同一个三角形"，可这句话在证明的第二步立刻就用不上：

  - 你想用 $A B = D E$，可凭什么知道是 $D E$ 而不是 $D F$？
  - 你想用 $angle B = angle E$，可凭什么是 $E$ 而不是 $F$？

  "看起来一样"无法回答这种问题——只要在两个三角形的*顶点之间没有一张明确的对照表*，就拎不出任何具体的边角等式来推下一步。

  *什么时候我们才能说两个三角形"完全一样"？这个"一样"必须精确到什么程度，才能在证明里被一行一行地引用？*
]

#tryit[
  若 $triangle P Q R tilde.eq triangle X Y Z$，写出三对对应边与三对对应角。
]

#discovery[
  先用物理动作建立直觉。

  把两个三角形剪下来，任意翻转、旋转、平移。如果能叠得严丝合缝——*每条边贴每条边、每个角贴每个角*——就叫它们*全等*。这意味着同时满足六条等式：

  - 三条对应边分别相等；
  - 三个对应角分别相等。

  注意"分别"两个字——光说"两个三角形里都有一条长 $5$ 的边"完全不够。两个 $5$ 必须被指认为是*互相对应*的那两条；不然这种相等是巧合，不能证明两个三角形相同。

  但光有物理直觉还不够——写下来时，必须先约定"谁对谁"。

  考虑两组三角形 $triangle A B C$ 与 $triangle D E F$。当你尝试把它们叠到一起时，*实际上是在做一张顶点对照表*。可同样这两个三角形，可能存在不同的对照方式：

  *方式 1*：$A <-> D$、$B <-> E$、$C <-> F$。这意味着：
  $ A B = D E, quad B C = E F, quad A C = D F, $
  $ angle A = angle D, quad angle B = angle E, quad angle C = angle F. $

  *方式 2*：$A <-> E$、$B <-> D$、$C <-> F$。这意味着另一组完全不同的等式：
  $ A B = E D, quad B C = D F, quad A C = E F, $
  $ angle A = angle E, quad angle B = angle D, quad angle C = angle F. $

  这两套等式*完全不同*。同一对三角形，写成"全等"的*哪种*对应方式，决定了你后面能拎出哪些具体等式。所以光说"全等"是不够的——必须把*顶点对照表*一并指定。

  几何家的解决方案，是用字母顺序把对照表压进记号里。写

  $ triangle A B C tilde.eq triangle D E F $

  约定为：左侧第 $1$ 个字母对右侧第 $1$ 个，第 $2$ 个对第 $2$ 个，第 $3$ 个对第 $3$ 个。这一行字符串等价于上面方式 1 的整张对照表。

  反过来，写 $triangle A B C tilde.eq triangle E D F$ 就严格地代表方式 2——*同样的字母集合，不同的字母顺序，意思完全不同*。

  *回报*：写一行就锁定九条等式

  一旦记号写定，*三对边相等加三对角相等*这九条结论*同时被打包*到记号里。证明的最后一步常常长这样：

  #quote[由 $triangle ... tilde.eq triangle ...$，得 $某 边 = 某 边$（或 $某 角 = 某 角$）。]

  这就是几何证明里"全等"两个字的真正份量——它不是审美意义的"一模一样"，而是*一张固定的顶点对照表*，可以稳定地为下一步推理提供具体等式。

  如图 @fig-congruence-correspondence 所示。
  #figure(
    cetz.canvas(length: 1cm, {
      import cetz.draw: *
      // Triangle ABC
      let A = (0, 0)
      let B = (3, 0)
      let C = (1.2, 2)
      line(A, B, C, close: true, stroke: 0.7pt)
      content((-0.25, -0.25), $A$)
      content((3.25, -0.25), $B$)
      content((1.2, 2.3), $C$)
      // Triangle DEF (congruent, shifted right)
      let D = (5.5, 0)
      let E = (8.5, 0)
      let F = (6.7, 2)
      line(D, E, F, close: true, stroke: 0.7pt + rgb("#1976D2"))
      content((5.25, -0.25), $D$)
      content((8.75, -0.25), $E$)
      content((6.7, 2.3), $F$)
      // Correspondence arrows
      line(A, D, stroke: 0.3pt + luma(160), mark: (end: ">"))
      line(B, E, stroke: 0.3pt + luma(160), mark: (end: ">"))
      line(C, F, stroke: 0.3pt + luma(160), mark: (end: ">"))
      // tick marks on equal sides AB=DE
      content((1.5, -0.35), text(7pt)[$||$])
      content((7.0, -0.35), text(7pt)[$||$])
    }),
    caption: [$triangle A B C tilde.eq triangle D E F$：字母顺序决定对应关系——$A arrow.r D$、$B arrow.r E$、$C arrow.r F$。]
  ) <fig-congruence-correspondence>
]

#lab[
  *折纸验证全等*

  *材料*：两张同样大小的白纸、剪刀、铅笔、直尺。

  *步骤*：

  + 在第一张纸上画一个任意三角形，标记顶点 $A$、$B$、$C$，量出三条边长和三个内角。
  + 把这张纸叠在第二张纸上，沿三角形轮廓剪下，得到两个"一刀剪出"的三角形。
  + 把第二个三角形翻转、旋转，尝试与第一个完全重合。
  + 再剪一个*看起来差不多*但不是叠着剪的三角形，尝试重合。

  *观察*：
  - 叠着剪出来的两个三角形能不能完全重合？对应的边和角是否分别相等？
  - 目测画出来的那个能完全重合吗？量一量，哪些边或角其实不一样？
  - 你能体会到"全等"要求的"严丝合缝"和"看起来差不多"之间的差别吗？
]

#side-hack[
  写 $tilde.eq$ 那一瞬间，脑子里要同时做三件事：

  + 左三角形第一个字母 $<->$ 右三角形第一个字母；
  + 左第二 $<->$ 右第二；
  + 左第三 $<->$ 右第三。

  字母顺序就是对应表。对应表错了，后面所有边角结论都会跟着错。
]

#tryit[
  若 $triangle A B C tilde.eq triangle D E F$ 且 $angle A = 35 degree$、$angle B = 65 degree$，求 $angle F$。
]

#history-note[
  约前 300 年，欧几里得（Euclid）在《几何原本》第一卷里要回答一个朴素却关键的问题：怎样判断两个三角形"算不算同一个"？他的答案是动手——把一个三角形搬到另一个上面，看能不能严丝合缝叠合（"叠合法"）。希腊语里"全等"的词根本意正是"吻合"。这个朴素的想法后来成了两千多年里所有几何证明的起点。在 #secref("pf06-polygons-and-circle") 你已经学过多边形怎么按边数分类；这一节把"分类"再往前推一步：同样是三角形，什么时候能说它们是*同一个三角形的另一份副本*。

  ☞ 历史接力 → 欧几里得叠合法依赖的"第五公设"两千年后被罗巴切夫斯基推翻，催生非欧几何；本书平行线角关系见 #secref("ge02-parallel-line-angles")。
]

#blueprint[
  *工具一：全等三角形的定义*

  若两个三角形能完全重合，就称它们是*全等三角形*，记作

  $ triangle A B C tilde.eq triangle D E F. $

  记号 $tilde.eq$ 同时表达了“形状一样”“大小一样”两件事。


  如图 @fig-congruence-overlap 所示。
  #figure(
    cetz.canvas(length: 1cm, {
      import cetz.draw: *
      // Original triangle
      let A = (0, 0)
      let B = (3.5, 0)
      let C = (1, 2.4)
      line(A, B, C, close: true, stroke: 0.7pt)
      content((-0.3, -0.25), $A$)
      content((3.8, -0.25), $B$)
      content((0.7, 2.6), $C$)
      // Same triangle slightly offset to show overlap concept
      let A2 = (0.08, 0.06)
      let B2 = (3.58, 0.06)
      let C2 = (1.08, 2.46)
      line(A2, B2, C2, close: true, stroke: (paint: rgb("#1976D2"), thickness: 0.5pt, dash: "dashed"))
      content((3.95, 0.15), text(fill: rgb("#1976D2"))[$D$])
      content((1.45, 2.65), text(fill: rgb("#1976D2"))[$F$])
      content((-0.05, 0.35), text(fill: rgb("#1976D2"))[$E$])
      // note
      content((1.75, -0.6), text(8pt)[全等 $=$ 能完全重合])
    }),
    caption: [全等的直觉：两个三角形能严丝合缝地叠在一起。]
  ) <fig-congruence-overlap>


  *工具二：对应关系随字母顺序走*

  在 $triangle A B C tilde.eq triangle D E F$ 中：

  #table(
    columns: (1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*对应位置*], [*对应内容*],
    [顶点], [$A <-> D$，$B <-> E$，$C <-> F$],
    [边], [$A B = D E$，$B C = E F$，$A C = D F$],
    [角], [$angle A = angle D$，$angle B = angle E$，$angle C = angle F$],
  )

  *书写规范*：结论中字母的顺序*必须*反映对应顶点。$triangle A B C tilde.eq triangle D E F$ 与 $triangle A B C tilde.eq triangle E D F$ 虽然字母集合相同，却表示两套完全不同的对应关系。

  *工具三：“对应边 / 对应角相等”是九条结论的打包*

  一旦 $triangle A B C tilde.eq triangle D E F$ 已证：

  $ cases(A B = D E\, quad B C = E F\, quad A C = D F,
          angle A = angle D\, quad angle B = angle E\, quad angle C = angle F) $

  证明的最后一步通常不用再单独论证，只需写“由全等得……”把需要的那一条拎出来用即可。

  *例 1*：已知 $triangle A B C tilde.eq triangle D E F$，$A B = 5$、$B C = 7$、$angle A = 48 degree$、$angle B = 62 degree$。求 $D E$、$E F$、$angle F$。

  解：对应边 $D E = A B = 5$、$E F = B C = 7$。三角形内角和 $180 degree$，故 $angle C = 180 degree - 48 degree - 62 degree = 70 degree$；由对应角 $angle F = angle C = 70 degree$。

  *例 2*：在题目图中 $triangle A B C tilde.eq triangle C D A$（注意字母顺序），且 $A C$ 是这两个三角形的公共边。写出另外两对相等的对应边。

  解：由字母顺序读出对应：$A <-> C$、$B <-> D$、$C <-> A$。所以对应边 $A B = C D$、$B C = D A$。公共边 $A C$ 自己对自己，这一条是自动满足的。
]

#self-check[
  两个三角形全等，写成 $triangle A B C tilde.eq triangle D E F$ 时，$A$ 一定对应 $D$ 吗？说出“对应”在这里的严格意义。
]


#pitfall[
  *高频错误*

  ✗ 看字母集合相同，就断言“两种写法一样”
  → ✓ $triangle A B C tilde.eq triangle D E F$ 与 $triangle A B C tilde.eq triangle E D F$ *完全不同*。对应关系靠*顺序*，不靠“字母齐不齐”。
  把全等当成“两个集合一样”，于是只比字母够不够、不看排列。

  ✗ 只验了两组对应边就写“全等”
  → ✓ 定义要求的是*三边与三角全部一一对应相等*。之后会学到更简洁的判定法，但在没证完判定法之前，别当“两组相等已经够”。

  ✗ 把图里“看起来相等”的边当成对应边
  → ✓ 对应边*不是用眼睛挑*的，必须从结论中字母顺序里读出来；图可能是误导的（比如刻意画歪）。

  ✗ 写 $tilde.eq$ 却把符号画成 $=$ 或 $tilde$
  → ✓ $tilde.eq$ 专门用来标记全等；$=$ 是数相等，$tilde$ 是相似（下一章）。三者含义不同，不能互换。
]

#mastery[
  *基础*

  + 全等记号 $tilde.eq$ 读作什么？
  + 若 $triangle A B C tilde.eq triangle D E F$，与 $A B$ 对应的边是哪一条？
  + 若 $triangle A B C tilde.eq triangle D E F$，与 $angle B$ 对应的角是哪一个？
  + 用一句话说明"全等"与"相似"的区别。

  + 若 $triangle A B C tilde.eq triangle L M N$，分别写出三对对应顶点、对应边、对应角。
  + 若 $triangle A B C tilde.eq triangle D E F$，$angle A = 72 degree$、$angle C = 28 degree$，求 $angle E$。
  + 若 $triangle P Q R tilde.eq triangle S T U$，$P Q = 9$、$Q R = 12$、$P R = 15$，写出 $triangle S T U$ 的三边长。

  *应用*

  + 一位同学把结论写成 $triangle A B C tilde.eq triangle B A C$。请说明：什么样的三角形才可能满足这样的对应关系？它其实隐含了什么条件？
  + 若 $triangle A B C tilde.eq triangle D E F$ 且 $angle B = angle C$，求证 $angle E = angle F$。（提示：先用对应角，再用传递。）
  + 已知 $triangle A B C tilde.eq triangle D E F$，$A B = 2 x + 1$，$D E = x + 5$。求 $x$ 与 $A B$ 的长。

  *挑战*

  + 判断并说明：若 $triangle A B C tilde.eq triangle D E F$ 且 $triangle D E F tilde.eq triangle G H I$，能否立刻得 $triangle A B C tilde.eq triangle G H I$？为什么？
  + 已知 $triangle A B C tilde.eq triangle A' B' C'$，点 $M$、$M'$ 分别是 $B C$、$B' C'$ 的中点。能不能得出 $A M = A' M'$？写下你的理由。
  + 有人把 $triangle A B C tilde.eq triangle D E F$ 的九条结论压缩成一句话"三对对应边、三对对应角都相等"。请解释：为什么"对应"这两个字不能省。
  + *[反直觉 / 反例]* 给两个三角形：三对边长都相等、三对角度也都相等，但它们*不是全等*——可能吗？请举例说明，或证明不可能。然后再判断："只要两个三角形的三对角相等，它们就全等。" 是否成立？给反例。
  + *[跨知识点]* 已知 $triangle A B C tilde.eq triangle D E F$，$A B = 5$、$B C = 7$、$angle B = 60°$。利用对应关系，再借助 #secref("tool:pf08-triangles-angle-sum") 的"三角形内角和 $= 180°$"，能否唯一确定 $angle E$、$angle F$ 等所有六元素？哪些信息够、哪些不够？
  + *[构造题]* 在网格纸上画两个全等三角形 $triangle A B C$ 与 $triangle D E F$，使 $D$ 是 $A$ 关于直线 $ell$ 的对称点（$ell$ 不经过 $A B C$ 任何顶点）。请给出顶点坐标，并写出三对对应顶点。这种关系下，两个三角形是否方向相反？为什么*镜像*的两个三角形仍然算全等？

  #answer-cut[

  *基础*
  + 读作"全等于"。
  + $D E$（按 $A <-> D$、$B <-> E$ 的对应顺序）。
  + $angle E$。
  + 全等：形状*和*大小都相同；相似：只要求形状相同，大小可以不同。
  + 顶点：$A <-> L$、$B <-> M$、$C <-> N$。边：$A B = L M$、$B C = M N$、$A C = L N$。角：$angle A = angle L$、$angle B = angle M$、$angle C = angle N$。（全等对应）
  + $angle B = 180 degree - 72 degree - 28 degree = 80 degree$（三角形内角和）；由对应角 $angle E = angle B = 80 degree$（全等对应）。
  + $S T = 9$、$T U = 12$、$S U = 15$（全等对应边）。

  *应用*
  + 对应关系要求 $A <-> B$、$B <-> A$、$C <-> C$。于是 $A B = B A$（自动）、$B C = A C$、$angle A = angle B$。即 $triangle A B C$ 必须是一个以 $A$、$B$ 为两个底角、$C$ 为顶角的*等腰三角形*（$A C = B C$）。
  + 由全等对应角：$angle E = angle B$、$angle F = angle C$。已知 $angle B = angle C$，故 $angle E = angle F$。
  + 对应边相等，$2 x + 1 = x + 5$，解得 $x = 4$，所以 $A B = 2 times 4 + 1 = 9$。

  *挑战*
  + 能。设第一次对应 $A <-> D$、$B <-> E$、$C <-> F$，第二次 $D <-> G$、$E <-> H$、$F <-> I$。把两张对应表串起来得 $A <-> G$、$B <-> H$、$C <-> I$，且各条边角都沿链条传递相等，所以 $triangle A B C tilde.eq triangle G H I$。
  + 能。对应关系里 $B C$ 对应 $B' C'$，所以它们的中点也对应（$M <-> M'$），而 $A M$ 与 $A' M'$ 是两侧“顶点到对应中点”的线段，由对应关系的整体性它们相等。（严格证明要再用一次全等判定，下一节就给出工具。）
  + 因为"相等"可以随便挑一对，但"对应相等"要求*一张固定的表*把左右两边的边、角一一配对。没有"对应"两字，就可能只抓到了"都有一条长 $5$ 的边"，而这条边在两个三角形里的位置根本不同，结论立刻失效。
  + 不可能"三对边相等且三对角相等却不全等"——因为两组边角合起来已经足够把三角形完全定形（所有 SSS / SAS / ASA / AAS 都被同时满足）。但"三对角相等就全等"是错的：例如等边三角形，边长 $1$ 和边长 $100$ 的两个等边三角形三对角都是 $60°$，相似但不全等（AAA 只决定形状，不决定大小）。
  + 由全等对应：$D E = A B = 5$，$E F = B C = 7$，$angle E = angle B = 60°$。但 $angle A、angle C$ 还未给出，所以 $angle D、angle F$ 暂未确定；若再加任一信息（如 $angle A$ 或 $A C$），即可由 #secref("tool:pf08-triangles-angle-sum") 算出第三角，配合对应关系填齐六元素。已知三元素已能确定一个三角形（SAS），自然也能传递到全等的另一个，但当前题目缺少把 $triangle A B C$ 自身定形的第三条信息——所以六元素不能全部唯一确定。
  + 例：$A(0, 0), B(2, 0), C(0, 1)$。取直线 $ell$ 为 $y = -1$（不过任何顶点）。$A$ 关于 $ell$ 的对称点 $D = (0, -2)$；同理 $B → E = (2, -2)$，$C → F = (0, -3)$。对应顶点 $A <-> D$、$B <-> E$、$C <-> F$。镜像后方向相反（$triangle A B C$ 顺时针、$triangle D E F$ 逆时针），但全等只要求边、角对应相等，*不要求方向一致*——三条边和三个角都被反射保留下来了（轴对称是保距变换，所以镜像三角形仍全等）。
  ]
]
