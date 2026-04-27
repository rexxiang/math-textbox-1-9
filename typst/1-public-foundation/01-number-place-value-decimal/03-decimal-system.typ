// [wave7-mastery-variant: 3深题]
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
  *本节用 3 道深题 + 1 道挑战*——每道都把"位值 / 末尾零 / 十等分"几条结论串在一起用，不只是单步代入。

  *基础*

  + *深题 1：位值结构链*

    给定数 $3.05$。
    - (a) 写出每个数位的名称（个位 / 十分位 / …）和权重。
    - (b) 解释 $0$ 在这里的作用，并说明若把 $0$ 去掉得 $3.5$，是否仍然是同一个数。
    - (c) 用 (a) 的结论*验证*：$3.05 = 3 + 0 times 0.1 + 5 times 0.01$，并把右边重新写成 $3 + 5 / 100$。

  + *深题 2：末尾零与比较*

    考虑 $0.9$、$0.12$、$0.80$、$0.8$ 四个数。
    - (a) 比较 $0.9$ 与 $0.12$ 的大小，写出比较步骤（哪一位起决定作用？）。
    - (b) $0.80$ 和 $0.8$ 是同一个数吗？请用位值（百分位上的 $0$）解释。
    - (c) 把 (a) (b) 两条结论合起来：能否说"小数位数越多越大"？请举一个反例。

  *应用*

  + *深题 3：十等分模型的两次应用*

    一根木条长 $2.3$ 米。
    - (a) 把它平均分成 $10$ 段，每段多少米？这一步与"十分之一"的关系是什么？
    - (b) 再把每一段继续平均分成 $10$ 小段，每小段多少米？这相当于把原木条分成多少段？
    - (c) 用位值语言总结：每"再细分一次十等分"，都会让小数点向哪一边移动一位？

  *挑战 ☞ 选做*

  + *推广题：数量级与十进制位值*

    一张 A4 纸厚约 $0.1$ 毫米（$= 0.0001$ 米）。
    - (a) 把 $10000$ 张 A4 纸叠在一起，高度多少米？
    - (b) 推广到 $10^n$ 张 A4 纸，高度的代数式（用 $n$ 表示）是什么？$n = 6$（即 $100$ 万张）时，高度超过 $100$ 米吗？
    - (c) *解释*：为什么"位值每右移一位 $div 10$，每左移一位 $times 10$"这个规律使得"十进制 + 数量级"配合起来非常方便估算？请用 (a)(b) 中的具体数字说明。

  #answer-cut[

  *基础*
  + 深题 1：(a) $3$ 在个位（权重 $1$），$0$ 在十分位（权重 $1/10$），$5$ 在百分位（权重 $1/100$）。(b) $0$ 是*占位符*，确保 $5$ 落在百分位而非十分位；去掉 $0$ 得 $3.5$ 是另一个数（$3 + 5/10$ vs $3 + 5/100$）。(c) $3.05 = 3 + 0 + 5 times 0.01 = 3 + 5/100$ ✓。
  + 深题 2：(a) $0.9 > 0.12$：先比十分位，$9 > 1$ 立即决定大小（高位优先）。(b) 同一个数；百分位的 $0$ 是 $0$ 个百分之一，不增加任何值（末尾零原则）。(c) 不能。反例：$0.9$ 一位、$0.12$ 两位，却 $0.9 > 0.12$。位数多少与大小无关，*位值比较要从最高位开始*。

  *应用*
  + 深题 3：(a) $2.3 div 10 = 0.23$ 米；这是把每米拆成十分之一（$1$ 米 $div 10 = 0.1$ 米）。(b) $0.23 div 10 = 0.023$ 米；相当于把原木条共分成 $100$ 小段。(c) 每多做一次十等分，小数点*向左*移一位（即数值变为原来的 $1/10$）。

  *挑战 ☞ 选做*
  + 推广题：(a) $10000 times 0.0001 = 1$ 米。(b) 高度 $= 10^n times 0.0001 = 10^(n - 4)$ 米；$n = 6$ 时为 $10^2 = 100$ 米——*恰好*等于 $100$ 米，未超过。(c) 把 $10^n$ 张乘以 $0.0001$ 米，相当于把指数 $n$ 减 $4$——位值规律让"乘 $10$"对应"小数点右移一位"，所以张数的数量级和高度的数量级之间只是简单加减运算。这就是十进制 + 数量级估算的便利：复杂的物理量改写成 $10$ 的幂次后，比较大小变成比较指数。
  ]
]
