#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 比：两个量相比的写法 <tool:cb01-ratio-basics>

#vocab[比 ratio][前项][后项][比值 value of ratio]

#crisis[
  你以为 $2$ 份茶加 $5$ 份奶就是“一杯奶茶的配方”？那如果你要配十杯呢？分量全变了，但“喝起来一样的味道”却不能变。

  *我们要一种写法，只锁住两个量之间的关系，不锁住具体数量。*
]

#discovery[
  把“茶 $2$ 份、奶 $5$ 份”写成 $2 : 5$，读作“$2$ 比 $5$”。

  如果改成“茶 $4$ 份、奶 $10$ 份”，也写成 $4 : 10$。这两个写法虽然数变大了，但味道一样，因为：

  $ 2 : 5 = 4 : 10 $

  把后项当分母、前项当分子，就能翻译成分数：$2/5$ 和 $4/10$ 正是等值分数（#secref("pf04-fraction-equivalence")）。这就是为什么比可以同时乘或除同一个非零数而保持不变。

  把前项除以后项得到的那个数，叫*比值*。两个比相等，就是比值相等。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *
      let bw = 2.5
      let bh = 1.6
      let gap = 0.3
      for i in range(2) {
        let x = i * (bw + gap)
        rect((x, 0), (x + bw, bh),
             fill: rgb("#BBDEFB"), stroke: 1pt + rgb("#1565C0"), radius: 2pt)
        content((x + bw / 2, bh / 2),
          text(size: 9pt, weight: "bold", fill: rgb("#0D47A1"))[茶])
      }
      let ms = 2 * (bw + gap) + 0.8
      for i in range(5) {
        let x = ms + i * (bw + gap)
        rect((x, 0), (x + bw, bh),
             fill: rgb("#FFF9C4"), stroke: 1pt + rgb("#F9A825"), radius: 2pt)
        content((x + bw / 2, bh / 2),
          text(size: 9pt, weight: "bold", fill: rgb("#F57F17"))[奶])
      }
      let tea-mid = (bw + gap) - gap / 2
      content((tea-mid, -0.8),
        text(size: 8pt, weight: "bold", fill: rgb("#1565C0"))[2 份], anchor: "north")
      let milk-mid = ms + (bw + gap) * 2 - gap / 2
      content((milk-mid, -0.8),
        text(size: 8pt, weight: "bold", fill: rgb("#F57F17"))[5 份], anchor: "north")
      let total-end = ms + 5 * (bw + gap) - gap
      content((total-end / 2, bh + 1.2),
        text(size: 9pt, weight: "bold")[$"茶" : "奶" = 2 : 5$], anchor: "south")
    }),
    caption: [条形模型：茶与奶的比 $2 : 5$，整杯共 $7$ 份],
  )
]

#side-hack[
  比的两种常见身份：
  - “部分 : 部分”——像 $2 : 5$，两块都是成分，整杯是 $7$ 份；
  - “部分 : 整体”——像“女生占全班 $9 : 20$”，后项就是整体。
  *先看清楚是哪一种，再算。*
]

#tryit[
  + 班里男生女生人数比是 $3 : 4$。若男生有 $12$ 人，女生有多少人？
  + 写出 $6 : 9$ 的比值；再写出两个与 $6 : 9$ 相等的比。
]

#history-note[
  公元前 $1$ 世纪，古罗马建筑师维特鲁威（Vitruvius）在《建筑十书》中详细记录了砂浆配比：石灰与河沙按 $1 : 3$ 混合才足够坚固。他写下的不是总重量，而是"灰 : 沙"这个比——换一桶料照样能配。更早的中国，《九章算术》（约公元前 $1$ 世纪成书）"衰分"章专门讨论了按比例分配粮食和赋税的方法，说明"比"这件工具很早就跨越了文明边界。

  ☞ 历史接力 → 比例思想在函数分支中被推广为正比例函数 $y = k x$；见 #secref("fn04-direct-variation")。
]

#blueprint[
  - *比* $a : b$ 表示前项 $a$ 与后项 $b$ 的关系，要求 $b != 0$。
  - *比值*：$a : b$ 的比值就是 $a / b$；用比值判断两个比是否相等最可靠。
  - *化简比*：比的前项与后项同时乘或除同一个非零数，比不变；通常把它化到前后项互质的最简比。
  - *比可翻译成分数*：$a : b$ 对应 $a / b$；反之分数也可以还原成比。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *
      let bw = 1.3
      let bh = 1.0
      content((-2.5, bh / 2), text(size: 8pt, weight: "bold")[$6 : 9$], anchor: "east")
      for i in range(6) {
        rect((i * (bw + 0.15), 0), (i * (bw + 0.15) + bw, bh),
             fill: rgb("#C8E6C9"), stroke: 0.6pt + rgb("#388E3C"))
      }
      let ns = 6 * (bw + 0.15) + 0.6
      for i in range(9) {
        rect((ns + i * (bw + 0.15), 0), (ns + i * (bw + 0.15) + bw, bh),
             fill: rgb("#FFECB3"), stroke: 0.6pt + rgb("#F9A825"))
      }
      let mid-x = (ns + 9 * (bw + 0.15)) / 2
      line((mid-x, -0.4), (mid-x, -1.6), stroke: 1.2pt + rgb("#555"), mark: (end: ">"))
      content((mid-x + 1.5, -1.0), text(size: 7pt, fill: rgb("#555"))[$div 3$], anchor: "west")
      let by = -3.0
      content((-2.5, by + bh / 2), text(size: 8pt, weight: "bold")[$2 : 3$], anchor: "east")
      for i in range(2) {
        rect((i * (bw + 0.15), by), (i * (bw + 0.15) + bw, by + bh),
             fill: rgb("#C8E6C9"), stroke: 0.6pt + rgb("#388E3C"))
      }
      let ts = 2 * (bw + 0.15) + 0.6
      for i in range(3) {
        rect((ts + i * (bw + 0.15), by), (ts + i * (bw + 0.15) + bw, by + bh),
             fill: rgb("#FFECB3"), stroke: 0.6pt + rgb("#F9A825"))
      }
    }),
    caption: [化简比：$6 : 9$ 前后同除以 $3$，得最简比 $2 : 3$],
  )
]

#pitfall[
  *高频错误*

  ✗ 把“部分 : 部分”直接当成“部分 : 整体”
  → ✓ 先把两种身份分清楚；$2 : 5$ 的“整体”是 $2+5=7$，不是 $5$。

  ✗ 化简比时只除前项不除后项
  → ✓ *前后同时*乘或除同一个非零数，比才不变。

  ✗ 把比写成 $a : 0$
  → ✓ 比的后项不能是 $0$，否则比值没有意义。
]

#mastery[
  *基础*

  + 把 $15 : 25$ 化到最简。
  + $18 : 24$ 的比值是多少？
  + 班里男女比 $5 : 7$，全班 $36$ 人，男生多少人？
  + 把 $2.4 : 1.6$ 化到最简整数比。
  + 一袋糖果共 $48$ 颗，红色与黄色的比是 $5 : 3$。红色有多少颗？

  *应用*

  + 一条长 $60$ 厘米的缎带按 $2 : 3$ 剪成两段，每段多长？
  + 奶茶配方茶 : 奶 $= 2 : 5$，要做 $350$ 毫升，茶多少毫升、奶多少毫升？
  + 甲、乙两人体重比为 $9 : 10$，甲 $54$ 千克，乙多少千克？

  *挑战 ☞ 选做*

  + 把 $0.6 : 0.9$ 化为最简整数比。
  + 比 $a : b = 3 : 4$，又知 $a + b = 28$。求 $a$、$b$。
  + *[解释]*：一袋糖果中糖与花生的比是 $3 : 2$。如果再加 $5$ 颗糖到袋里，糖与花生的新比一定是 $4 : 2$ 吗？解释为什么不一定，并指出"加同一数到比的两项"和"两项同乘一个数"在结果上的关键差别。

  #answer-cut[
  + $3 : 5$（前后同除 $5$，化简比）。
  + $3/4$（比值 $=$ 前项 $div$ 后项）。
  + 男生 $15$ 人（全班 $= 5+7 = 12$ 份，男生占 $5$ 份，$36 times 5 / 12 = 15$）。
  + $3 : 2$（两边同乘 $10$ 得 $24 : 16$，再同除 $8$）。
  + 红色 $30$ 颗（$48 times 5/8$，按比分配）。
  + 短段 $24$ 厘米、长段 $36$ 厘米（$60 times 2/5 = 24$，$60 times 3/5 = 36$，按比分配）。
  + 茶 $100$ 毫升、奶 $250$ 毫升（总 $7$ 份对应 $350$ 毫升，每份 $50$；茶 $2 times 50$，奶 $5 times 50$）。
  + 乙 $60$ 千克（$54 div 9 times 10 = 60$，比的基本性质）。
  + $2 : 3$（先同乘 $10$ 化为整数比 $6 : 9$，再同除 $3$ 化简）。
  + $a = 12$，$b = 16$（总份 $3+4 = 7$，每份 $28 div 7 = 4$；$a = 3 times 4$，$b = 4 times 4$）。
  + 不一定。原比 $3 : 2$ 化为整数对，比如糖 $3$ 颗、花生 $2$ 颗，加 $5$ 颗糖后变成 $8 : 2 = 4 : 1$，不是 $4 : 2$。若原是糖 $6$、花生 $4$，加 $5$ 后是 $11 : 4$。"加同一数"会破坏比的关系；"两项同乘一个数"才能保持比值不变。这正是比的*基本性质*：只能同乘/同除，不能同加/同减。
  ]
]

#side-hack[
  *☞ 这会在后面哪里再出现*

  - 代数部分的一次方程应用题经常出现"把总量按某个比分开"这类情景。
  - 函数分支讲正比例函数时，$y = k x$ 里的常数 $k$ 就是本节的比值。
  - 数据分支中比较样本结构时，也会频繁用“男 : 女 = …”这种比的写法。
]
