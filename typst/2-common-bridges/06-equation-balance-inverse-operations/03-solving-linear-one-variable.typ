#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut, self-check
#import "../../lib/diagram-packages.typ": cetz

=== 反向操作解一元一次方程（简单系数）<tool:cb06-solving-linear>

#vocab[反向操作 inverse operation][一元一次方程 linear equation in one variable]

#crisis[
  摆在你面前的是 $2 x + 3 = 11$。大家都知道答案是 $4$，但你必须有一条*机械可靠*的步骤，才能在复杂系数时也不会慌。

  *我们把等式性质串成一条“反向操作”流程：谁包着 $x$，就从最外面一步步拆掉它。*
]

#tryit[
  + 解方程：$x + 7 = 15$。
  + 解方程：$5 x - 4 = 11$。
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

  如果两边各有一堆同类项，可以先在各自那一边合并（#secref("cb05-expressions-and-like-terms")），再开始反向操作；如果未知量同时出现在两边，可以先移项，把未知量挪到一边、常数挪到另一边。
]

#side-hack[
  “洋葱剥皮法”：先看最外层是什么动作（$+$ 还是 $times$），就先撤销它；和代入求值时“先算括号内”正好相反。
]

#history-note[
  约 $820$ 年，花拉子米（al-Khwārizmī）在《代数学》中把解方程的核心操作归纳为"al-jabr"（把减去的项移到另一边变加）和"al-muqābala"（合并同类项）。这两步本质上就是"反向操作"：加的反面是减，乘的反面是除。中国《九章算术》中的"盈不足"术也用类似的正反对消思想来求解线性问题。
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

#self-check[
  解 $3x - 4 = 11$ 时，你会先做哪一步？为什么不是先除以 $3$？
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
  + 解：$x / 4 = 3$。
  + 解：$-2 x = 10$。

  *应用*

  + 解：$3 x - 7 = 2 x + 5$。
  + 解：$5 (x - 2) = 3 x + 4$。
  + 一本书每本 $p$ 元，Luca买 $4$ 本付 $90$ 元，找回 $6$ 元。列方程求 $p$。

  *挑战 ☞ 选做*

  + 解：$(x - 3) / 2 + 1 = 4$。
  + 已知 $x = -1$ 是方程 $k x + 3 = 2 x - 7$ 的解，求 $k$。
  + *[找 Bug]*：余婧（Yu Jing）解方程 $-2 (x - 3) = 8$ 时这样写："两边除以 $-2$，得 $x - 3 = 8 div (-2) = -4$；再移项，$x = -4 - 3 = -7$。" 检查她的解，找出错误并给出正确解法。

  + 解方程 $frac(x+2, 3) - frac(x-1, 2) = 1$。（需要通分后移项合并。）
  + *[构造题]*：请构造两个不同的一元一次方程，使解都等于 $x = -frac(2,3)$，其中至少一个含有括号。
  + 小李解方程 $frac(3x-6, 3) = 2$ 时直接写"两边乘 $3$，得 $3x - 6 = 6$，解得 $x = 4$"。验证一下，再问：他步骤有没有简化的地方？

#answer-cut[
  + $x = 13$（反向操作：两边同加 $9$，撤销 $-9$）。
  + $x = 5$（反向操作：两边同除以 $4$，撤销 $times 4$）。
  + $x = 4$（先撤 $+1$：$2x = 8$；再撤 $times 2$：$x = 4$。代回：$2 times 4 + 1 = 9$ ✓）。
  + $x = 12$（反向操作：两边同乘 $4$，撤销 $div 4$）。
  + $x = -5$（两边同除以 $-2$，注意除以负数结果为负）。
  + 移项：$3x - 2x = 5 + 7$，合并：$x = 12$。代回：左 $= 36 - 7 = 29$，右 $= 24 + 5 = 29$ ✓（移项变号 + 合并同类项）。
  + 展开括号：$5x - 10 = 3x + 4$。移项：$5x - 3x = 4 + 10$。合并：$2x = 14$，$x = 7$。代回：$5(7-2) = 25$，$3 times 7 + 4 = 25$ ✓。
  + 方程：$4p = 90 - 6 = 84$（总价模板 + 等式性质），$p = 21$ 元。代回：$4 times 21 + 6 = 90$ ✓。
  + 反向操作三层剥皮：先撤 $+1$（两边 $-1$）：$(x-3)/2 = 3$；再撤 $div 2$（两边 $times 2$）：$x - 3 = 6$；最后撤 $-3$（两边 $+3$）：$x = 9$。代回：$(9-3)/2 + 1 = 4$ ✓。
  + 把 $x = -1$ 代入：$-k + 3 = 2(-1) - 7 = -9$。移项：$-k = -12$，$k = 12$（代入法 + 反向操作）。
  + Bug 在最后一步*移项忘记变号*。前两步正确：两边除以 $-2$，得 $x - 3 = -4$。下一步要把 $-3$ 移到等号右边，应*变号*为 $+3$，即 $x = -4 + 3 = -1$；余婧却写成 $-4 - 3 = -7$。代回原方程检验：$-2(-1 - 3) = -2 times (-4) = 8$ ✓，所以正确解是 $x = -1$；用她的 $x = -7$ 代入则得 $-2(-7 - 3) = 20 != 8$，立刻暴露错误。提醒：移项口诀"过等号变号"——也可以直接对 $x - 3 = -4$ 两边同加 $3$ 来撤销 $-3$，避免符号失误（移项变号 + 代入检验）。
  + 公分母 $6$：$frac(2(x+2), 6) - frac(3(x-1), 6) = 1$。分子：$2x+4-3x+3 = 6$，即 $-x+7 = 6$，$-x = -1$，$x = 1$。代回验证：$frac(3, 3) - frac(0, 2) = 1 - 0 = 1$ ✓（通分 + 移项）。
  + *[构造题]*：知道解是 $x = -frac(2,3)$，反推方程。例一：$3x + 2 = 0$（代入：$3 times (-frac(2,3)) + 2 = -2 + 2 = 0$ ✓）。例二（含括号）：$2(x + 1) = frac(2, 3)$（代入：$2(frac(1,3)) = frac(2, 3)$ ✓）（反向构造：从已知解设方程）。
  + 代入 $x = 4$：$frac(12-6, 3) = frac(6, 3) = 2$ ✓，解正确。简化点：$frac(3x-6, 3) = x - 2$（直接约分），方程变成 $x - 2 = 2$，$x = 4$——不需要"两边乘 $3$"那一步，直接约分更快（等式变形 + 代入验证）。
]
]

#side-hack[
  ☞ 代数第一章会把这套流程推广到括号、分式更复杂的形式；函数里"给定 $f(x) = c$，求 $x$"就是本节逻辑的再用。
]
