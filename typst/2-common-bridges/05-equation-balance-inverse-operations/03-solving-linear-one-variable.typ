#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref
#import "../../lib/diagram-packages.typ": cetz

=== 反向操作解一元一次方程（简单系数）<tool:cb05-solving-linear>

#vocab[反向操作 inverse operation][一元一次方程 linear equation in one variable]

#crisis[
  摆在你面前的是 $2 x + 3 = 11$。大家都知道答案是 $4$，但你必须有一条*机械可靠*的步骤，才能在复杂系数时也不会慌。

  *我们把等式性质串成一条“反向操作”流程：谁包着 $x$，就从最外面一步步拆掉它。*
]

#history-note[
  “反向操作”是把加减、乘除分成两对“互逆动作”的结果。它和数轴上的“向左走 / 向右走”“放大 / 缩小”是同一种对称。
]

#discovery[
  一元一次方程一般形如：

  $ a x + b = c quad (a != 0) $

  $x$ 被两层动作“包”着：先乘以 $a$，再加 $b$。把它请出来，就按相反顺序一层层撤销：

  + *撤销 $+ b$*：两边 $- b$，得 $a x = c - b$；
  + *撤销 $times a$*：两边 $div a$，得 $x = (c - b) / a$。

  把具体例子做一遍：

  $ 2 x + 3 = 11 $

  $ => 2 x = 11 - 3 = 8 $

  $ => x = 8 / 2 = 4 $

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *
      // Onion layers: x is in center, wrapped by ×a then +b
      let cx = 10
      let cy = 3
      // Outermost layer: +b
      rect((cx - 8, cy - 3), (cx + 8, cy + 3),
           fill: rgb("#FFF3E0"), stroke: 1.2pt + rgb("#E65100"), radius: 6pt)
      content((cx + 6.5, cy + 2.2), text(size: 7pt, fill: rgb("#E65100"))[$+ b$])
      // Middle layer: ×a
      rect((cx - 5, cy - 2), (cx + 5, cy + 2),
           fill: rgb("#E3F2FD"), stroke: 1.2pt + rgb("#1565C0"), radius: 4pt)
      content((cx + 3.5, cy + 1.2), text(size: 7pt, fill: rgb("#1565C0"))[$times a$])
      // Core: x
      rect((cx - 2, cy - 1), (cx + 2, cy + 1),
           fill: rgb("#C8E6C9"), stroke: 1.5pt + rgb("#388E3C"), radius: 3pt)
      content((cx, cy), text(size: 11pt, weight: "bold", fill: rgb("#2E7D32"))[$x$])
      // Unwrap arrows on the right
      line((cx + 8.5, cy + 1.5), (cx + 11, cy + 1.5), stroke: 1pt + rgb("#E65100"), mark: (end: ">"))
      content((cx + 12, cy + 1.5), text(size: 7pt, fill: rgb("#E65100"))[先撤 $+ b$：$- b$], anchor: "west")
      line((cx + 8.5, cy - 1.5), (cx + 11, cy - 1.5), stroke: 1pt + rgb("#1565C0"), mark: (end: ">"))
      content((cx + 12, cy - 1.5), text(size: 7pt, fill: rgb("#1565C0"))[再撤 $times a$：$div a$], anchor: "west")
    }),
    caption: [洋葱剥皮法：$x$ 被 $times a$ 和 $+ b$ 两层包裹，从外向内依次撤销],
  )


  最后要养成“代回检验”的习惯：把 $x = 4$ 代回 $2 times 4 + 3 = 11$，成立。

  如果两边各有一堆同类项，可以先在各自那一边合并（#secref("cb04-expressions-and-like-terms")），再开始反向操作；如果未知量同时出现在两边，可以先移项，把未知量挪到一边、常数挪到另一边。
]

#side-hack[
  “洋葱剥皮法”：先看最外层是什么动作（$+$ 还是 $times$），就先撤销它；和代入求值时“先算括号内”正好相反。
]

#tryit[
  + 解方程：$x + 7 = 15$。
  + 解方程：$3 x = -12$。
  + 解方程：$5 x - 4 = 11$。
]

#blueprint[
  - *一元一次方程的标准形* $a x + b = c$（$a != 0$）的通解是 $x = (c - b) / a$。
  - *反向操作流程*：
    + 合并同类项（若有必要）；
    + 把含未知量的项移到一边、常数移到另一边；
    + 撤销“$+ b$”，再撤销“$times a$”（按反向顺序）；
    + 代回原方程检验。
  - *解的个数*：一元一次方程若 $a != 0$ 恰有唯一解；若 $a = 0$ 则化为常数恒等式，需另行讨论。
  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *
      // Step chain: 2x+3=11 → 2x=8 → x=4
      let bw = 8
      let bh = 2.0
      // Step 1
      rect((0, 0), (bw, bh), fill: rgb("#FFF9C4"), stroke: 1pt + rgb("#F9A825"), radius: 3pt)
      content((bw / 2, bh / 2), text(size: 9pt, weight: "bold")[$2 x + 3 = 11$])
      // Arrow
      line((bw + 0.5, bh / 2), (bw + 3.5, bh / 2), stroke: 1.2pt + rgb("#555"), mark: (end: ">"))
      content((bw + 2, bh + 0.3), text(size: 7pt, fill: rgb("#555"))[$- 3$], anchor: "south")
      // Step 2
      let x2 = bw + 4
      rect((x2, 0), (x2 + bw, bh), fill: rgb("#E3F2FD"), stroke: 1pt + rgb("#1565C0"), radius: 3pt)
      content((x2 + bw / 2, bh / 2), text(size: 9pt, weight: "bold")[$2 x = 8$])
      // Arrow
      line((x2 + bw + 0.5, bh / 2), (x2 + bw + 3.5, bh / 2), stroke: 1.2pt + rgb("#555"), mark: (end: ">"))
      content((x2 + bw + 2, bh + 0.3), text(size: 7pt, fill: rgb("#555"))[$div 2$], anchor: "south")
      // Step 3
      let x3 = x2 + bw + 4
      rect((x3, 0), (x3 + bw, bh), fill: rgb("#C8E6C9"), stroke: 1pt + rgb("#388E3C"), radius: 3pt)
      content((x3 + bw / 2, bh / 2), text(size: 9pt, weight: "bold", fill: rgb("#2E7D32"))[$x = 4$])
    }),
    caption: [解方程流水线：每一步都是一次合法的等式变形],
  )
]

#pitfall[
  *高频错误*

  ✗ 撤销动作时顺序搞反（先除后减）
  → ✓ 反向操作按“包装”的相反顺序来：外层先拆。

  ✗ 移项忘了变号
  → ✓ $2 x + 3 = 11$ 移项：$2 x = 11 - 3$，不是 $11 + 3$。

  ✗ 不检验就下结论
  → ✓ 每次解完都代回原方程，花 $10$ 秒省半小时。
]

#mastery[
  *基础*

  + 解：$x - 9 = 4$。
  + 解：$4 x = 20$。
  + 解：$2 x + 1 = 9$。

  *应用*

  + 解：$3 x - 7 = 2 x + 5$。
  + 解：$5 (x - 2) = 3 x + 4$。
  + 一本书每本 $p$ 元，小红买 $4$ 本付 $90$ 元，找回 $6$ 元。列方程求 $p$。

  *挑战 ☞ 选做*

  + 解：$(x - 3) / 2 + 1 = 4$。
  + 已知 $x = -1$ 是方程 $k x + 3 = 2 x - 7$ 的解，求 $k$。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + $x = 13$。
  + $x = 5$。
  + $x = 4$。
  + 移项合并：$x = 12$；代回左 $= 29$、右 $= 29$。
  + 展开：$5 x - 10 = 3 x + 4 => 2 x = 14 => x = 7$。
  + $4 p + 6 = 90$（或写成 $4 p = 90 - 6$），$p = 21$。
  + 两边减 $1$：$(x - 3) / 2 = 3$；乘 $2$：$x - 3 = 6$；加 $3$：$x = 9$。
  + 代入：$- k + 3 = -2 - 7 = -9 => k = 12$。
]

#side-hack[
  *☞ 这会在后面哪里再出现*

  - 代数分支第 1 章会把本节推广到“括号、分式、字母系数”更复杂的一元一次方程。
  - 函数分支里“给定 $f(x) = c$，求 $x$”就是本节的再利用。
  - 几何分支里设未知边/角后列出一元一次方程求解，是标准解题步骤。
]
