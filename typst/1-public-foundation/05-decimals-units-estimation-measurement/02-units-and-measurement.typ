#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall
#import "../../lib/diagram-packages.typ": cetz

=== 单位与测量：数值必须带尺子 <tool:pf05-units-measurement>

#vocab[单位 unit][测量 measurement][换算 conversion]

#crisis[
  甲说桌子长 120，乙说桌子长 1.2。谁对？

  如果一个人说的是厘米，另一个人说的是米，两人可能都没错；若不知道单位，数字就失去意义。

  *测量结果从来不是只有一个数，它一定带着一把尺子。*
]

#history-note[
  统一单位是数学和现实世界连接的重要一步。没有单位，数字没法比较，也没法安全地加减。
]

#discovery[
  测量一段长度时，我们其实在问：它里面有多少个所选单位？

  - 用米量，可能得到 1.2 米
  - 用厘米量，可能得到 120 厘米

  数值变了，是因为尺子变了；量本身没有变。

  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let green = rgb("#4CAF50")

      // A segment measured in meters
      line((0, 3), (12, 3), stroke: 2pt + blue)
      circle((0, 3), radius: 0.2, fill: blue, stroke: 0.8pt + blue)
      circle((12, 3), radius: 0.2, fill: blue, stroke: 0.8pt + blue)
      content((6, 4), text(fill: blue, weight: "bold", size: 10pt)[1.2 米], anchor: "south")

      // Same segment measured in centimeters
      line((0, 0), (12, 0), stroke: 2pt + green)
      circle((0, 0), radius: 0.2, fill: green, stroke: 0.8pt + green)
      circle((12, 0), radius: 0.2, fill: green, stroke: 0.8pt + green)
      content((6, -1), text(fill: green, weight: "bold", size: 10pt)[120 厘米], anchor: "north")

      // Equals sign
      content((14, 1.5), $=$, anchor: "center")
      content((17, 1.5), text(size: 8pt)[同一段], anchor: "center")
    }),
    caption: [同一段长度：用米量得 1.2，用厘米量得 120],
  )



  所以换单位时要守住一件事：*同一个量不变，只是单位换了。*
]

#side-hack[
  看到单位题，先圈单位；比较或相加前，先问一句：这些量已经在同一种单位里了吗？
]

#tryit[
  先自己试试：

  + 把 2.3 米改写成厘米。
  + 把 350 厘米改写成米。
]

#blueprint[
  - *测量* 是用某个单位去数一个量里有多少个这样的单位。
  - 测量结果必须写成“数值 + 单位”。
  -
  #figure(
    cetz.canvas(length: 0.38cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")

      // Unit conversion staircase
      let units = ([千米], [米], [分米], [厘米], [毫米])
      let multipliers = ([$times 1000$], [$times 10$], [$times 10$], [$times 10$])

      for (i, u) in units.enumerate() {
        let x = i * 5
        let y = (4 - i) * 2
        rect((x, y), (x + 4, y + 2), fill: rgb("#E3F2FD"), stroke: 0.8pt + blue, radius: 2pt)
        content((x + 2, y + 1), text(weight: "bold", size: 8pt, u))

        if i < 4 {
          // Arrow to next step
          let nx = (i + 1) * 5
          let ny = (3 - i) * 2 + 1
          line((x + 4.2, y + 0.5), (nx - 0.2, ny + 0.5), stroke: 0.8pt + luma(120), mark: (end: ">"))
          content(((x + 4.2 + nx - 0.2) / 2, (y + 0.5 + ny + 0.5) / 2 + 0.8),
                  text(size: 6pt, fill: luma(100), multipliers.at(i)), anchor: "south")
        }
      }
    }),
    caption: [长度单位阶梯：从千米到毫米，每步乘以 10（或 1000）],
  )

  - *换单位* 时，量不变，只是单位变化；比较或相加前，要先统一单位。
]

#pitfall[
  *高频错误*

  ✗ 把单位只当成题目装饰，比较大小时直接比数字
  → ✓ 单位不同，数字不能直接比较；先换到同一单位。

  ✗ 换单位时方向搞反，把米换厘米反而除以 100
  → ✓ 米是更大的单位，换成厘米会得到更多个单位，所以数值应变大。
]

#mastery[
  *基础*

  + 把 1.8 米写成厘米。
  + 把 2500 克写成千克。
  + 说明为什么 3 米和 300 厘米是同一个量。
  + 判断对错并改正："5.2 千米 = 520 米。"
  + 把 3 米 45 厘米写成用米做单位的小数。

  *应用*

  + 一条绳子长 2.4 米，另一条长 180 厘米，哪条更长？
  + 4.8 米加 35 厘米，应怎样先处理单位？

  *挑战 ☞ 选做*

  + 为什么“换单位”很像分数比较里的“通分”？
  + 一个同学写“书桌高 75 米”，你会先从单位还是从计算下手检查？为什么？

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + $1.8 "米" = 180 "厘米"$（$1 "米" = 100 "厘米"$，$1.8 times 100 = 180$）（单位换算）。
  + $2500 "克" = 2.5 "千克"$（$1 "千克" = 1000 "克"$，$2500 div 1000 = 2.5$）（单位换算）。
  + 因为 $1 "米" = 100 "厘米"$，所以 3 米 = 300 厘米，量本身没变，只是尺子不同（换单位不改变量）。
  + 错；$5.2 "千米" = 5200 "米"$（$1 "千米" = 1000 "米"$，$5.2 times 1000 = 5200$）（单位换算方向）。
  + $3 "米" 45 "厘米" = 3 + 45/100 = 3.45 "米"$（厘米 → 米：除以 100）。
  + 先统一单位：$180 "厘米" = 1.8 "米"$，$2.4 "米" > 1.8 "米"$，所以第一条绳子更长（统一单位后比较）。
  + 先统一单位再相加：$35 "厘米" = 0.35 "米"$，$4.8 + 0.35 = 5.15 "米"$（统一单位后运算）。
  + 因为两者都在先统一比较标准：分数统一的是份数单位（通分），测量统一的是长度、质量等实际单位（换算）。本质相同：不同"尺子"不能直接运算（统一单位原则）。
  + 先检查单位。75 米约等于 25 层楼高，对书桌明显不合理。实际书桌高度大约 0.75 米或 75 厘米，很可能是单位写错了（合理性检查：先看单位）。
]
