#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 三角形与内角和：三角合起来是一条直线 <tool:pf08-triangles-angle-sum>

#vocab[三角形 triangle][内角 interior angle][内角和 angle sum]

#crisis[
  画一个三角形，量三个角，结果是 $62°$、$55°$、$63°$——加起来恰好是 $180°$。

  再画一个完全不一样的三角形，又是 $90°$、$30°$、$60°$——加起来还是 $180°$。

  巧合吗？还是每个三角形都满足？

  *如果“三个内角和一定是 $180°$”是真的，我们就能用它算出很多原本要量才能知道的角。*
]

#discovery[
  过三角形 $A B C$ 的顶点 $A$，作一条和 $B C$ 平行的直线 $l$。

  - $angle A B C$ 和它在 $l$ 上的内错角相等（因为 $l parallel B C$）。
  - $angle A C B$ 和它在 $l$ 上的内错角也相等。
  - 这两个内错角加上 $angle B A C$，正好合成直线 $l$ 上顶点 $A$ 两侧的平角。

  所以

  $ angle A + angle B + angle C = 180°. $

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      // --- Triangle vertices ---
      let A = (5, 7)
      let B = (0, 0)
      let C = (10, 0)

      // --- Parallel line through A ---
      let line-ext = 5
      let L-left = (A.at(0) - line-ext, A.at(1))
      let L-right = (A.at(0) + line-ext, A.at(1))

      // Colored angle fills at vertex A (wedges on the line)
      // angle B' on left side of A (between line-left and AB)
      let angle-r = 1.8
      // ∠B' = alternate interior angle to ∠B, between ray A→L-left and ray A→B
      arc(A, start: 180deg, stop: 213deg, radius: angle-r,
          fill: rgb("#F4433640"), stroke: 1.2pt + rgb("#F44336"), mode: "PIE")
      // ∠A at vertex A, between ray A→B and ray A→C
      arc(A, start: 213deg, stop: 323deg, radius: angle-r,
          fill: rgb("#2196F340"), stroke: 1.2pt + rgb("#2196F3"), mode: "PIE")
      // ∠C' on right side of A (between ray A→C and line-right)
      arc(A, start: 323deg, stop: 360deg, radius: angle-r,
          fill: rgb("#4CAF5040"), stroke: 1.2pt + rgb("#4CAF50"), mode: "PIE")

      // Angle arcs at B (∠B in red)
      arc(B, start: 0deg, stop: 35deg, radius: 2.0,
          fill: rgb("#F4433630"), stroke: 1pt + rgb("#F44336"), mode: "PIE")

      // Angle arcs at C (∠C in green)
      arc(C, start: 145deg, stop: 180deg, radius: 2.0,
          fill: rgb("#4CAF5030"), stroke: 1pt + rgb("#4CAF50"), mode: "PIE")

      // Dashed parallel line through A
      line(L-left, L-right, stroke: (dash: "dashed", paint: rgb("#555555"), thickness: 1pt))

      // Triangle sides
      line(A, B, stroke: 1.5pt + rgb("#333333"))
      line(B, C, stroke: 1.5pt + rgb("#333333"))
      line(A, C, stroke: 1.5pt + rgb("#333333"))

      // Vertex labels
      content((A.at(0), A.at(1) + 1.2), [*A*], anchor: "south")
      content((B.at(0) - 0.8, B.at(1) - 0.5), [*B*], anchor: "north-east")
      content((C.at(0) + 0.8, C.at(1) - 0.5), [*C*], anchor: "north-west")

      // Label for line l
      content((L-right.at(0) + 0.5, L-right.at(1) + 0.5), [_l_], anchor: "south-west")

      // Angle labels
      content((A.at(0) - 2.8, A.at(1) - 1.0), text(size: 7pt, fill: rgb("#F44336"))[∠B′ = ∠B（内错角）], anchor: "east")
      content((A.at(0) + 2.8, A.at(1) - 1.0), text(size: 7pt, fill: rgb("#4CAF50"))[∠C′ = ∠C（内错角）], anchor: "west")
      content((A.at(0), A.at(1) - 2.2), text(size: 7pt, fill: rgb("#2196F3"))[∠A], anchor: "north")

      // 180° annotation along the line
      let ann-y = A.at(1) + 2.2
      line((A.at(0) - line-ext + 0.5, ann-y), (A.at(0) + line-ext - 0.5, ann-y),
           stroke: 0.8pt + rgb("#888888"), mark: (start: "|", end: "|"))
      content((A.at(0), ann-y + 0.6),
        text(size: 7pt, fill: rgb("#555555"))[三个角拼成 180°（平角）], anchor: "south")
    }),
    caption: [过 $A$ 作 $B C$ 的平行线：三个角拼成一条直线],
  )

  这个结论对所有三角形都成立——因为我们用的工具，只是“过 $A$ 可以作一条平行线”和前一节的角关系。
]

#side-hack[
  已知两角算第三角：直接用 $180° - a - b$。遇到等腰三角形时，先标出两底角相等再列式。
]

#tryit[
  先自己试试：

  + 一个三角形有两个内角分别是 $50°$ 和 $60°$，第三个内角是多少？
  + 一个三角形其中一个是直角，另一个是 $35°$，第三个呢？
]

#history-note[
  欧几里得（Euclid，约公元前 300 年）在《几何原本》第一卷命题 32 中给出了这个证明：过三角形一个顶点作对边的平行线，利用平行线的同位角（内错角）相等，三角形的三个角恰好拼成一条直线——也就是 180°。值得注意的是，这个证明依赖第五公设（平行公设）；在非欧几何中，三角形内角和可以不等于 180°。
]

#side-hack[
  *重演三角形内角和的平行线证明*

  欧几里得在《几何原本》中用平行线证明三角形内角和为 $180 degree$。来重演这个证明：

  取 $triangle A B C$，过顶点 $B$ 作直线 $D E$ 平行于 $A C$（$D E parallel A C$）。

  + 由平行线性质，$angle D B A$（直线 $D E$ 上，$B$ 左边的角）和 $angle B A C$ 是什么关系（内错角？同位角？）？所以 $angle D B A = ?$
  + 类似地，$angle E B C$ 和 $angle B C A$ 是什么关系？所以 $angle E B C = ?$
  + 在直线 $D E$ 上，$angle D B A$、$angle A B C$、$angle E B C$ 三个角排列在一起，它们的和是多少度？
  + 由上面三步，写出 $angle A + angle B + angle C = ?$

  #answer-cut[
    + $angle D B A$ 和 $angle B A C$ 是内错角（$D E parallel A C$，$A B$ 为截线），所以 $angle D B A = angle B A C = angle A$。
    + $angle E B C$ 和 $angle B C A$ 是内错角，所以 $angle E B C = angle B C A = angle C$。
    + $D E$ 是一条直线，$angle D B A + angle A B C + angle E B C = 180 degree$（平角）。
    + 代入：$angle A + angle B + angle C = 180 degree$。
  ]
]

#blueprint[
  *三角形内角和定理*：任何三角形的三个内角之和都等于 $180°$。

  常用推论：

  - 直角三角形的两个锐角之和 $= 90°$。
  - 等腰三角形两个底角相等，所以若顶角是 $alpha$，底角各是 $(180° - alpha)/2$。
  - 等边三角形每个内角都是 $60°$。

  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let red = rgb("#F44336")
      let green = rgb("#4CAF50")

      // Acute triangle
      let t1 = ((0, 0), (5, 0), (2, 3.5))
      line(..t1, close: true, fill: rgb("#BBDEFB40"), stroke: 1pt + blue)
      content((2.3, -1), text(size: 7pt)[锐角三角形], anchor: "north")
      content((2.3, -2), text(size: 6pt)[三个角都 $< 90°$], anchor: "north")

      // Right triangle
      let t2 = ((7, 0), (12, 0), (7, 4))
      line(..t2, close: true, fill: rgb("#C8E6C940"), stroke: 1pt + green)
      rect((7, 0), (7.6, 0.6), stroke: 0.6pt + green)
      content((9.5, -1), text(size: 7pt)[直角三角形], anchor: "north")
      content((9.5, -2), text(size: 6pt)[有一个角 $= 90°$], anchor: "north")

      // Obtuse triangle
      let t3 = ((14, 0), (20, 0), (15, 2.5))
      line(..t3, close: true, fill: rgb("#FFCDD240"), stroke: 1pt + red)
      content((17, -1), text(size: 7pt)[钝角三角形], anchor: "north")
      content((17, -2), text(size: 6pt)[有一个角 $> 90°$], anchor: "north")
    }),
    caption: [三种三角形：按最大角分类],
  )

]

#pitfall[
  *高频错误*

  ✗ 画一个看起来很“扁”的三角形，就觉得三角和不到 $180°$
  → ✓ 无论多扁，总和仍是 $180°$；扁只是其中一个角接近 $180°$，其余两角接近 $0°$。

  ✗ 在等腰三角形里，把“顶角和底角相等”
  → ✓ 相等的是*两个底角*，不是顶角和底角。

  ✗ 求第三个角时忘了先合并已知角
  → ✓ 先算 $a + b$，再用 $180° - (a + b)$。
]

#mastery[
  *基础*

  + 三角形两个角是 $40°$ 和 $75°$，第三角是多少？
  + 直角三角形一个锐角是 $28°$，另一锐角是多少？
  + 等边三角形的每个内角是多少？
  + 判断对错并改正："一个三角形可以有两个直角。"
  + 一个三角形的三个内角中，最大的一个是 $120°$。这个三角形是什么类型？另外两个角的和是多少？

  *应用*

  + 一个三角形的三个内角之比是 $1 : 2 : 3$。它们分别是多少度？这个三角形属于哪一类？
  + 等腰三角形顶角是 $40°$，两个底角各是多少？
  + 在三角形 $A B C$ 中，$angle A = 3 angle B$，$angle C = 80°$。求 $angle A$ 和 $angle B$。

  *挑战 ☞ 选做*

  + 一个三角形最大的内角可能超过 $180°$ 吗？最大的内角可以等于 $180°$ 吗？
  + 一个三角形其中一个内角是 $100°$，另外两个角相等。它们各是多少？
  + *[解释]*：为什么三角形*最多*只能有一个内角是直角或钝角？请用三角形内角和 $= 180°$ 给出推理（提示：假设有两个直角或一个直角加一个钝角，会发生什么？）。

  #answer-cut[
  + $180° - 40° - 75° = 65°$。（三角形内角和 $= 180°$）
  + $90° - 28° = 62°$。（直角三角形两锐角之和 $= 90°$）
  + $60°$。（等边三角形三个角相等，$180° div 3 = 60°$）
  + 错。如果两个角都是 $90°$，光这两个角就已经是 $180°$，第三个角只能是 $0°$——图形就不存在了。所以三角形*最多一个直角*。（三角形内角和 $= 180°$）
  + 钝角三角形（最大角 $120° > 90°$）。另外两个角的和 $= 180° - 120° = 60°$。（三角形内角和 $= 180°$，按最大角分类）
  + 第一步：总份数 $1+2+3 = 6$ 份，每份 $180° div 6 = 30°$。第二步：三角分别为 $1 times 30° = 30°$、$2 times 30° = 60°$、$3 times 30° = 90°$。最大角 $= 90°$ → 直角三角形。（三角形内角和 + 按比例分配）
  + 等腰三角形两底角相等。底角 $= (180° - 40°) div 2 = 70°$。（等腰三角形性质 + 内角和 $180°$）
  + 列方程：$angle A + angle B + 80° = 180°$ → $angle A + angle B = 100°$。代入 $angle A = 3 angle B$：$3 angle B + angle B = 100°$ → $4 angle B = 100°$ → $angle B = 25°$，$angle A = 75°$。验证：$75° + 25° + 80° = 180°$ ✓。
  + 不能超过，也不能等于 $180°$。理由：若最大角 $>= 180°$，其余两角之和 $<= 0°$，角度不能是 $0°$ 或负数，所以三角形不存在。（三角形内角和 $= 180°$ 的约束）
  + 剩余角的和 $= 180° - 100° = 80°$。因为另两角相等，每个 $= 80° div 2 = 40°$。验证：$100° + 40° + 40° = 180°$ ✓。（等腰三角形 + 内角和）
  + *[解释]*：假设三角形有两个直角，则这两个角之和 $= 180°$，第三个角必为 $0°$，三角形退化（不存在）。假设有一个直角 + 一个钝角，则两角之和 $> 180°$，违反内角和 $= 180°$。同理两个钝角之和 $> 180°$ 也不可能。所以三角形最多只能有一个角 $>= 90°$（直角或钝角），另两角必为锐角。
  ]
]
