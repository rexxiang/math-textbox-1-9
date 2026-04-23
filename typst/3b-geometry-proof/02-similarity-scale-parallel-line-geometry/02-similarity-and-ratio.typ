#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref
#import "../../lib/diagram-packages.typ": cetz

== 相似的含义：AA 判定与相似比 <tool:ge02-similarity-aa-ratio>

#vocab[相似 similar / 相似比 similarity ratio / AA 判定 Angle-Angle similarity]

#crisis[
  全等太严格了：它要求两个三角形能*完全重合*，一点放大或缩小都不允许。可现实里面对的往往是*同形不同大*——地图上的小房子和真实大小的房子、手机屏幕上的人脸和真实的人脸。它们不全等，却又“是同一个东西的两个大小”。

  *能不能把这种“同形不同大”写成可用的几何语言？它和全等有什么关系，又有没有一条最省力的判定法？*
]

#history-note[
  相似的用法比全等更古老——古埃及人借日影长度计算金字塔高度，靠的就是“大小不同但形状相同”。从几何基础（#secref("pf06-polygons-and-circle")）到代数的比例（#secref("cb01-ratio-basics")），“比”这个工具一直在等一个正式入口；本节就是。
]

#discovery[
  *什么叫“同形不同大”*

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

#tryit[
  先动手算：

  + $triangle A B C$ 与 $triangle D E F$ 中 $angle A = angle D = 70 degree$、$angle B = angle E = 55 degree$。能否断定两三角形相似？写出判据名。
  + $triangle A B C$ 中，$D E parallel B C$，$D$ 在 $A B$ 上，$E$ 在 $A C$ 上。若 $A D slash A B = 1 slash 3$，求 $D E slash B C$。
  + 两相似三角形中，对应边之比是 $5 : 2$。一个三角形的一条边长 $8$，对应另一三角形这条边长多少？（先说清“哪个三角形的 $8$”。）
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

#pitfall[
  *高频错误*

  ✗ 把 $tilde$ 当成 $tilde.eq$
  → ✓ $tilde$ 只说“同形”，允许大小不同；$tilde.eq$ 要求“同形且同大”。二者不能互换。

  ✗ AA 的两个角不必是对应角
  → ✓ 必须*对应位置的两对角*都相等才能用 AA：即 $angle A = angle D$、$angle B = angle E$（按结论的字母顺序）。若只是“两个三角形恰好各有一个 $70 degree$ 的角”，并不够。

  ✗ 相似比写反
  → ✓ 写 $triangle A B C tilde triangle D E F$、$k = D E slash A B$。若随手写成 $k = A B slash D E$，后面一切换算都会反。

  ✗ 看到“对应边成比例”就直接写全等
  → ✓ 成比例不是相等；成比例 $+$ 比例为 $1$ 才退化为全等。

  ✗ 把 AAA 当成三条独立条件
  → ✓ 三角形内角和 $180 degree$，三组角相等实际上只要两组就够（第三组自动得到）；AA 就是最省力的写法。
]

#mastery[
  *基础*

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

  + 在 $triangle A B C$ 中，$angle A B C = angle A C D$，其中 $D$ 在 $A B$ 上。求证 $triangle A B C tilde triangle A C D$。（提示：公共角 $+$ 一对等角。）

  + 解释：为什么 AA 就够，却不能用“两对应边成比例”这一个条件当作“SS 判定”？

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + `AA` ✓；`AA` ✓（由 $angle A = angle D$ 与 $angle C = angle F$，第三角 $angle B = angle E$ 自动相等）；不够（只有一对角相等，形状还没锁死）；两对角虽相等，但对应顺序错位——不能直接写 $triangle A B C tilde triangle D E F$，需要改写成 $triangle A B C tilde triangle E D F$ 才是合法的相似关系。
  + $A B = 2 times 3 = 6$、$B C = 2 times 4 = 8$、$A C = 2 times 5 = 10$。
  + 由 $A D slash A B = 6 slash 10 = 3 slash 5$ 得 $D E = 3 slash 5 times 15 = 9$。

  *应用*
  + 设 $triangle A B C$ 中 $D E parallel B C$，$D in A B$、$E in A C$。由 $D E parallel B C$ 得 $angle A D E = angle A B C$（同位角，见 #secref("ge02-parallel-line-angles"));$angle A$ 公共。由 AA 得 $triangle A D E tilde triangle A B C$。
  + 在 $triangle A B D$ 与 $triangle C B A$ 中：$angle B$ 公共，$angle A D B = angle C A B = 90 degree$。由 AA 得 $triangle A B D tilde triangle C B A$。同理 $angle C$ 公共、直角相等 $=>$ $triangle A B D tilde triangle C A D$。
  + 由相似边成比例 $(2 x + 1) slash (x + 4) = (3 x - 2) slash (2 x)$。交叉相乘 $2 x (2 x + 1) = (x + 4)(3 x - 2)$，即 $4 x^2 + 2 x = 3 x^2 + 10 x - 8$，得 $x^2 - 8 x + 8 = 0$，$x = 4 plus.minus 2 sqrt(2)$。代回可检验，取正值 $x = 4 + 2 sqrt(2)$ 或 $4 - 2 sqrt(2)$。相似比 $k = A B slash D E = (2 x + 1) slash (x + 4)$。

  *挑战*
  + 设 $A M$、$D N$ 为 $triangle A B C$、$triangle D E F$ 中 $B C$、$E F$ 边上的中线。由相似 $B M slash E N = B C slash E F slash 2 slash 2 = k$；且 $A B slash D E = k$；$angle B = angle E$。由“相似 SAS”（夹角等 $+$ 两边成比例）或直接由三角形全体相似知 $A M slash D N = k$。高与角平分线同理。
  + 在 $triangle A B C$ 与 $triangle A C D$ 中：$angle A$ 公共，$angle A B C = angle A C D$（已知）。由 AA 得 $triangle A B C tilde triangle A C D$。
  + 两边成比例不锁形状：例如 $3 - 4 - 5$ 与 $4 - 5 - 6$ 两边成不同比例却“都从 $3, 4, 5$ 打头、$4, 5$ 打头”可以拼成不同形状。只有把*夹角*或*比例的第三边*也带进来，或者一开始就用两角相等来锁，才能保证相似。
]
