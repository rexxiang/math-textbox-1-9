#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 分数比较：先统一尺子 <tool:pf04-fraction-comparison>

#vocab[通分 common denominator][同分母 same denominator][同单位 common unit]

#crisis[
  $3/4$ 和 $2/3$，谁更大？

  一个是“四等份里取 3 份”，一个是“三等份里取 2 份”，每一份大小不同，不能直接看 3 和 2。

  *分数比较的关键不是谁写得复杂，而是谁先用了同一把尺子。*
]

#discovery[
  如果把 $3/4$ 和 $2/3$ 都改写成十二分之几：

  - $3/4 = 9/12$
  - $2/3 = 8/12$


  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let red = rgb("#F44336")

      // Bar for 3/4
      let w = 12
      for i in range(4) {
        let x = i * (w / 4)
        let fill-c = if i < 3 { rgb("#BBDEFB") } else { white }
        rect((x, 4), (x + w / 4 - 0.2, 6), fill: fill-c, stroke: 0.6pt + blue)
      }
      content((-2, 5), text(weight: "bold", size: 9pt)[$3 / 4$], anchor: "east")

      // Bar for 2/3
      for i in range(3) {
        let x = i * (w / 3)
        let fill-c = if i < 2 { rgb("#FFCDD2") } else { white }
        rect((x, 1), (x + w / 3 - 0.2, 3), fill: fill-c, stroke: 0.6pt + red)
      }
      content((-2, 2), text(weight: "bold", size: 9pt)[$2 / 3$], anchor: "east")

      // Comparison line
      let end34 = 3 * (w / 4) - 0.2
      let end23 = 2 * (w / 3) - 0.2
      line((end34, 3.8), (end34, 0.5), stroke: (dash: "dashed", paint: blue, thickness: 0.8pt))
      line((end23, 3.8), (end23, 0.5), stroke: (dash: "dashed", paint: red, thickness: 0.8pt))

      content((w / 2, 7), text(size: 8pt, weight: "bold")[$3 / 4 > 2 / 3$], anchor: "south")
    }),
    caption: [分数条对比：$3 / 4$ 涂得更长，所以 $3 / 4 > 2 / 3$],
  )

  这时两者都在用“十二分之一”做单位，就能直接比较：$9/12 > 8/12$。

  还有一些更快的情形：

  - 同分母时，分子大的更大
  - 同分子时，分母小的每份更大，所以整体更大

  但真正稳妥的总方法，还是先统一单位。
]

#side-hack[
  分数比较常用三步：先看能不能直接同分母或同分子；不行就通分；若和 1 比较，也可以先看它在 1 的哪一边。
]

#tryit[
  先自己试试：

  + 比较 $5/8$ 和 $3/4$。
  + 比较 $3/7$ 和 $3/5$。
]

#history-note[
  《九章算术》（约公元 1 世纪）“方田”章明确记载了“齐同术”：要比较或加减两个分数，先把分母统一（“齐其子”），再看分子大小。刘徽（约 263 年）在注解中进一步解释了为什么必须“齐同”——不同分母就像不同单位，不统一就没法直接比。这套“先统一标准、再比较”的思路，至今仍是分数比较的核心。
]

#blueprint[
  - 比较分数大小，本质上是在比较谁占了更多共同单位。
  - *同分母* 时，分子大的分数更大。
  - *同分子* 时，分母小的分数更大。
  -
  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let red = rgb("#F44336")

      // Number line 0 to 1
      line((-1, 0), (17, 0), stroke: 1.2pt + luma(80), mark: (end: ">"))

      // Ticks at 0, 1
      for (x, lbl) in ((0, $0$), (15, $1$)) {
        line((x, -0.5), (x, 0.5), stroke: 1pt + luma(60))
        content((x, -1.4), text(weight: "bold", size: 10pt, lbl), anchor: "north")
      }

      // Mark 2/3
      let x23 = 10
      circle((x23, 0), radius: 0.3, fill: red, stroke: 0.8pt + red)
      content((x23, 1.5), text(fill: red, weight: "bold", size: 9pt)[$2 / 3$], anchor: "south")

      // Mark 3/4
      let x34 = 11.25
      circle((x34, 0), radius: 0.3, fill: blue, stroke: 0.8pt + blue)
      content((x34, -1.8), text(fill: blue, weight: "bold", size: 9pt)[$3 / 4$], anchor: "north")
    }),
    caption: [数轴上看：$3 / 4$ 在 $2 / 3$ 的右边，所以更大],
  )

  - 分母不同又不方便直接看时，可以*通分*，把它们改写成同分母分数再比较。
]

#pitfall[
  *高频错误*

  ✗ 异分母比较时，只看分子大小
  → ✓ 分母不同意味着单位大小不同，必须先考虑单位。

  ✗ 觉得分母越大，分数一定越大
  → ✓ 分母越大，每一份越小；还要看分子拿了几份。
]

#mastery[
  *基础*

  + 比较：$3/4$ 和 $5/8$。
  + 比较：$2/5$ 和 $2/7$。
  + 比较：$7/10$ 和 $2/3$。
  + 判断对错并改正："分母越大，分数越大。"
  + 把 $5/6$、$3/4$、$7/12$ 从小到大排列。

  *应用*

  + 小华走了全程的 $3/5$，小明走了全程的 $7/10$，谁走得更多？
  + 两瓶果汁分别喝掉了 $5/6$ 和 $4/5$，哪瓶剩得更少？

  *挑战 ☞ 选做*

  + 为什么“通分”其实不是换了数，而是换了比较尺子？
  + 不把答案化成小数，说明为什么 $11/12$ 比 $5/6$ 大。

  #answer-cut[
  + $3/4 = 6/8$，所以 $3/4 > 5/8$（通分法：统一为 8 分之几）。
  + 同分子时分母小的更大，所以 $2/5 > 2/7$（同分子比较法）。
  + $7/10 = 21/30$，$2/3 = 20/30$，所以 $7/10 > 2/3$（通分法：统一为 30 分之几）。
  + 错；分母越大表示每一份越小，不能只看分母不看分子。例如 $1/3 > 1/5$（同分子比较法：分母大 → 每份小）。
  + 通分到 12：$5/6 = 10/12$，$3/4 = 9/12$，$7/12 = 7/12$。从小到大：$7/12 < 3/4 < 5/6$（通分法）。
  + 小明走得更多。步骤：$3/5 = 6/10$，$7/10 = 7/10$，$7/10 > 6/10$（通分法）。
  + 剩得少就是喝得多。$5/6 = 25/30$，$4/5 = 24/30$，$5/6 > 4/5$，所以第一瓶喝掉更多、剩得更少（通分法比较）。
  + 因为原来的量没变，只是把每个单位切得更细，好让两个分数都用同一种单位来表示。通分 = 换同一把尺子（统一单位原则）。
  + $5/6 = 10/12$，而 $11/12 > 10/12$，因为同分母下分子大的更大（通分法 + 同分母比较）。
  ]
]
