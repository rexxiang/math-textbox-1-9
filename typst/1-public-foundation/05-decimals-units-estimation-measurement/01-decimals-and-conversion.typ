#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall
#import "../../lib/diagram-packages.typ": cetz

=== 小数与互化：位值继续向右长 <tool:pf05-decimals-conversion>

#vocab[小数 decimal][十分位 tenths place][互化 conversion]

#crisis[
  量身高时，1 米太短，2 米又太长，记录成“1 米多一点”还是太模糊。

  我们需要一种比整数更细、又和原来位值系统接得上的写法。

  *小数不是突然冒出来的新语言，而是十进位值继续向右生长。*
]

#history-note[
  小数写法之所以好用，是因为它把“十分之一、百分之一、千分之一”自然接进了原本的位值系统。
]

#discovery[
  在整数里，10 个一合成 1 个十。

  现在往右看：

  - 1 个一可以分成 10 个十分之一
  - 1 个十分之一可以分成 10 个百分之一

  所以 0.37 表示 3 个十分之一和 7 个百分之一。

  这也说明：

  - $0.3 = 3/10$
  - $0.37 = 37/100$

  小数和分数只是同一个量的两种写法。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let orange = rgb("#FF9800")

      // Number line 0 to 1
      line((-1, 0), (17, 0), stroke: 1.2pt + luma(80), mark: (end: ">"))

      // Major ticks
      for (x, lbl) in ((0, $0$), (15, $1$)) {
        line((x, -0.6), (x, 0.6), stroke: 1pt + luma(60))
        content((x, -1.6), text(weight: "bold", size: 10pt, lbl), anchor: "north")
      }

      // Ten equal parts
      for i in range(1, 10) {
        let x = i * 1.5
        line((x, -0.3), (x, 0.3), stroke: 0.5pt + luma(150))
      }

      // Mark 0.3
      let px3 = 3 * 1.5
      circle((px3, 0), radius: 0.3, fill: blue, stroke: 0.8pt + blue)
      content((px3, 1.2), text(fill: blue, weight: "bold", size: 9pt)[$0.3 = 3 / 10$], anchor: "south")

      // Mark 0.37 (between 0.3 and 0.4)
      let px37 = 3.7 * 1.5
      circle((px37, 0), radius: 0.3, fill: orange, stroke: 0.8pt + orange)
      content((px37, -1.8), text(fill: orange, weight: "bold", size: 9pt)[$0.37$], anchor: "north")
    }),
    caption: [数轴上的小数：0.3 和 0.37 的位置],
  )


]

#side-hack[
  小数和分数互化时，先看你用了哪种单位：十分之一、百分之一还是千分之一。
]

#tryit[
  先自己试试：

  + 把 0.6 写成分数。
  + 把 $3/8$ 化成小数。
  + 为什么 0.50 和 0.5 是同一个数？
]

#blueprint[
  - 小数是十进位值系统向右延伸后的写法。
  - 小数 $arrow.r$ 分数：看它表示几个十分之一、百分之一、千分之一。
  -
  #figure(
    cetz.canvas(length: 0.38cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let red = rgb("#F44336")

      // Conversion arrows: 0.37 = 37/100
      // Left: decimal form
      rect((0, 0), (6, 3), fill: rgb("#E3F2FD"), stroke: 0.8pt + blue, radius: 3pt)
      content((3, 1.5), text(weight: "bold", size: 11pt)[$0.37$])

      // Arrow
      line((7, 1.5), (11, 1.5), stroke: 1.5pt + luma(120), mark: (end: ">"))
      content((9, 2.5), text(size: 8pt)[互化], anchor: "south")

      // Right: fraction form
      rect((12, 0), (18, 3), fill: rgb("#FFF3E0"), stroke: 0.8pt + red, radius: 3pt)
      content((15, 1.5), text(weight: "bold", size: 11pt)[$37 / 100$])
    }),
    caption: [小数与分数互化：$0.37 = 37 / 100$],
  )

  - 分数 $arrow.r$ 小数：当分母能写成 10、100、1000 的关系时，可以自然改写成小数；也可以直接做除法。
]

#pitfall[
  *高频错误*

  ✗ 以为小数位数更多，数就一定更大
  → ✓ 位数多少不决定大小，关键看每一位在哪个单位上。

  ✗ 把 0.45 写成 $45/10$
  → ✓ 0.45 是 45 个百分之一，所以是 $45/100$。
]

#mastery[
  *基础*

  + 把 0.7、0.25 分别写成分数。
  + 把 $1/2$、$3/8$ 化成小数。
  + 比较 0.6 和 0.06。

  *应用*

  + 一瓶饮料净含量 1.25 升，这个数表示几个一、几个十分之一、几个百分之一？
  + 把 37% 分别写成小数和分数。

  *挑战 ☞ 选做*

  + 为什么 2.30 和 2.3 一样大？请从位值单位解释。
  + 用位值语言解释：为什么说"0.45 就是 45 个百分之一"？

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + $0.7 = 7/10$，$0.25 = 25/100 = 1/4$。
  + $1/2 = 0.5$，$3/8 = 0.375$。
  + $0.6 > 0.06$。
  + 1 个一、2 个十分之一、5 个百分之一。
  + 0.37，$37/100$。
  + 因为 2.30 是 2 个一、3 个十分之一、0 个百分之一，和 2.3 表示同一个量。
  + 0.45 的 4 在十分位（4 个十分之一），5 在百分位（5 个百分之一），合起来正好是 45 个百分之一。
]
