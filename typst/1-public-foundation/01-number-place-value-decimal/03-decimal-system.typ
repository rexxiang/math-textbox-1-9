#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 十进制：满十换一个新单位 <tool:pf01-decimal-system>

#vocab[十进制 decimal system][进位 regrouping][小数点 decimal point]

#crisis[
  几千年前，工匠们就碰到了同一个麻烦：这块木板比 1 肘长，又不到 2 肘——该怎么记下来？

  如果只会写整数，就只能含糊地说“1 多一点”。测量需要更细的单位：到底是十分之一，还是别的什么？

  *同一套位值思想，能不能继续往右长，去记录不足 1 的量？*
]

#tryit[
  先自己试试：

  + 0.6 和 0.06 谁更大？为什么？
  + 1.25 里一共有几个十分之一？一共有几个百分之一？
]

#discovery[
  在整数里，我们已经知道：

  - 10 个一合成 1 个十
  - 10 个十合成 1 个百

  现在把方向反过来想：

  - 1 个一可以分成 10 个十分之一
  - 1 个十分之一又可以分成 10 个百分之一

  于是 2.37 的意思就是：

  - 2 个一
  - 3 个十分之一
  - 7 个百分之一


  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let orange = rgb("#FF9800")

      // Number line 0 to 3
      line((-1, 0), (22, 0), stroke: 1.2pt + luma(80), mark: (end: ">"))

      // Major ticks at 0, 1, 2, 3
      for i in range(4) {
        let x = i * 7
        line((x, -0.6), (x, 0.6), stroke: 1pt + luma(60))
        content((x, -1.6), text(weight: "bold", size: 10pt, str(i)), anchor: "north")
      }

      // Minor ticks for tenths between 2 and 3
      for j in range(1, 10) {
        let x = 14 + j * 0.7
        line((x, -0.3), (x, 0.3), stroke: 0.5pt + luma(150))
      }

      // Mark 2.37
      let px = 14 + 3.7 * 0.7
      circle((px, 0), radius: 0.3, fill: orange, stroke: 1pt + orange)
      content((px, 1.5), text(fill: orange, weight: "bold", size: 9pt)[2.37], anchor: "south")
      line((px, 0.4), (px, 1.1), stroke: 0.8pt + orange)
    }),
    caption: [数轴上的 2.37：位于 2 和 3 之间],
  )

  小数点不是魔法，它只是提醒我们：位值从“个位”往右，继续变成“十分位、百分位、千分位……”。
]

#side-hack[
  看小数大小时，先比整数部分；整数部分相同，再从十分位、百分位依次往后比。
]

#history-note[
  中国数学家刘徽在公元 263 年注解《九章算术》时，已经用十进位值的思路处理小数部分的计算。而在欧洲，直到 1585 年，荷兰数学家西蒙·斯特芬（Simon Stevin）发表小册子《论十进》（_De Thiende_），才第一次系统地向欧洲人展示：把“满十进一”向右延伸，就能用十分之一、百分之一、千分之一……表示任何精度的数量，不再需要笨重的分数。
]

#blueprint[
  - *十进制* 的核心是“每相邻两个单位都差 10 倍”。
  - 小数点左边是个位、十位、百位……；右边是十分位、百分位、千分位……
  - 一个小数可以写成“几个一 + 几个十分之一 + 几个百分之一”的和。

  #figure(
    cetz.canvas(length: 0.38cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let red = rgb("#F44336")

      // Left side: integer positions
      let positions = (
        (0, [千], [$times 10$]),
        (1, [百], [$times 10$]),
        (2, [十], [$times 10$]),
        (3, [个], []),
      )

      for (i, lbl, arrow-lbl) in positions {
        let x = i * 5
        rect((x, 0), (x + 4, 2.5), fill: rgb("#E3F2FD"), stroke: 0.8pt + blue)
        content((x + 2, 1.25), text(weight: "bold", size: 9pt, fill: blue, lbl))
        if arrow-lbl != [] {
          content((x + 4.5, 1.25), text(size: 6pt, fill: luma(120), arrow-lbl))
        }
      }

      // Decimal point
      content((19.5, 1.25), text(weight: "bold", size: 14pt)[.])

      // Right side: decimal positions
      let dec-pos = (
        (4, [十分位], [$div 10$]),
        (5, [百分位], [$div 10$]),
        (6, [千分位], []),
      )

      for (i, lbl, arrow-lbl) in dec-pos {
        let x = i * 5 + 1
        rect((x, 0), (x + 4, 2.5), fill: rgb("#FFF3E0"), stroke: 0.8pt + red)
        content((x + 2, 1.25), text(weight: "bold", size: 9pt, fill: red, lbl))
        if arrow-lbl != [] {
          content((x - 0.5, 1.25), text(size: 6pt, fill: luma(120), arrow-lbl))
        }
      }
    }),
    caption: [位值从个位向右延伸：每一步都除以 10],
  )

  - ☞ 小数和分数的关系，以及小数的运算，会在后面的章节（#secref("ch:fractions") 和 #secref("ch:decimals-units-estimation-measurement")）展开。
]

#pitfall[
  *高频错误*

  ✗ 看到 0.06，就以为“6 比 0 大得多，所以 0.06 比 0.6 大”
  → ✓ 要看 6 在什么位上：0.6 是 6 个十分之一，0.06 是 6 个百分之一，所以 $0.6 > 0.06$。

  ✗ 觉得 2.30 比 2.3 更大，因为数字更多
  → ✓ 2.30 表示 2 个一、3 个十分之一、0 个百分之一，和 2.3 是同一个数。
]

#mastery[
  *基础*

  + 写出 4.08 中每个数字表示的值。
  + 比较大小：0.9 和 0.12；1.04 和 1.4。
  + 7.60 和 7.6 是同一个数吗？用位值解释。
  + 判断对错并改正："0.80 比 0.8 大，因为多了一位数字。"
  + 把 3.05 中每个数字的位值写出来，并说明 0 在这里的作用。

  *应用*

  + 一瓶饮料有 1.5 升，另一瓶有 1.05 升，哪瓶更多？你是按什么顺序比较的？
  + 一根木条长 2.3 米，把它平均分成 10 段，每段是多少米？这和“十分之一”有什么关系？

  *挑战 ☞ 选做*

  + 为什么 10 个 0.1 正好是 1，而 10 个 0.01 正好是 0.1？请用位值单位解释。
  + 写出 0.125 中每个数位的名称和权重，说明为什么它正好是"一个一 被连续分了三次十等份"后的第一份。

  #answer-cut[
  + 4 表示 4 个一；0 表示 0 个十分之一；8 表示 8 个百分之一（位值原理）。
  + $0.9 > 0.12$（十分位 9 > 1）；$1.04 < 1.4$（十分位 0 < 4）（逐位比较法）。
  + 是同一个数：6 个十分之一加 0 个百分之一，和 6 个十分之一完全一样，末尾 0 不改变值（末尾零原则）。
  + 错；0.80 和 0.8 是同一个数，百分位上的 0 不增加任何值（末尾零原则）。
  + 3 在个位，表示 3 个一；0 在十分位，表示 0 个十分之一；5 在百分位，表示 5 个百分之一。0 在这里占位，确保 5 待在百分位而非十分位（0 的占位功能）。
  + 1.5 升更多。步骤：先比整数部分，同为 1；再比十分位，5 大于 0，所以 $1.5 > 1.05$（逐位比较法）。
  + 每段 $2.3 div 10 = 0.23$ 米；因为把 2.3 米分成 10 段，就是让每段变成原来的十分之一（十进制分割）。
  + 因为 0.1 是一个十分之一，10 个十分之一合成 1 个一；0.01 是一个百分之一，10 个百分之一合成 1 个十分之一。每相邻单位之间都是 10 倍关系（满十进一）。
  + 十分位 1（权重 $1 slash 10$）、百分位 2（权重 $1 slash 100$）、千分位 5（权重 $1 slash 1000$）；$1 arrow.r 0.1 arrow.r 0.01 arrow.r 0.001$ 每一步都除以 10。0.125 就是把 1 连续三次十等分后取第一份：$1 div 10 div 10 div 10 times 1 + 2 + 5$（逐级十等分）。
  ]
]
