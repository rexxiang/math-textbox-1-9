#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, secref, tryit, pitfall
#import "../lib/diagram-packages.typ": cetz, cetz-plot

== §7.2 反比例函数 <sec-7-2>

#vocab[反比例函数 inverse proportion function / 双曲线 hyperbola / 渐近线 asymptote]

#crisis[
  从北京到上海，距离大约 1200 km。坐高铁（300 km/h）大约 4 小时，坐普通列车（120 km/h）大约 10 小时，开车（100 km/h）大约 12 小时。

  速度越快，时间越短。速度和时间到底满足什么关系？在 #secref("3.2") 中我们已经知道：路程不变时，速度和时间成*反比例*。现在让我们用函数的眼光来深入研究这种关系。
]

#discovery[
  *第一步*：列表寻找规律

  路程 $s = 1200$ km 固定，速度 $v$（km/h）与时间 $t$（h）的关系：

  #table(
    columns: (1fr,) * 7,
    align: center,
    [$v$], [100], [120], [150], [200], [300], [600],
    [$t$], [12], [10], [8], [6], [4], [2],
  )

  观察：每一组 $v times t = 1200$，*乘积始终不变*。

  *第二步*：写出函数表达式

  $ t = frac(1200, v) $

  这就是*反比例函数*的形式：$y = frac(k, x)$，其中 $k = 1200$ 是一个不为零的常数。

  *第三步*：画出图像

  在坐标系中描点连线（取 $v > 0$，$t > 0$），得到一条*光滑曲线*，但它永远不会碰到坐标轴。

  #align(center, cetz.canvas(length: 0.9cm, {
    import cetz.draw: *
    // 坐标轴
    line((-0.5, 0), (8, 0), mark: (end: ">"), stroke: 0.5pt)
    line((0, -0.5), (0, 8), mark: (end: ">"), stroke: 0.5pt)
    content((8, -0.4), $x$)
    content((-0.4, 8), $y$)
    content((-0.3, -0.3), $O$)
    // y = 6/x 曲线（第一象限）
    let pts = ()
    for i in range(1, 50) {
      let x = 0.8 + i * 0.15
      let y = 6 / x
      if y < 7.5 { pts.push((x, y)) }
    }
    line(..pts, stroke: blue + 1pt)
    content((5.5, 1.8), text(9pt, fill: blue)[$y = k/x space (k > 0)$])
    // 标注矩形面积
    rect((0, 0), (2, 3), stroke: (dash: "dashed", paint: gray, thickness: 0.4pt), fill: blue.lighten(92%))
    content((1, 1.5), text(7pt)[$k$])
    circle((2, 3), radius: 0.06, fill: blue)
    content((2.3, 3.3), text(7pt)[$(x, y)$])
  }))
]

#tryit[
  先试一试：已知反比例函数图象经过点 $(3, 4)$，求 $k$ 的值并写出函数解析式。

  思路：把点的坐标代入 $y = k/x$，直接计算 $k = x times y$。
]

#pitfall[
  *反比例函数最容易混淆的一点：$k > 0$ 时，图象在一、三象限，但 $y$ 随 $x$ 增大而减小！*

  这和正比例函数 $y = kx$（$k > 0$）恰好相反——别以为「$k$ 正」就是递增。

  ❌ 错误想法：$y = 6/x$，$k = 6 > 0$，所以 $y$ 随 $x$ 增大而增大。

  ✓ 正确：$x$ 增大，分母增大，所以 $y$ 反而*减小*。
]

#blueprint[
  *定义*：形如
  $ y = frac(k, x) quad (k != 0) $
  的函数叫做*反比例函数*。其中 $x$ 是自变量，$k$ 叫做*比例系数*。

  等价写法：$x y = k$（$x$ 和 $y$ 的乘积是常数）。

  *图像*：反比例函数的图像叫*双曲线*，由两条不相连的曲线（两支）组成。

  *性质*

  #table(
    columns: (1fr, 1fr),
    align: left,
    [*$k > 0$*], [*$k < 0$*],
    [图像在第一、三象限], [图像在第二、四象限],
    [每一支内，$y$ 随 $x$ 增大而减小], [每一支内，$y$ 随 $x$ 增大而增大],
    [曲线向坐标轴无限接近但永不相交], [曲线向坐标轴无限接近但永不相交],
  )

  *$k$ 的几何意义*：从双曲线上任意一点 $(x_0, y_0)$ 向两条坐标轴作垂线，围成的矩形面积为 $|x_0 dot y_0| = |k|$。

  *图像特征*：双曲线关于原点*中心对称*，也关于直线 $y = x$ 和 $y = -x$ 轴对称。

  #side-hack[
    *快速判断 $k$ 的正负*：图像经过第一象限 → $k > 0$；图像经过第二象限 → $k < 0$。
  ]

  *与正比例函数对比*

  #table(
    columns: (1fr, 1fr),
    align: left,
    [*正比例 $y = k x$*], [*反比例 $y = k\/x$*],
    [图像是直线（过原点）], [图像是双曲线（两支）],
    [$y\/x = k$（商为常数）], [$x y = k$（积为常数）],
    [$k > 0$ 时 $y$ 随 $x$ 增大而增大], [$k > 0$ 时 $y$ 随 $x$ 增大而减小（每支内）],
  )
]

#mastery[
  *练一练*

  + 判断下列函数是否为反比例函数，如果是，写出 $k$ 的值：
    - $y = frac(5, x)$
    - $y = 3 x$
    - $x y = -8$
    - $y = frac(x + 1, x)$

  + 已知反比例函数 $y = frac(k, x)$ 的图像经过点 $(3, 4)$，求 $k$ 的值并写出函数解析式。

  + 画出 $y = frac(6, x)$ 和 $y = frac(-6, x)$ 的图像（在同一坐标系中），比较它们的位置和对称性。

  + *应用*：某工厂要生产 600 个零件。设每天生产 $x$ 个，需要 $y$ 天完成。写出 $y$ 与 $x$ 的函数关系式。如果要在 15 天内完成，每天至少生产多少个？

  + *挑战*：反比例函数 $y = frac(k, x)$（$k > 0$）的图像与一次函数 $y = x + 3$ 的图像交于点 $A(1, m)$。求 $k$ 的值和另一个交点 $B$ 的坐标。
]
