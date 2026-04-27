#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, lab, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 周长与面积：沿边界走一圈，用单位正方形铺满 <tool:pf07-perimeter-area>

#vocab[周长 perimeter][面积 area][单位正方形 unit square]

#crisis[
  老师让你围起学校一块小花坛，并且告诉你：围栏按米收费，草皮按平方米收费。

  你突然发现：同一块地，围它要的是“一圈有多长”，铺它要的是“里面能铺多少块草皮”——这两件事用的*不是同一种尺子*。

  *同样说“大小”，有两种完全不同的度量要分开谈。*
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

#lab[
  *形状探索：周长一样，面积一样吗？*

  *材料*：方格纸（$1$ cm 格）、铅笔、剪刀、细绳（约 $30$ cm）。

  *步骤*：

  + 剪一段 $24$ cm 长的细绳，把两端接起来形成一个绳圈。
  + 在方格纸上，用这个绳圈围出一个*长方形*（比如长 $8$ cm、宽 $4$ cm）。数方格算面积，记录。
  + 用同一根绳圈围出*另一种*长方形（比如长 $10$ cm、宽 $2$ cm）。再数方格算面积。
  + 再试一个正方形（$6 times 6$）。记录面积。
  + 把结果填入表格：周长（都是 $24$ cm）| 长 | 宽 | 面积。

  *观察*：
  - 周长都是 $24$ cm，面积相同吗？
  - 哪种形状的面积最大？你发现了什么规律？
  - 能不能用绳圈围一个非长方形（比如不规则图形）？它的面积可能比正方形还大吗？
]

#side-hack[
  一个口诀：*周长走一圈，面积铺满面*。数量级错了（米 vs 平方米）多半就是这两件事搞混了。
]

#tryit[
  先自己试试：

  + 一个长方形长 6 厘米、宽 2 厘米。它的周长和面积各是多少？说清楚单位。
  + 判断：两块地的周长一样，面积一定一样吗？（可以画两个周长都是 12 的长方形试试）
]

#history-note[
  古埃及尼罗河每年泛滥后，田界要重新划定。希腊历史学家希罗多德（Herodotus，约公元前 450 年）记载，法老会派出“绳索拉直者”（harpedonaptai）重新丈量土地。莱因德纸草书（约公元前 1650 年）中书记官阿赫莫斯（Ahmes）记录的习题表明，埃及人已经清楚地区分了“围一圈用多少绳子”（周长）和“地面能铺多少方”（面积）这两件事。
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
  + 判断对错并改正："周长和面积用的是同一种单位。"
  + 一个正方形边长 $a$ 厘米。它的周长比面积大还是小？（提示：试试 $a = 2$ 和 $a = 6$）

  *应用*

  + 学校要围一个边长 10 米的正方形菜地，围栏每米 15 元。共要多少元？
  + 如果同一块菜地内部铺草，每平方米 8 元，又要多少元？
  + 一个“L”形区域由两个长方形拼成：一个 3 米 × 4 米，一个 2 米 × 5 米，拼接方式使它们只共用一条 2 米的边。估算它的面积。

  *挑战 ☞ 选做*

  + 周长相同的两个长方形，谁的面积更大：长 7、宽 5 的，还是长 10、宽 2 的？从“铺满”的角度解释。
  + 把一个长方形剪成两块再拼成一个不同形状的图形，周长和面积哪个会变？为什么？

  #answer-cut[
  + 周长 $= 2 times (8 + 5) = 26$ 厘米，面积 $= 8 times 5 = 40$ 平方厘米。（周长公式 $2(l+w)$，面积公式 $l times w$）
  + 周长 $= 4 times 7 = 28$ 米，面积 $= 7 times 7 = 49$ 平方米。（正方形周长 $4a$，面积 $a^2$）
  + 先统一单位：80 厘米 $= 0.8$ 米；面积 $= 1.2 times 0.8 = 0.96$ 平方米。（不同单位不能直接相乘，必须先统一）
  + 错。周长用长度单位（米、厘米），面积用平方单位（平方米、平方厘米）。两种量的维度不同，单位也不同。（周长 = 长度，面积 = 面积）
  + 不能笼统比较，因为单位不同（厘米 vs 平方厘米）。但数值上：$a = 2$ 时周长 $8$、面积 $4$；$a = 6$ 时周长 $24$、面积 $36$——数值大小关系会随 $a$ 改变。（周长和面积是不同类型的量，不宜直接比较）
  + 第一步：周长 $= 4 times 10 = 40$ 米（正方形周长 $= 4 times$ 边长）。第二步：费用 $= 40 times 15 = 600$ 元。
  + 第一步：面积 $= 10 times 10 = 100$ 平方米（正方形面积 $=$ 边长²）。第二步：费用 $= 100 times 8 = 800$ 元。
  + 拆成两块长方形分别算：$3 times 4 = 12$，$2 times 5 = 10$；总面积 $= 12 + 10 = 22$ 平方米。（拼合图形的面积 = 各部分面积之和）
  + 先算周长：$2(7+5) = 24$，$2(10+2) = 24$，周长确实相同。再算面积：$7 times 5 = 35$，$10 times 2 = 20$。前者更大。原因：形状越“方”（长宽越接近），同周长下面积越大；这可以从“铺满方格”的角度理解——方的形状浪费的边界最少。
  + 面积不变（剪拼不改变总方格数），但周长可能变。原因：剪开后多出的“断面”如果被暴露为新边界，周长就增大了。
  ]
]
