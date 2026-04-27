#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 小数与互化：位值继续向右长 <tool:pf05-decimals-conversion>

#vocab[小数 decimal][十分位 tenths place][互化 conversion]

#crisis[
  $1.5$ 和 $3/2$ 明明是同一个量，写法却完全不同。一个带小数点，一个是分数——它们之间到底什么关系？

  回到最初的问题：量身高，1 米太短，2 米太长。我们需要一种比整数更细、又和位值系统无缝衔接的写法。

  *小数不是突然冒出来的新语言，而是十进位值继续向右生长。*
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
]

#history-note[
  1585 年，荷兰工程师西蒙·斯特芬（Simon Stevin）发表《论十进》（_De Thiende_），第一次向欧洲人系统地介绍了小数写法：用位值系统把十分之一、百分之一、千分之一……自然接在整数右边。不过在更早的中国，南宋数学家秦九韶在 1247 年的《数书九章》中就已熟练使用十进制小数来处理高次方程的近似解。小数点符号“.”则是苏格兰数学家纳皮尔（John Napier）约在 1617 年推广开来的。
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
  + 判断对错并改正："$0.4 = 4/100$。"
  + 把 $7/20$ 化成小数。

  *应用*

  + 一瓶饮料净含量 1.25 升，这个数表示几个一、几个十分之一、几个百分之一？
  + 把 37% 分别写成小数和分数。

  *挑战 ☞ 选做*

  + 为什么 2.30 和 2.3 一样大？请从位值单位解释。
  + 用位值语言解释：为什么说"0.45 就是 45 个百分之一"？

  #answer-cut[
  + $0.7 = 7/10$，$0.25 = 25/100 = 1/4$（小数 → 分数：看末位在哪个位值单位）。
  + $1/2 = 0.5$，$3/8 = 0.375$（分数 → 小数：做除法或凑分母为 10 的幂）。
  + $0.6 > 0.06$（十分位 6 > 0；0.6 是 6 个十分之一，0.06 是 6 个百分之一）（逐位比较法）。
  + 错；$0.4 = 4/10$，不是 $4/100$。0.4 的 4 在十分位，表示 4 个十分之一（位值原理）。
  + $7/20 = 35/100 = 0.35$（分子分母同乘 5，凑分母为 100）（等值分数 → 小数）。
  + 1 个一、2 个十分之一、5 个百分之一（位值展开）。
  + $37% = 0.37 = 37/100$（百分数 → 小数：除以 100；百分数 → 分数：分母写 100）。
  + 因为 2.30 的百分位是 0，不提供额外的量；$3 times 1/10 + 0 times 1/100 = 3 times 1/10$，和 2.3 表示同一个量（末尾零原则）。
  + 0.45 的 4 在十分位（表示 $4 times 1/10 = 40$ 个百分之一），5 在百分位（表示 $5 times 1/100 = 5$ 个百分之一），合计 $40 + 5 = 45$ 个百分之一（位值展开）。
  ]
]
