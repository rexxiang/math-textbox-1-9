#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut, self-check
#import "../../lib/diagram-packages.typ": cetz

=== 平面直角坐标系：给每个点发身份证 <tool:cb04-rectangular-system>

#vocab[平面直角坐标系 rectangular coordinate system][$x$ 轴][$y$ 轴][原点][有序数对]

#crisis[
  #secref("pf08-coordinate-intuition") 让你感受到"两个数可以描述平面上的点"。但我们还没有回答一个更根本的问题：

  *为什么偏偏是两个数？这两个数凭什么就能唯一确定平面上任意一点？*

  想象你在大海上遇险，用无线电向岸上报告位置：

  ——"我离港口 50 海里。"

  救援队能立刻出发找到你吗？*不能。* 以港口为圆心、50 海里为半径，整个圆上都满足这个描述——你究竟在哪一点？

  再加一个数："偏北 30°。"理论上可以唯一确定位置。但如果两艘船同时遇难，救援队想找到"两船的中间点"一次救两人，角度和距离*不能直接平均*——中点计算需要三角函数，麻烦得很。

  *核心困境：有没有一种"两个数的方案"，既能无歧义地锁定平面上任何一点，又能让"求中点""做平移"这类计算简单到只用加减法？*
]

#tryit[
  *先发明，再比较。*

  在一张方格纸上随意标出 5 个"城市"（点），然后发明一套"位置编码方案"：

  + 自定义一个参照点和基准方向（类似地图的原点和指北针）。
  + 给每个城市写出一段"位置编码"（可以是两个数、一个数加方向、距离加角度……任何形式）。
  + 要求：只凭你的编码规则和编码结果，陌生人能在空白方格纸上精确还原 5 个城市的位置——不能有歧义。
  + 想一想：你方案里的两个量是否真正独立——改变第一个，第二个会不会被迫跟着变？
]

#discovery[
  *先用旧工具试试。* 数轴已经能用一个数精确定位一条线上的点。现在要在操场上标出一棵树的位置——以大门为原点，规定向东为正，告诉同学"树在 $5$"——够吗？

  试着推下去——

  "在 $5$"表示向东 5 步，但操场是一片平面，偏北 3 步偏东 5 步的点，和偏南 2 步偏东 5 步的点，水平距离都满足"向东分量 5"——整条南北方向的线上的点都叫"$5$"。改成"距大门 5 步"，画出半径 5 的圆，圆上所有点都满足，更不唯一。加上方向"偏东 30°"可以唯一定位，但两处失事地点 $(5, 30°)$ 和 $(8, 45°)$ 的中间营救点在哪里？取 $((5+8)/2, (30°+45°)/2) = (6.5, 37.5°)$——这不是几何中点，正确答案需要三角函数才能算，整个算式复杂到无法用基本运算完成。

  *这里卡住了。* 一个数只够在直线上定位；"距离 + 角度"虽能标注一点，但两点间最简单的中点计算就需要三角函数——我们需要一种只用加减就能做中点、平移的两数定位系统。

  *一个数够吗？*

  在数轴（一维）上，1 个数唯一确定 1 个点。平面是两个维度，所以需要 2 个数。而且这 2 个数必须*独立*——各管一个方向，改变其中一个不会强迫另一个变化。

  一种方案是"距离 + 角度"：从原点报告"距离 $r$、与水平轴夹角 $theta$"，可以唯一确定一个点。导航和工程里确实用这套。

  但求中点试试：$(r_1, theta_1)$ 和 $(r_2, theta_2)$ 的中点是多少？直接取 $lr((frac(r_1+r_2, 2), frac(theta_1+theta_2, 2)))$？不对，这不是几何中点。正确计算需要三角函数——这对代数来说很不友好。

  另一种方案是用两条垂直数轴——从已经熟悉的数轴出发，再加一条——让两条数轴在同一点正交：

  - 水平数轴叫 $x$ 轴（右正左负）；
  - 竖直数轴叫 $y$ 轴（上正下负）；
  - 交点叫*原点* $O$。

  点 $P$ 的坐标 $(x, y)$：$x$ 是 $P$ 在水平方向上偏离原点的有符号距离，$y$ 是竖直方向上的有符号距离。

  *为什么独立性成立？* 改变 $x$，点只水平移动，$y$ 完全不受影响；改变 $y$，点只垂直移动，$x$ 不变。两个维度真正独立。

  *中点为什么简单？* $(x_1, y_1)$ 和 $(x_2, y_2)$ 的中点恰好是 $lr((frac(x_1+x_2, 2), frac(y_1+y_2, 2)))$——坐标各自取平均，无需三角函数。

  *为什么"先横后纵"不能颠倒？* $(3, 5)$ 和 $(5, 3)$ 是不同的点——$x$ 表示水平位置，$y$ 表示竖直位置，两者含义不同。就像"第 14 排第 7 座"和"第 7 排第 14 座"是剧场里不同的座位。
]


#history-note[
  $1637$ 年，法国数学家笛卡儿（René Descartes）在附录《几何学》（_La Géométrie_）中，第一次用代数方程描述几何曲线，把代数和几何桥接了起来。几乎同一时期，费马（Pierre de Fermat）也独立提出了类似的坐标方法。更早的"用数定位"思想可以追溯到古希腊天文学家托勒密（Ptolemy，约 $150$ 年），他在《地理学》中用经纬度标记地球上的位置。后人把这种直角坐标系统叫做"笛卡儿坐标系"。

  ☞ 历史接力 → 笛卡儿坐标系让函数的图像第一次可以被精确绘制；正比例函数 $y = k x$ 的直线图是最早被系统研究的例子，见 #secref("fn04-direct-variation")。
]

#side-hack[
  *重演笛卡尔：从墙角蜘蛛到坐标系*

  传说笛卡尔（Descartes）卧病在床时，看着天花板上的蜘蛛思考：只要知道蜘蛛到两面墙的距离，就能唯一确定它的位置。

  试着重演这个发现过程：

  + 在一张方格纸上标出原点 $O$（房间角落），横轴表示"离北墙的距离"，纵轴表示"离西墙的距离"。
  + 把以下位置用坐标表示：A——离北墙 $3$ 格、离西墙 $5$ 格；B——离北墙 $0$ 格、离西墙 $4$ 格（即贴着北墙）；C——在原点（墙角）。
  + 如果蜘蛛从 $A$ 爬到 $B$，它的横坐标怎么变？纵坐标怎么变？
  + 如果在三维空间（房间里），需要几个坐标才能唯一确定蜘蛛的位置？

  #answer-cut[
    + $A = (3, 5)$，$B = (0, 4)$，$C = (0, 0)$。
    + 从 $A(3,5)$ 到 $B(0,4)$：横坐标从 $3$ 变为 $0$（减少 $3$），纵坐标从 $5$ 变为 $4$（减少 $1$）。
    + 三维空间需要 $3$ 个坐标（$x, y, z$），分别表示离三个相互垂直的墙（或平面）的距离。
  ]
]

#blueprint[
  - *平面直角坐标系*：两条互相垂直、共用同一原点的数轴构成平面坐标系。水平轴叫 $x$ 轴（正方向向右），竖直轴叫 $y$ 轴（正方向向上），交点叫*原点* $O = (0, 0)$。默认两轴使用相同单位长度。
  - *有序数对* $(x, y)$：横坐标在前，纵坐标在后；交换顺序一般得到不同的点。
  - *轴上的点*：$y = 0 <=> $ 点在 $x$ 轴上；$x = 0 <=> $ 点在 $y$ 轴上；原点 $O = (0, 0)$ 是两轴唯一的交点。

  如图 @fig-ordered-pair-not-symmetric 所示。
  #figure(
    cetz.canvas(length: 0.5cm, {
      import cetz.draw: *
      let s = 2.0
      // Axes
      line((-1, 0), (6 * s + 1, 0), stroke: 1.5pt + rgb("#333"), mark: (end: ">"))
      line((0, -1), (0, 6 * s + 1), stroke: 1.5pt + rgb("#333"), mark: (end: ">"))
      content((6 * s + 1.5, 0), text(size: 8pt, weight: "bold")[_x_], anchor: "west")
      content((0, 6 * s + 1.5), text(size: 8pt, weight: "bold")[_y_], anchor: "south")
      // Point (3,5) and (5,3) to show order matters
      let ax = 3 * s
      let ay = 5 * s
      let bx = 5 * s
      let by = 3 * s
      // Dashed guides for A
      line((ax, 0), (ax, ay), stroke: (dash: "dashed", paint: rgb("#1565C0"), thickness: 0.6pt))
      line((0, ay), (ax, ay), stroke: (dash: "dashed", paint: rgb("#1565C0"), thickness: 0.6pt))
      circle((ax, ay), radius: 0.25, fill: rgb("#1565C0"), stroke: 1pt + rgb("#1565C0"))
      content((ax + 0.5, ay + 0.5), text(size: 7pt, weight: "bold", fill: rgb("#1565C0"))[$A(3, 5)$], anchor: "south-west")
      // Dashed guides for B
      line((bx, 0), (bx, by), stroke: (dash: "dashed", paint: rgb("#C62828"), thickness: 0.6pt))
      line((0, by), (bx, by), stroke: (dash: "dashed", paint: rgb("#C62828"), thickness: 0.6pt))
      circle((bx, by), radius: 0.25, fill: rgb("#C62828"), stroke: 1pt + rgb("#C62828"))
      content((bx + 0.5, by + 0.5), text(size: 7pt, weight: "bold", fill: rgb("#C62828"))[$B(5, 3)$], anchor: "south-west")
      // Tick labels
      for i in range(1, 6) {
        content((i * s, -0.6), text(size: 6pt)[#str(i)], anchor: "north")
        content((-0.6, i * s), text(size: 6pt)[#str(i)], anchor: "east")
      }
      circle((0, 0), radius: 0.2, fill: rgb("#333"), stroke: 1pt + rgb("#333"))
      content((-0.5, -0.5), text(size: 7pt, weight: "bold")[O], anchor: "north-east")
    }),
    caption: [$(3, 5)$ 与 $(5, 3)$ 是不同的点——顺序不能交换],
  ) <fig-ordered-pair-not-symmetric>

  如图 @fig-rectangular-coordinate-system 所示。
  #figure(
    cetz.canvas(length: 0.55cm, {
      import cetz.draw: *

      let s = 2.0  // scale: 1 unit = 2.0 canvas units
      let lo = -4
      let hi = 4

      // Quadrant background fills
      rect((0, 0), (hi * s, hi * s), fill: rgb("#E3F2FD"), stroke: none)      // I
      rect((lo * s, 0), (0, hi * s), fill: rgb("#E8F5E9"), stroke: none)      // II
      rect((lo * s, lo * s), (0, 0), fill: rgb("#FFF8E1"), stroke: none)      // III
      rect((0, lo * s), (hi * s, 0), fill: rgb("#FFF3E0"), stroke: none)      // IV

      // Grid lines
      for i in range(lo, hi + 1) {
        if i != 0 {
          line((i * s, lo * s), (i * s, hi * s), stroke: 0.3pt + rgb("#CCCCCC"))
          line((lo * s, i * s), (hi * s, i * s), stroke: 0.3pt + rgb("#CCCCCC"))
        }
      }

      // Axes
      line((lo * s - 0.5, 0), (hi * s + 1.0, 0), stroke: 1.5pt + rgb("#333333"), mark: (end: ">"))
      line((0, lo * s - 0.5), (0, hi * s + 1.0), stroke: 1.5pt + rgb("#333333"), mark: (end: ">"))

      // Axis labels
      content((hi * s + 1.5, 0), text(size: 8pt, weight: "bold")[_x_], anchor: "west")
      content((0, hi * s + 1.8), text(size: 8pt, weight: "bold")[_y_], anchor: "south")

      // Tick marks and labels on axes
      for i in range(lo, hi + 1) {
        if i != 0 {
          // x-axis ticks
          line((i * s, -0.25), (i * s, 0.25), stroke: 0.8pt + rgb("#555555"))
          content((i * s, -0.7), text(size: 6pt)[#str(i)], anchor: "north")
          // y-axis ticks
          line((-0.25, i * s), (0.25, i * s), stroke: 0.8pt + rgb("#555555"))
          content((-0.7, i * s), text(size: 6pt)[#str(i)], anchor: "east")
        }
      }

      // Quadrant labels
      content((hi * s / 2, hi * s / 2), text(size: 14pt, fill: rgb("#BBBBBB"), weight: "bold")[Ⅰ])
      content((lo * s / 2, hi * s / 2), text(size: 14pt, fill: rgb("#BBBBBB"), weight: "bold")[Ⅱ])
      content((lo * s / 2, lo * s / 2), text(size: 14pt, fill: rgb("#BBBBBB"), weight: "bold")[Ⅲ])
      content((hi * s / 2, lo * s / 2), text(size: 14pt, fill: rgb("#BBBBBB"), weight: "bold")[Ⅳ])

      // --- Plotted points with dashed guide lines ---
      let points = (
        ("A(3, 2)", 3, 2, rgb("#1565C0")),
        ("B(−2, 4)", -2, 4, rgb("#2E7D32")),
        ("C(−3, −1)", -3, -1, rgb("#E65100")),
        ("D(4, −3)", 4, -3, rgb("#C62828")),
      )
      for (label, px, py, clr) in points {
        let cx = px * s
        let cy = py * s
        // Dashed guide lines to axes
        line((cx, 0), (cx, cy), stroke: (dash: "dashed", paint: clr, thickness: 0.6pt))
        line((0, cy), (cx, cy), stroke: (dash: "dashed", paint: clr, thickness: 0.6pt))
        // Point dot
        circle((cx, cy), radius: 0.25, fill: clr, stroke: 1pt + clr)
        // Label
        content((cx + 0.5, cy + 0.5), text(size: 7pt, weight: "bold", fill: clr)[#label], anchor: "south-west")
      }

      // Origin
      circle((0, 0), radius: 0.25, fill: rgb("#333333"), stroke: 1pt + rgb("#333333"))
      content((-0.6, -0.6), text(size: 7pt, weight: "bold")[O], anchor: "north-east")
    }),
    caption: [平面直角坐标系：每个点有唯一的 $(x, y)$ 身份证],
  ) <fig-rectangular-coordinate-system>
]

#self-check[
  在平面直角坐标系里，点 $(0, -3)$ 在哪根轴上？为什么它不属于任何象限？
]


#pitfall[
  *高频错误*

  ✗ 把坐标写反，如 $(2, 5)$ 误画成 $(5, 2)$
  → ✓ 永远“先横后纵”。

  ✗ 把原点写成 $O(1, 1)$
  → ✓ 原点坐标一律是 $(0, 0)$，不是“离自己最近的格点”。

  ✗ 两轴使用不同的单位长度却不声明
  → ✓ 没有特别说明时，两轴同单位；否则图象会被“压扁”，比例视觉失真。
]

#mastery[
  *基础*

  + 说出原点、$x$ 轴正方向、$y$ 轴正方向的定义。
  + 判断：$(0, -4)$ 在哪条轴上？
  + 画出：$M(-4, 0)$、$N(0, 4)$、$P(3, -2)$。
  + 写出以下点的坐标：$x$ 轴上离原点 $3$ 个单位的两个点。
  + 判断对错：$(4, 0)$ 和 $(0, 4)$ 都在 $x$ 轴上。

  *应用*

  + 写出与 $A(3, 5)$ 关于 $x$ 轴对称的点的坐标。
  + 写出与 $A(3, 5)$ 关于 $y$ 轴对称的点的坐标。
  + 已知 $B(a, 0)$ 在 $x$ 轴上，$C(0, b)$ 在 $y$ 轴上。写出它们的中点的坐标（用 $a, b$ 表示）。

  *挑战 ☞ 选做*

  + 证明：若 $(x_1, y_1) = (x_2, y_2)$ 作为有序数对相等，则 $x_1 = x_2$ 且 $y_1 = y_2$。
  + 三个点 $(1, 2)$、$(4, 2)$、$(1, 5)$ 能围成什么形状？简要说明。
  + *反直觉*：$(3, 0)$ 和 $(0, 3)$ 到原点的距离一样吗？画出并说明。
  + *跨知识*：$A(2, 3)$、$B(2, -3)$ 关于哪条轴对称？再求线段 $A B$ 的长度。（跨对称 + 距离）
  + *构造题*：构造三点，使它们恰好分别落在 $x$ 正半轴、$y$ 正半轴、原点上。
  + *反例题*：判断"若 $(a, 0)$ 和 $(0, b)$ 表示同一个点，那么 $a = b$"。给出说明。

  #answer-cut[
  + 原点是两轴交点 $(0, 0)$；$x$ 轴正方向向右、$y$ 轴正方向向上（坐标系三要素）。
  + 在 $y$ 轴上（$x = 0$ 的点一定在 $y$ 轴上）。
  + 图略（先走横坐标、再走纵坐标描点）。
  + $(3, 0)$ 和 $(-3, 0)$（$x$ 轴上 $y = 0$，距原点 $3$ 的点有左右两个）。
  + 错误。$(4, 0)$ 在 $x$ 轴上（$y = 0$），但 $(0, 4)$ 在 $y$ 轴上（$x = 0$）。
  + $(3, -5)$（关于 $x$ 轴对称：横坐标不变、纵坐标变号）。
  + $(-3, 5)$（关于 $y$ 轴对称：纵坐标不变、横坐标变号）。
  + 中点坐标 $(a/2, b/2)$（中点公式：各坐标取平均值）。
  + 由有序数对的定义：$(x_1, y_1) = (x_2, y_2)$ 当且仅当 $x_1 = x_2$ 且 $y_1 = y_2$（分量对应相等）。
  + 直角三角形。$(1,2)$ 到 $(4,2)$ 水平距离 $3$，$(1,2)$ 到 $(1,5)$ 竖直距离 $3$，两边垂直；斜边 $= sqrt(9 + 9) = 3 sqrt(2)$。
  + 一样远，距离都是 $3$。$(3, 0)$ 在 $x$ 轴上、距原点 $3$；$(0, 3)$ 在 $y$ 轴上、距原点 $3$。两个点*位置不同*（一个在右、一个在上）但*离原点距离相同*——位置和距离是两件事（坐标顺序很重要 vs 距离对称）。
  + 关于 $y$ 轴对称？*否*——$A$、$B$ 的横坐标都是 $2$（相同），不是关于 $y$ 轴对称。它们关于 *$x$ 轴*对称（横坐标相同 + 纵坐标互为相反数 ✓）。线段 $A B$ 长度 $= |3 - (-3)| = 6$（跨对称 + 距离公式）。
  + 例如 $A(5, 0)$（$x$ 正半轴）、$B(0, 4)$（$y$ 正半轴）、$O(0, 0)$（原点）。$A$ 满足 $x > 0, y = 0$；$B$ 满足 $x = 0, y > 0$；$O$ 是两轴交点。
  + 只可能 $a = b = 0$（即都是原点）。理由：$(a, 0)$ 在 $x$ 轴上，$(0, b)$ 在 $y$ 轴上；唯一同时在两轴上的点是它们的交点 → 原点 $(0, 0)$，所以 $a = 0$ 且 $b = 0$，必然 $a = b = 0$。所以"若它们是同一点，则 $a = b$"是*成立的*——但理由不是"$a = b$"本身，而是"两者都为 0"。要点：在轴上的点必有一个分量为 0，要相等则两个分量都为 0（轴上点 + 有序数对相等）。
  ]
]

#side-hack[
  ☞ 它是三个分支共用的空间语言——函数图象一出场就需要它，几何变换在坐标下可以被精确描述，数据的散点图和折线图也直接画在它上面。
]
