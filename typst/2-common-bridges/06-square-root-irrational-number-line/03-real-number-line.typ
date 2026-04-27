#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 把无理数放回数轴：$RR$ 的完整性 <tool:cb06-real-number-line>

#vocab[实数 $RR$][连续 continuous][完备 complete]

#crisis[
  $sqrt(2)$ 不是有理数。那它到底在数轴上的什么位置？有理数已经在数轴上“稠密”铺了，按说不该再有空位——可 $sqrt(2)$ 确实需要一个精确位置。

  *这节要回答：$QQ$ 在数轴上其实留了无数个洞；把无理数填进去后，才得到完整的实数轴。*
]

#discovery[
  把 $sqrt(2)$ 放回数轴的办法之一（几何构造）：

  - 画一个边长为 $1$ 的正方形，它的对角线长度恰为 $sqrt(2)$（勾股定理的直接结论，几何分支会正式证明）。
  - 把这条长度用圆规“搬到”数轴原点右侧，搬到的端点对应的就是 $sqrt(2)$。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *
      let ox = 6
      let s = 4.0
      // Number line
      line((ox - 1 * s, 0), (ox + 3.3 * s, 0), stroke: 1.5pt + rgb("#333"), mark: (end: ">"))
      for i in range(0, 3) {
        let tx = ox + i * s
        line((tx, -0.3), (tx, 0.3), stroke: 0.8pt + rgb("#555"))
        content((tx, -0.8), text(size: 7pt)[#str(i)], anchor: "north")
      }
      // Unit square at origin
      rect((ox, 0), (ox + s, s), fill: rgb("#E3F2FD40"), stroke: 1pt + rgb("#1565C0"))
      content((ox + s / 2, s / 2), text(size: 8pt, fill: rgb("#1565C0"))[$1 times 1$])
      // Diagonal
      line((ox, 0), (ox + s, s), stroke: 1.2pt + rgb("#C62828"))
      content((ox + s / 2 - 0.3, s / 2 + 0.5), text(size: 7pt, fill: rgb("#C62828"))[$sqrt(2)$], anchor: "south-east")
      // Arc from (1,1) down to number line
      let diag-len = s * 1.414
      // Draw arc
      bezier((ox + s, s), (ox + diag-len, 0),
             (ox + s + 1.5, s * 0.3),
             stroke: (dash: "dashed", paint: rgb("#7B1FA2"), thickness: 1pt),
             mark: (end: ">"))
      // Mark sqrt(2) on number line
      circle((ox + diag-len, 0), radius: 0.3, fill: rgb("#7B1FA2"), stroke: 1pt + rgb("#4A148C"))
      content((ox + diag-len, -1.5), text(size: 8pt, weight: "bold", fill: rgb("#7B1FA2"))[$sqrt(2)$], anchor: "north")
      // Origin
      circle((ox, 0), radius: 0.2, fill: rgb("#333"), stroke: 1pt + rgb("#333"))
    }),
    caption: [几何构造：用单位正方形的对角线长度在数轴上定位 $sqrt(2)$],
  )
  - 同理，$-sqrt(2)$ 是该端点关于原点的对称点。

  把所有无理数都这样“搬”到数轴上以后，数轴真正成为*实数轴*，记作：

  $ RR = QQ union { "无理数" } $

  它的直觉性质是*完备* / *连续*：数轴上*每个点*都对应唯一一个实数，反过来每个实数也对应数轴上唯一一个点，*没有洞*。

  从数集的角度看：

  $ NN subset.eq ZZ subset.eq QQ subset.eq RR $

  每一步扩展都是为了回答旧数域里“没有解”的问题：负数、分数、根号。
]

#side-hack[
  判断一个实数是“有理”还是“无理”，只看它的十进制小数是否终止或循环。这是最容易操作的判据。
]

#tryit[
  + 估算 $sqrt(2)$ 到小数点后两位，并在数轴上标出大致位置。
  + 在区间 $(3, 4)$ 内分别写出一个有理数和一个无理数。
]

#history-note[
  $1872$ 年，德国数学家戴德金（Richard Dedekind）发表了《连续性与无理数》，用"戴德金分割"严格定义了实数的连续性。同年，康托尔（Georg Cantor）用柯西序列给出了另一种等价的构造。在此之前，数学家们凭直觉使用实数已有两千多年，但"数轴上没有缝"这件事直到 $19$ 世纪才真正被证明。中学里我们先用直觉描述它：实数轴是一条没有"缝"的直线。
]

#blueprint[
  - *实数集* $RR$：所有有理数与所有无理数合起来的集合。
  - *数集层级*：$NN subset.eq ZZ subset.eq QQ subset.eq RR$。
  - *数轴对应*：实数 $<=>$ 数轴上的点，一一对应，没有空位。
  - *估算技巧*：夹逼——找两个相邻整数 $n, n + 1$ 使 $n^2 < a < (n + 1)^2$，则 $sqrt(a)$ 落在 $(n, n + 1)$ 内；继续细分可得更精确的十进制近似。

  #figure(
    cetz.canvas(length: 0.5cm, {
      import cetz.draw: *
      // Nested rectangles for R ⊃ Q ⊃ Z ⊃ N
      let w0 = 20
      let h0 = 7
      // R (outermost)
      rect((-w0 / 2, -h0 / 2), (w0 / 2, h0 / 2),
           fill: rgb("#FCE4EC"), stroke: 1.2pt + rgb("#C62828"), radius: 5pt)
      content((w0 / 2 - 1.2, h0 / 2 - 0.6), text(size: 9pt, weight: "bold", fill: rgb("#C62828"))[$RR$], anchor: "north-east")
      // Q
      let w1 = 14
      let h1 = 5
      rect((-w1 / 2, -h1 / 2), (w1 / 2, h1 / 2),
           fill: rgb("#FFF9C4"), stroke: 1.2pt + rgb("#F9A825"), radius: 4pt)
      content((w1 / 2 - 1.0, h1 / 2 - 0.6), text(size: 9pt, weight: "bold", fill: rgb("#F57F17"))[$QQ$], anchor: "north-east")
      // Z
      let w2 = 8.5
      let h2 = 3.2
      rect((-w2 / 2, -h2 / 2), (w2 / 2, h2 / 2),
           fill: rgb("#E3F2FD"), stroke: 1.2pt + rgb("#1565C0"), radius: 4pt)
      content((w2 / 2 - 1.0, h2 / 2 - 0.6), text(size: 9pt, weight: "bold", fill: rgb("#1565C0"))[$ZZ$], anchor: "north-east")
      // N (innermost)
      let w3 = 4
      let h3 = 1.8
      rect((-w3 / 2, -h3 / 2), (w3 / 2, h3 / 2),
           fill: rgb("#C8E6C9"), stroke: 1.2pt + rgb("#388E3C"), radius: 3pt)
      content((0, 0), text(size: 9pt, weight: "bold", fill: rgb("#2E7D32"))[$NN$])
      // Example members
      content((-w2 / 2 + 1.2, 0), text(size: 7pt, fill: rgb("#1565C0"))[$-3$])
      content((w1 / 2 - 1.8, 0), text(size: 7pt, fill: rgb("#F57F17"))[$2/3$])
      content((w0 / 2 - 2.0, 0), text(size: 7pt, fill: rgb("#C62828"))[$sqrt(2)$])
    }),
    caption: [数集层级：$NN subset.eq ZZ subset.eq QQ subset.eq RR$],
  )
]

#pitfall[
  *高频错误*

  ✗ 认为 $QQ$ 已经“铺满”数轴
  → ✓ 稠密不等于完备；$QQ$ 到处都有点，但也到处都留着“无理数的洞”。

  ✗ 以为估算平方根时必须用计算器
  → ✓ 用夹逼法（$1.4^2 = 1.96 < 2 < 2.25 = 1.5^2$）就能人工估到一两位小数。

  ✗ 把 $sqrt(8)$ 当成无理数就下笔写最简形式错
  → ✓ $sqrt(8) = 2 sqrt(2)$；它仍是无理数，但可以化简写法。
]

#mastery[
  *基础*

  + 用 $NN$、$ZZ$、$QQ$、$RR$ 表示下列数所属最小集合：$5$；$-7$；$2/3$；$sqrt(10)$；$0$。
  + 判断对错：所有循环小数都是有理数。
  + 在下列数中选出无理数：$sqrt(4)$；$sqrt(5)$；$3.14$；$pi$。
  + 数集层级中，$ZZ subset.eq QQ$ 的原因是什么？用一句话说明。
  + 判断对错：数轴上的每一个点都对应一个有理数。

  *应用*

  + 估算 $sqrt(20)$ 在哪两个相邻整数之间，并写出精确到一位小数的近似值。
  + 证明（直觉即可）：在任意一段区间 $(a, b)$ 上，既有有理数也有无理数。
  + 化简：$sqrt(18)$、$sqrt(50)$。

  *挑战 ☞ 选做*

  + 证明：$sqrt(2) + 3$ 是无理数（思路：假设它是有理数，推回 $sqrt(2)$）。
  + 在数轴上作出长度为 $sqrt(5)$ 的线段——给出构造思路。

  #answer-cut[
  + $5 in NN$（自然数）；$-7 in ZZ$（整数但非自然数）；$2/3 in QQ$（有理数但非整数）；$sqrt(10) in RR without QQ$（无理数）；$0 in NN$（自然数）。
  + 正确（有限小数和无限循环小数都是有理数，可写成 $p/q$ 形式）。
  + $sqrt(5)$（$5$ 非完全平方数）和 $pi$（无限不循环小数）是无理数；$sqrt(4) = 2$ 和 $3.14$（有限小数）是有理数。
  + 因为每个整数 $n$ 都可以写成 $n/1$ 的形式，满足有理数 $p/q$ 的定义（包含关系）。
  + 错误。数轴上还有对应无理数的点（如 $sqrt(2)$ 的位置）；数轴上的每个点对应一个*实数*。
  + $4 < sqrt(20) < 5$（因为 $4^2 = 16 < 20 < 25 = 5^2$）。进一步夹逼：$4.4^2 = 19.36$，$4.5^2 = 20.25$，所以 $sqrt(20) approx 4.5$。
  + 在 $(a, b)$ 中总可找到一个有理数（由 $QQ$ 的稠密性），也可取 $a < p + sqrt(2) / n < b$ 的形式构造一个无理数。
  + $sqrt(18) = sqrt(9 times 2) = 3sqrt(2)$；$sqrt(50) = sqrt(25 times 2) = 5sqrt(2)$（化简根号：提取最大完全平方因数）。
  + 反证法：假设 $sqrt(2) + 3 = r$（$r$ 为有理数），则 $sqrt(2) = r - 3$。有理数减有理数仍为有理数，故 $sqrt(2)$ 为有理数，与已证结论矛盾。
  + 用两条直角边长为 $1$、$2$ 的直角三角形，直角对面那条最长边的长度恰好是 $sqrt(5)$；用圆规把它搬到数轴。
  ]
]

#side-hack[
  *☞ 这会在后面哪里再出现*

  - 代数分支处理一元二次方程 $a x^2 + b x + c = 0$ 时，根公式会把无理根放到实数轴上。
  - 几何分支勾股定理把 $RR$ 的“线段长度”说法坐实。
  - 函数分支讨论连续函数、图象不间断时，默认定义域是 $RR$。
]
