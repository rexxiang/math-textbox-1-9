#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, side-hack, vocab, tryit, pitfall
#import "../lib/diagram-packages.typ": cetz

== §3.6A 锐角、钝角与平角 <sec-3-6A>

#vocab[锐角 acute angle / 钝角 obtuse angle / 平角 straight angle]

#crisis[
  只知道“这不是直角”还不够。门缝只开一点，和几乎拉成一条线，显然不是同一种角。
]

#discovery[
  既然直角是最方便的参照，那别的角就可以拿它来比较：

  - 比直角小的，开口更紧
  - 比直角大但还没拉平的，开口更宽
  - 两条边恰好拉成一条直线时，角已经”展开到底”

  #figure(
    cetz.canvas(length: 1.0cm, {
      import cetz.draw: *

      // == 锐角 (left, ~45°) ==
      let O1 = (0, 0)
      line(O1, (1.8, 0), stroke: 0.7pt)
      line(O1, (1.2, 1.2), stroke: 0.7pt)
      cetz.draw.arc(O1, start: 0deg, stop: 45deg, radius: 0.5, stroke: 0.5pt)
      content((0.85, 0.25), text(7pt)[$45°$])
      content((0.9, -0.4), text(8pt)[锐角], anchor: “north”)

      // == 钝角 (middle, ~120°) ==
      let O2 = (4, 0)
      line(O2, (5.8, 0), stroke: 0.7pt)
      line(O2, (2.8, 1.7), stroke: 0.7pt)
      cetz.draw.arc(O2, start: 0deg, stop: 120deg, radius: 0.5, stroke: 0.5pt)
      content((3.7, 0.5), text(7pt)[$120°$])
      content((4.0, -0.4), text(8pt)[钝角], anchor: “north”)

      // == 平角 (right, 180°) ==
      let O3 = (8, 0)
      line((6.2, 0), (9.8, 0), stroke: 0.7pt)
      circle(O3, radius: 0.05, fill: black, stroke: none)
      cetz.draw.arc(O3, start: 0deg, stop: 180deg, radius: 0.5, stroke: 0.5pt)
      content((7.9, 0.65), text(7pt)[$180°$])
      content((8.0, -0.4), text(8pt)[平角], anchor: “north”)
    }),
    caption: [锐角（$0° < alpha < 90°$）、钝角（$90° < alpha < 180°$）、平角（$alpha = 180°$）的对比：开口大小不同]
  )
]

#tryit[
  先自己分一分：

  + $35 degree$
  + $127 degree$
  + $180 degree$

  它们各属于哪一类？
]

#blueprint[
  - *锐角*：大于 $0 degree$ 且小于 $90 degree$ 的角。
  - *钝角*：大于 $90 degree$ 且小于 $180 degree$ 的角。
  - *平角*：大小等于 $180 degree$，两条边成一条直线。
  - 分类型时，先拿 $90 degree$ 和 $180 degree$ 这两把尺子去对照最快。
]

#side-hack[
  先比 $90 degree$，再看是不是已经到 $180 degree$，分类几乎不会错。
]

#pitfall[
  *陷阱 1*：把 $180 degree$ 也算成钝角。

  钝角要严格小于 $180 degree$；等于 $180 degree$ 已经是平角。

  *陷阱 2*：把 $90 degree$ 算进锐角。

  锐角必须严格小于 $90 degree$。
]

#mastery[
  *基础*

  + 判断：$28 degree$、$95 degree$、$180 degree$ 分别属于哪一类角？
  + 说说为什么 $89 degree$ 还是锐角。

  *应用*

  + 自己画出一类锐角、一类钝角和一个平角。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + $28 degree$ 是锐角，$95 degree$ 是钝角，$180 degree$ 是平角。
  + 因为它还小于 $90 degree$。
]
