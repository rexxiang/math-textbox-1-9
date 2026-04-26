#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, lab
#import "../../lib/diagram-packages.typ": cetz

=== 估算与合理性检查 <tool:pf05-estimation-reasonableness>

#vocab[估算 estimation][近似 approximate value][合理性 reasonableness]

#crisis[
  计算器显示：$19.8 + 30.4 = 5.02$。

  如果只盯着机器，很可能就信了；可只要心里先估一下，就会发现 20 加 30 怎么也不可能只有 5。

  *数学不只会算，还要会在结果出现时第一眼判断：像不像真的。*
]

#history-note[
  估算不是“随便猜”。它是先抓数量级、基准值和单位，帮助我们在精算前后都保持方向感。
]

#discovery[
  常见的估算办法有两种：

  - 抓整：$19.8 approx 20$，$30.4 approx 30$，所以和大约是 50
  - 抓熟悉基准：$198 times 6$ 接近 $200 times 6 = 1200$


  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let green = rgb("#4CAF50")
      let orange = rgb("#FF9800")

      // Number line
      line((-1, 0), (17, 0), stroke: 1.2pt + luma(80), mark: (end: ">"))

      // Major ticks
      for (x, lbl) in ((0, [0]), (5, [10]), (10, [20]), (15, [30])) {
        line((x, -0.5), (x, 0.5), stroke: 1pt + luma(60))
        content((x, -1.4), text(size: 9pt, lbl), anchor: "north")
      }

      // Mark 19.8 ≈ 20
      let px1 = 9.9
      circle((px1, 0), radius: 0.3, fill: orange, stroke: 0.8pt + orange)
      content((px1, 1.5), text(fill: orange, size: 8pt)[19.8], anchor: "south")
      line((px1, 0.5), (10, 0.5), stroke: (dash: "dashed", paint: green, thickness: 0.8pt), mark: (end: ">"))
      content((10, 2), text(fill: green, size: 7pt)[$approx 20$], anchor: "south")

      // Mark 30.4 ≈ 30
      let px2 = 15.2
      circle((px2, 0), radius: 0.3, fill: orange, stroke: 0.8pt + orange)
      content((px2, -2), text(fill: orange, size: 8pt)[30.4], anchor: "north")
      line((px2, -0.5), (15, -0.5), stroke: (dash: "dashed", paint: green, thickness: 0.8pt), mark: (end: ">"))
      content((15, -2.5), text(fill: green, size: 7pt)[$approx 30$], anchor: "north")
    }),
    caption: [抓整估算：19.8 ≈ 20，30.4 ≈ 30，和大约是 50],
  )

  估算后的结果不用完全一样，但应该靠近精确答案。

  估算还会帮我们做合理性检查：

  - 单位有没有对上
  - 大小是不是在合理范围
  - 结果是应该比原数大还是小
]

#lab[
  *估算大挑战：先猜再量*

  *材料*：卷尺或直尺、一些日常物品（课本、铅笔、水杯、课桌、门框等）。

  *步骤*：

  + 准备一张表格，列标题为：物品名称、你的估算值、实测值、误差（$= |$估算 $-$ 实测$|$）。
  + 选 $5$~$8$ 样身边物品，*先不量*，凭感觉估算它的长度（或高度、宽度），写进"估算值"列。
  + 然后用尺子逐一测量，填入"实测值"列，算出误差。
  + 统计：哪些物品你估得准（误差小），哪些估得远？

  *思考*：
  - 你估算时用了什么"锚点"？比如"一根铅笔大约 $18$ cm，课本比铅笔长一点"——这就是用熟悉基准做估算。
  - 做完一轮后，再估一次新物品，准确度有没有提高？
  - 估算和精确计算分别在什么场合更有用？
]

#side-hack[
  算前先估，算后再对照。特别是小数点、进位、单位换算这些地方，估算能很快抓住大错。
]

#tryit[
  先自己试试：

  + 估算 $49 + 203$。
  + 估算 $198 times 6$。
]

#blueprint[
  - *估算* 是用接近的整值或熟悉基准，快速判断结果大约落在哪个范围。
  - *合理性检查* 常看三件事：单位对不对、数量级对不对、结果方向对不对。
  - 估算不是代替精算，而是给精算提供前后两道护栏。

  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *

      let red = rgb("#F44336")
      let green = rgb("#4CAF50")
      let blue = rgb("#2196F3")

      // Three check boxes
      let checks = (
        (0, [单位对不对？], [✓]),
        (7, [数量级对不对？], [✓]),
        (14, [方向对不对？], [✓]),
      )

      for (x, label, mark) in checks {
        rect((x, 0), (x + 6, 3), fill: rgb("#E8F5E9"), stroke: 0.8pt + green, radius: 3pt)
        content((x + 3, 2), text(weight: "bold", size: 8pt, label))
        content((x + 3, 0.8), text(fill: green, size: 12pt, mark))
      }

      // Title
      content((10, 4), text(weight: "bold", size: 9pt)[合理性三步检查], anchor: "south")
    }),
    caption: [合理性检查三步：单位、数量级、方向],
  )

]

#pitfall[
  *高频错误*

  ✗ 把估算当成乱猜，不说明依据
  → ✓ 好的估算要说清你把哪些数看成了什么近似值。

  ✗ 只检查数字，不检查单位和情境
  → ✓ 有时数字看起来顺眼，但单位完全不合理，比如“桌子长 6 米”。
]

#mastery[
  *基础*

  + 估算：$19.8 + 30.4$。
  + 估算：$198 times 6$。
  + 判断 4.98 是否可能是 $2.5 + 2.4$ 的结果。
  + 不用精确计算，判断 $0.49 + 0.52$ 的结果是否大于 1。
  + 判断对错并改正："估算就是随便猜一个差不多的数。"

  *应用*

  + 一辆车每小时大约行 80 千米，3 小时大约行多少千米？
  + 某同学测得铅笔长 0.002 米。这个结果可能对吗？你会怎样判断？

  *挑战 ☞ 选做*

  + 为什么在单位换算题里，估算特别重要？
  + 解释：精确计算可能出错，但一个好的估算能帮你迅速发现“小数点放错了一位”。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + $19.8 approx 20$，$30.4 approx 30$，和大约 50（抓整估算法）。
  + $198 approx 200$，$200 times 6 = 1200$，所以大约 1200（抓整估算法）。
  + 不可能；$2.5 + 2.4 = 4.9$，而 4.98 不等于 4.9。或者从估算看，两个都接近 2.5，和应接近 5，4.98 接近但不等于精确值（合理性检查）。
  + 是的，$0.49 approx 0.5$，$0.52 approx 0.5$，$0.5 + 0.5 = 1$。而 $0.49 + 0.52 = 1.01 > 1$（抓整估算法）。
  + 错；好的估算要说清把哪些数看成了什么近似值，以及为什么这样近似是合理的。估算是有依据的快速判断，不是没有根据的猜测（估算 ≠ 猜测）。
  + 大约 $80 times 3 = 240$ 千米（抓整估算法）。
  + 可能偏短。$0.002 "米" = 2 "毫米"$，这对铅笔来说太短了，正常铅笔约 18 厘米 = 0.18 米。很可能小数点放错了位置（合理性检查：单位 + 数量级）。
  + 因为单位一变，数值常会乘或除很多倍。没有估算就容易把换算方向弄反（比如米换厘米时该乘 100 却除了 100）而不自知（估算在单位换算中的作用）。
  + 例如真实结果应接近 50，而你算出 5.02，就能立刻怀疑小数点错了一位。估算提供了一个"大约在哪里"的参照，精算结果偏离太远就说明某处出了错（估算 = 精算的护栏）。
]
