#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall
#import "../../lib/diagram-packages.typ": cetz

=== 直线、射线与线段：按“有没有端”分开的三种线 <tool:pf06-lines-rays-segments>

#vocab[直线 line][射线 ray][线段 segment][端点 endpoint]

#crisis[
  同样是画在纸上的“一条线”，意思可能完全不同：

  - 一条笔直的铁轨，两边都“消失在远处”——没有端。
  - 手电筒射出去的一束光，从灯口出发，一端不再回来——只有一个端。
  - 从家走到学校的那一段路——两头都定住了——两个端都在。

  如果都叫“一条线”，这三件事就会被混到一起。

  *我们需要一种按“端点数目”来区分的说法，把三种线一眼分开。*
]

#history-note[
  欧几里得的定义里，把“有限的直线”（线段）与“能任意延长的直线”分开来谈。后来教材进一步在它们之间补上了“只延伸一端”的射线，于是三者齐全。
]

#discovery[
  拿一条画好的直直的线，按“端”的数量做分类：

  - *两端都不收*：你可以把它想象成两边都无限延伸——叫*直线*。
  - *只收一端*：从一个固定的端点出发，向另一头无限延伸——叫*射线*，那个固定的端点就是*端点*。
  - *两端都收*：两头都定住，长度确定——叫*线段*。

  于是同一个“线”字下，按端点数可以分成 3 类：0 个端、1 个端、2 个端。

  端点的数量正好决定了能不能谈“长度”：

  - 直线 0 个端 → 不谈长度。
  - 射线 1 个端 → 不谈总长度（另一端在远方）。
  - 线段 2 个端 → 有确定的长度，可以度量。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let purple = rgb("#9C27B0")
      let orange = rgb("#FF9800")
      let teal   = rgb("#009688")

      // ---- 直线 (0 endpoints) ----
      let y1 = 8
      line((-1, y1), (15, y1), stroke: 2pt + purple,
           mark: (start: ">", end: ">"))
      content((17, y1),
        text(fill: purple, weight: "bold", size: 9pt)[直线（0 个端点）],
        anchor: "west")

      // ---- 射线 (1 endpoint) ----
      let y2 = 4
      line((0, y2), (15, y2), stroke: 2pt + orange,
           mark: (end: ">"))
      circle((0, y2), radius: 0.3, fill: orange, stroke: 1pt + orange)
      content((0, y2 - 1.3),
        text(fill: orange, size: 7pt)[端点], anchor: "north")
      content((17, y2),
        text(fill: orange, weight: "bold", size: 9pt)[射线（1 个端点）],
        anchor: "west")

      // ---- 线段 (2 endpoints) ----
      let y3 = 0
      line((0, y3), (14, y3), stroke: 2pt + teal)
      circle((0, y3), radius: 0.3, fill: teal, stroke: 1pt + teal)
      circle((14, y3), radius: 0.3, fill: teal, stroke: 1pt + teal)
      content((0, y3 - 1.3),
        text(fill: teal, weight: "bold", size: 8pt)[A], anchor: "north")
      content((14, y3 - 1.3),
        text(fill: teal, weight: "bold", size: 8pt)[B], anchor: "north")
      content((17, y3),
        text(fill: teal, weight: "bold", size: 9pt)[线段（2 个端点）],
        anchor: "west")
    }),
    caption: [三种线：按端点数分类],
  )
]

#side-hack[
  小口诀：*0 端叫直线，1 端叫射线，2 端叫线段*。需要“长度”时，它一定是线段。
]

#tryit[
  先自己试试：

  + 在方格纸上画出：一条过点 $S$ 的直线 $l$；一条以 $S$ 为端点的射线 $r$；一条以 $S$ 为一个端点、$T$ 为另一个端点的线段 $S T$。
  + 下列哪一项可以量长度：$l$、$r$、$S T$？
]

#blueprint[
  *按端点个数分类*

  #table(
    columns: (1fr, 1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*名称*], [*端点个数*], [*谈不谈长度*],
    [直线], [0], [不谈（两端都延伸）],
    [射线], [1], [不谈（一端延伸）],
    [线段], [2], [谈，有确定长度],
  )

  表述约定：

  - 直线通常用一个小写字母（如 $l$）或两点名字（如“直线 $P Q$”）表示。
  - 射线通常写“以 $P$ 为端点、过 $Q$ 的射线”。
  - 线段通常写 $P Q$，它的长度也记作 $P Q$ 的值。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let teal = rgb("#009688")

      // Segment with midpoint
      line((0, 0), (12, 0), stroke: 2pt + teal)
      circle((0, 0), radius: 0.3, fill: teal, stroke: 1pt + teal)
      circle((12, 0), radius: 0.3, fill: teal, stroke: 1pt + teal)

      // Midpoint
      circle((6, 0), radius: 0.3, fill: rgb("#FFF9C4"), stroke: 1.2pt + rgb("#FBC02D"))

      // Labels
      content((0, -1.2), text(fill: teal, weight: "bold", size: 9pt)[A], anchor: "north")
      content((12, -1.2), text(fill: teal, weight: "bold", size: 9pt)[B], anchor: "north")
      content((6, 1.3), text(fill: rgb("#F57F17"), weight: "bold", size: 9pt)[M（中点）], anchor: "south")

      // Equal marks
      content((3, 0.8), text(size: 7pt)[|], anchor: "center")
      content((9, 0.8), text(size: 7pt)[|], anchor: "center")
    }),
    caption: [线段 $A B$ 的中点 $M$：$A M = M B$],
  )

]

#pitfall[
  *高频错误*

  ✗ 把“线段”和“直线”当成同一个词
  → ✓ 线段两端固定，长度确定；直线两端都无限延伸，没法谈“全长”。

  ✗ 写“从 $A$ 到 $B$ 的射线”
  → ✓ 射线只有一个端点。写“以 $A$ 为端点、过 $B$ 的射线”才准确。

  ✗ 说“线段可以再往一端延长成直线”
  → ✓ 这样说得通，但延长之后它就*不再是线段*了——名字要一起换。
]

#mastery[
  *基础*

  + 有三个对象：一条直线、一条射线、一段线段。哪一个可以直接回答“有多长”？
  + 画一张图：过点 $X$ 的一条直线，以及从 $X$ 出发向两个不同方向的两条射线。
  + “射线 $O A$ 长 7 厘米”这句话合理吗？为什么？
  + 判断对错并改正："一条线段有两个端点，所以一条直线有零个端点，一条射线有一个端点。"
  + 从同一点 $O$ 出发，向同一方向画一条射线和一条线段。它们有没有可能*完全重合*？说说理由。

  *应用*

  + 用几何名字改写下列事物：
    - 从车灯射出去的光束
    - 学校操场上两根白色跑道线之间的边线（有起点和终点）
    - 想象中把这条跑道线两端都无限延长以后
  + 一条直线和一个平面相交在 1 个点，如果直线在这个平面上，情况会怎样？
  + 两条直线相交的地方，可以有几个交点？两条射线呢？

  *挑战 ☞ 选做*

  + 从一条线段 $A B$ 出发，怎样得到“以 $A$ 为端点的一条射线”？请画图说明两种做法（向 $B$ 的方向延伸 / 向 $B$ 的反方向延伸）。
  + 为什么“两点确定一条直线”？如果只有一个点，能不能确定一条直线？

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + 只有线段可以；直线、射线都有"无限延伸"的一端。（线段有两个端点，长度确定）
  + 图略；从 $X$ 向两侧延长两条直线即可。（直线无端点，可任意延伸）
  + 不合理；射线有一端无限延伸，不存在"总长"。（射线只有一个端点）
  + 对。三种线的本质区别正是端点个数：线段 2 个、射线 1 个、直线 0 个。（按端点数分类）
  + 不可能完全重合。射线从 $O$ 出发无限延伸，而线段从 $O$ 到另一个端点就停下了；线段只是射线的一部分。（射线无限延伸，线段有限）
  + 光束 → 射线（从灯口出发，一端无限延伸）；跑道线（有起点终点）→ 线段（两端固定）；两端无限延长后 → 直线（无端点）。
  + 如果直线在平面上，它们就交在*无限多个点*——整条直线都在平面上。由"直线无端点"可知，一旦直线的一部分在平面上，整条直线都在上面。
  + 两条直线一般最多交在 1 个点；两条射线可能交在 1 个点，也可能不相交（取决于方向和端点位置）。
  + 图略。做法一：沿 $A arrow B$ 方向延伸线段 $A B$，得到以 $A$ 为端点、过 $B$ 并继续下去的射线。做法二：从 $A$ 出发反向延伸，得到与 $A B$ 反方向的射线。两条射线都以 $A$ 为端点但方向相反。
  + 两点确定一条直线，是因为只有一条直线能同时过这两个位置。只有一个点时有无穷多条直线能过它，所以不能确定唯一一条。（两点确定一条直线公理）
]
