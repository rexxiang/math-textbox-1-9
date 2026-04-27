#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall
#import "../../lib/diagram-packages.typ": cetz

=== 平行线与横截线：一张图里的角关系 <tool:pf08-parallel-transversal>

#vocab[平行 parallel][横截线 transversal][同位角 corresponding][内错角 alternate][同旁内角 co-interior]

#crisis[
  两条铁轨平行向远方延伸，一条枕木横穿过去——你会看到好几对角。有些看起来“一样大”，有些看起来“加起来是一条直线”。

  如果你只凭眼睛猜，每换一张图都要从头目测一次，很快就会乱。

  *我们需要几条稳定的角关系，让“横穿两条平行线”这张图变成一眼可读的模板。*
]

#history-note[
  欧几里得（Euclid，约公元前 300 年）在《几何原本》第一卷写下了著名的第五公设：如果一条直线截两条直线，使同旁内角之和小于两个直角，那么这两条直线向那一侧延长后必定相交。这条公设看起来不够“显然”，两千多年来无数数学家试图用其他公设推导它——直到 19 世纪，波尔约（Bolyai，1832 年）和罗巴切夫斯基（Lobachevsky，1829 年）证明：去掉它可以建立完全不同的几何体系，即“非欧几何”。
]

#discovery[
  画两条平行线 $l_1$、$l_2$，再画一条第三条线 $t$ 横穿它们——$t$ 叫做*横截线*。它和每条平行线都交出 4 个角，一共 8 个角，两两有关系。

  常用的三种关系（在 $l_1 parallel l_2$ 时）：

  - *同位角*（在同一侧、同一位置）：大小相等。
  - *内错角*（在两条平行线之间、横截线两侧）：大小相等。
  - *同旁内角*（在两条平行线之间、横截线同一侧）：两角之和为 $180°$。

  反过来说：只要找到一对同位角（或内错角）相等，或者一对同旁内角互补，就能判断两条直线平行。

  这就是本节最值得记住的“一张图，三对角”。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let red = rgb("#F44336")
      let green = rgb("#4CAF50")
      let orange = rgb("#FF9800")

      // Two parallel lines
      line((-1, 0), (16, 0), stroke: 1.5pt + blue)
      line((-1, 6), (16, 6), stroke: 1.5pt + blue)

      // Transversal
      line((3, -1.5), (11, 7.5), stroke: 1.2pt + luma(80))

      // Labels for lines
      content((17, 0), text(fill: blue, size: 9pt)[$l_2$], anchor: "west")
      content((17, 6), text(fill: blue, size: 9pt)[$l_1$], anchor: "west")
      content((11.5, 7.5), text(size: 9pt)[$t$], anchor: "west")

      // Intersection points
      let P = (5.25, 1.5)
      let Q = (8.25, 4.5)

      // Mark corresponding angles (同位角) with same color
      arc((P.at(0) + 0.8, P.at(1)), start: 0deg, stop: 56deg, radius: 0.8,
          fill: rgb("#FF980040"), stroke: 1pt + orange, mode: "PIE")
      arc((Q.at(0) + 0.8, Q.at(1)), start: 0deg, stop: 56deg, radius: 0.8,
          fill: rgb("#FF980040"), stroke: 1pt + orange, mode: "PIE")

      // Labels for angle pairs
      content((P.at(0) + 2.5, P.at(1) + 0.8), text(fill: orange, size: 7pt)[∠1], anchor: "west")
      content((Q.at(0) + 2.5, Q.at(1) + 0.8), text(fill: orange, size: 7pt)[∠2], anchor: "west")

      // Annotation
      content((14, 3), text(fill: orange, size: 8pt)[同位角相等], anchor: "west")
      content((14, 2), text(fill: orange, size: 8pt)[$angle 1 = angle 2$], anchor: "west")
    }),
    caption: [平行线被横截线所截：同位角位于同侧同位置，大小相等],
  )


]

#side-hack[
  认角口诀：*同位角同侧同位、内错角夹在中间互错、同旁内角夹在中间同侧*。同位、内错 → 相等；同旁内角 → 互补。
]

#tryit[
  先自己试试：

  + 画 $l_1 parallel l_2$，横截线 $t$ 交出一对同位角。量一量它们的度数是不是相等。
  + 同一张图里再找一对内错角，量一量。
]

#blueprint[
  设 $l_1 parallel l_2$，$t$ 是它们的横截线。

  - *同位角相等*。
  - *内错角相等*。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let red = rgb("#F44336")
      let green = rgb("#4CAF50")

      // Two parallel lines
      line((-1, 0), (16, 0), stroke: 1.5pt + blue)
      line((-1, 5), (16, 5), stroke: 1.5pt + blue)

      // Transversal
      line((4, -1), (10, 6), stroke: 1.2pt + luma(80))

      // Intersection points (approximate)
      let P1 = (5, 0.67)
      let P2 = (8.33, 4.33)

      // Alternate interior angles (内错角)
      arc((P1.at(0) - 0.8, P1.at(1)), start: 56deg, stop: 180deg, radius: 0.8,
          fill: rgb("#4CAF5040"), stroke: 1pt + green, mode: "PIE")
      arc((P2.at(0) + 0.8, P2.at(1)), start: 236deg, stop: 360deg, radius: 0.8,
          fill: rgb("#4CAF5040"), stroke: 1pt + green, mode: "PIE")

      // Co-interior angles (同旁内角)
      arc((P1.at(0) + 0.7, P1.at(1)), start: 0deg, stop: 56deg, radius: 0.7,
          fill: rgb("#F4433630"), stroke: 0.8pt + red, mode: "PIE")
      arc((P2.at(0) + 0.7, P2.at(1)), start: 236deg, stop: 360deg, radius: 0.7,
          fill: rgb("#F4433630"), stroke: 0.8pt + red, mode: "PIE")

      // Labels
      content((1, 2.5), text(fill: green, size: 8pt)[内错角相等], anchor: "west")
      content((11, 2.5), text(fill: red, size: 8pt)[同旁内角互补], anchor: "west")
    }),
    caption: [内错角（绿）相等，同旁内角（红）互补（和为 $180°$）],
  )

  - *同旁内角互补*（和为 $180°$）。

  反向判定：如果图中出现上面任何一条关系，就可以判定两条直线平行。
]

#pitfall[
  *高频错误*

  ✗ 看到“两角相等”就断定直线平行
  → ✓ 要先看清是哪一对：同位角相等 $arrow.r$ 平行；随便一对角相等则不一定。

  ✗ 把同旁内角直接当成相等
  → ✓ 同旁内角*互补*（和为 $180°$），除非两条平行线夹直角，否则它们不相等。

  ✗ 没画平行，就直接用“同位角相等”下结论
  → ✓ 这三条关系都建立在“两条直线本来就平行”这一前提上。前提没到，结论用不得。
]

#mastery[
  *基础*

  + $l_1 parallel l_2$，横截线 $t$ 交出一对同位角 $angle 1 = 72°$。那么它对应的同位角是多少度？
  + 同一张图里，一对内错角中一个是 $55°$，另一个是多少度？
  + 一对同旁内角的一个是 $110°$，另一个是多少度？
  + 判断对错并改正："同位角一定相等。"
  + 在 $l_1 parallel l_2$ 被 $t$ 所截的图中，一共产生了几个角？其中有几对同位角？

  *应用*

  + 已知 $l_1 parallel l_2$，横截线 $t$，其中一个角是 $65°$。请尽可能多地写出其他角的度数（至少 3 个）。
  + 两条直线被一条横截线所截，一对同位角都是 $80°$。这两条直线一定平行吗？为什么？
  + 一对同旁内角一个是 $90°$，另一个也是 $90°$。两条直线是什么关系？

  *挑战 ☞ 选做*

  + 如果一对同旁内角的差是 $40°$，它们各是多少度？
  + “内错角相等 $arrow.r$ 两条直线平行”和“两条直线平行 $arrow.r$ 内错角相等”是不是一回事？说说这两句话的方向差别。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + $72°$。（平行线同位角相等）
  + $55°$。（平行线内错角相等）
  + $180° - 110° = 70°$。（平行线同旁内角互补，和为 $180°$）
  + 错。同位角相等的*前提*是两条直线平行。如果两条直线不平行，同位角不一定相等。（同位角相等是平行线的*性质*，不是无条件成立的）
  + 一共 8 个角（每个交点处 4 个，2 个交点共 8 个）。其中有 4 对同位角。（横截线与两条平行线的交角结构）
  + 逐步推导：已知角 $= 65°$。同位角（同侧同位置）$= 65°$（平行线同位角相等）；内错角（夹在中间互错）$= 65°$（内错角相等）；同旁内角 $= 180° - 65° = 115°$（同旁内角互补）；与已知角成平角的角 $= 180° - 65° = 115°$。
  + 一定平行。理由：一对同位角都是 $80°$（相等），满足“同位角相等 → 两直线平行”的判定条件。
  + $90° + 90° = 180°$，同旁内角互补 → 两条直线平行。进一步：横截线 $t$ 与两条平行线都成 $90°$，说明 $t$ 垂直于两条平行线。
  + 设两角为 $x$ 和 $y$。由同旁内角互补：$x + y = 180°$；由差为 $40°$：$x - y = 40°$。两式相加：$2x = 220°$，$x = 110°$；$y = 70°$。
  + 方向不同但都正确。“内错角相等 → 平行”是*判定*（从角推出线的关系）；“平行 → 内错角相等”是*性质*（从线的关系推出角）。两者互为逆命题，恰好都成立。
]
