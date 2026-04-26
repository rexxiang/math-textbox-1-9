#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref
#import "../../lib/diagram-packages.typ": cetz

=== 百分数：把比的尺子统一成 100 <tool:cb01-percent>

#vocab[百分数 percent][百分率][基数][比较量]

#crisis[
  学校 A 通过率 $17 / 25$，学校 B 通过率 $41 / 60$。你想一口报出“谁更高”。

  分母不一样，比较就要先通分，报起来也不直观。*我们需要一把所有人都共用的尺子。*
]

#history-note[
  $%$ 这个符号来自拉丁语 “per cento”（每一百）。商人在账本里写利润、税率时都倾向把分母统一成 $100$——数字好比、好传、好算利息。
]

#discovery[
  约定一把共同的尺子：把整体看成 $100$ 份，再看目标占其中几份。学校 A 的通过率写成：

  $ 17 / 25 = 68 / 100 = 68% $

  学校 B 的通过率：$41 / 60 approx 68.3 / 100 approx 68.3%$。

  一放到“每 $100$ 人中有几个”的尺子上，差距立刻可见。

  #figure(
    cetz.canvas(length: 0.35cm, {
      import cetz.draw: *
      let cell = 1.4
      for row in range(10) {
        for col in range(10) {
          let idx = row * 10 + col
          let c = if idx < 68 { rgb("#42A5F5") } else { rgb("#EEEEEE") }
          rect((col * cell, -row * cell), (col * cell + cell - 0.1, -row * cell + cell - 0.1),
               fill: c, stroke: 0.3pt + rgb("#999999"))
        }
      }
      content((5 * cell, 1.5),
        text(size: 9pt, weight: "bold")[$68 / 100 = 68%$], anchor: "south")
      content((5 * cell, -10 * cell - 0.5),
        text(size: 7pt, fill: rgb("#555"))[蓝色格 $= 68$ 个，全部 $= 100$ 个], anchor: "north")
    }),
    caption: [$10 times 10$ 方格图：$68$ 格着色 $= 68%$],
  )

  所以百分数就是一种*特殊的比*：后项永远是 $100$。于是三种写法互译只是换把尺子：

  $ 3 / 4 = 75 / 100 = 75% = 0.75 $

  这一步的位值依据正是 #secref("pf05-decimals-conversion")。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *
      let w = 16
      let h = 1.5
      let y-gap = 2.8
      // Fraction bar: 3/4 filled
      rect((0, 0), (w * 3 / 4, h), fill: rgb("#A5D6A7"), stroke: 0.8pt + rgb("#388E3C"))
      rect((w * 3 / 4, 0), (w, h), fill: rgb("#EEEEEE"), stroke: 0.8pt + rgb("#999"))
      content((w / 2, h / 2), text(size: 9pt, weight: "bold")[$3 / 4$])
      // Decimal bar
      rect((0, -y-gap), (w * 0.75, -y-gap + h), fill: rgb("#90CAF9"), stroke: 0.8pt + rgb("#1565C0"))
      rect((w * 0.75, -y-gap), (w, -y-gap + h), fill: rgb("#EEEEEE"), stroke: 0.8pt + rgb("#999"))
      content((w / 2, -y-gap + h / 2), text(size: 9pt, weight: "bold")[$0.75$])
      // Percent bar
      rect((0, -2 * y-gap), (w * 0.75, -2 * y-gap + h), fill: rgb("#FFE082"), stroke: 0.8pt + rgb("#F9A825"))
      rect((w * 0.75, -2 * y-gap), (w, -2 * y-gap + h), fill: rgb("#EEEEEE"), stroke: 0.8pt + rgb("#999"))
      content((w / 2, -2 * y-gap + h / 2), text(size: 9pt, weight: "bold")[$75%$])
      // Equals signs
      content((w + 1.5, 0 + h / 2), text(size: 10pt, weight: "bold")[$=$])
      content((w + 1.5, -y-gap + h / 2), text(size: 10pt, weight: "bold")[$=$])
    }),
    caption: [三种写法表示同一个量：$3 / 4 = 0.75 = 75%$],
  )
]

#side-hack[
  把 $72%$ 想成“每 $100$ 里占 $72$”，解应用题时会非常顺：“$72%$ 的 $250$”就是 $250 div 100 times 72$。
]

#tryit[
  + 把 $3/5$、$0.45$、$13/20$ 改写成百分数。
  + 一件商品原价 $180$ 元，打 $85%$ 销售。现价多少元？
]

#blueprint[
  - *百分数* $p%$：把整体视为 $100$ 份，其中占了 $p$ 份；作为比就是 $p : 100$，作为分数就是 $p / 100$。
  - *三种写法互译*：
    - 分数 → 百分数：让分母化为 $100$ 或先化成小数再乘 $100%$；
    - 小数 → 百分数：小数点向右移两位，写上 $%$；
    - 百分数 → 小数：小数点向左移两位，去掉 $%$。
  - *基本关系*：比较量 $=$ 基数 $times$ 百分率；三者知二求一。
]

#pitfall[
  *高频错误*

  ✗ 把 “$80%$ 的减少” 和 “减少到原来的 $80%$” 混为一谈
  → ✓ 前者是只剩 $20%$，后者是只剩 $80%$；读清楚“减少多少”还是“变成多少”。

  ✗ 以为 $0.5$ 就是 $0.5%$
  → ✓ $0.5 = 50%$；小数变百分数要向右移两位。

  ✗ 解“增长 $20%$ 后”的题时忘了基数
  → ✓ 先问“谁是基数 $= 100%$”，再算新量 $= $ 基数 $times (1 + 20%)$。
]

#mastery[
  *基础*

  + 把 $7/8$ 写成百分数（保留一位小数）。
  + 把 $125%$ 写成小数和带分数。
  + 比较大小：$62%$、$0.625$、$5/8$。
  + 把 $0.04$ 和 $5/4$ 分别写成百分数。
  + 一种果汁含纯果汁 $45%$，$300$ 克果汁饮料里有多少克纯果汁？

  *应用*

  + 一种糖水 $200$ 克，含糖 $30$ 克。糖水的含糖率是多少？
  + 某商品降价 $15%$ 后售价 $255$ 元，原价是多少元？
  + 去年种树 $400$ 棵，今年比去年多 $25%$，今年种了多少棵？

  *挑战 ☞ 选做*

  + 利率每年 $3%$，$1000$ 元存 $2$ 年，按单利算本利和是多少？
  + 某人先加薪 $10%$ 再减薪 $10%$。现在工资比最初多了、少了、还是一样？多/少多少百分比？

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + $87.5%$（$7 div 8 = 0.875$，小数点右移两位）。
  + $1.25 = 1 1/4$（百分数→小数：小数点左移两位）。
  + 三者相等：$62.5% = 0.625 = 5/8$；注意 $62%$ 比 $62.5%$ 略小，所以 $62% < 0.625 = 5/8$。
  + $0.04 = 4%$（小数点右移两位）；$5/4 = 1.25 = 125%$（分数→小数→百分数）。
  + $300 times 45% = 135$ 克（比较量 $=$ 基数 $times$ 百分率）。
  + $15%$（含糖率 $=$ 含糖量 $div$ 总量 $= 30/200$，百分率公式）。
  + 原价 $300$ 元（降 $15%$ 后剩 $85%$，即 $255 = "原价" times 0.85$，反向求基数）。
  + $500$ 棵（$400 times (1 + 25%) = 400 times 1.25$，增长百分数公式）。
  + $1060$ 元（单利公式：本利和 $=$ 本金 $+$ 本金 $times$ 利率 $times$ 年数 $= 1000 + 1000 times 3% times 2$）。
  + 少了 $1%$（$1.1 times 0.9 = 0.99$）。
]

#side-hack[
  *☞ 这会在后面哪里再出现*

  - 代数分支的应用题会反复出现打折、利率、浓度，全部是百分数翻译。
  - 数据分支读频率分布、读饼图/条形图时，纵轴几乎总是百分数。
  - 函数分支讨论增长率、衰减率时，“每次变 $r%$”就是本节知识的延伸。
]
