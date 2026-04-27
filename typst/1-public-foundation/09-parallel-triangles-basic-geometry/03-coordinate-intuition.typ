#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 坐标直觉：一个点等于一个数对 <tool:pf08-coordinate-intuition>

#vocab[坐标 coordinate][原点 origin][横轴 $x$-axis][纵轴 $y$-axis][有序数对 ordered pair]

#crisis[
  你想在电话里告诉朋友“我站在操场的哪里”——只说“靠东一点”、“再往北走几步”会一直不准。

  如果每个位置都能被写成一对固定的数，你一报数，对方就能一眼在图上找到你。

  *要让“位置”可以被稳定地报出来，我们需要一套坐标。*
]

#discovery[
  在纸上画两条互相垂直的数轴：

  - 水平的一条叫*横轴*（$x$ 轴），向右为正。
  - 竖直的一条叫*纵轴*（$y$ 轴），向上为正。
  - 它们交出的那个点叫*原点*，记作 $O$。

  任意一个点 $P$，都可以这样描述：

  - 从原点向右（或向左）走 $x$ 个单位；
  - 再向上（或向下）走 $y$ 个单位。

  就把 $P$ 写成 $(x, y)$，这叫有序数对——*顺序不能乱*：横坐标在前，纵坐标在后。

  于是“位置”就变成了“两个数”。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let red = rgb("#F44336")
      let green = rgb("#4CAF50")

      // Axes
      line((-1, 5), (11, 5), stroke: 1.2pt + luma(80), mark: (end: ">"))
      line((5, -1), (5, 11), stroke: 1.2pt + luma(80), mark: (end: ">"))

      // Axis labels
      content((11.5, 5), text(size: 9pt)[$x$], anchor: "west")
      content((5, 11.5), text(size: 9pt)[$y$], anchor: "south")

      // Grid
      for i in range(11) {
        if i != 5 {
          line((i, 4.8), (i, 5.2), stroke: 0.5pt + luma(150))
          line((4.8, i), (5.2, i), stroke: 0.5pt + luma(150))
        }
      }

      // Origin label
      content((4.3, 4.3), text(size: 8pt)[O], anchor: "north-east")

      // Some axis numbers
      for (val, x) in ((-4, 1), (-2, 3), (2, 7), (4, 9)) {
        content((x, 4.2), text(size: 6pt, str(val)), anchor: "north")
      }
      for (val, y) in ((-4, 1), (-2, 3), (2, 7), (4, 9)) {
        content((4.2, y), text(size: 6pt, str(val)), anchor: "east")
      }

      // Plot points
      // A(2, 3)
      circle((7, 8), radius: 0.25, fill: blue, stroke: 0.8pt + blue)
      content((7.5, 8.5), text(fill: blue, weight: "bold", size: 8pt)[$A(2, 3)$], anchor: "south-west")

      // B(-3, 1)
      circle((2, 6), radius: 0.25, fill: red, stroke: 0.8pt + red)
      content((1, 6.5), text(fill: red, weight: "bold", size: 8pt)[$B(-3, 1)$], anchor: "south-east")

      // C(4, -2)
      circle((9, 3), radius: 0.25, fill: green, stroke: 0.8pt + green)
      content((9.5, 2.5), text(fill: green, weight: "bold", size: 8pt)[$C(4, -2)$], anchor: "north-west")
    }),
    caption: [坐标系中三个点的位置：先横后纵，$(x, y)$],
  )


]

#side-hack[
  读写坐标时永远念“*先横后纵*”。遇到 $(3, -2)$ 就是：向右 3，向下 2。
]

#tryit[
  先自己试试：

  + 在坐标系里画出点 $A(2, 3)$、点 $B(-1, 2)$、点 $C(0, -4)$。
  + 点 $(3, 0)$ 和 $(0, 3)$ 是同一个点吗？如果不是，它们各在哪条轴上？
]

#history-note[
  1637 年，法国数学家勒内·笛卡儿（René Descartes）在《方法论》附录《几何学》（_La Géométrie_）中，第一次系统地用数对 $(x, y)$ 来标记平面上的点，从而把几何问题变成了代数方程。几乎同时，费马（Pierre de Fermat）也独立提出了类似想法。这一步改写了几何——点不再只是画在纸上的墨点，而是可以用坐标精确计算的对象，由此开启了解析几何和后来函数图象的大门。
]

#blueprint[
  - *平面直角坐标系*：两条互相垂直、共用同一个原点的数轴，水平为 $x$ 轴，竖直为 $y$ 轴。
  - *坐标* $(x, y)$：先横后纵；正方向分别是向右、向上。
  - 特殊位置：
    - $x$ 轴上的点：$y = 0$，形如 $(a, 0)$。
    - $y$ 轴上的点：$x = 0$，形如 $(0, b)$。
    - 原点：$(0, 0)$，两条轴的唯一交点。
  -
  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let orange = rgb("#FF9800")

      // Axes
      line((-1, 4), (11, 4), stroke: 1.2pt + luma(80), mark: (end: ">"))
      line((4, -1), (4, 9), stroke: 1.2pt + luma(80), mark: (end: ">"))

      content((11.5, 4), text(size: 9pt)[$x$], anchor: "west")
      content((4, 9.5), text(size: 9pt)[$y$], anchor: "south")
      content((3.3, 3.3), text(size: 7pt)[O], anchor: "north-east")

      // x-axis point
      circle((8, 4), radius: 0.25, fill: blue, stroke: 0.8pt + blue)
      content((8, 3), text(fill: blue, size: 8pt)[$(a, 0)$], anchor: "north")
      content((8, 5), text(fill: blue, size: 7pt)[在 $x$ 轴上], anchor: "south")

      // y-axis point
      circle((4, 7), radius: 0.25, fill: orange, stroke: 0.8pt + orange)
      content((5, 7), text(fill: orange, size: 8pt)[$(0, b)$], anchor: "west")
      content((2.5, 7), text(fill: orange, size: 7pt)[在 $y$ 轴上], anchor: "east")

      // Origin
      circle((4, 4), radius: 0.25, fill: luma(60), stroke: 0.8pt + luma(60))
      content((5.5, 3), text(size: 7pt)[$(0, 0)$ 原点], anchor: "west")
    }),
    caption: [轴上的点：$x$ 轴上 $y = 0$，$y$ 轴上 $x = 0$],
  )

  - 坐标的符号告诉你大致方向：$x$ 的正负决定左右，$y$ 的正负决定上下；两者合起来，就能粗略说出这个点“在原点的哪一侧”。
]

#side-hack[
  读写坐标永远“*先横后纵*”：$(3, -2)$ 是向右 3、向下 2。 \
  平面被两条轴分成的四块区域将来在后续章节 §14“坐标与位置”里会被正式编号 I / II / III / IV；本节先只认“符号 → 方向”就够了。
]

#pitfall[
  *高频错误*

  ✗ 把坐标顺序写反
  → ✓ 约定是“先横后纵”；$(3, -2)$ 和 $(-2, 3)$ 是两个不同的点。

  ✗ 把“到原点距离一样”就当成“坐标一样”
  → ✓ $(3, 0)$ 和 $(0, 3)$ 到原点都是 3，但位置完全不同。

  ✗ 把坐标轴上的点硬归到某一块区域
  → ✓ 坐标轴不属于任何一块区域；$(0, 5)$、$(4, 0)$ 只说“在某条轴上”。
]

#mastery[
  *基础*

  + 判断下列每个点在*哪条轴上*、*在原点本身*，还是*既不在轴上也不在原点*：$(4, 1)$、$(0, 7)$、$(-4, 0)$、$(0, 0)$、$(-1, -5)$。
  + 在坐标系里画出 $D(-3, -1)$ 和 $E(2, -1)$，并指出它们是否在同一条水平线上。
  + 点 $(a, 0)$ 一定在 $x$ 轴上吗？为什么？
  + 判断对错并改正："$(3, 5)$ 和 $(5, 3)$ 是同一个点。"
  + 原点 $(0, 0)$ 在 $x$ 轴上吗？在 $y$ 轴上吗？还是两条轴都在？

  *应用*

  + 已知 $A(1, 2)$、$B(5, 2)$、$C(5, 6)$，这三个点构成的图形是什么形状？
  + 一个点的横坐标是正、纵坐标是负。用“左/右 + 上/下”的说法描述它在原点的哪个方向。
  + 点 $P(-2, 3)$ 向右移动 $5$ 个单位，到达点 $P'$。$P'$ 的坐标是多少？

  *挑战 ☞ 选做*

  + 一个点和原点关于 $x$ 轴对称，它的坐标之间有什么关系？举一对例子。
  + 两点 $(a, b)$ 和 $(c, d)$ 是同一个点，意味着什么？这正是“有序数对”相等的定义。

  #answer-cut[
  + $(4,1)$ 既不在轴上也不在原点；$(0,7)$ 在 $y$ 轴上（横坐标 $= 0$）；$(-4,0)$ 在 $x$ 轴上（纵坐标 $= 0$）；$(0,0)$ 就是原点（两条轴的交点）；$(-1,-5)$ 既不在轴上也不在原点。（判断依据：$x = 0$ → 在 $y$ 轴，$y = 0$ → 在 $x$ 轴）
  + 图略；两点纵坐标都是 $-1$，在同一条水平线上。（纵坐标相同的点在同一水平线上）
  + 一定在 $x$ 轴上。理由：纵坐标为 $0$ 的点就是 $x$ 轴上的点，无论 $a$ 是什么值。（$y = 0$ ↔ 点在 $x$ 轴上）
  + 错。$(3, 5)$ 表示向右 3、向上 5；$(5, 3)$ 表示向右 5、向上 3。位置不同，不是同一个点。（有序数对的"有序"：先横后纵，顺序不能反）
  + 原点同时在 $x$ 轴和 $y$ 轴上——它是两条轴的唯一交点。（原点的特殊地位）
  + 画出三点：$A(1,2)$、$B(5,2)$、$C(5,6)$。$A B$ 是水平线段（纵坐标都是 $2$），$B C$ 是竖直线段（横坐标都是 $5$），两者在 $B$ 处垂直 → 直角三角形（以 $B$ 为直角顶点）。
  + 横坐标正 → 在原点右边；纵坐标负 → 在原点下方。合起来：*右下方*。（坐标符号决定方向）
  + 向右移动 $5$ 个单位只改横坐标：$-2 + 5 = 3$，纵坐标不变。所以 $P'(3, 3)$。（平移只改变对应轴的坐标）
  + 关于 $x$ 轴对称：横坐标不变、纵坐标互为相反数。例如 $(2, 5) arrow.l.r (2, -5)$。原因：以 $x$ 轴为镜面，点到 $x$ 轴的距离不变但方向相反，所以 $y$ 变号。
  + 有序数对 $(a,b) = (c,d)$ 当且仅当 $a = c$ 且 $b = d$。两个位置必须逐项对应，正是"有序"的含义。
  ]
]
