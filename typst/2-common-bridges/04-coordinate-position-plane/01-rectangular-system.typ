#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 平面直角坐标系：给每个点发身份证 <tool:cb04-rectangular-system>

#vocab[平面直角坐标系 rectangular coordinate system][$x$ 轴][$y$ 轴][原点][有序数对]

#crisis[
  据说 17 世纪的笛卡尔躺在床上看天花板上的苍蝇，突然想到：如果用两条互相垂直的线当坐标，就能把每个位置变成一对数。你在 #secref("pf08-coordinate-intuition") 已经用过这个想法了，但它还没有被正式命名。

  *我们要把这套位置系统正式定义下来——起个名字、定好约定，方便以后反复使用。*
]

#discovery[
  *定义*：平面直角坐标系由一条水平数轴（$x$ 轴）和一条竖直数轴（$y$ 轴）组成，二者在一点垂直相交，这一点叫*原点* $O$。默认 $x$ 轴正方向向右、$y$ 轴正方向向上，二轴采用相同的单位长度（除非特别声明）。

  平面上任意一点 $P$ 都唯一对应一个*有序数对* $(x, y)$：

  - $x$ 叫 $P$ 的*横坐标*（abscissa）；
  - $y$ 叫 $P$ 的*纵坐标*（ordinate）。

  两个关键约定：

  + *顺序不能变*：横在前，纵在后。
  + *轴上的点*：$(a, 0)$ 在 $x$ 轴上，$(0, b)$ 在 $y$ 轴上；原点是 $(0, 0)$。

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
  )

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
  )
]

#side-hack[
  把新工具和旧直觉对上：坐标系其实就是两条数轴摆成 $90 degree$，再要求“先横后纵”。
]

#tryit[
  + 画一个坐标系，并标出：$A(3, 2)$、$B(-2, 4)$、$C(-3, -1)$、$D(4, -3)$、$E(0, -5)$。
  + 写出一个一定在 $x$ 轴上的点；再写出一个一定在 $y$ 轴上的点。
]

#history-note[
  $1637$ 年，法国数学家笛卡儿（René Descartes）在附录《几何学》（_La Géométrie_）中，第一次用代数方程描述几何曲线，把代数和几何桥接了起来。几乎同一时期，费马（Pierre de Fermat）也独立提出了类似的坐标方法。更早的"用数定位"思想可以追溯到古希腊天文学家托勒密（Ptolemy，约 $150$ 年），他在《地理学》中用经纬度标记地球上的位置。后人把这种直角坐标系统叫做"笛卡儿坐标系"。
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
  - *平面直角坐标系*：两条互相垂直、共用同一原点的数轴构成平面坐标系。
  - *有序数对* $(x, y)$：横在前、纵在后；交换位置一般会得到不同的点。
  - *轴上的点*：$y = 0 <=> $ 点在 $x$ 轴上；$x = 0 <=> $ 点在 $y$ 轴上。
  - *原点* $O = (0, 0)$ 是两轴唯一的交点。
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
  ]
]

#side-hack[
  *☞ 这会在后面哪里再出现*

  - 函数分支一出场就需要平面直角坐标系画 $y = f(x)$ 的图象。
  - 几何分支的变换（平移、对称、旋转）、相似与全等在坐标下都可以被再描述一次。
  - 数据分支的散点图、折线图、箱线图都是坐标系的直接使用。
]
