#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, secref, tryit, pitfall
#import "../lib/diagram-packages.typ": cetz

== §3.1 认识基本图形 <sec-3-1>

#vocab[三角形 triangle / 四边形 quadrilateral / 圆 circle]

#crisis[
  课本、窗框、三角尺、硬币，看起来完全不像一类东西，却都能被几何语言说清楚。

  *先会认图，后面才谈得上量图、算图、证图。*
]

#discovery[
  *第一步*：先把平面上的基本轮廓认出来。

  观察身边的物体：三角尺常给出三角形轮廓，课本和窗框常给出四边形轮廓，硬币常给出圆形轮廓。

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

  *第二步*：先只分三类。

  - *三角形*：外轮廓由 3 条线段围成
  - *四边形*：外轮廓由 4 条线段围成
  - *圆*：外轮廓是光滑封闭曲线，没有边角

  这一节先只解决“它属于哪一大类”，不在这里继续细分各种特殊家族。
]

#tryit[
  画一个三角形、一个长方形和一个圆。

  + 哪两个图形有边和角？
  + 哪个图形没有边角？
  + 你还能各举一个生活中的例子吗？
]

#blueprint[
  - *三角形*：由 3 条线段围成的封闭图形
  - *四边形*：由 4 条线段围成的封闭图形
  - *圆*：光滑封闭曲线围成的平面图形

  这一节只先装稳三种基本轮廓判断：

  - 数边数：3 条边 → 三角形
  - 数边数：4 条边 → 四边形
  - 没有边角、轮廓光滑 → 圆
]

#pitfall[
  *陷阱 1*：一看到窗框就急着细分“长方形还是正方形”。

  → ✓ 这一节先只回答它属于“四边形”这一大类。

  *陷阱 2*：圆没有边和角，不要拿“三条边”“四个角”去描述圆。
]

#mastery[
  *练一练*

  + 说出三角形、四边形、圆各一个生活例子。
  + 判断：篮球更适合看成圆还是四边形？三角尺更适合看成三角形还是圆？
  + 为什么说课本封面先可以看成四边形，而不必在这一节里先细分更多名称？
  + 为什么圆和前三类图形的判断方式不同？

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + 略，如屋顶、窗框、硬币
  + 篮球的平面轮廓更适合看成圆；三角尺更适合看成三角形
  + 因为这一节先认“大类”，后面再细分特殊四边形
  + 因为圆没有边和角，要靠“光滑封闭曲线”来认
]
