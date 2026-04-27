#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall
#import "../../lib/diagram-packages.typ": cetz

=== 加法与减法：合并与撤销 <tool:pf02-add-subtract-undo>

#vocab[加法 addition][减法 subtraction][互逆 inverse]

#crisis[
  案件现场：铅笔盒里有 63 支铅笔，有人说"刚才放进去 25 支"，另一个人说"不对，原来就有 38 支"。两句话矛盾吗？

  一个在"合并"，一个在"拆开"——方向完全相反，却指向同一个事实。

  *加法和减法看起来相反，背后会不会其实是同一件事？*
]

#history-note[
  约公元前 1650 年抄写的莱因德纸草书（Rhind Papyrus）是古埃及最完整的数学文献之一，书记官阿赫莫斯（Ahmes）在上面记录了大量加法与减法问题——面包分配、粮食清点、库存回退，加与减始终成对出现。中国春秋时期的算筹运算也一样：摆上算筹是加，拿走算筹就是减，工具本身就把加减设计成了一对正反动作。
]

#discovery[
  把两堆东西合起来，是加法。

  从一整堆里撤走一部分，或者追问“原来缺了多少”，是减法。

  例如：

  - 原来 38 支，又来 25 支，得到 $38 + 25 = 63$
  - 现在 63 支，去掉后来加的 25 支，得到 $63 - 25 = 38$

  所以减法常常不是新世界的规则，而是在把加法倒着走回来。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let red = rgb("#F44336")

      // Number line axis
      line((-1, 0), (17, 0), stroke: 1.2pt + luma(80), mark: (end: ">"))

      // Tick marks and labels
      for (px, lbl) in ((3, [38]), (13, [63])) {
        line((px, -0.5), (px, 0.5), stroke: 1pt + luma(60))
        content((px, -1.4), text(weight: "bold", size: 9pt, lbl), anchor: "north")
      }

      // Blue forward arc: 38 → 63  (curved upward)
      bezier((3, 0.4), (13, 0.4), (8, 5),
             stroke: 1.8pt + blue, mark: (end: ">"))
      content((8, 5.2),
        text(fill: blue, weight: "bold", size: 10pt)[+25], anchor: "south")

      // Red backward arc: 63 → 38  (curved downward)
      bezier((13, -0.4), (3, -0.4), (8, -5),
             stroke: 1.8pt + red, mark: (end: ">"))
      content((8, -5.2),
        text(fill: red, weight: "bold", size: 10pt)[−25], anchor: "north")
    }),
    caption: [加法往右走，减法往回走——互逆],
  )
]

#side-hack[
  算完加法，可以用减法验；算完减法，也可以用加法补回去验。这样能很快抓到抄错数、进退位错误。
]

#tryit[
  先自己试试：

  + 某图书角有 46 本书，又搬来 18 本，一共有多少本？
  + 现在共 64 本，其中 18 本是刚搬来的。原来有多少本？
]

#blueprint[
  - *加法* 表示把数量合并起来，结果叫和。
  - *减法* 表示把一部分撤掉，或追问还差多少、原来有多少，结果叫差。
  -
  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let green = rgb("#4CAF50")
      let gray = luma(200)

      // Bar for a
      rect((0, 2), (6, 4), fill: rgb("#BBDEFB"), stroke: 0.8pt + blue)
      content((3, 3), text(weight: "bold", size: 9pt)[$a$])

      // Bar for b
      rect((6, 2), (10, 4), fill: rgb("#C8E6C9"), stroke: 0.8pt + green)
      content((8, 3), text(weight: "bold", size: 9pt)[$b$])

      // Brace for c = a + b
      line((0, 4.5), (10, 4.5), stroke: 0.8pt + luma(100))
      line((0, 4.3), (0, 4.7), stroke: 0.8pt + luma(100))
      line((10, 4.3), (10, 4.7), stroke: 0.8pt + luma(100))
      content((5, 5.3), text(weight: "bold", size: 9pt)[$c = a + b$], anchor: "south")

      // Labels below
      content((3, 1.2), text(size: 8pt, fill: blue)[已知], anchor: "north")
      content((8, 1.2), text(size: 8pt, fill: green)[又来了], anchor: "north")
    }),
    caption: [线段图：$a + b = c$，减法就是从 $c$ 里找回 $a$ 或 $b$],
  )

  - 加法与减法是*互逆运算*：若 $a + b = c$，则 $c - b = a$，也有 $c - a = b$。
]

#pitfall[
  *高频错误*

  ✗ 见到减法就只会想“拿走”，不会把它理解成“补回去找原来”
  → ✓ 减法既能表示拿走，也能表示从结果倒推缺口或原量。

  ✗ 验算时只看结果“像不像对”，不做逆运算检查
  → ✓ 用互逆关系验算更稳：加完用减法，减完用加法。
]

#mastery[
  *基础*

  + 计算：$58 + 27$，并用减法验算。
  + 计算：$85 - 27$，并用加法验算。
  + 用自己的话说出加法和减法分别在做什么。
  + 判断对错并改正："减法就是把东西拿走。"
  + 计算 $46 + 37$，再用减法验算你的结果。

  *应用*

  + 班里原有 27 人，后来又转来 6 人，现在一共多少人？
  + 仓库原有一些箱子，运走 19 箱后还剩 34 箱。原来有多少箱？

  *挑战 ☞ 选做*

  + 为什么“求还差多少”也属于减法？请举一个不是“拿走东西”的例子。
  + 已知 $a + b = 90$，如果 $a = 37$，怎样最快找到 $b$？这为什么不是在发明新规则？

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + $58 + 27 = 85$；验算：$85 - 27 = 58$（互逆运算验算）。
  + $85 - 27 = 58$；验算：$58 + 27 = 85$（互逆运算验算）。
  + 加法在合并数量，减法在撤销、补回或倒推缺口（加减互逆）。
  + 不完全对；减法除了"拿走"，还能表示"求还差多少"或"从结果倒推原量"（减法的多种含义）。
  + $46 + 37 = 83$；验算：$83 - 37 = 46$，与原数一致，说明计算正确（互逆运算验算）。
  + $27 + 6 = 33$ 人（加法合并）。
  + 设原来有 $x$ 箱：$x - 19 = 34$，所以 $x = 34 + 19 = 53$ 箱。也可以直接想：运走的 19 箱加上剩下的 34 箱就是原来的总数（加减互逆）。
  + 例如两人比赛跑步，甲跑了 58 米，乙跑了 64 米，问乙比甲多多少米。这是减法，因为在找两者之间的差距，而不是在"拿走"东西（减法求差）。
  + $b = 90 - 37 = 53$；因为减法是在把加法倒过来走，不是在发明新规则（互逆运算）。
]
