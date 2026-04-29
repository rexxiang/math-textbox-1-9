#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, lab, answer-cut, self-check
#import "../../lib/diagram-packages.typ": cetz

=== 相似的含义：AA 判定与相似比 <tool:ge02-similarity-aa-ratio>

#vocab[相似 similar][相似比 similarity ratio][AA 判定 Angle-Angle similarity]

#crisis[
  全等太严格了：它要求两个三角形能*完全重合*，一点放大或缩小都不允许。可现实里面对的往往是*同形不同大*——地图上的小房子和真实大小的房子、手机屏幕上的人脸和真实的人脸。它们不全等，却又“是同一个东西的两个大小”。

  *能不能把这种“同形不同大”写成可用的几何语言？它和全等有什么关系，又有没有一条最省力的判定法？*
]

#tryit[
  $triangle A B C$ 与 $triangle D E F$ 中 $angle A = angle D = 70 degree$、$angle B = angle E = 55 degree$。能否断定两三角形相似？写出判据名。
]

#discovery[
  全等判定已有 SSS、SAS 等工具，相似感觉只是"放大了的全等"，那就照搬 SSS 的思路：核对三组对应边之比是否等于同一个 $k$，再验三组对应角是否相等——这样最保险。

  试着推下去——

  量 $triangle A B C$：$A B = 6$，$B C = 4$，$A C = 5$；量 $triangle D E F$：$D E = 9$，$E F = 6$，$D F = 7.5$。核比：$9/6 = 3/2$ ✓，$6/4 = 3/2$ ✓，$7.5/5 = 3/2$ ✓——边的比例都对。接下来还要核三组角……但如果对方只告诉你两个角，边根本量不到，这个流程就卡死了。

  核对 6 个量（3 边比 $+$ 3 角）和全等一样繁琐；实际题目往往只给出几个角或几条边，剩下的既无法量到也无法算出，按定义一项项核根本走不下去。

  *什么叫"同形不同大"*

  两个 $triangle A B C$ 与 $triangle D E F$ 如果满足下面两件事，就说它们*相似*，记作

  $ triangle A B C tilde triangle D E F. $

  - *对应角分别相等*：$angle A = angle D$、$angle B = angle E$、$angle C = angle F$。
  - *对应边成比例*：存在同一个正数 $k$（称作*相似比*，也叫*放缩因子*），使得

  $ frac(D E, A B) = frac(E F, B C) = frac(F D, C A) = k. $

  “全等 $=$ 相似比 $k = 1$ 的相似”。换个说法：全等是相似最苛刻的那一种，对应比例必须是 $1$。

  #figure(
    cetz.canvas(length: 1cm, {
      import cetz.draw: *
      // Small triangle
      let A1 = (0, 0)
      let B1 = (3, 0)
      let C1 = (1, 1.8)
      line(A1, B1, C1, close: true, stroke: 0.8pt)
      content(A1, $A$, anchor: "north-east", padding: 3pt)
      content(B1, $B$, anchor: "north-west", padding: 3pt)
      content(C1, $C$, anchor: "south", padding: 3pt)
      // Large triangle scaled by 1.5
      let A2 = (5, 0)
      let B2 = (9.5, 0)
      let C2 = (6.5, 2.7)
      line(A2, B2, C2, close: true, stroke: (paint: blue, thickness: 0.8pt))
      content(A2, $D$, anchor: "north-east", padding: 3pt, fill: blue)
      content(B2, $E$, anchor: "north-west", padding: 3pt, fill: blue)
      content(C2, $F$, anchor: "south", padding: 3pt, fill: blue)
      // Label ratio
      content((4.25, -0.8), text(9pt)[$triangle A B C tilde triangle D E F$，相似比 $k = 1.5$])
    }),
    caption: [相似：对应角相同、对应边成比例（这里 $k = 1.5$）。]
  )

  *一把最省力的判定法：AA*

  严格按定义去核对“三角 $+$ 三边比”是六件事，比全等还繁琐。幸运的是：

  $ "若两对应角相等" => "两三角形相似". $

  这叫做*角角相似 AA*。为什么两组角就够？因为三角形内角和是 $180 degree$（#secref("pf08-triangles-angle-sum")）——两组角对应相等，第三组自动对应相等；于是“三角分别相等”已经满足。

  接下来要证的是“对应边成比例”——这是 AA 判定能成立的关键。这条结论在欧几里得《原本》里已经有完整证明；本书直接承认*AA 足以判定相似*这一结论，把它当作后续一切相似问题的“首选判定”。

  $ angle A = angle D quad "且" quad angle B = angle E quad => quad triangle A B C tilde triangle D E F. $

  *平行线 + 三角形 $=$ 相似*

  在 $triangle A B C$ 中，$D$ 在 $A B$ 上，$E$ 在 $A C$ 上。若 $D E parallel B C$，则由 #secref("ge02-parallel-line-angles")：

  - $angle A D E = angle A B C$（同位角）；
  - $angle A E D = angle A C B$（同位角）；
  - $angle A$ 为公共角。

  由 AA 判定 $triangle A D E tilde triangle A B C$。这是整个初中几何里*最常用的相似构型*——一条平行于第三边的线段切出一对相似三角形。

  #figure(
    cetz.canvas(length: 1cm, {
      import cetz.draw: *
      let A = (2.5, 3.5)
      let B = (0, 0)
      let C = (5.5, 0)
      // Main triangle
      line(A, B, C, close: true, stroke: 0.7pt)
      content((2.5, 3.85), $A$)
      content((-0.3, -0.2), $B$)
      content((5.8, -0.2), $C$)
      // DE parallel to BC, at 2/3 height
      let t = 0.4
      let D = (A.at(0) * (1 - t) + B.at(0) * t,  A.at(1) * (1 - t) + B.at(1) * t)
      let E = (A.at(0) * (1 - t) + C.at(0) * t,  A.at(1) * (1 - t) + C.at(1) * t)
      line(D, E, stroke: 0.7pt + rgb("#1976D2"))
      content((D.at(0) - 0.3, D.at(1)), $D$)
      content((E.at(0) + 0.3, E.at(1)), $E$)
      // Parallel marks (arrows on DE and BC)
      content((2.75, 0.25), text(7pt)[$arrow.r$])
      content(((D.at(0) + E.at(0))/2, D.at(1) + 0.25), text(7pt, fill: rgb("#1976D2"))[$arrow.r$])
      // Ratio label
      content((6.5, 1.8), text(8pt)[$D E parallel B C$])
      content((6.5, 1.2), text(8pt)[$triangle A D E tilde triangle A B C$])
    }),
    caption: [$D E parallel B C$ 截出的小三角形 $triangle A D E$ 与原三角形 $triangle A B C$ 相似（同位角 $+$ 公共角 $arrow.r.double$ AA）。]
  )

  *相似比怎么读*

  设 $triangle A B C tilde triangle D E F$，相似比 $k = "新" div "旧"$，习惯上以*被比较的那个三角形*在分子：

  - 若写 $triangle A B C tilde triangle D E F$，相似比 $k = D E slash A B$——后者是“放缩后”，前者是“放缩前”。

  有了 $k$，所有对应边都能互推：

  $ D E = k dot A B, quad E F = k dot B C, quad F D = k dot C A. $

  *例*：$triangle A B C tilde triangle D E F$，$angle A = 60 degree$、$angle B = 80 degree$。再给 $A B = 4$、$D E = 6$、$B C = 5$。求 $angle F$ 与 $E F$。

  解：$angle C = 180 degree - 60 degree - 80 degree = 40 degree$，对应角 $angle F = 40 degree$。相似比 $k = D E slash A B = 6 slash 4 = 3 slash 2$，故 $E F = k dot B C = 3 slash 2 times 5 = 15 slash 2$。
]

#side-hack[
  看到“对应角相等”三个字（或两个字 —— 两组就够），第一反应：AA 判定。
  看到“在三角形内部作平行于一边的线段”，第一反应：相似构型 $triangle A D E tilde triangle A B C$。

  相似比 $k$ 写错分子分母是高频错——记住：*分子是“新”（被比较方）*，*分母是“旧”（基准方）*，写 $tilde$ 时从左到右即左 $=$ 旧、右 $=$ 新。
]

#lab[
  *影子测高：用相似三角形量大树*

  *材料*：卷尺或长绳、直尺（或一根已知长度的竹竿）、阳光充足的户外场地。

  *步骤*：

  + 在阳光下，把一根已知长度的竹竿（比如 $1$ 米）竖直插在地上，量出它的影子长度 $l_1$。
  + 同一时刻，量出大树影子的长度 $l_2$。
  + 画出示意图：竹竿顶端、竿脚、影子尖端构成一个直角三角形；树顶、树根、影子尖端也构成一个直角三角形。
  + 两个三角形的太阳光线方向相同，所以对应角相等——它们*相似*。

  *计算*：设竹竿高 $h_1$，树高 $h_2$（未知），则
  $ h_1 / l_1 = h_2 / l_2 quad => quad h_2 = h_1 times l_2 / l_1. $

  *思考*：
  - 如果没有阳光（阴天），能不能用*镜子*放在地上代替影子，利用入射角 $=$ 反射角构造相似？试着设计方案。
  - 如果你换一个时间再测一次，$l_1$ 和 $l_2$ 都变了，但 $h_2$ 的计算结果应该差不多——为什么？
]

#tryit[
  两相似三角形中，对应边之比是 $5 : 2$。一个三角形的一条边长 $8$，对应另一三角形这条边长多少？（先说清"哪个三角形的 $8$"。）
]

#history-note[
  约前 $585$ 年，泰勒斯（Thales of Miletus，约前 $624$—约前 $546$ 年）站在埃及金字塔旁，等到自己的影子和身高一样长的那一刻，量出金字塔影子的长度——于是得到了塔高。这是有记载的最早一次"相似三角形"实战应用。后来欧几里得（Euclid，约前 300 年）在《几何原本》第六卷把相似理论系统化，建立了比例线段与相似三角形的完整判定体系。从几何基础（#secref("pf06-polygons-and-circle")）到代数的比例（#secref("cb01-ratio-basics")），"比"这个工具一直在等一个正式入口；本节就是。
]

#blueprint[
  *工具一：相似三角形的定义*

  若两个三角形满足

  - 三对对应角分别相等，
  - 三对对应边成同一比例 $k$，

  则称它们*相似*，记作 $triangle A B C tilde triangle D E F$。$k$ 叫*相似比*。$k = 1$ 时退化为全等。

  *工具二：AA 判定法*

  $ "若" angle A = angle D "且" angle B = angle E, quad "则" triangle A B C tilde triangle D E F. $

  这是相似最常用的判定法。第三个角由内角和自动相等；对应边成比例不需要再单独验证（本书承认它为定理）。

  *工具三：相似比与比例关系*

  设 $triangle A B C tilde triangle D E F$、相似比 $k$：

  $ frac(D E, A B) = frac(E F, B C) = frac(F D, C A) = k. $

  从 $k$ 出发可推出任意对应边的长度；若相似比为 $1 slash k$，则相当于“角色互换”。

  *典型构型：三角形内部平行于一边的线段*

  在 $triangle A B C$ 中，$D in A B$、$E in A C$，且 $D E parallel B C$。由同位角 $+$ 公共角得

  $ triangle A D E tilde triangle A B C, $

  相似比 $k = A D slash A B = A E slash A C = D E slash B C$。

  *例 1*（AA 判定）：在 $triangle A B C$ 中，$angle A = 45 degree$、$angle B = 65 degree$。在 $triangle D E F$ 中，$angle D = 45 degree$、$angle E = 65 degree$。$triangle A B C tilde triangle D E F$？

  答：两对对应角相等，由 AA 判定得 $triangle A B C tilde triangle D E F$。

  *例 2*（比例运用）：$triangle A B C tilde triangle D E F$，相似比 $k = 3 slash 5$（$k = D E slash A B$）。若 $A B = 10$、$B C = 15$、$C A = 12$。求 $D E$、$E F$、$F D$。

  解：$D E = 10 times 3 slash 5 = 6$；$E F = 15 times 3 slash 5 = 9$；$F D = 12 times 3 slash 5 = 36 slash 5$。

  *例 3*（平行构型）：$triangle A B C$ 中，$D E parallel B C$，$A D = 4$、$A B = 10$、$B C = 15$。求 $D E$。

  解：由 $triangle A D E tilde triangle A B C$，相似比 $k = A D slash A B = 4 slash 10 = 2 slash 5$。所以 $D E = k times B C = 2 slash 5 times 15 = 6$。
]

#self-check[
  相似三角形的对应边成比例——这个“比”指的是同一对三角形的所有对应边的比都相等，还是只有一对？
]


#pitfall[
  Arjun 这样写结论：

  #block(inset: (left: 12pt))[
    *题目*：已知 $triangle A B C tilde triangle D E F$，$A B = 6$、$D E = 9$，求 $D E$ 与 $A B$ 的关系。

    第 1 行："$tilde$ 就是相似，相似就是同形——同形就一样大。"

    第 2 行：所以 $A B = D E$。

    第 3 行：但 $6 != 9$，"题目矛盾"。
  ]

  ✎ Arjun 把题目宣判成"矛盾"——错的不是题目，是哪一步？

  #block(width: 100%, fill: rgb("#FFFDE7"), radius: 2pt, inset: 8pt)[
    *卡在哪里*：第 1 行把 $tilde$ 当成了 $tilde.eq$。两个符号长得像，意思差一截：

    - $tilde.eq$ "全等"：*同形且同大*，对应边*相等*。
    - $tilde$ "相似"：*同形*，但允许*整体放大或缩小*；对应边只要求*成同一比例*，不必相等。

    *正确做法*：相似只给出"对应边成比例"。这里的相似比
    $ k = (D E) / (A B) = 9 / 6 = 3 / 2 $
    完全合理，没有矛盾。其他对应边也按 $3 \/ 2$ 缩放：$D F = (3 \/ 2) A C$、$E F = (3 \/ 2) B C$。

    ✓ 正确结论：$D E = (3 \/ 2) dot A B$，相似比 $k = 3 \/ 2$。
  ]

  其余常见走错：

  ✗ AA 的两个角不必是对应角 → ✓ 必须*对应位置的两对角*都相等：$angle A = angle D$、$angle B = angle E$；只是各有一个 $70 degree$ 不算。

  ✗ 相似比写反 → ✓ 写 $triangle A B C tilde triangle D E F$、$k = D E \/ A B$；顺序固定。

  ✗ 看到"对应边成比例"就直接写全等 → ✓ 只有比例 $= 1$ 才退化为全等。

  ✗ 把 AAA 当成三条独立条件 → ✓ 内角和恒为 $180 degree$，两组角相等就够，第三组自动得到。
]

#mastery[
  *基础*

  + 相似记号 $tilde$ 读作什么？
  + 若 $triangle A B C tilde triangle D E F$，对应边比 $A B \/ D E$ 与 $B C \/ E F$ 是否相等？
  + "AA" 是哪三个字的简写？它要求几对什么相等？
  + 相似比 $k = 2$ 时，$triangle A B C$ 的边长是 $triangle D E F$ 对应边长的几倍？

  + 判断下列哪些条件能推出 $triangle A B C tilde triangle D E F$，写出判据（若不能，说明原因）：
    - $angle A = angle D$、$angle B = angle E$
    - $angle A = angle D$、$angle C = angle F$
    - $angle A = angle D$（只有一对角相等）
    - $angle A = angle E$、$angle B = angle D$

  + $triangle A B C tilde triangle D E F$，相似比 $k = 2$（$k = A B slash D E$ 这种约定下）。若 $D E = 3$、$E F = 4$、$D F = 5$，求 $A B$、$B C$、$A C$。

  + $triangle A B C$ 中，$D E parallel B C$，$D in A B$、$E in A C$。若 $A D = 6$、$D B = 4$、$B C = 15$，求 $D E$。

  *应用*

  + 证明“在三角形中，一条线段平行于第三边时，截出的小三角形与原三角形相似”。（利用 AA 判据，写出两步证明。）

  + $triangle A B C$ 中 $angle A = 90 degree$，$A D$ 为斜边 $B C$ 上的高（垂足 $D$）。分别证明 $triangle A B D tilde triangle C B A$ 与 $triangle A B D tilde triangle C A D$。（提示：共角 + 直角。）

  + 如果 $triangle A B C tilde triangle D E F$ 且 $A B = 2 x + 1$、$D E = x + 4$、$A C = 3 x - 2$，$D F = 2 x$。求 $x$ 与相似比。

  *挑战*

  + 证明：若 $triangle A B C tilde triangle D E F$，它们对应的*中线*、*高*、*角平分线*也成同一比例 $k$。（提示：用 AA 判定在一对对应子三角形上。）

    #side-hack[
      *思路骨架*（卡住了再看下面的步骤）：

      + 第 1 步：以"中线"为例——设 $A M$、$D N$ 分别是 $B C$、$E F$ 上的中线，目标是证 $A M slash D N = k$。
      + 第 2 步：在两个*子三角形* $triangle A B M$ 与 $triangle D E N$ 中找等量：由相似得 $angle B = angle E$；由"中线"得 $B M = B C / 2$、$E N = E F / 2$，所以 $B M / E N = B C / E F = k$。
      + 第 3 步：用"两边成比例 $+$ 夹角相等"（相似 SAS）得到 $triangle A B M tilde triangle D E N$，从而 $A M / D N = k$。
      + 第 4 步：高、角平分线照同样套路——把"高"换成"垂线段"、"角平分线"换成"角平分线段"，分别在子三角形上重复 AA 或相似 SAS。

      再回到上面的题目，按这个流程走一遍：
    ]

  + 在 $triangle A B C$ 中，$angle A B C = angle A C D$，其中 $D$ 在 $A B$ 上。求证 $triangle A B C tilde triangle A C D$。（提示：公共角 $+$ 一对等角。）

  + 解释：为什么 AA 就够，却不能用“两对应边成比例”这一个条件当作“SS 判定”？

  + *[反直觉]*：两个三角形面积之比与边长之比的关系是什么？若相似比为 $k$，面积比是多少？这一结论反直觉在哪里？
  + *[组合]*：一个三角形被一条平行于底边的线段截为上下两部分，已知上部小三角形和原三角形的相似比为 $1:3$，求上部小三角形面积与下部梯形面积之比。
  + *[构造题]*：构造两个相似三角形，使相似比为 $2:3$，且两三角形各有一个公共顶点。

#answer-cut[

  *基础*
  + 读作"相似于"。
  + 相等（相似定义：对应边成比例，比值都 $= k$）。
  + Angle-Angle 的简写；要求两对对应角相等。
  + $2$ 倍。
  + `AA` ✓；`AA` ✓（由 $angle A = angle D$ 与 $angle C = angle F$，第三角 $angle B = angle E$ 自动相等）；不够（只有一对角相等，形状还没锁死）；两对角虽相等，但对应顺序错位——不能直接写 $triangle A B C tilde triangle D E F$，需要改写成 $triangle A B C tilde triangle E D F$ 才是合法的相似关系。
  + $A B = 2 times 3 = 6$、$B C = 2 times 4 = 8$、$A C = 2 times 5 = 10$（相似比）。
  + 由 $A D slash A B = 6 slash 10 = 3 slash 5$ 得 $D E = 3 slash 5 times 15 = 9$（平行线截比例）。

  *应用*
  + 设 $triangle A B C$ 中 $D E parallel B C$，$D in A B$、$E in A C$。由 $D E parallel B C$ 得 $angle A D E = angle A B C$（同位角，见 #secref("ge02-parallel-line-angles") ）；$angle A$ 公共。由 AA 得 $triangle A D E tilde triangle A B C$。
  + 在 $triangle A B D$ 与 $triangle C B A$ 中：$angle B$ 公共，$angle A D B = angle C A B = 90 degree$。由 AA 得 $triangle A B D tilde triangle C B A$。同理 $angle C$ 公共、直角相等 $=>$ $triangle A B D tilde triangle C A D$。
  + 由相似边成比例 $(2 x + 1) slash (x + 4) = (3 x - 2) slash (2 x)$。交叉相乘 $2 x (2 x + 1) = (x + 4)(3 x - 2)$，即 $4 x^2 + 2 x = 3 x^2 + 10 x - 8$，得 $x^2 - 8 x + 8 = 0$，$x = 4 plus.minus 2 sqrt(2)$。代回可检验，取正值 $x = 4 + 2 sqrt(2)$ 或 $4 - 2 sqrt(2)$。相似比 $k = A B slash D E = (2 x + 1) slash (x + 4)$。

  *挑战*
  + 设 $A M$、$D N$ 为 $triangle A B C$、$triangle D E F$ 中 $B C$、$E F$ 边上的中线。由相似 $B M / E N = (B C / 2) / (E F / 2) = B C / E F = k$；且 $A B slash D E = k$；$angle B = angle E$。由“相似 SAS”（夹角等 $+$ 两边成比例）或直接由三角形全体相似知 $A M slash D N = k$。高与角平分线同理。
  + 在 $triangle A B C$ 与 $triangle A C D$ 中：$angle A$ 公共，$angle A B C = angle A C D$（已知）。由 AA 得 $triangle A B C tilde triangle A C D$。
  + 两边成比例不锁形状：例如 $3 - 4 - 5$ 与 $4 - 5 - 6$ 两边成不同比例却“都从 $3, 4, 5$ 打头、$4, 5$ 打头”可以拼成不同形状。只有把*夹角*或*比例的第三边*也带进来，或者一开始就用两角相等来锁，才能保证相似。
  + 若相似比为 $k$，面积比为 $k^2$。反直觉在于：边长加倍（$k=2$）面积变为 $4$ 倍，不是 $2$ 倍——平方关系（相似比 + 面积缩放：面积是二维量）。
  + 相似比 $1:3$，面积比 $1^2:3^2 = 1:9$。设原三角形面积为 $9S$，小三角形面积为 $S$，梯形面积 $= 9S - S = 8S$。小三角形与梯形面积比 $= 1:8$（相似比平方 + 面积减法）。
  + *[构造题]*：例：取 $triangle A B C$ 中，过 $A$ 作一条射线，在上面取 $D$ 使 $A D = 2$，$A B = 3$；对应地取 $E$ 使 $A E = 2 A C / 3$，连 $D E$。则 $triangle A D E tilde triangle A B C$，相似比 $= 2:3$（AA 判定 + 等比构造）。
]
]

#history-note[
  *胡和生（$1928$–）*——中国数学家，复旦大学教授，中国科学院院士，也是数学物理学部首位当选院士的女性。她长期研究微分几何，特别关心"曲面在不同尺度下的相似与不变性"——把一个曲面放大缩小、拉伸压扁后，哪些几何量会变、哪些保持不变？中学相似三角形里的"对应角相等、对应边成比例"，正是这条研究线最初的雏形：从平面图形的相似，逐步走向曲面的相似与不变量。
]
