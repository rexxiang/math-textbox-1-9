#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall
#import "../../lib/diagram-packages.typ": cetz

=== 分数的意义与等值 <tool:pf04-fraction-equivalence>

#vocab[分数 fraction][等值分数 equivalent fractions][均分 equal parts]

#crisis[
  试试把 2 张披萨平均分给 3 个人。每人分到多少？你会发现整数里找不到答案——不是 0，不是 1，卡在中间。

  但每个人确实分到了一份，“真的分到了多少”不能不说。

  *我们需要一种能描述“整体的一部分”的数，而且它必须是可靠、可比较的。*
]

#history-note[
  约公元前 1650 年的莱因德纸草书（Rhind Papyrus）表明，古埃及人已经系统地使用分数——但他们几乎只用“单位分数”（分子为 1），比如把 $2\/5$ 写成 $1\/3 + 1\/15$。相比之下，《九章算术》（约公元 1 世纪）从一开始就使用一般分数，并明确提出“约分术”和“合分术”来化简与合并。分数的发明，就是为了精确表达“不到一个整体”或“几个整体加上一部分”这样的真实数量。
]

#discovery[
  把 1 张披萨平均分成 3 份，每份就是 $1/3$ 张。

  2 张披萨平均分给 3 个人，每人得到 $2/3$ 张。于是分数也能表示除法结果。

  再把每一份继续一分为二：

  - 原来的 $1/2$ 会变成 $2/4$
  - 原来的 $2/3$ 会变成 $4/6$

  份数名字变了，但吃到的总量并没变。于是我们看到：同一个量可以有不同写法，这些写法叫等值分数。

  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *

      // --- 面积模型：1/2 vs 2/4 ---
      // 左边：1/2
      rect((0, 0), (6, 2), stroke: 0.6pt)
      line((3, 0), (3, 2), stroke: 0.6pt)
      rect((0, 0), (3, 2), fill: rgb("#a8d8ea"), stroke: 0.6pt)
      content((3, -0.8), $1 / 2$, anchor: "north")

      // 右边：2/4
      let rx = 8
      rect((rx, 0), (rx + 6, 2), stroke: 0.6pt)
      for i in (1, 2, 3) {
        line((rx + i * 1.5, 0), (rx + i * 1.5, 2), stroke: 0.6pt)
      }
      rect((rx, 0), (rx + 1.5, 2), fill: rgb("#a8d8ea"), stroke: 0.6pt)
      rect((rx + 1.5, 0), (rx + 3, 2), fill: rgb("#a8d8ea"), stroke: 0.6pt)
      content((rx + 3, -0.8), $2 / 4$, anchor: "north")

      // 等号
      content((7, 1), $=$, anchor: "center")

      // --- 数轴模型 ---
      let ny = -4
      line((-0.5, ny), (15, ny), stroke: 0.5pt, mark: (end: ">"))
      // 刻度
      for (val, label) in ((0, $0$), (6, $1 / 2$), (12, $1$)) {
        line((val, ny - 0.3), (val, ny + 0.3), stroke: 0.5pt)
        content((val, ny - 0.8), label, anchor: "north")
      }
      // 四等分刻度
      for i in (3, 9) {
        line((i, ny - 0.2), (i, ny + 0.2), stroke: 0.4pt + rgb("#888"))
      }
      content((3, ny + 0.8), $1 / 4$, anchor: "south")
      content((9, ny + 0.8), $3 / 4$, anchor: "south")
      // 标注 2/4 = 1/2
      circle((6, ny), radius: 0.25, fill: rgb("#f5a623"), stroke: 0.5pt)
      content((6, ny + 1.2), text(size: 0.75em, $2 / 4 = 1 / 2$), anchor: "south")
    }),
    caption: [把图形等分后数"占了几份"，和数轴上看分数，都能看到：$1 / 2 = 2 / 4$],
  )
]

#side-hack[
  记住一句话：分母在说“把整体分成几等份”，分子在说“拿了其中几份”。
]

#tryit[
  先自己试试：

  + $1/2$ 和 $2/4$ 一样大吗？为什么？
  + 把 $3/5$ 改写成一个分母是 10 的等值分数。
]

#blueprint[
  - *分数* $a/b$ 表示把整体平均分成 b 份，取其中 a 份；它也能看成 $a div b$。
  - *均分* 很关键：每一份必须一样大。
  - *等值分数*：分子分母同时乘或除同一个非零数，分数值不变。

  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let green = rgb("#4CAF50")

      // 3/4 bar
      for i in range(4) {
        let x = i * 3
        let fill-c = if i < 3 { rgb("#BBDEFB") } else { white }
        rect((x, 3), (x + 2.8, 5), fill: fill-c, stroke: 0.6pt + blue)
      }
      content((6, 2.2), $3 / 4$, anchor: "north")

      // 6/8 bar
      for i in range(8) {
        let x = i * 1.5
        let fill-c = if i < 6 { rgb("#C8E6C9") } else { white }
        rect((x, -1), (x + 1.3, 1), fill: fill-c, stroke: 0.6pt + green)
      }
      content((6, -1.8), $6 / 8$, anchor: "north")

      // Equals sign
      content((13, 2), $=$, anchor: "center")
      content((13, 0), text(size: 8pt)[同样长], anchor: "center")
    }),
    caption: [分数条模型：$3 / 4 = 6 / 8$，涂色部分一样长],
  )

]

#pitfall[
  *高频错误*

  ✗ 只看分母大，就以为分数一定更大
  → ✓ 分母变大时，每一份反而更小；要结合分子和整体一起看。

  ✗ 把“分成 3 块”误当成“分成 3 等份”
  → ✓ 分数建立在均分上，不均匀切块不能直接写成标准分数。
]

#mastery[
  *基础*

  + 用分数表示：把一条线段平均分成 5 份，取其中 2 份。
  + 写出与 $2/3$ 相等的两个分数。
  + 解释为什么 $3/4$ 也可以看成 $3 div 4$。
  + 判断对错并改正："$2/5$ 和 $4/9$ 是等值分数，因为分子分母都各加了 2。"
  + 把 $12/18$ 化简成最简分数。

  *应用*

  + 8/12 和 2/3 是同一个量吗？请说明理由。
  + 一桶水用了 $3/5$，如果把每一份再平均分成 2 份，用新的分数怎么写？

  *挑战 ☞ 选做*

  + 为什么“等值分数”不是“把数写复杂了”，而是在换单位？
  + 请用“份的大小变了，但总量不变”解释 $3/4 = 6/8$。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + $2/5$（均分定义：5 等份取 2 份）。
  + 例如 $4/6$、$6/9$（等值分数性质：分子分母同乘同一个非零数）。
  + 因为 $3/4$ 表示把 1 平均分成 4 份取 3 份，这和 $3 div 4$ 的运算结果一致（分数 = 除法）。
  + 错；等值分数要求分子分母同时乘或除*同一个数*，而不是各自加同一个数。$2/5 = 4/10 eq.not 4/9$（等值分数性质）。
  + $12/18 = 2/3$（分子分母同除以最大公因数 6；$gcd(12, 18) = 6$）。
  + 是；$8/12$ 的分子分母同除以 4 得 $2/3$，两者占整体的比例完全相同（等值分数性质）。
  + 原来每份是 $1/5$，每份再平均分成 2 份后变成 $1/10$，用了 3 份变成 6 份，即 $3/5 = 6/10$（等值分数性质：分子分母同乘 2）。
  + 因为改写前后量没变，只是“每份的大小”和“份数”在同步变化。这像换了一把更细（或更粗）的尺子来度量同一个量（换单位视角）。
  + 1 个四分之一等于 2 个八分之一，所以 3 个四分之一 = 6 个八分之一，占整体的比例不变。份变小了但份数等比例增加（等值分数性质）。
]
