#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, lab
#import "../../lib/diagram-packages.typ": cetz

=== 全等的含义与对应关系 <tool:ge01-congruence-correspondence>

#vocab[全等 congruent][对应顶点 corresponding vertices][对应边 corresponding sides][对应角 corresponding angles][记号 $tilde.eq$]

#crisis[
  造桥、裁剪、印刷、零件互换——所有这些场景都怕的不是“两个三角形看起来像”，而是“实际上是否真的一模一样”。看起来像可以骗人：两块厚薄颜色都相同的三角板，一旦把它们叠在一起，也许一条边就差了 $1$ 毫米。

  几何要做的，是把“完全重合”这件事从“图感”升级成可以*写下来、可以传给别人、可以一步步追溯*的语言。

  *两个三角形什么时候算“完全一样”？“一样”又必须精确到什么程度，才能放进后面的证明里用？*
]

#history-note[
  希腊语里“全等”的词根意思是“吻合”。在 #secref("pf06-polygons-and-circle") 你已经学过多边形怎么按边数分类；这一节把“分类”再往前推一步：同样是三角形，什么时候能说它们是*同一个三角形的另一份副本*。这是后续所有几何证明的起点。
]

#discovery[
  *第一步：“全等” = 能完全重合*

  把两个三角形剪下来，任意翻转、旋转、平移都可以，只要能叠得严丝合缝——*每条边贴每条边、每个角贴每个角*——就叫它们*全等*。这意味着同时满足：

  - 三条对应边分别相等；
  - 三个对应角分别相等。

  光有“三条边看起来差不多长”或“三个角看起来差不多大”都不够——必须*对应起来*相等。

  *第二步：先得说清“谁对谁”*

  看这两个三角形：

  $ triangle A B C quad "和" quad triangle D E F. $

  你在黑板上写 $triangle A B C tilde.eq triangle D E F$ 的那一刻，就是在做一件事：*把字母顺序当成一张对应表*。它表示：

  - $A <-> D$、$B <-> E$、$C <-> F$（对应顶点）
  - $A B <-> D E$、$B C <-> E F$、$A C <-> D F$（对应边）
  - $angle A <-> angle D$、$angle B <-> angle E$、$angle C <-> angle F$（对应角）

  换句话说，字母的*顺序*不是随便写的。若把结论写成 $triangle A B C tilde.eq triangle E D F$，意思就完全不同了——那是在说 $A <-> E$、$B <-> D$、$C <-> F$。


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
  )

  *第三步：一旦写好对应，结论就“自动”出来*

  两个三角形一旦全等，你不用再为每一条边角单独辩论。“对应边相等、对应角相等”是*九条现成结论一起打包*。这也是为什么后面几乎每一道证明题最后那一步都长得一样：

  #quote[由 $triangle ... tilde.eq triangle ...$，得 $某 边 = 某 边$（或 $某 角 = 某 角$）。]
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
  先不看 #blueprint，自己答：

  + 若 $triangle P Q R tilde.eq triangle X Y Z$，写出三对对应边与三对对应角。
  + 若 $triangle A B C tilde.eq triangle D E F$ 且 $angle A = 35 degree$、$angle B = 65 degree$，求 $angle F$。
]

#blueprint[
  *工具一：全等三角形的定义*

  若两个三角形能完全重合，就称它们是*全等三角形*，记作

  $ triangle A B C tilde.eq triangle D E F. $

  记号 $tilde.eq$ 同时表达了“形状一样”“大小一样”两件事。


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
  )


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

#pitfall[
  *高频错误*

  ✗ 看字母集合相同，就断言“两种写法一样”
  → ✓ $triangle A B C tilde.eq triangle D E F$ 与 $triangle A B C tilde.eq triangle E D F$ *完全不同*。对应关系靠*顺序*，不靠“字母齐不齐”。

  ✗ 只验了两组对应边就写“全等”
  → ✓ 定义要求的是*三边与三角全部一一对应相等*。之后会学到更简洁的判定法，但在没证完判定法之前，别当“两组相等已经够”。

  ✗ 把图里“看起来相等”的边当成对应边
  → ✓ 对应边*不是用眼睛挑*的，必须从结论中字母顺序里读出来；图可能是误导的（比如刻意画歪）。

  ✗ 写 $tilde.eq$ 却把符号画成 $=$ 或 $tilde$
  → ✓ $tilde.eq$ 专门用来标记全等；$=$ 是数相等，$tilde$ 是相似（下一章）。三者含义不同，不能互换。
]

#mastery[
  *基础*

  + 若 $triangle A B C tilde.eq triangle L M N$，分别写出三对对应顶点、对应边、对应角。
  + 若 $triangle A B C tilde.eq triangle D E F$，$angle A = 72 degree$、$angle C = 28 degree$，求 $angle E$。
  + 若 $triangle P Q R tilde.eq triangle S T U$，$P Q = 9$、$Q R = 12$、$P R = 15$，写出 $triangle S T U$ 的三边长。

  *应用*

  + 一位同学把结论写成 $triangle A B C tilde.eq triangle B A C$。请说明：什么样的三角形才可能满足这样的对应关系？它其实隐含了什么条件？
  + 若 $triangle A B C tilde.eq triangle D E F$ 且 $angle B = angle C$，求证 $angle E = angle F$。（提示：先用对应角，再用传递。）
  + 已知 $triangle A B C tilde.eq triangle D E F$，$A B = 2 x + 1$，$D E = x + 5$。求 $x$ 与 $A B$ 的长。

  *挑战 ☞ 选做*

  + 判断并说明：若 $triangle A B C tilde.eq triangle D E F$ 且 $triangle D E F tilde.eq triangle G H I$，能否立刻得 $triangle A B C tilde.eq triangle G H I$？为什么？
  + 已知 $triangle A B C tilde.eq triangle A' B' C'$，点 $M$、$M'$ 分别是 $B C$、$B' C'$ 的中点。能不能得出 $A M = A' M'$？写下你的理由。
  + 有人把 $triangle A B C tilde.eq triangle D E F$ 的九条结论压缩成一句话“三对对应边、三对对应角都相等”。请解释：为什么“对应”这两个字不能省。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + 顶点：$A <-> L$、$B <-> M$、$C <-> N$。边：$A B = L M$、$B C = M N$、$A C = L N$。角：$angle A = angle L$、$angle B = angle M$、$angle C = angle N$。（全等对应）
  + $angle B = 180 degree - 72 degree - 28 degree = 80 degree$（三角形内角和）；由对应角 $angle E = angle B = 80 degree$（全等对应）。
  + $S T = 9$、$T U = 12$、$S U = 15$（全等对应边）。

  *应用*
  + 对应关系要求 $A <-> B$、$B <-> A$、$C <-> C$。于是 $A B = B A$（自动）、$B C = A C$、$angle A = angle B$。即 $triangle A B C$ 必须是一个以 $A$、$B$ 为两个底角、$C$ 为顶角的*等腰三角形*（$A C = B C$）。
  + 由全等对应角：$angle E = angle B$、$angle F = angle C$。已知 $angle B = angle C$，故 $angle E = angle F$。
  + 对应边相等，$2 x + 1 = x + 5$，解得 $x = 4$，所以 $A B = 2 times 4 + 1 = 9$。

  *挑战 ☞ 选做*
  + 能。设第一次对应 $A <-> D$、$B <-> E$、$C <-> F$，第二次 $D <-> G$、$E <-> H$、$F <-> I$。把两张对应表串起来得 $A <-> G$、$B <-> H$、$C <-> I$，且各条边角都沿链条传递相等，所以 $triangle A B C tilde.eq triangle G H I$。
  + 能。对应关系里 $B C$ 对应 $B' C'$，所以它们的中点也对应（$M <-> M'$），而 $A M$ 与 $A' M'$ 是两侧“顶点到对应中点”的线段，由对应关系的整体性它们相等。（严格证明要再用一次全等判定，下一节就给出工具。）
  + 因为“相等”可以随便挑一对，但“对应相等”要求*一张固定的表*把左右两边的边、角一一配对。没有“对应”两字，就可能只抓到了“都有一条长 $5$ 的边”，而这条边在两个三角形里的位置根本不同，结论立刻失效。
]
