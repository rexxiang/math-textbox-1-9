#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref
#import "../../lib/diagram-packages.typ": cetz

=== 数轴向左延伸：负数登场 <tool:cb02-number-line-extends-left>

#vocab[数轴 number line][原点][正数][负数][符号 sign]

#crisis[
  温度 $-5 degree$C、电梯“$-1$ 楼”、账户欠款 $-120$ 元——这些说法每天都在用。

  在旧的算术里，“$3 - 5$”会让人说“不能减”。但生活里它分明存在。*我们需要把数轴向原点左边延伸，让这些“比零还小”的量有一个正式位置。*
]

#history-note[
  中国汉代《九章算术》就已经用“正”“负”区分账本上的借与还。欧洲直到 $17$ 世纪仍有人把负数叫做“荒谬之数”——那时大家还没看清它只是数轴的另一边。
]

#discovery[
  在数轴上任取一点作*原点* $O$，约定一个向右的正方向和一个单位长度。原点右边是*正数*，原点左边便是*负数*，它们都用同一把尺子。

  - $+3$（通常省略写成 $3$）表示从原点向右 $3$ 个单位。
  - $-3$ 表示从原点向左 $3$ 个单位。

  $0$ 既不是正数也不是负数，它正好落在原点。

  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *
      let ox = 8
      let s = 2.0
      // Vertical thermometer
      rect((ox - 1.2, -6 * s), (ox + 1.2, 6 * s),
           fill: rgb("#F5F5F5"), stroke: 1pt + rgb("#999"))
      // Temperature scale
      for i in range(-5, 6) {
        let ty = i * s
        line((ox - 1.2, ty), (ox + 1.2, ty), stroke: 0.4pt + rgb("#CCC"))
        let clr = if i < 0 { rgb("#1565C0") } else if i > 0 { rgb("#C62828") } else { rgb("#333") }
        content((ox + 1.8, ty), text(size: 6pt, fill: clr)[#str(i)°C], anchor: "west")
      }
      // Fill: below zero = blue, above zero = red
      rect((ox - 0.8, -5 * s), (ox + 0.8, 0), fill: rgb("#BBDEFB"), stroke: none)
      rect((ox - 0.8, 0), (ox + 0.8, 3 * s), fill: rgb("#FFCDD2"), stroke: none)
      // Mercury level at 3°C
      line((ox - 1.2, 3 * s), (ox + 1.2, 3 * s), stroke: 1.5pt + rgb("#C62828"))
      content((ox - 2.0, 3 * s), text(size: 7pt, weight: "bold", fill: rgb("#C62828"))[当前], anchor: "east")
      // Zero line
      line((ox - 1.5, 0), (ox + 1.5, 0), stroke: 1.2pt + rgb("#333"))
      content((ox - 2.0, 0), text(size: 7pt, weight: "bold")[0°C], anchor: "east")
    }),
    caption: [温度计就是竖着放的数轴：零上为正、零下为负],
  )

  把 $3 - 5$ 放回数轴：从 $3$ 向左走 $5$ 步，落在 $-2$。原来的减法并没有坏——只是落点可以在原点左边。

  于是*负号是方向，减号是操作*，它们长得像只是历史巧合。

  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *

      let ox = 13  // origin x position (0 maps here)
      let axis-y = 0
      let scale = 2.0

      // Background zones
      rect((ox + (-6) * scale, axis-y - 1.5), (ox + 0 * scale, axis-y + 1.5),
           fill: rgb("#FFEBEE"), stroke: none)
      rect((ox + 0 * scale, axis-y - 1.5), (ox + 6 * scale, axis-y + 1.5),
           fill: rgb("#E3F2FD"), stroke: none)

      // Zone labels
      content((ox + (-3) * scale, axis-y + 2.2),
        text(size: 8pt, weight: "bold", fill: rgb("#C62828"))[负数], anchor: "south")
      content((ox + 3 * scale, axis-y + 2.2),
        text(size: 8pt, weight: "bold", fill: rgb("#1565C0"))[正数], anchor: "south")

      // Main axis
      line((ox + (-6) * scale, axis-y), (ox + 6.3 * scale, axis-y),
           stroke: 1.5pt + rgb("#333333"), mark: (end: ">"))

      // Tick marks and labels
      for i in range(-5, 6) {
        let tx = ox + i * scale
        line((tx, axis-y - 0.4), (tx, axis-y + 0.4), stroke: 1pt + rgb("#555555"))
        let label-color = if i < 0 { rgb("#C62828") } else if i > 0 { rgb("#1565C0") } else { rgb("#333333") }
        content((tx, axis-y - 1.0), text(size: 7pt, fill: label-color)[#str(i)], anchor: "north")
      }

      // Origin mark
      circle((ox, axis-y), radius: 0.3, fill: rgb("#333333"), stroke: 1pt + rgb("#333333"))
      content((ox, axis-y + 0.9), text(size: 8pt, weight: "bold")[O], anchor: "south")

      // --- "3 - 5 = -2" hop animation ---
      let hop-h = 1.4
      let start-x = ox + 3 * scale

      // Start dot at 3
      circle((start-x, axis-y), radius: 0.25, fill: rgb("#1565C0"), stroke: 1pt + rgb("#0D47A1"))

      // Five leftward hop arrows
      for step in range(5) {
        let from-x = start-x - step * scale
        let to-x = from-x - scale
        let mid-x = (from-x + to-x) / 2
        let base-y = axis-y + hop-h + step * 0.5
        bezier((from-x, axis-y + 0.3), (to-x, axis-y + 0.3), (mid-x, base-y),
               stroke: 1.2pt + rgb("#E53935"), mark: (end: ">"))
        content((mid-x, base-y + 0.25),
          text(size: 6pt, fill: rgb("#C62828"))[−1], anchor: "south")
      }

      // End dot at -2
      let end-x = ox + (-2) * scale
      circle((end-x, axis-y), radius: 0.25, fill: rgb("#E53935"), stroke: 1pt + rgb("#B71C1C"))

      // Labels for start/end
      content((start-x, axis-y - 1.8),
        text(size: 7pt, weight: "bold", fill: rgb("#1565C0"))[起点 3], anchor: "north")
      content((end-x, axis-y - 1.8),
        text(size: 7pt, weight: "bold", fill: rgb("#E53935"))[终点 −2], anchor: "north")
    }),
    caption: [$3 - 5 = -2$：从 3 向左走 5 步，落在 $-2$],
  )
]

#side-hack[
  温度计是天然的数轴：$0 degree$C 就是原点，零上读正，零下读负。看到“$-5 degree$C 比 $-1 degree$C 更冷”时，立刻对应到“$-5$ 在数轴上更靠左”。
]

#tryit[
  + 在同一条数轴上标出：$-4$、$-1.5$、$0$、$2$、$7 / 2$。
  + 哪个大？请用“哪个更靠右”解释：$-2$ 与 $-5$；$-0.3$ 与 $-0.03$。
  + 写出三个位于 $-3$ 与 $0$ 之间的有理数。
]

#blueprint[
  - *数轴三要素*：原点 $O$、正方向（默认向右）、单位长度。
  - *正数 / 负数 / 零*：原点右边为正、左边为负、原点为 $0$；$0$ 不分正负。
  - *方向符号* $+ / -$：写在数的前面表示“向哪走”，不是减法；为了看得清，负数常写成 $(-3)$ 这种形式。
  - *比较大小*：数轴上“右大左小”。
  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *
      let ox = 10
      let s = 2.5
      // Axis
      line((ox - 4 * s, 0), (ox + 4.3 * s, 0), stroke: 1.5pt + rgb("#333"), mark: (end: ">"))
      // Ticks
      for i in range(-3, 4) {
        let tx = ox + i * s
        line((tx, -0.3), (tx, 0.3), stroke: 0.8pt + rgb("#555"))
        content((tx, -0.8), text(size: 7pt)[#str(i)], anchor: "north")
      }
      // Highlight: -2 < 1 because -2 is to the left
      let a = ox + (-2) * s
      let b = ox + 1 * s
      circle((a, 0), radius: 0.3, fill: rgb("#E53935"), stroke: 1pt + rgb("#B71C1C"))
      circle((b, 0), radius: 0.3, fill: rgb("#1565C0"), stroke: 1pt + rgb("#0D47A1"))
      content((a, 1.2), text(size: 8pt, weight: "bold", fill: rgb("#E53935"))[$-2$], anchor: "south")
      content((b, 1.2), text(size: 8pt, weight: "bold", fill: rgb("#1565C0"))[$1$], anchor: "south")
      // Arrow showing "left < right"
      line((a + 0.5, 1.8), (b - 0.5, 1.8), stroke: 1pt + rgb("#555"), mark: (end: ">"))
      content(((a + b) / 2, 2.5), text(size: 7pt, fill: rgb("#555"))[左小右大], anchor: "south")
    }),
    caption: [数轴上比较大小：$-2$ 在 $1$ 左边，所以 $-2 < 1$],
  )
]

#pitfall[
  *高频错误*

  ✗ 把 $-5$ 读成“减 $5$”
  → ✓ 它读作“负 $5$”；只有写在两个量之间的 $-$ 才是减号。

  ✗ 误以为“负数的绝对值大，它就大”
  → ✓ $-5 < -1$，因为 $-5$ 更靠左；负号前面的 $5$ 只是“离原点多远”。

  ✗ 把 $0$ 当成负数
  → ✓ $0$ 是分界点，它既不是正数也不是负数。
]

#mastery[
  *基础*

  + 把下列数按从小到大排：$2$、$-3$、$0$、$-1/2$、$1.5$。
  + $-7$ 与 $-9$ 哪个大？为什么？
  + 判断：$0 > -0.01$。

  *应用*

  + 一家店昨天赚 $250$ 元、今天亏 $180$ 元。用正负数表示两天的盈亏。
  + 早上气温 $-4 degree$C，到中午升高了 $9 degree$C，中午气温是多少？
  + 电梯从 $-2$ 层上到 $5$ 层，经过了多少层？

  *挑战 ☞ 选做*

  + 数轴上 $A$ 点对应 $-6$，$B$ 点对应 $2$。线段 $A B$ 的中点对应哪个数？
  + 给出数轴上两个不同的点 $P$、$Q$，$P$ 比 $Q$ 大。问：它们的位置关系、方向差是什么？

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + $-3 < -1/2 < 0 < 1.5 < 2$。
  + $-7 > -9$，因为 $-7$ 更靠右（离原点更近）。
  + 正确：$0$ 在 $-0.01$ 右边。
  + 昨天 $+250$，今天 $-180$。
  + $5 degree$C。
  + 经过 $7$ 层（$5 - (-2) = 7$）。
  + 中点对应 $-2$（$(-6 + 2) / 2 = -2$）。
  + $P$ 在 $Q$ 的右侧；$P - Q > 0$。
]

#side-hack[
  *☞ 这会在后面哪里再出现*

  - 代数分支第 1 章整式运算会允许系数为负；本节的“负号 = 方向”解释是每一次符号处理的直觉来源。
  - 几何分支建立坐标后，“$x$ 轴向左”“ $y$ 轴向下”都是本节负数方向的延伸。
  - 数据分支在箱线图、差值分析里也会出现负偏差。
]
