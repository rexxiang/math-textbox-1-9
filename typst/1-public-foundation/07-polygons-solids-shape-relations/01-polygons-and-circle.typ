#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall
#import "../../lib/diagram-packages.typ": cetz

=== 多边形与圆：用线段围起来，用曲线绕起来 <tool:pf06-polygons-and-circle>

#vocab[多边形 polygon][三角形 triangle][四边形 quadrilateral][圆 circle][顶点 vertex][边 edge]

#crisis[
  手边的几何零件已经有了：点、线段、平面。

  可是当你想说“这块地是三角形”“井盖是圆的”，每次都要从零件开始拼太慢了。

  *我们需要给两种最常用的“封闭平面图形”取固定名字：一种用线段围起来，一种用曲线绕起来。*
]

#history-note[
  古代埃及、巴比伦、中国的测量员都不约而同地先给这几种封闭图形起了名字，再谈它们的周长和面积。先命名，再度量。
]

#discovery[
  想象你在地上用若干根木棍*首尾相连*围一块地：

  - 用 3 根不共线的线段围起来 → *三角形*（三条边，三个顶点）
  - 用 4 根 → *四边形*
  - 用 $n$ 根（$n ≥ 3$）围起一个不自交的闭合区域 → 一般地叫 *$n$ 边形*，统称*多边形*

  但如果手里的“围”不是直的线段，而是一条曲线，条件就不同了。最特别的一种：*到中心距离处处相等*的那条封闭曲线，就是*圆*。

  所以
  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let green = rgb("#4CAF50")
      let orange = rgb("#FF9800")
      let red = rgb("#F44336")

      // Triangle
      let tri = ((0, 0), (3, 0), (1.5, 2.6))
      line(..tri, close: true, fill: rgb("#BBDEFB"), stroke: 1pt + blue)
      content((1.5, -1), text(size: 7pt)[三角形], anchor: "north")

      // Square
      let sq-x = 5
      rect((sq-x, 0), (sq-x + 3, 3), fill: rgb("#C8E6C9"), stroke: 1pt + green)
      content((sq-x + 1.5, -1), text(size: 7pt)[正方形], anchor: "north")

      // Pentagon
      let pent-pts = ((12.0, -0.2), (13.62, 0.97), (13.0, 2.88), (11.0, 2.88), (10.38, 0.97))
      line(..pent-pts, close: true, fill: rgb("#FFF3E0"), stroke: 1pt + orange)
      content((12, -1), text(size: 7pt)[五边形], anchor: "north")

      // Hexagon
      let hex-pts = ((18.7, 1.5), (17.85, 2.97), (16.15, 2.97), (15.3, 1.5), (16.15, 0.03), (17.85, 0.03))
      line(..hex-pts, close: true, fill: rgb("#FFCDD2"), stroke: 1pt + red)
      content((17, -1), text(size: 7pt)[六边形], anchor: "north")
    }),
    caption: [常见多边形：边数越多，形状越接近圆],
  )

  “多边形”和“圆”是一对不同的封闭图形：

  - 多边形：用*若干条线段*首尾相连；
  - 圆：用*一条曲线*绕起，且到中心距离处处相等。
]

#side-hack[
  判定多边形三条件，*缺一样都不算*：封闭 + 全是线段 + 至少 3 条。只要少一条，这张图就不是多边形。
]

#tryit[
  先自己试试：

  + 下列哪些是多边形：一个三角形、一个“C”形开口图形、一个圆、一个正方形、一个五角星的外轮廓？
  + 为什么圆不算多边形？能否把它看作“边数无穷多的多边形”？说一说你的想法。
  + 用 6 条线段首尾相连，你能围出一个什么样的图形？
]

#blueprint[
  - *多边形*：由若干条线段首尾相连围成的、不自交的封闭平面图形。
    - 按边数命名：3 条 → 三角形，4 条 → 四边形，…，$n$ 条 → $n$ 边形。
    - 每个首尾相接处是一个*顶点*；两个顶点之间的那一段线段是一条*边*。
  - *圆*：到同一点（圆心）距离处处相等的点组成的封闭曲线。它围住的那块平面区域，也常叫做圆面。
  -
  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let red = rgb("#F44336")

      // Circle
      let cx = 6
      let cy = 5
      let r = 4
      circle((cx, cy), radius: r, fill: rgb("#FFCDD220"), stroke: 1.5pt + red)

      // Center point
      circle((cx, cy), radius: 0.15, fill: red, stroke: 0.8pt + red)
      content((cx + 0.5, cy + 0.5), text(fill: red, weight: "bold", size: 8pt)[O], anchor: "south-west")

      // Radius line
      let rx = cx + r * 0.866
      let ry = cy + r * 0.5
      line((cx, cy), (rx, ry), stroke: 1.2pt + red)
      content(((cx + rx) / 2 + 0.3, (cy + ry) / 2 + 0.3), text(fill: red, size: 8pt)[$r$], anchor: "south-west")

      // Label
      content((cx, cy - r - 1.2), text(size: 8pt)[到圆心距离处处相等], anchor: "north")
    }),
    caption: [圆：所有到圆心 O 距离等于 $r$ 的点组成的曲线],
  )

  - 多边形和圆都是*封闭平面图形*，但前者的边界由线段拼成，后者的边界是一条光滑曲线。
]

#pitfall[
  *高频错误*

  ✗ 把“C”字形也当成多边形
  → ✓ 多边形必须封闭，缺口图形不算。

  ✗ 把一个五角星按“5 条边”来数
  → ✓ 五角星的外轮廓其实是一个 10 边形（凹多边形），每个尖角贡献 2 条边。

  ✗ 说“圆是一个无穷边多边形”
  → ✓ 直觉上多边形边数越多越接近圆，但圆的边界是*一条曲线*，不是线段拼成的；它不归入多边形这一类。
]

#mastery[
  *基础*

  + 一个正八边形有几条边？几个顶点？
  + 在下面的词里选出所有属于“多边形”的：三角形、正方形、长方形、菱形、圆、扇形。
  + 圆和正多边形有一点不同，*再多一点*也补不上——是什么？

  *应用*

  + 一个六边形的 6 条边首尾相连，其中有两条互相重合（画得完全重叠）。它还算多边形吗？为什么？
  + 给下列事物贴上最合适的平面图形名字：井盖、地砖（通常是方的）、红绿灯灯面、交通标志中的“让行”牌外形。
  + 一个多边形有 12 个顶点，它有几条边？

  *挑战 ☞ 选做*

  + 为什么说“三角形是最简单的多边形”？再少一条边会发生什么？
  + 一个圆上任取 3 个点，把它们用线段两两连起来，会得到什么图形？圆本身在这个过程中的作用是什么？

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + 8 条边、8 个顶点。
  + 三角形、正方形、长方形、菱形都是多边形；圆和扇形不是（扇形的边界里含曲线）。
  + 圆的边界是一条曲线，而正多边形的边界由线段拼成；边数再多也仍是线段拼成的多边形，不会真正变成圆。
  + 不算；多边形要求“不自交”且“首尾相连围成封闭区域”。两条边完全重合意味着图形没有围出一块独立的区域。
  + 井盖 → 圆；地砖 → 正方形 / 长方形；红绿灯灯面 → 圆；“让行”标志 → 三角形。
  + 12 条边（多边形边数 = 顶点数）。
  + 三角形是最少 3 条线段才能围出的封闭图形；再少一条，两条线段只能形成一个角或者重合，围不出封闭区域。
  + 得到一个三角形；圆只负责提供了 3 个“位置候选”，真正的三角形是用 3 条线段连出来的。
]
