#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 分数运算：在共同单位上加减，在结构里乘除 <tool:pf04-fraction-arithmetic>

#vocab[分数加减 fraction addition and subtraction][分数乘法 fraction multiplication][分数除法 fraction division]

#crisis[
  现场还原：小明吃了披萨的 $1/4$，赵磊吃了 $2/3$，有人把分子分母直接相加，报出答案 $3/7$。

  可 $3/7$ 竟然比 $2/3$ 还小——加了东西反而变少？这个“答案”一定哪里搞错了。

  *分数运算不能只盯着数字表面，必须先看“单位”或“结构”。*
]

#tryit[
  先自己试试：

  + 计算：$1/3 + 1/6$。
  + 计算：$4/5 times 5/8$。
]

#discovery[
  先看加法：$1/4 + 2/3$

  两个分数单位不同，一个用四分之一，一个用三分之一，必须先换成共同单位：

  $ 1/4 = 3/12, quad 2/3 = 8/12 $

  于是总和是 $11/12$。

  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let red = rgb("#F44336")
      let green = rgb("#4CAF50")

      // Bar divided into 12 equal parts
      let w = 18
      let pw = w / 12

      for i in range(12) {
        let x = i * pw
        let fill-c = if i < 3 { rgb("#BBDEFB") } else if i < 11 { rgb("#FFCDD2") } else { white }
        rect((x, 0), (x + pw - 0.1, 2), fill: fill-c, stroke: 0.5pt + luma(150))
      }

      // Labels
      content((1.5 * pw, -0.8), text(fill: blue, size: 8pt)[$3 / 12 = 1 / 4$], anchor: "north")
      content((7 * pw, -0.8), text(fill: red, size: 8pt)[$8 / 12 = 2 / 3$], anchor: "north")

      // Brace for total
      line((0, 2.5), (11 * pw - 0.1, 2.5), stroke: 0.8pt + green)
      line((0, 2.3), (0, 2.7), stroke: 0.8pt + green)
      line((11 * pw - 0.1, 2.3), (11 * pw - 0.1, 2.7), stroke: 0.8pt + green)
      content((5.5 * pw, 3.3), text(fill: green, weight: "bold", size: 9pt)[$11 / 12$], anchor: "south")
    }),
    caption: [通分后相加：$1 / 4 + 2 / 3 = 3 / 12 + 8 / 12 = 11 / 12$],
  )



  再看乘法：$2/3 times 3/4$

  可以想成“取四分之三中的三分之二”，结果是把整体切成 12 份后取 6 份，所以是 $6/12 = 1/2$。

  最后看除法：$3/4 div 1/2$

  它在问“$3/4$ 里面有几个 $1/2$”，答案是 1 个半，也就是 $3/2$。
]

#side-hack[
  口诀可以这样记：加减先统一单位，乘法看部分中的部分，除法看“里面有几个”或“乘倒数”。
]

#history-note[
  《九章算术》（约公元 1 世纪）在开篇“方田”章就给出了完整的分数四则运算规则——“合分”（加）、“减分”（减）、“乘分”（乘）、“经分”（除），比欧洲同等水平的记录早了一千多年。印度数学家婆罗摩笈多（Brahmagupta，628 年）后来也在《婆罗摩历算书》中系统整理了分数运算，并明确写出了“乘以倒数即为除”的规则。分数加减离不开通分，乘除则直接操作分子分母——这套逻辑在东西方各自独立地被发现。
]

#blueprint[
  - *分数加减法*：先通分成共同单位，再把分子相加减，分母保持共同单位不变。
  -
  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let orange = rgb("#FF9800")

      // Area model for 2/3 × 3/4
      let w = 12
      let h = 9

      // Outer rectangle
      rect((0, 0), (w, h), stroke: 1pt + luma(100))

      // Vertical lines: 4 equal parts (for 3/4)
      for i in range(1, 4) {
        line((i * w / 4, 0), (i * w / 4, h), stroke: 0.6pt + luma(150))
      }

      // Horizontal lines: 3 equal parts (for 2/3)
      for i in range(1, 3) {
        line((0, i * h / 3), (w, i * h / 3), stroke: 0.6pt + luma(150))
      }

      // Shade 3/4 region (first 3 columns) lightly
      rect((0, 0), (3 * w / 4, h), fill: rgb("#FFF3E040"), stroke: none)

      // Shade 2/3 region (bottom 2 rows) with overlap
      for col in range(3) {
        for row in range(2) {
          rect((col * w / 4, row * h / 3), ((col + 1) * w / 4, (row + 1) * h / 3),
               fill: rgb("#BBDEFB80"), stroke: none)
        }
      }

      // Labels
      content((w / 2, -1), text(size: 8pt)[$3 / 4$（宽）], anchor: "north")
      content((-1.5, h / 2), text(size: 8pt)[$2 / 3$（高）], anchor: "east")

      // Result
      content((w / 2, h + 1), text(weight: "bold", size: 9pt)[涂色重叠 = $6 / 12 = 1 / 2$], anchor: "south")
    }),
    caption: [面积模型：$2 / 3 times 3 / 4$ 就是整体 12 格中涂色的 6 格],
  )

  - *分数乘法*：可以看成“几分之几的几分之几”，结果用分子乘分子、分母乘分母。
  - *分数除法*：可以看成“里面有几个”，也可以整理成“乘以除数的倒数”。
]

#pitfall[
  *高频错误*

  ✗ 异分母加法时把分子、分母各自相加
  → ✓ 分母不同先通分，否则单位没统一。

  ✗ 乘法也去通分
  → ✓ 乘法不是在合并同单位，而是在求部分中的部分，不需要先通分。

  ✗ 除法只会机械背“倒过来乘”，却不知道意思
  → ✓ 更稳的理解是：除法在问“里面有几个这样的分数单位”。
]

#mastery[
  *基础*

  + 计算：$1/4 + 2/3$。
  + 计算：$5/6 - 1/2$。
  + 计算：$2/3 times 3/5$。
  + 计算：$3/4 div 1/2$。
  + 判断对错并改正："$1/2 + 1/3 = 2/5$，因为分子加分子、分母加分母。"

  *应用*

  + 一袋面粉重 3 千克，用去了 $2/5$，用了多少千克？
  + 一根 $5/6$ 米长的绳子，每段剪成 $1/12$ 米，能剪几段？

  *挑战 ☞ 选做*

  + 为什么 $1/4 + 2/3$ 要先通分，而 $1/4 times 2/3$ 却不用？
  + 请用“里面有几个”解释为什么 $3/4 div 1/2 = 3/2$。

  #answer-cut[
  + $1/4 + 2/3 = 3/12 + 8/12 = 11/12$（通分法：公分母 12）。
  + $5/6 - 1/2 = 5/6 - 3/6 = 2/6 = 1/3$（通分法：公分母 6）。
  + $2/3 times 3/5 = 6/15 = 2/5$（分子乘分子、分母乘分母，再约分）。
  + $3/4 div 1/2 = 3/4 times 2/1 = 6/4 = 3/2 = 1 1/2$（除以一个分数 = 乘以它的倒数）。
  + 错；异分母加法不能直接分子加分子、分母加分母。正确做法：先通分，$1/2 + 1/3 = 3/6 + 2/6 = 5/6$（通分法）。
  + $3 times 2/5 = 6/5 = 1 1/5$ 千克。步骤：整数 × 分数 = 分子乘整数，分母不变（分数乘法）。
  + $5/6 div 1/12 = 5/6 times 12/1 = 60/6 = 10$ 段（除以分数 = 乘以倒数）。
  + 因为加法是在合并同单位的量，单位不同（四分之一 vs 三分之一）必须先统一；乘法是在求"一个量的几分之几"，结构不同，不需要统一单位（加法 vs 乘法的本质区别）。
  + $3/4$ 里面放 $1/2$：1 个完整的 $1/2$（即 $2/4$）用掉后还剩 $1/4$，而 $1/4$ 是半个 $1/2$，所以一共 $1 + 1/2 = 3/2$ 个（包含除法理解）。
  ]
]
