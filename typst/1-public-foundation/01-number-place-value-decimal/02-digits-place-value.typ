#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall
#import "../../lib/diagram-packages.typ": cetz

=== 数字符号与位值 <tool:pf01-digits-place-value>

#vocab[数字 digit][数 number][位值 place value]

#crisis[
  你会写 2，也会写 20，还会写 200。

  可这三个数里都看得见同一个“2”，为什么大小却差得这么多？

  *问题不在数字长得像不像，而在它站在什么位置。*
]

#history-note[
  十进位值记数法之所以伟大，不是因为发明了很多新符号，而是因为只用 0 到 9 十个数字，就能靠位置表示任意大的数。
]

#discovery[
  想象把铅笔按捆来放：

  - 散着的一支一支放，叫“几个一”
  - 10 支捆成一捆，叫“几个十”
  - 10 捆再合成一大组，叫“几个百”

  于是 243 不是把 2、4、3 并排写在一起而已，它表示：

  - 2 个百
  - 4 个十
  - 3 个一

  同一个数字 2，写在百位表示 200；写在十位表示 20；写在个位才表示 2。

  #figure(
    cetz.canvas(length: 0.35cm, {
      import cetz.draw: *

      // --- 散铅笔 (个位) ---
      let pencil(x, y) = {
        line((x, y), (x, y + 2.2), stroke: 0.8pt + rgb("#4a90d9"))
        circle((x, y + 2.4), radius: 0.15, fill: rgb("#f5a623"), stroke: 0.5pt)
      }
      for i in range(3) { pencil(i * 0.8, 0) }
      content((1.2, -1), [3 个一], anchor: "north")

      // --- 一捆 (十位) ---
      let bundle-x = 6
      rect((bundle-x - 0.3, -0.2), (bundle-x + 3.5, 2.8), stroke: (dash: "dashed", paint: rgb("#7b7b7b"), thickness: 0.5pt), radius: 3pt)
      for i in range(4) {
        for j in range(0, 10) {
          line((bundle-x + i * 0.8, 0), (bundle-x + i * 0.8, 2.2), stroke: 0.8pt + rgb("#4a90d9"))
          circle((bundle-x + i * 0.8, 2.4), radius: 0.15, fill: rgb("#f5a623"), stroke: 0.5pt)
        }
      }
      // 只画 4 支代表 "4 个十"
      content((bundle-x + 1.6, -1), [4 捆 = 4 个十], anchor: "north")

      // --- 大组 (百位) ---
      let big-x = 14
      rect((big-x - 0.3, -0.5), (big-x + 5.9, 3.2), stroke: (paint: rgb("#7b7b7b"), thickness: 0.8pt), radius: 3pt)
      rect((big-x - 0.1, -0.2), (big-x + 3.5, 2.8), stroke: (dash: "dashed", paint: rgb("#bbb"), thickness: 0.5pt), radius: 3pt)
      rect((big-x + 2.3, -0.2), (big-x + 5.7, 2.8), stroke: (dash: "dashed", paint: rgb("#bbb"), thickness: 0.5pt), radius: 3pt)
      content((big-x + 2.8, 1.2), [10 捆], anchor: "center")
      content((big-x + 2.8, -1), [×2 大组 = 2 个百], anchor: "north")

      // --- 等号与总数 ---
      content((22, 1.2), $=$, anchor: "center")
      content((24, 1.2), [*243*], anchor: "center")
    }),
    caption: [243 = 2 个百 + 4 个十 + 3 个一],
  )
]

#side-hack[
  比较两个整数时，先看最高位。位数更多的数通常更大；位数相同时，再从左往右逐位比较。
]

#tryit[
  先自己试试：

  + 507 里的 5、0、7 分别表示什么？
  + 为什么 45 和 405 不能只看“都有 4 和 5”就说差不多？
  + 7003 中间两个 0 有什么作用？
]

#blueprint[
  - *数字* 是 0 到 9 这十个符号。
  - *数* 是用这些数字按一定位置写出来的数量表达。
  - *位值* 指数字因为所在位置不同而代表不同大小：个位、十位、百位、千位……
  - 0 除了表示“没有”，还常常负责*占位*，帮助我们看清别的数字在哪一位上。
]

#pitfall[
  *高频错误*

  ✗ 说“百位上的 3 的值是 3”
  → ✓ 百位上的 3 表示 3 个百，也就是 300。

  ✗ 觉得 7003 中间的 0 没用，可以删成 73
  → ✓ 删掉 0 就破坏了位置：7003 是 7 个千和 3 个一，73 是 7 个十和 3 个一，完全不是同一个数。
]

#mastery[
  *基础*

  + 写出 604 中每个数字所在的数位和它表示的值。
  + 把“3 个百、5 个十、8 个一”写成一个数。
  + 比较大小：560 和 506。

  *应用*

  + 某商店库存写成 402 箱。为什么这里的 0 不能省略？
  + 一个数的千位是 8，十位是 4，其余各位是 0。这个数是多少？它读起来为什么要带“零”？

  *挑战 ☞ 选做*

  + 用数字 4、0、9 组成最大的三位数和最小的三位数，并解释为什么最小的不能把 0 放在最高位。
  + 为什么“数位”其实是在记录“有几个某单位”？请用 3206 举例说明。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + 6 在百位上，表示 600；0 在十位上，表示这一位没有；4 在个位上，表示 4。
  + 358。
  + $560 > 506$，因为百位同为 5，十位上 6 大于 0。
  + 因为 0 在提醒我们“十位上没有箱子”，这样 4 仍在百位上、2 仍在个位上。
  + 8040；因为百位和个位都没有，要用“零”把缺少的位交代清楚。
  + 最大是 940，最小是 409；0 不能放最高位，否则就不再是三位数。
  + 因为 3206 表示 3 个千、2 个百、0 个十、6 个一，本质上是把数量按不同单位来记录。
]
