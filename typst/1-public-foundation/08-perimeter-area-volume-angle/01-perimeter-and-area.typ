#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall
#import "../../lib/diagram-packages.typ": cetz

=== 周长与面积：沿边界走一圈，用单位正方形铺满 <tool:pf07-perimeter-area>

#vocab[周长 perimeter][面积 area][单位正方形 unit square]

#crisis[
  老师让你围起学校一块小花坛，并且告诉你：围栏按米收费，草皮按平方米收费。

  你突然发现：同一块地，围它要的是“一圈有多长”，铺它要的是“里面能铺多少块草皮”——这两件事用的*不是同一种尺子*。

  *同样说“大小”，有两种完全不同的度量要分开谈。*
]

#history-note[
  古埃及尼罗河每年泛滥后，田界要重新划；测量员那时就发现：围田用的是“边长总和”，收粮却要按“地面铺多少方”。周长和面积在那时就已经分家。
]

#discovery[
  把一个边长 4 米、3 米的长方形花坛画在方格纸上，每个小方格代表 1 米 × 1 米。

  - 沿边界走一圈：$4 + 3 + 4 + 3 = 14$ 米。这就是*周长*。
  - 数数里面一共能铺多少块 1 米 × 1 米的小方格：$4 times 3 = 12$ 块。这就是*面积*。

  所以：

  - 周长量的是“边界有多长”，单位是长度（米、厘米……）。
  - 面积量的是“里面能铺多少个单位正方形”，单位是平方单位（平方米、平方厘米……）。

  对长方形而言，面积 $= "长" times "宽"$；这不是背来的口诀，而是“数几行几列的小方格”的自然结果。

  #figure(
    cetz.canvas(length: 0.65cm, {
      import cetz.draw: *

      let light-blue = rgb("#E3F2FD")
      let red   = rgb("#F44336")
      let blue  = rgb("#2196F3")

      // Grid cells with numbers
      for row in range(3) {
        for col in range(4) {
          let x = col * 2
          let y = row * 2
          rect((x, y), (x + 2, y + 2),
               fill: light-blue, stroke: 0.5pt + luma(180))
          let num = (2 - row) * 4 + col + 1
          content((x + 1, y + 1),
            text(fill: luma(170), size: 7pt, str(num)))
        }
      }

      // Thick red perimeter border
      rect((0, 0), (8, 6), stroke: 2.5pt + red)

      // Clockwise directional arrows just outside the border
      line((0.5, -0.5), (7.5, -0.5), stroke: 1.2pt + red,
           mark: (end: ">"))
      line((8.5, 0.5), (8.5, 5.5), stroke: 1.2pt + red,
           mark: (end: ">"))
      line((7.5, 6.5), (0.5, 6.5), stroke: 1.2pt + red,
           mark: (end: ">"))
      line((-0.5, 5.5), (-0.5, 0.5), stroke: 1.2pt + red,
           mark: (end: ">"))

      // Dimension labels
      content((4, -1.6), text(weight: "bold", size: 9pt)[4 米])
      content((-1.8, 3), text(weight: "bold", size: 9pt)[3 米])

      // Result labels on the right
      content((11, 4.5),
        text(fill: red, weight: "bold", size: 9pt)[周长 = 4+3+4+3 = 14 米],
        anchor: "west")
      content((11, 1.5),
        text(fill: blue, weight: "bold", size: 9pt)[面积 = 4×3 = 12 平方米],
        anchor: "west")
    }),
    caption: [同一块长方形：红色走一圈 = 周长，蓝色铺满 = 面积],
  )
]

#side-hack[
  一个口诀：*周长走一圈，面积铺满面*。数量级错了（米 vs 平方米）多半就是这两件事搞混了。
]

#tryit[
  先自己试试：

  + 一个长方形长 6 厘米、宽 2 厘米。它的周长和面积各是多少？说清楚单位。
  + 一个正方形边长 5 厘米。它的周长和面积各是多少？
  + 判断：两块地的周长一样，面积一定一样吗？（可以画两个周长都是 12 的长方形试试）
]

#blueprint[
  - *周长* $= $ 所有边的长度之和；单位是长度单位（米 / 厘米 / 毫米）。
  - *面积* $= $ 能铺满图形内部的单位正方形的个数；单位是平方单位。
  - 对长方形：周长 $= 2 times ("长" + "宽")$；面积 $= "长" times "宽"$。
  -
  #figure(
    cetz.canvas(length: 0.55cm, {
      import cetz.draw: *

      let green = rgb("#4CAF50")

      // Square with dimension labels
      rect((0, 0), (5, 5), fill: rgb("#C8E6C920"), stroke: 1.5pt + green)

      // Grid
      for i in range(1, 5) {
        line((i, 0), (i, 5), stroke: 0.3pt + luma(200))
        line((0, i), (5, i), stroke: 0.3pt + luma(200))
      }

      // Dimension labels
      content((2.5, -0.8), text(weight: "bold", size: 9pt)[5], anchor: "north")
      content((-0.8, 2.5), text(weight: "bold", size: 9pt)[5], anchor: "east")

      // Results
      content((2.5, 6.2), text(fill: green, size: 8pt)[周长 = $4 times 5 = 20$], anchor: "south")
      content((2.5, -2), text(fill: green, size: 8pt)[面积 = $5 times 5 = 25$], anchor: "north")
    }),
    caption: [正方形：边长 5，周长 20，面积 25],
  )

  - 对正方形：周长 $= 4 times "边长"$；面积 $= "边长" times "边长"$。
]

#pitfall[
  *高频错误*

  ✗ 周长的答案写成“平方米”
  → ✓ 周长是长度，单位不能带“平方”。

  ✗ 面积算成 $"长" + "宽"$
  → ✓ 面积是铺满，靠“行数 × 列数”，用乘法。

  ✗ 不同单位的长和宽直接相乘
  → ✓ 先统一单位。例如长 2 米、宽 50 厘米，要么都化成米再乘，要么都化成厘米再乘。
]

#mastery[
  *基础*

  + 一个长方形长 8 厘米、宽 5 厘米。求周长和面积。
  + 一个正方形边长 7 米。求周长和面积。
  + 一个长 1.2 米、宽 80 厘米的小地毯，面积是多少平方米？

  *应用*

  + 学校要围一个边长 10 米的正方形菜地，围栏每米 15 元。共要多少元？
  + 如果同一块菜地内部铺草，每平方米 8 元，又要多少元？
  + 一个“L”形区域由两个长方形拼成：一个 3 米 × 4 米，一个 2 米 × 5 米，拼接方式使它们只共用一条 2 米的边。估算它的面积。

  *挑战 ☞ 选做*

  + 周长相同的两个长方形，谁的面积更大：长 7、宽 5 的，还是长 10、宽 2 的？从“铺满”的角度解释。
  + 把一个长方形剪成两块再拼成一个不同形状的图形，周长和面积哪个会变？为什么？

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + 周长 $26$ 厘米，面积 $40$ 平方厘米。
  + 周长 $28$ 米，面积 $49$ 平方米。
  + 先统一单位：80 厘米 $= 0.8$ 米；面积 $= 1.2 times 0.8 = 0.96$ 平方米。
  + 周长 $= 40$ 米；费用 $= 40 times 15 = 600$ 元。
  + 面积 $= 10 times 10 = 100$ 平方米；费用 $= 100 times 8 = 800$ 元。
  + $3 times 4 + 2 times 5 = 22$ 平方米。
  + 长 7、宽 5 的面积 $= 35$；长 10、宽 2 的面积 $= 20$；前者更大，因为它更“方”，单位正方形铺得更满。
  + 只有周长可能变；面积不变，因为拼起来的总方格数不变。
]
