#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref
#import "../../lib/diagram-packages.typ": cetz

=== 方程即天平 <tool:cb05-equation-as-balance>

#vocab[方程 equation][未知量 unknown][解 solution][等式 equation (literal)]

#crisis[
  一本书 $p$ 元，小明付了 $50$ 元找回 $14$ 元。你立刻会想：“那 $p = 36$ 吧。”

  这个“脑里一转”背后其实有一条等式 $50 - p = 14$。等号两边就像一架天平——它为什么会告诉你 $p = 36$ 呢？

  *我们要先把“方程”“解方程”这些词本身说清楚。*
]

#history-note[
  汉语里的"方程"最早见于《九章算术》（约公元前 $1$ 世纪）第八章"方程"，其中用算筹排成矩阵来解多元联立问题——这比欧洲的矩阵方法早了近两千年。在阿拉伯世界，花拉子米（al-Khwārizmī）约 $820$ 年写的《代数学》书名中的"al-jabr"，就是今天 algebra（代数）一词的来源，他在书中系统地讨论了一次和二次方程的解法。
]

#discovery[
  *方程*：含有*未知量*（字母）的*等式*就叫方程。例如：

  $ 50 - p = 14, quad 2 x + 3 = 11, quad 3 (y - 1) = 9 $

  *解方程*就是：求那个（些）使等号两边*真的相等*的未知量值。

  比如 $2 x + 3 = 11$：

  - 当 $x = 4$ 时，左边 $= 11$，右边 $= 11$，两边相等，所以 $x = 4$ 是解。
  - 当 $x = 5$ 时，左边 $= 13 != 11$，所以 $x = 5$ 不是解。

  把方程看成一架*天平*：等号左右两边的物体一样重。只要这架天平一直保持平衡，你在两边同时做相同的事都不会打破平衡。

  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *
      // Show substitution check: x=4 into 2x+3=11
      let bx = 2
      // Left side calculation
      rect((bx, 0), (bx + 12, 3), fill: rgb("#E3F2FD"), stroke: 1pt + rgb("#1565C0"), radius: 3pt)
      content((bx + 6, 2.0), text(size: 8pt, fill: rgb("#0D47A1"))[左边 $= 2 times 4 + 3$])
      content((bx + 6, 0.8), text(size: 9pt, weight: "bold", fill: rgb("#0D47A1"))[$= 11$ ✓])
      // Equals sign
      content((bx + 14, 1.5), text(size: 14pt, weight: "bold")[$=$])
      // Right side
      rect((bx + 16, 0), (bx + 26, 3), fill: rgb("#FFCDD2"), stroke: 1pt + rgb("#C62828"), radius: 3pt)
      content((bx + 21, 2.0), text(size: 8pt, fill: rgb("#C62828"))[右边])
      content((bx + 21, 0.8), text(size: 9pt, weight: "bold", fill: rgb("#C62828"))[$= 11$ ✓])
      // Top label
      content((bx + 13, 4.0), text(size: 8pt, weight: "bold")[代入 $x = 4$ 检验], anchor: "south")
    }),
    caption: [检验解：把 $x = 4$ 代回 $2 x + 3 = 11$，左右两边都等于 $11$],
  )

  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *

      // --- Fulcrum (triangle) ---
      let ful-x = 12
      let ful-y = 0
      let ful-h = 2.5
      line((ful-x - 1.5, ful-y), (ful-x + 1.5, ful-y), (ful-x, ful-y + ful-h),
           close: true, fill: rgb("#78909C"), stroke: 1pt + rgb("#455A64"))

      // --- Beam ---
      let beam-y = ful-y + ful-h
      let beam-half = 9
      line((ful-x - beam-half, beam-y), (ful-x + beam-half, beam-y),
           stroke: 2pt + rgb("#37474F"))

      // --- Left pan ---
      let lp-cx = ful-x - 6.5
      let pan-y = beam-y

      // Two x-boxes
      for i in range(2) {
        let bx = lp-cx - 1.5 + i * 2.2
        let by = pan-y + 0.3
        rect((bx, by), (bx + 1.8, by + 1.8),
             fill: rgb("#BBDEFB"), stroke: 1.2pt + rgb("#1565C0"), radius: 2pt)
        content((bx + 0.9, by + 0.9), text(size: 9pt, weight: "bold", fill: rgb("#0D47A1"))[_x_])
      }

      // Three "1" circles (the +3)
      for i in range(3) {
        let cx = lp-cx + 3.2 + i * 1.3
        let cy = pan-y + 1.2
        circle((cx, cy), radius: 0.5, fill: rgb("#EEEEEE"), stroke: 1pt + rgb("#757575"))
        content((cx, cy), text(size: 7pt, fill: rgb("#424242"))[1])
      }

      // Left pan label
      content((lp-cx + 1.2, pan-y - 0.8),
        text(size: 8pt, weight: "bold", fill: rgb("#1565C0"))[$2x + 3$], anchor: "north")

      // --- Equals sign ---
      content((ful-x, beam-y + 1.2),
        text(size: 14pt, weight: "bold", fill: rgb("#555555"))[=], anchor: "south")

      // --- Right pan ---
      let rp-cx = ful-x + 4.0

      // 11 circles arranged in rows
      let cols = 4
      for i in range(11) {
        let col = calc.rem(i, cols)
        let row = calc.floor(i / cols)
        let cx = rp-cx + col * 1.2
        let cy = pan-y + 0.3 + 0.7 + row * 1.15
        circle((cx, cy), radius: 0.45, fill: rgb("#EEEEEE"), stroke: 1pt + rgb("#757575"))
        content((cx, cy), text(size: 6.5pt, fill: rgb("#424242"))[1])
      }

      // Right pan label
      content((rp-cx + 1.8, pan-y - 0.8),
        text(size: 8pt, weight: "bold", fill: rgb("#C62828"))[$11$], anchor: "north")

      // Equation label below
      content((ful-x, ful-y - 1.0),
        text(size: 10pt, weight: "bold")[$2x + 3 = 11$], anchor: "north")
    }),
    caption: [方程就是一架天平：两边一样重],
  )
]

这就是下一节"等式性质"的直觉来源。

#side-hack[
  “代数式”与“方程”的区别：代数式是一个“式子”，不含等号；方程是一条“陈述”，带等号，说左右两边相等。
]

#tryit[
  + 判断哪些是方程（只需回答是/否）：$3 x + 5$；$4 y = 12$；$2 + 3 = 5$；$x + 1 > 0$。
  + 判断 $x = 2$ 是否是方程 $3 x - 1 = 5$ 的解。
]

#blueprint[
  - *方程*：含未知量的等式。
  - *未知量*：方程里待确定的字母；默认只谈一个未知量时称它为 $x$。
  - *解*：使等号两边相等的未知量取值。
  - *等号的意义*：宣告左右两边表示同一个数；不是“箭头”，也不是“计算结果接下来写这里”。
]

#pitfall[
  *高频错误*

  ✗ 把等号当“然后”
  → ✓ $3 + 5 = 8 = 8 times 2 = 16$ 这种写法是错的，因为它说 $8 = 16$，不成立。

  ✗ 把方程当成代数式
  → ✓ $2 x - 7$ 不是方程（没有等号）；$2 x - 7 = 0$ 才是。

  ✗ 以为 $x = 0$ 的方程没有解
  → ✓ $0$ 也是一个解；关键是代入后两边是否相等。
]

#mastery[
  *基础*

  + 判断下列哪些是方程：$a + 2 = 7$；$5 b + 1$；$c - 3 = c - 3$；$d + 4 > 0$。
  + 判断 $y = 5$ 是否是 $2 y + 1 = 11$ 的解。
  + 写出一个以 $x = 0$ 为解的方程（不用最简单的 $x = 0$）。
  + 写出 $x + 5 = 12$ 和 $3 y = 15$ 哪些是方程？哪些不是？
  + 代入检验：$x = 3$ 是否是方程 $4 x - 7 = 5$ 的解？

  *应用*

  + 把“一本故事书每本 $p$ 元，买 $3$ 本共付 $45$ 元”写成方程，并口算 $p$。
  + 把“某数的 $2$ 倍加 $5$ 等于 $17$”写成方程。
  + 判断：$x = -1$ 是否是方程 $3 x + 4 = x + 2$ 的解？

  *挑战 ☞ 选做*

  + $x = 2$ 同时是两条方程 $2 x - a = 1$ 和 $3 x + a = 8$ 的解，求 $a$。
  + 一辆车从 $A$ 地到 $B$ 地，按 $60$ 千米/小时要用 $t$ 小时；按 $50$ 千米/小时要用 $t + 1$ 小时。设未知量并写出方程，不必求解。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + 方程：$a + 2 = 7$（含未知量的等式）、$c - 3 = c - 3$（恒等式，也是方程）；$5b + 1$ 无等号不是方程；$d + 4 > 0$ 是不等式不是方程。
  + 是（代入检验：左 $= 2 times 5 + 1 = 11$，右 $= 11$，两边相等）。
  + 例如 $x + 3 = 3$ 或 $2x = 0$（任何使 $x = 0$ 时等号成立的等式）。
  + 都是方程（都含未知量且有等号）。
  + 是：$4 times 3 - 7 = 12 - 7 = 5$，左 $=$ 右（代入检验法）。
  + $3p = 45$（"$3$ 本共 $45$ 元"翻译成方程），$p = 15$ 元。
  + $2x + 5 = 17$（把"某数的 $2$ 倍加 $5$"翻译成含未知量的等式）。
  + 代入检验：左 $= 3 times (-1) + 4 = 1$，右 $= (-1) + 2 = 1$。左 $=$ 右，所以 $x = -1$ 是解。
  + 由第一个方程：$4 - a = 1$，$a = 3$。验证第二个：$6 + 3 = 9 != 8$，矛盾。所以不存在同时满足两个方程的 $a$（等式性质 + 代入检验）。
  + 例如 $60 t = 50 (t + 1)$。
]

#side-hack[
  *☞ 这会在后面哪里再出现*

  - 代数分支第 1 章正式系统化“一元一次方程解法”，所有步骤都沿用本节的“平衡 + 解”概念。
  - 函数分支把“方程的解”解释为图象与某条水平线（或另一图象）的交点。
  - 几何分支在“设未知边、设未知角”时，本节的方程语言是默认工具。
]
