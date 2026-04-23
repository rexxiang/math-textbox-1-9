#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref
#import "../../lib/diagram-packages.typ": cetz

=== 特殊直角三角形与三角比 <tool:ge04-special-right-triangles>

#vocab[$30$–$60$–$90$ 三角形 / $45$–$45$–$90$ 三角形 / 正弦 sine $sin$ / 余弦 cosine $cos$ / 正切 tangent $tan$]

#crisis[
  勾股定理给出“斜边 $=$ 两直角边平方和再开方”。可只要两直角边长度任换一组，就得再开一次方。有没有两族*形状完全固定*的直角三角形——它们的三边比例一劳永逸？这样一来，只要知道*一条边 + 一个角*，其余两条边就能直接按比例写出来。

  *当 $angle B = 30 degree$ 或 $45 degree$ 时，直角三角形的三边到底按什么固定比例分布？*
]

#history-note[
  $30 degree$、$45 degree$、$60 degree$ 是古典几何里最早被彻底量清楚的三个角。原因很实在：前者来自正三角形（三个 $60 degree$）、后者来自正方形（四个 $45 degree$ 斜角）。在没有计算器的年代，仅这三个角的三角比就足够支撑大量天文与测量工作。
]

#discovery[
  *第一族：$45$–$45$–$90$ 三角形*

  把一个边长 $1$ 的正方形沿对角线剪开：两半都是*等腰直角三角形*，两条直角边 $= 1$，两个锐角 $= 45 degree$。由勾股：斜边 $= sqrt(1^2 + 1^2) = sqrt(2)$。

  若把直角边放大成 $k$：三边按 $k : k : k sqrt(2)$ 的比例放。

  *三边比（$45$–$45$–$90$）*：$1 : 1 : sqrt(2)$。

  *第二族：$30$–$60$–$90$ 三角形*

  #figure(
    cetz.canvas(length: 1cm, {
      import cetz.draw: *
      // equilateral triangle with altitude drawn
      let A = (0, 0)
      let B = (4, 0)
      let C = (2, 3.464)  // 2*sqrt(3)
      let M = (2, 0)
      line(A, B, C, close: true, stroke: 0.6pt)
      line(C, M, stroke: 0.4pt + luma(130))
      content((A.at(0) - 0.25, -0.25), $A$)
      content((B.at(0) + 0.25, -0.25), $B$)
      content((C.at(0), C.at(1) + 0.3), $C$)
      content((M.at(0), -0.3), $M$)
      content((1, -0.35), [$2$])
      content((3, -0.35), [$2$])
      content((0.7, 1.6), [$4$])
      content((2.3, 1.7), [$2 sqrt(3)$])
    }),
    caption: [边长 $4$ 的等边三角形沿高切成两半，每半是 $30$–$60$–$90$ 三角形。]
  )

  把边长 $2$ 的*等边三角形*（三个 $60 degree$）从一个顶点作高：这条高同时也是中线，把对边平分成两段 $= 1$；切出的两个小三角形就是 $30$–$60$–$90$。

  - 对着 $30 degree$ 的边（*短直角边*）$= 1$；
  - 对着 $60 degree$ 的边（*长直角边*，即高）$= sqrt(3)$（由勾股 $1^2 + h^2 = 2^2 => h = sqrt(3)$）；
  - 对着 $90 degree$ 的斜边 $= 2$。

  若把短边放大成 $k$：三边按 $k : k sqrt(3) : 2 k$ 的比例放。

  *三边比（$30$–$60$–$90$）*：$1 : sqrt(3) : 2$（$30 degree$ 对 $1$，$60 degree$ 对 $sqrt(3)$，$90 degree$ 对 $2$）。

  *把比例抽象成“角的函数”*

  在直角三角形中，*锐角一旦确定，三边比例就确定*（相似，AA 判定，#secref("ge02-similarity-aa-ratio")）。于是可以只看*比值*，不看具体大小。对锐角 $alpha$，定义：

  $ sin alpha = frac("对边", "斜边"), quad cos alpha = frac("邻边", "斜边"), quad tan alpha = frac("对边", "邻边"). $

  “对边”指 $alpha$ 所对着的那条直角边，“邻边”指夹着 $alpha$ 的那条直角边（不是斜边）。

  套回本节的两族三角形，三个特殊角的三角比就可以一次算清：

  #table(
    columns: 4,
    inset: 6pt,
    stroke: 0.4pt,
    align: center,
    [*角*], [$sin$], [$cos$], [$tan$],
    [$30 degree$], [$1 slash 2$], [$sqrt(3) slash 2$], [$sqrt(3) slash 3$],
    [$45 degree$], [$sqrt(2) slash 2$], [$sqrt(2) slash 2$], [$1$],
    [$60 degree$], [$sqrt(3) slash 2$], [$1 slash 2$], [$sqrt(3)$],
  )

  $tan 30 degree = 1 slash sqrt(3) = sqrt(3) slash 3$（分母有理化）。本节*只*处理这三个特殊角；一般角的 $sin$、$cos$、$tan$ 留给高中。
]

#side-hack[
  *怎么记三角比的表*

  + 先背三边比：$1 : 1 : sqrt(2)$ 和 $1 : sqrt(3) : 2$。
  + $sin$ / $cos$ / $tan$ 全是从三边比里*现写*出来的——不要单独背表。
  + $sin alpha$ 和 $cos(90 degree - alpha)$ 总是同一件事（对边与邻边互换），因此 $sin 30 degree = cos 60 degree$、$sin 60 degree = cos 30 degree$、$sin 45 degree = cos 45 degree$。
]

#tryit[
  + 在 $45$–$45$–$90$ 三角形中，直角边 $= 5$。求斜边。
  + 在 $30$–$60$–$90$ 三角形中，短直角边（对 $30 degree$）$= 4$。求长直角边与斜边。
  + 不算三角函数表，直接由特殊直角三角形算：$sin 30 degree$、$tan 45 degree$、$cos 60 degree$ 各是多少？
  + $sin 60 degree + cos 60 degree$ 等于多少？（化到最简）
]

#blueprint[
  *工具一：$45$–$45$–$90$*

  三边比：$1 : 1 : sqrt(2)$。若一条直角边 $= k$，则另一条直角边 $= k$，斜边 $= k sqrt(2)$。出现场景：正方形的对角线、等腰直角三角板。

  *工具二：$30$–$60$–$90$*

  三边比：$1 : sqrt(3) : 2$（$30 degree : 60 degree : 90 degree$）。若短直角边（对 $30 degree$）$= k$，则长直角边 $= k sqrt(3)$、斜边 $= 2 k$。出现场景：等边三角形被高切开、直角三角板。

  *工具三：$sin$、$cos$、$tan$（本章仅用于特殊角 $30 degree$/$45 degree$/$60 degree$）*

  在直角三角形里对一个锐角 $alpha$：

  $ sin alpha = frac("对边", "斜边"), quad cos alpha = frac("邻边", "斜边"), quad tan alpha = frac("对边", "邻边"). $

  特殊值表（背到可以立即写出）：

  #table(
    columns: 4,
    inset: 6pt,
    stroke: 0.4pt,
    align: center,
    [*角*], [$sin$], [$cos$], [$tan$],
    [$30 degree$], [$1 slash 2$], [$sqrt(3) slash 2$], [$sqrt(3) slash 3$],
    [$45 degree$], [$sqrt(2) slash 2$], [$sqrt(2) slash 2$], [$1$],
    [$60 degree$], [$sqrt(3) slash 2$], [$1 slash 2$], [$sqrt(3)$],
  )

  *综合例*：直角三角形 $A B C$ 中，$angle C = 90 degree$、$angle A = 30 degree$、$B C = 5$。求 $A C$ 与 $A B$。

  *解*：$B C$ 是 $angle A = 30 degree$ 的*对边*，为短直角边 $= 5$。由 $30$–$60$–$90$ 边比：$A C$ 是 $angle A$ 的邻边（对 $60 degree$）$= 5 sqrt(3)$，斜边 $A B = 2 times 5 = 10$。
]

#pitfall[
  *高频错误*

  ✗ 把 $30$–$60$–$90$ 的 $1 : sqrt(3) : 2$ 顺序记反，把 $sqrt(3)$ 当短边
  → ✓ 先按*角度由小到大*排：$30 degree$ 对 $1$、$60 degree$ 对 $sqrt(3)$、$90 degree$ 对 $2$。角越大，对边越长。

  ✗ $sin$、$cos$ 把“对边 / 邻边”搞反
  → ✓ $sin$ 的 $s$ 代表 “shǎn 对”；$cos$ 的 $c$ 代表“chǎng 邻”——或用 SOH-CAH-TOA 记忆：Sin-Opp-Hyp / Cos-Adj-Hyp / Tan-Opp-Adj。

  ✗ 对非特殊角（例如 $20 degree$、$50 degree$）硬写出 $sin$ 的精确值
  → ✓ 本章只处理 $0 degree$、$30 degree$、$45 degree$、$60 degree$、$90 degree$。其他角度的 $sin$、$cos$、$tan$ 在本书范围内不展开。
]

#mastery[
  *基础*

  + 在 $45$–$45$–$90$ 三角形中，直角边 $= 7$。求斜边。
  + 在 $30$–$60$–$90$ 三角形中，短直角边 $= 3$。求长直角边与斜边。
  + 计算 $sin 60 degree - cos 30 degree$。

  *应用*

  + 正方形边长 $= 6$。求它的对角线长。
  + 直角三角形中，$angle B = 30 degree$、斜边 $A B = 12$。求 $angle B$ 的对边与邻边长度。
  + 计算 $tan 60 degree dot tan 30 degree$。

  *挑战 ☞ 选做*

  + 直角三角形 $A B C$，$angle C = 90 degree$、$angle A = 30 degree$、$A C = 6$。求 $B C$、$A B$。
  + 等边三角形边长 $= 6$。求它的高与面积。
  + 在矩形 $A B C D$ 中，$A B = 3$、$B C = 3 sqrt(3)$。设对角线 $A C$ 与 $A B$ 的夹角 $= alpha$。求 $tan alpha$、并由此判断 $alpha$ 的度数。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + 斜边 $= 7 sqrt(2)$。
  + 长直角边 $= 3 sqrt(3)$；斜边 $= 6$。
  + $sqrt(3) slash 2 - sqrt(3) slash 2 = 0$。

  *应用*
  + 对角线 $= 6 sqrt(2)$。
  + $angle B = 30 degree$ 的对边（短直角边）$= 12 slash 2 = 6$；邻边（长直角边）$= 6 sqrt(3)$。
  + $tan 60 degree dot tan 30 degree = sqrt(3) dot (sqrt(3) slash 3) = 3 slash 3 = 1$。

  *挑战 ☞ 选做*
  + $angle A = 30 degree$ 的邻边是 $A C = 6$（对 $60 degree$ 的长直角边）。由 $30$–$60$–$90$ 边比 $1 : sqrt(3) : 2$，设短直角边 $= k$，则 $k sqrt(3) = 6 => k = 2 sqrt(3)$。于是 $B C$（对 $30 degree$）$= 2 sqrt(3)$，$A B$（斜边）$= 2 k = 4 sqrt(3)$。
  + 高 $= (sqrt(3) slash 2) times 6 = 3 sqrt(3)$；面积 $= 1 slash 2 times 6 times 3 sqrt(3) = 9 sqrt(3)$。
  + $tan alpha = B C slash A B = 3 sqrt(3) slash 3 = sqrt(3)$，故 $alpha = 60 degree$。
]
