#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, secref
#import "../lib/diagram-packages.typ": cetz

== §6.1 认识图形与周长 <sec-6-1>

#vocab[三角形 triangle / 四边形 quadrilateral / 圆 circle / 周长 perimeter / 长方形 rectangle / 正方形 square]

#crisis[
  小明家要在院子里围一块菜地。爸爸买了 20 米长的篱笆，问：这些篱笆能围出多大的地？

  要回答这个问题，我们首先得认识不同的形状，然后学会计算它们的周长。
]

#discovery[
  *第一步*：认识基本平面图形

  观察身边的物体：课本是长方形，窗户玻璃可能是正方形，三角尺是三角形，硬币是圆形。

  #align(center, cetz.canvas(length: 1.5cm, {
    import cetz.draw: *
    // 三角形
    line((0, 0), (1.5, 0), (0.75, 1.2), close: true, stroke: 0.7pt, fill: blue.lighten(90%))
    content((0.75, -0.3), text(8pt)[三角形])
    // 长方形
    rect((2.5, 0), (4.5, 1), stroke: 0.7pt, fill: green.lighten(90%))
    content((3.5, -0.3), text(8pt)[长方形])
    // 正方形
    rect((5.5, 0), (6.5, 1), stroke: 0.7pt, fill: orange.lighten(90%))
    content((6, -0.3), text(8pt)[正方形])
    // 圆
    circle((8.2, 0.5), radius: 0.5, stroke: 0.7pt, fill: red.lighten(90%))
    content((8.2, -0.3), text(8pt)[圆])
  }))

  *第二步*：图形的分类

  *三角形*按边分为三类：
  - *不等边三角形*：三条边长度互不相等
  - *等腰三角形*：至少两条边相等
  - *等边三角形*：三条边都相等（也叫正三角形）

  *四边形*的大家族：
  - *长方形*：四个角都是直角，对边相等
  - *正方形*：四个角都是直角，四条边都相等
  - *平行四边形*：两组对边分别平行
  - *梯形*：恰好有一组对边平行

  *圆*：到中心（圆心）距离相等的所有点组成的封闭曲线。从圆心到圆上的距离叫*半径* $r$，穿过圆心的最长弦叫*直径* $d = 2r$。
]

#blueprint[
  *周长*是封闭图形一圈的总长度。

  *长方形*（长 $a$，宽 $b$）：
  $ C = 2(a + b) $

  *正方形*（边长 $a$）：
  $ C = 4a $

  *圆*（半径 $r$）：
  $ C = 2 pi r = pi d $

  其中 $pi approx 3.14159 dots.c$ 是圆周率——圆的周长与直径的比值，对所有圆都相同。

  #side-hack[
    $pi$ 是一个无限不循环小数。计算时通常取 $pi approx 3.14$，或者用分数近似 $pi approx 22/7$。精确计算直接用 $pi$ 表示结果即可。
  ]
]

#history-note[
  *圆周率的历史*：古巴比伦人取 $pi approx 3$，古埃及人取 $pi approx 3.16$。中国南北朝时期的祖冲之（约公元 480 年）计算出 $3.1415926 < pi < 3.1415927$，精确到小数点后第 7 位，领先欧洲约一千年。
]

#mastery[
  *练一练*

  + 一块长方形草地，长 15 m，宽 8 m。沿草地四周铺一圈步道，步道总长多少？

  + 正方形花坛边长 6 m，用篱笆围一圈需要多少米？

  + 圆形花池的直径是 10 m，绕花池走一圈大约走多少米？（取 $pi approx 3.14$）

  + *挑战*：20 米篱笆围成长方形菜地。设长为 $x$ 米，面积是 $x(10 - x)$（为什么？）。什么时候面积最大？
]
