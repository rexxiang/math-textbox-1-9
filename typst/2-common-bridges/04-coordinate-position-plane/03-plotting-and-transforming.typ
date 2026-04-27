#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 画点、读点与简单变换 <tool:cb04-plotting-transforming>

#vocab[描点 plot][平移 translation][轴对称 reflection]

#crisis[
  试试在格子纸上画出 $(3, -2)$——你从哪里出发，先往哪边走？再试试把这个点往左平移 5 格，新坐标是多少？

  在变换（上下左右平移、沿轴翻折）里，坐标怎么跟着动？*我们需要把“动作”和“坐标变化”整理成一张对照表。*
]

#discovery[
  *描点三步*：

  + 先找 $x$：沿 $x$ 轴从原点走到 $x$ 的位置；
  + 再走 $y$：从该位置竖直走 $y$ 的位置；
  + 到达目标点。

  *读点*是描点的反向操作：作目标点到 $x$ 轴、$y$ 轴的垂线，两条垂足分别给出横、纵坐标。

  *变换与坐标*：

  - 向右平移 $h$ 个单位：$(x, y) -> (x + h, y)$；向左则是 $(x, y) -> (x - h, y)$。
  - 向上平移 $k$ 个单位：$(x, y) -> (x, y + k)$；向下则减去 $k$。
  - 沿 $x$ 轴翻折：$(x, y) -> (x, -y)$。
  - 沿 $y$ 轴翻折：$(x, y) -> (-x, y)$。

  这些规律不过是把第 1 章建立的数轴“向右/向上”的直觉搬到平面上再用一遍。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *
      let s = 2.0
      // Axes
      line((-4 * s - 0.5, 0), (6 * s + 1, 0), stroke: 1.2pt + rgb("#333"), mark: (end: ">"))
      line((0, -4 * s - 0.5), (0, 4 * s + 1), stroke: 1.2pt + rgb("#333"), mark: (end: ">"))
      // Grid
      for i in range(-3, 6) {
        if i != 0 {
          line((i * s, -3 * s), (i * s, 3 * s), stroke: 0.2pt + rgb("#DDD"))
          line((-3 * s, i * s), (5 * s, i * s), stroke: 0.2pt + rgb("#DDD"))
        }
      }
      // P(-2, 1)
      let px = -2 * s
      let py = 1 * s
      circle((px, py), radius: 0.25, fill: rgb("#1565C0"), stroke: 1pt + rgb("#0D47A1"))
      content((px - 0.5, py + 0.5), text(size: 7pt, weight: "bold", fill: rgb("#1565C0"))[$P(-2, 1)$], anchor: "south-east")
      // Translation: right 5, down 4
      let px2 = px + 5 * s
      let py3 = py - 4 * s
      // Horizontal arrow
      line((px + 0.4, py), (px2 - 0.4, py), stroke: 1.2pt + rgb("#E65100"), mark: (end: ">"))
      content(((px + px2) / 2, py + 0.8), text(size: 7pt, fill: rgb("#E65100"))[右移 5], anchor: "south")
      // Vertical arrow
      line((px2, py - 0.4), (px2, py3 + 0.4), stroke: 1.2pt + rgb("#7B1FA2"), mark: (end: ">"))
      content((px2 + 1.0, (py + py3) / 2), text(size: 7pt, fill: rgb("#7B1FA2"))[下移 4], anchor: "west")
      // P'(3, -3)
      circle((px2, py3), radius: 0.25, fill: rgb("#C62828"), stroke: 1pt + rgb("#B71C1C"))
      content((px2 + 0.5, py3 - 0.5), text(size: 7pt, weight: "bold", fill: rgb("#C62828"))[$P'(3, -3)$], anchor: "north-west")
      // Origin
      circle((0, 0), radius: 0.2, fill: rgb("#333"), stroke: 1pt + rgb("#333"))
      content((-0.5, -0.5), text(size: 7pt, weight: "bold")[O])
    }),
    caption: [$P(-2, 1)$ 向右平移 $5$、向下平移 $4$，得到 $P'(3, -3)$],
  )

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *
      let s = 2.0
      // Axes
      line((-4 * s - 0.5, 0), (5 * s + 1, 0), stroke: 1.2pt + rgb("#333"), mark: (end: ">"))
      line((0, -5 * s - 0.5), (0, 5 * s + 1), stroke: 1.2pt + rgb("#333"), mark: (end: ">"))
      // Q(3, -4)
      let qx = 3 * s
      let qy = -4 * s
      circle((qx, qy), radius: 0.25, fill: rgb("#1565C0"), stroke: 1pt + rgb("#0D47A1"))
      content((qx + 0.5, qy - 0.5), text(size: 7pt, weight: "bold", fill: rgb("#1565C0"))[$Q(3, -4)$], anchor: "north-west")
      // x-axis reflection: Q'(3, 4)
      circle((qx, -qy), radius: 0.25, fill: rgb("#C62828"), stroke: 1pt + rgb("#B71C1C"))
      content((qx + 0.5, -qy + 0.5), text(size: 7pt, weight: "bold", fill: rgb("#C62828"))[$Q'(3, 4)$], anchor: "south-west")
      // Dashed line
      line((qx, qy + 0.3), (qx, -qy - 0.3), stroke: (dash: "dashed", paint: rgb("#888"), thickness: 0.8pt))
      content((4.5 * s, 0.6), text(size: 7pt, fill: rgb("#555"))[沿 $x$ 轴翻折：$y$ 变号], anchor: "south")
      circle((0, 0), radius: 0.2, fill: rgb("#333"), stroke: 1pt + rgb("#333"))
    }),
    caption: [$Q(3, -4)$ 沿 $x$ 轴翻折得 $Q'(3, 4)$：横坐标不变，纵坐标变号],
  )
]

#side-hack[
  做题时先问：“坐标的哪一个分量会变？”向左右动只改 $x$，向上下动只改 $y$，翻折则让对应分量换号。
]

#tryit[
  + 把 $P(-2, 1)$ 向右平移 $5$ 个单位，再向下平移 $4$ 个单位，写出最终坐标。
  + 把 $Q(3, -4)$ 先沿 $x$ 轴翻折，再沿 $y$ 轴翻折，写出最终坐标，并判断所在象限。
]

#history-note[
  $1637$ 年笛卡儿（Descartes）在《几何学》中把曲线和方程对应起来，但真正让"变换 = 坐标公式"这个想法大放异彩的，是 $18$ 世纪欧拉（Leonhard Euler）的系统化工作。欧拉在 $1748$ 年的《无穷分析引论》中，把平移、旋转等几何动作全部写成坐标的代数式——一张图的每一步移动，从此变成一个可以算的规则。
]

#blueprint[
  - *描点规则*：先沿 $x$ 轴走 $x$，再竖直走 $y$。
  - *读点规则*：作到两轴的垂线，垂足读出两个坐标。
  - *平移公式*：
    - 水平平移 $h$：$(x, y) -> (x + h, y)$；
    - 竖直平移 $k$：$(x, y) -> (x, y + k)$。
  - *轴对称公式*：
    - 关于 $x$ 轴：$(x, y) -> (x, -y)$；
    - 关于 $y$ 轴：$(x, y) -> (-x, y)$。
]

#pitfall[
  *高频错误*

  ✗ 平移时把动作和坐标方向搞反
  → ✓ “向右走”就是 $x$ 变大，“向上走”就是 $y$ 变大；口头动作必须对上符号。

  ✗ 沿 $x$ 轴翻折却改了 $x$ 的符号
  → ✓ 轴对称只翻“离那条轴的距离”所对应的分量：关于 $x$ 轴翻折，改变 $y$ 的符号。

  ✗ 做连续变换时没把上一步的结果再代入下一步
  → ✓ 连续变换要一步一结果，不能两步并成一步凭直觉。
]

#mastery[
  *基础*

  + 把 $(−3, 4)$ 向上平移 $2$、向左平移 $5$。
  + 求 $(2, -7)$ 关于 $x$ 轴的对称点。
  + 求 $(−6, 1)$ 关于 $y$ 轴的对称点。
  + 把 $(0, -3)$ 向右平移 $4$ 个单位，写出新坐标。
  + 判断对错：把 $(2, 5)$ 关于 $y$ 轴对称后得到 $(2, -5)$。

  *应用*

  + 从 $(1, 2)$ 出发，先向下平移 $3$，再向右平移 $4$，得到哪个点？在哪个象限？
  + 若点 $A$ 关于 $x$ 轴对称后坐标是 $(-3, 2)$，$A$ 本身是多少？
  + 把 $A(5, -1)$ 绕原点转 $180 degree$ 得到 $A'$，写出 $A'$ 的坐标。（提示：转 $180 degree$ 相当于横纵坐标同时变号）

  *挑战 ☞ 选做*

  + 线段 $A(-2, 1)$、$B(4, 1)$ 向下平移 $3$ 个单位后得到 $A'$、$B'$。分别写出它们的坐标，并说明线段长度是否改变。
  + 若 $(x, y)$ 经过两次轴对称（先 $x$ 轴、后 $y$ 轴）后不变，$(x, y)$ 必须满足什么条件？

  #answer-cut[
  + $(-8, 6)$（向上 $+2$：$(-3, 4+2) = (-3, 6)$；向左 $-5$：$(-3-5, 6) = (-8, 6)$，平移公式逐步应用）。
  + $(2, 7)$（关于 $x$ 轴对称：纵坐标变号 $-7 -> 7$，横坐标不变）。
  + $(6, 1)$（关于 $y$ 轴对称：横坐标变号 $-6 -> 6$，纵坐标不变）。
  + $(4, -3)$（向右平移只改横坐标：$0 + 4 = 4$，纵坐标不变，平移公式）。
  + 错误。关于 $y$ 轴对称应改横坐标的符号：$(-2, 5)$（轴对称公式：$(x, y) -> (-x, y)$）。
  + $(5, -1)$，在第四象限。先向下：$(1, 2-3) = (1, -1)$；再向右：$(1+4, -1) = (5, -1)$。$x > 0, y < 0$，属第四象限。
  + $(-3, -2)$（关于 $x$ 轴对称是逆操作：已知对称点 $(-3, 2)$，纵坐标变号回去得 $(-3, -2)$）。
  + $A' = (-5, 1)$（绕原点转 $180 degree$ 等价于两坐标同时变号：$(5, -1) -> (-5, 1)$）。
  + $A'(-2, -2)$、$B'(4, -2)$（各点纵坐标 $-3$）；线段长度 $|4 - (-2)| = 6$，不变（平移不改变线段长度）。
  + 必须 $x = 0$ 且 $y = 0$（两次轴对称后 $(x,y) -> (x,-y) -> (-x,-y)$，要等于 $(x,y)$ 则 $-x = x$ 且 $-y = y$，唯解 $x = y = 0$）。
  ]
]

#side-hack[
  *☞ 这会在后面哪里再出现*

  - 函数分支图象的平移与伸缩就是本节动作公式的连用。
  - 几何分支的变换章（平移、对称、旋转、相似）会把这些规则整理成系统的坐标语言。
  - 数据分支中“去均值”“中心化”处理图上是整段数据沿 $y$ 轴的竖直平移。
]
