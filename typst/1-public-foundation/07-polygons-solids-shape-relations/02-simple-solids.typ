#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall
#import "../../lib/diagram-packages.typ": cetz

=== 简单立体：把平面图形“抬起来”得到的形状 <tool:pf06-simple-solids>

#vocab[立体图形 solid][长方体 cuboid][正方体 cube][圆柱 cylinder][棱锥 pyramid][圆锥 cone][球 sphere]

#crisis[
  你已经能认三角形、正方形、圆了。可当你要描述一个*牛奶盒*、一个*易拉罐*、一个*足球*时，平面图形就不够用了。

  盒子不是长方形——它还*有高度*；易拉罐不是圆——它*往上顶着一段*；足球不是圆——它是*整个绕起来的一团*。

  *我们需要一种从平面图形出发、自然“长出厚度”的方法，来得到基本的立体图形。*
]

#history-note[
  《九章算术》里的体积题从一开始就在“把底面抬起一段高度”这一步做起。中国传统算学里算仓、算井、算堤，用的都是同一条思路——先看底，再乘高。
]

#discovery[
  试着从一个*平面图形*出发，把它“向上抬起”固定的一段高度：

  - *长方形* 抬起 $arrow.r$ 得到一个六个面都是长方形的立体：*长方体*；若长宽高相等，就叫*正方体*。
  - *圆* 抬起 $arrow.r$ 得到一个上下是圆面、侧面是一圈曲面的立体：*圆柱*。


  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")

      // Rectangular prism wireframe
      let w = 6
      let h = 4
      let d = 2.5

      // Front face
      let A = (0, 0)
      let B = (w, 0)
      let C = (w, h)
      let D = (0, h)

      // Back face (offset)
      let E = (d, d)
      let F = (w + d, d)
      let G = (w + d, h + d)
      let H = (d, h + d)

      // Front face (solid lines)
      line(A, B, stroke: 1.2pt + blue)
      line(B, C, stroke: 1.2pt + blue)
      line(C, D, stroke: 1.2pt + blue)
      line(D, A, stroke: 1.2pt + blue)

      // Back face (dashed for hidden)
      line(E, F, stroke: (dash: "dashed", paint: blue, thickness: 0.8pt))
      line(E, H, stroke: (dash: "dashed", paint: blue, thickness: 0.8pt))

      // Visible back edges
      line(F, G, stroke: 1.2pt + blue)
      line(G, H, stroke: 1.2pt + blue)

      // Connecting edges
      line(A, E, stroke: (dash: "dashed", paint: blue, thickness: 0.8pt))
      line(B, F, stroke: 1.2pt + blue)
      line(C, G, stroke: 1.2pt + blue)
      line(D, H, stroke: 1.2pt + blue)

      // Dimension labels
      content((w / 2, -0.8), text(size: 8pt)[长], anchor: "north")
      content((w + 0.8, h / 2), text(size: 8pt)[高], anchor: "west")
      content((w + d / 2 + 0.5, d / 2 - 0.5), text(size: 8pt)[宽], anchor: "north")
    }),
    caption: [长方体：长方形“抬起”得到的六面体],
  )

  再换一种做法，不是平行抬起，而是*在图形正上方选一个顶点，把顶点和图形边界连起来*，得到“尖顶”立体：

  - 底是多边形，顶是一个点 $arrow.r$ *棱锥*（底是三角形就是三棱锥，底是正方形就是正四棱锥，等等）。
  - 底是圆，顶是一个点 $arrow.r$ *圆锥*。

  最后一种不靠“抬起”，而是*让圆绕它的直径转一圈*，扫出整个实心的“团”：得到*球*。

  这样 6 种最基本的立体都能用“平面图形 + 一步构造”来得到，不需要死记硬背。
]

#side-hack[
  一句话口诀：*柱=底抬起来；锥=底+一个尖；球=圆转一圈*。
]

#tryit[
  先自己试试：

  + 下列日常物体更像哪种立体：牛奶盒、易拉罐、足球、金字塔模型、甜筒的那一部分？
  + 一个正方体是不是也是一种长方体？为什么？
  + 一个圆锥的“底”是什么图形？它有几个“平面”的面？
]

#blueprint[
  六种最基本的立体图形（按“来自哪种平面图形”归类）：

  #table(
    columns: (1fr, 1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*立体*], [*由什么平面图形 + 什么方法得到*], [*典型日常例子*],
    [长方体], [长方形抬起一段高], [牛奶盒、教室],
    [正方体], [正方形抬起相同边长], [魔方、骰子],
    [圆柱], [圆抬起一段高], [易拉罐、管子],
    [棱锥], [多边形底 + 顶点], [金字塔、粽子立体模型],
    [圆锥], [圆底 + 顶点], [甜筒、路锥],
    [球], [圆绕直径转一圈], [足球、乒乓球],
  )


  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *

      let green = rgb("#4CAF50")
      let orange = rgb("#FF9800")

      // Cylinder
      let cx = 4
      let bot-y = 0
      let top-y = 6
      let rx = 3
      let ry = 0.8

      // Bottom ellipse
      arc((cx - rx, bot-y), start: 0deg, stop: 180deg, radius: (rx, ry),
          stroke: (dash: "dashed", paint: green, thickness: 0.8pt))
      arc((cx + rx, bot-y), start: 180deg, stop: 360deg, radius: (rx, ry),
          stroke: 1.2pt + green)

      // Top ellipse
      arc((cx - rx, top-y), start: 0deg, stop: 180deg, radius: (rx, ry),
          stroke: 1.2pt + green)
      arc((cx + rx, top-y), start: 180deg, stop: 360deg, radius: (rx, ry),
          stroke: 1.2pt + green)

      // Side lines
      line((cx - rx, bot-y), (cx - rx, top-y), stroke: 1.2pt + green)
      line((cx + rx, bot-y), (cx + rx, top-y), stroke: 1.2pt + green)

      content((cx, -1.5), text(size: 8pt)[圆柱], anchor: "north")

      // Cone
      let cone-cx = 14
      let cone-bot = 0
      let cone-top = 6

      // Bottom ellipse
      arc((cone-cx - rx, cone-bot), start: 0deg, stop: 180deg, radius: (rx, ry),
          stroke: (dash: "dashed", paint: orange, thickness: 0.8pt))
      arc((cone-cx + rx, cone-bot), start: 180deg, stop: 360deg, radius: (rx, ry),
          stroke: 1.2pt + orange)

      // Side lines to apex
      line((cone-cx - rx, cone-bot), (cone-cx, cone-top), stroke: 1.2pt + orange)
      line((cone-cx + rx, cone-bot), (cone-cx, cone-top), stroke: 1.2pt + orange)

      // Apex point
      circle((cone-cx, cone-top), radius: 0.15, fill: orange, stroke: 0.8pt + orange)

      content((cone-cx, -1.5), text(size: 8pt)[圆锥], anchor: "north")
    }),
    caption: [圆柱与圆锥：底是圆，一个平行抬起，一个收成尖顶],
  )

  长方体、正方体、棱锥这类全部由平面构成的立体，也叫*多面体*；每两个面相交的一条线段是一条*棱*。
]

#pitfall[
  *高频错误*

  ✗ 把“长方形”和“长方体”当作同一个东西
  → ✓ 长方形是平面图形，长方体是立体图形；长方体的*每个面*才是长方形。

  ✗ 说“球是一个圆”
  → ✓ 球是立体图形，圆是平面图形；球的任何一个*截面*才可能是圆。

  ✗ 把“圆柱”和“圆锥”混着叫
  → ✓ 圆柱有两个平行的圆面，中间是一圈曲面；圆锥只有一个圆面，上面是一个尖。
]

#mastery[
  *基础*

  + 一个长方体一共有几个面？几条棱？几个顶点？
  + 圆柱一共有几个“平的面”？几个曲面？
  + 下列哪些是立体图形：三角形、正方体、圆、圆柱、圆面、球？

  *应用*

  + 一个正方体的棱长是 4，它有几条棱？每条棱多长？
  + 把一个圆柱倒过来放，它还是圆柱吗？底面（上下两个圆）的大小和高有没有变？
  + 下列物体应归到哪种立体：粉笔（常见的圆柱形）、书本、排球、冰激凌甜筒的上半部分、粽子的立体形状。

  *挑战 ☞ 选做*

  + 一个四棱锥有几个面、几条棱、几个顶点？（提示：底是一个四边形，再加一个顶点）
  + 为什么“把圆柱顶上的圆缩成一个点”能得到圆锥？请用本节的“抬起”或“顶点”语言解释。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + 6 个面、12 条棱、8 个顶点。
  + 2 个“平的面”（上下圆面）、1 个曲面（侧面）。
  + 正方体、圆柱、球是立体图形；三角形、圆、圆面是平面图形。
  + 12 条棱，每条棱 4。
  + 仍是圆柱；底面（圆）的大小和高不变，只是上下对调。
  + 粉笔 → 圆柱；书本 → 长方体；排球 → 球；甜筒上半部分 → 圆锥；粽子 → 棱锥（通常是三棱锥或四棱锥）。
  + 5 个面（1 个底 + 4 个侧面）、8 条棱、5 个顶点。
  + 圆柱的上底是一个圆；当把这个圆“缩小到一个点”时，原来的侧面自然变成一圈斜着通向这个点的曲面，得到的正是圆锥。在这个过程里，底的平面图形没变（仍是圆），但顶从“再一张圆面”换成了“一个顶点”。
]
