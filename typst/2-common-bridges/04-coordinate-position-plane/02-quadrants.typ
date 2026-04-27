#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut, self-check
#import "../../lib/diagram-packages.typ": cetz

=== 四象限：平面被两条轴分成的四块 <tool:cb04-quadrants>

#vocab[象限 quadrant][第一象限][第二象限][第三象限][第四象限]

#crisis[
  想象你在玩一个寻宝游戏：对讲机里报来坐标 $(-3, 5)$，你还没画图，就想知道宝藏在地图的哪一块区域。光靠画图太慢了——你希望*只看符号的正负*就能立刻报出方位。

  *我们要给平面的四块区域命名，并把符号与区域一一对齐。*
]

#discovery[
  两条坐标轴把平面分成四块，按*逆时针方向*从右上开始依次编号为：

  #table(
    columns: (auto, auto, auto, auto),
    inset: 6pt,
    stroke: 0.4pt,
    [*区域*], [*位置*], [*$x$ 的符号*], [*$y$ 的符号*],
    [第一象限], [右上], [$x > 0$], [$y > 0$],
    [第二象限], [左上], [$x < 0$], [$y > 0$],
    [第三象限], [左下], [$x < 0$], [$y < 0$],
    [第四象限], [右下], [$x > 0$], [$y < 0$],
  )

  两条坐标轴本身*不属于任何象限*；原点也不属于任何象限。

  只要拿到 $(x, y)$，先读符号——两正在第一，左上两异号在第二，两负在第三，右下再一次异号在第四——就能立刻说出位置。

  #figure(
    cetz.canvas(length: 0.5cm, {
      import cetz.draw: *
      let s = 3.5
      // Quadrant fills
      rect((0, 0), (s, s), fill: rgb("#E3F2FD"), stroke: none)
      rect((-s, 0), (0, s), fill: rgb("#E8F5E9"), stroke: none)
      rect((-s, -s), (0, 0), fill: rgb("#FFF8E1"), stroke: none)
      rect((0, -s), (s, 0), fill: rgb("#FFF3E0"), stroke: none)
      // Axes
      line((-s - 0.5, 0), (s + 1, 0), stroke: 1.5pt + rgb("#333"), mark: (end: ">"))
      line((0, -s - 0.5), (0, s + 1), stroke: 1.5pt + rgb("#333"), mark: (end: ">"))
      content((s + 1.5, 0), text(size: 8pt, weight: "bold")[_x_], anchor: "west")
      content((0, s + 1.5), text(size: 8pt, weight: "bold")[_y_], anchor: "south")
      // Quadrant labels with sign patterns
      content((s / 2, s / 2 + 0.8), text(size: 10pt, weight: "bold", fill: rgb("#BBB"))[Ⅰ])
      content((s / 2, s / 2 - 0.5), text(size: 7pt, fill: rgb("#888"))[$( +, + )$])
      content((-s / 2, s / 2 + 0.8), text(size: 10pt, weight: "bold", fill: rgb("#BBB"))[Ⅱ])
      content((-s / 2, s / 2 - 0.5), text(size: 7pt, fill: rgb("#888"))[$( -, + )$])
      content((-s / 2, -s / 2 + 0.8), text(size: 10pt, weight: "bold", fill: rgb("#BBB"))[Ⅲ])
      content((-s / 2, -s / 2 - 0.5), text(size: 7pt, fill: rgb("#888"))[$( -, - )$])
      content((s / 2, -s / 2 + 0.8), text(size: 10pt, weight: "bold", fill: rgb("#BBB"))[Ⅳ])
      content((s / 2, -s / 2 - 0.5), text(size: 7pt, fill: rgb("#888"))[$( +, - )$])
      // Origin
      circle((0, 0), radius: 0.2, fill: rgb("#333"), stroke: 1pt + rgb("#333"))
      content((-0.5, -0.5), text(size: 7pt, weight: "bold")[O])
    }),
    caption: [四象限与符号规律：逆时针从右上编号],
  )
]

#side-hack[
  口诀“$++$ 一、$-+$ 二、$--$ 三、$+-$ 四”；按逆时针记，对比着写。
]

#tryit[
  + 判断下列点各在哪个象限：$(4, 3)$、$(-2, 5)$、$(-1, -6)$、$(7, -8)$。
  + $(0, -3)$ 在第几象限？若不在任何象限，请说明它在哪条轴上。
]

#history-note[
  象限（quadrant）一词来自拉丁语 quadrans，意为"四分之一"。笛卡儿（Descartes）$1637$ 年建立坐标系后，后续的数学家们——特别是莱布尼茨（Leibniz）和欧拉（Euler）在 $18$ 世纪的解析几何著作中——逐渐统一了"从右上角开始、逆时针编号"这一惯例。一旦约定下来，说"第二象限"，大家立刻知道是 $x < 0, y > 0$ 的那一块。
]

#blueprint[
  - *四象限*按逆时针从右上编号 1–4；
    - 第一象限：$x > 0$ 且 $y > 0$；
    - 第二象限：$x < 0$ 且 $y > 0$；
    - 第三象限：$x < 0$ 且 $y < 0$；
    - 第四象限：$x > 0$ 且 $y < 0$。
  - *两轴与原点*：坐标轴上的点（含原点）不归任何象限。
  - *两种常见对称*：
    - 关于 $x$ 轴对称：$(x, y) -> (x, -y)$；
    - 关于 $y$ 轴对称：$(x, y) -> (-x, y)$。

  #figure(
    cetz.canvas(length: 0.5cm, {
      import cetz.draw: *
      let s = 2.0
      // Axes
      line((-4 * s - 0.5, 0), (4 * s + 1, 0), stroke: 1.2pt + rgb("#333"), mark: (end: ">"))
      line((0, -4 * s - 0.5), (0, 4 * s + 1), stroke: 1.2pt + rgb("#333"), mark: (end: ">"))
      // Original point A(3,2)
      let ax = 3 * s
      let ay = 2 * s
      circle((ax, ay), radius: 0.25, fill: rgb("#1565C0"), stroke: 1pt + rgb("#0D47A1"))
      content((ax + 0.5, ay + 0.5), text(size: 7pt, weight: "bold", fill: rgb("#1565C0"))[$A(3, 2)$], anchor: "south-west")
      // x-axis reflection: A'(3, -2)
      circle((ax, -ay), radius: 0.25, fill: rgb("#C62828"), stroke: 1pt + rgb("#B71C1C"))
      content((ax + 0.5, -ay - 0.5), text(size: 7pt, weight: "bold", fill: rgb("#C62828"))[$A'(3, -2)$], anchor: "north-west")
      // y-axis reflection: A''(-3, 2)
      circle((-ax, ay), radius: 0.25, fill: rgb("#2E7D32"), stroke: 1pt + rgb("#1B5E20"))
      content((-ax - 0.5, ay + 0.5), text(size: 7pt, weight: "bold", fill: rgb("#2E7D32"))[$A''(-3, 2)$], anchor: "south-east")
      // Dashed symmetry lines
      line((ax, ay), (ax, -ay), stroke: (dash: "dashed", paint: rgb("#C62828"), thickness: 0.6pt))
      line((ax, ay), (-ax, ay), stroke: (dash: "dashed", paint: rgb("#2E7D32"), thickness: 0.6pt))
      // Origin
      circle((0, 0), radius: 0.2, fill: rgb("#333"), stroke: 1pt + rgb("#333"))
      content((-0.5, -0.5), text(size: 7pt, weight: "bold")[O])
    }),
    caption: [$A(3, 2)$ 关于 $x$ 轴对称得 $A'(3, -2)$，关于 $y$ 轴对称得 $A''(-3, 2)$],
  )
]

#self-check[
  点 $(-2, 5)$ 在哪个象限？把判断口诀用你自己的话说一遍——横正纵正、横负纵正、……
]


#pitfall[
  *高频错误*

  ✗ 把 $(0, 5)$ 说成“第二象限”
  → ✓ 它在 $y$ 轴上，不属于任何象限。

  ✗ 顺时针编号
  → ✓ 四象限是*逆时针*编号，从右上开始。

  ✗ 看到负号就慌，直接说“第三象限”
  → ✓ 还得看另一个坐标的符号；两个负才是第三。
]

#mastery[
  *基础*

  + 填空：点在第三象限 $<=>$ 横纵坐标都是 $"(\_\_)"$ 数。
  + 写出第二象限中横坐标是 $-3$ 的一个点。
  + 判断 $(0, 0)$ 所在象限。
  + 点 $(-5, 3)$ 在第几象限？用符号规律解释。
  + 写出一个在第四象限、横坐标是 $2$ 的点。

  *应用*

  + 点 $A(-a, b)$ 在第二象限，问 $a$、$b$ 各为正还是负？
  + 点 $B(m, m - 3)$ 在第四象限，$m$ 的取值范围是什么？
  + 将 $(5, -2)$ 依次关于 $x$ 轴和 $y$ 轴作对称，最终得到什么点？在哪个象限？

  *挑战 ☞ 选做*

  + 若 $(x, y)$ 在第二象限，$(-x, -y)$ 在第几象限？
  + 平面上有无数个整点坐标落在第一象限。请给出横纵坐标之和等于 $5$ 的所有第一象限整点。
  + *[解释]*：为什么坐标轴上的点（即 $x = 0$ 或 $y = 0$ 的点）不属于任何象限？请用象限的定义（横纵坐标都不为零、且各自有特定符号）来说明这一约定的必要性——如果硬要把它们归入某个象限，会引发什么矛盾？

  #answer-cut[
  + 负（第三象限符号规律：$(-, -)$）。
  + 例如 $(-3, 2)$（第二象限要求 $x < 0$ 且 $y > 0$）。
  + 不在任何象限（原点 $(0,0)$ 是两轴交点，不属于任何象限）。
  + 第二象限（$x = -5 < 0$，$y = 3 > 0$，符合 $(-, +)$ 规律）。
  + 例如 $(2, -1)$（第四象限要求 $x > 0$、$y < 0$）。
  + $a > 0$，$b > 0$。分析：第二象限要求 $-a < 0$，即 $a > 0$；$b > 0$ 直接满足（象限符号规律）。
  + $0 < m < 3$（第四象限需 $m > 0$ 且 $m - 3 < 0$，解不等式得 $0 < m < 3$）。
  + 先关于 $x$ 轴：$(5, 2)$（纵坐标变号）；再关于 $y$ 轴：$(-5, 2)$（横坐标变号）。在第二象限（$x < 0$，$y > 0$）。
  + 第四象限。$(x, y)$ 在第二象限意味着 $x < 0, y > 0$，取反后 $-x > 0, -y < 0$，符合第四象限 $(+, -)$。
  + $(1,4)$、$(2,3)$、$(3,2)$、$(4,1)$（第一象限要求 $x > 0, y > 0$ 且 $x + y = 5$，枚举正整数解）。
  + 象限按符号定义：第一象限 $(+, +)$、第二 $(-, +)$、第三 $(-, -)$、第四 $(+, -)$。坐标轴上的点至少有一个坐标 $= 0$，$0$ 既非正也非负，无法满足任何一个象限的"两个坐标都有明确符号"的要求。如果硬把 $(3, 0)$ 归入第一象限，那 $(0, -2)$ 该归第三还是第四？$(0, 0)$ 又该归哪个？会产生归属冲突。所以约定：象限定义保留给"严格不在轴上"的点，使分类无歧义。
  ]
]

#side-hack[
  *☞ 这会在后面哪里再出现*

  - 函数分支讨论函数图象的单调性、极值位置时会频繁说“该段在第二象限”。
  - 几何分支在讨论点的对称、旋转时直接引用象限编号。
  - 数据分支在残差图、散点图的象限分析里也会用到四象限语言。
]
