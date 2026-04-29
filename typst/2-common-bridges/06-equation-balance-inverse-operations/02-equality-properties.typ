#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut, self-check
#import "../../lib/diagram-packages.typ": cetz

=== 等式性质：保持天平平衡 <tool:cb06-equality-properties>

#vocab[等式性质 properties of equality][同加同减][同乘同除]

#crisis[
  方程是个天平。想把未知量“请出来”，你得一步步变形，但每一步都*不能破坏平衡*。到底什么样的变形是合法的？

  *我们要把“合法变形”归纳成四条明确可查的等式性质。*
]

#tryit[
  + 在等式 $x - 7 = 4$ 两边同时加 $7$，写出变形结果。
]

#discovery[
  解 $5x - 7 = 3x + 11$，直觉说"先把含 $x$ 的移到一边，数字移到另一边"——但凭什么说这步合法？试另一顺序：先两边加 $7$，得 $5x = 3x + 18$，再两边减 $3x$，得 $2x = 18$，$x = 9$。换个顺序：先两边减 $3x$，得 $2x - 7 = 11$，再两边加 $7$，得 $2x = 18$，$x = 9$——同样对。

  试着推下去——

  可如果操作错误，比如只在左边加 $7$，得 $5x = 3x + 11$，再减 $3x$，得 $2x = 11$，$x = 5.5$——和正确答案不同。两个过程都"看起来在化简"，只有一个正确，却没有任何规则来区分"合法"和"非法"的操作。

  靠直觉猜顺序有时凑对、有时出错，而没有一条可以查阅的规则说明"对等式做哪些操作是合法的"；同样的方程改用另一条路径来解，每一步合不合规都说不准。

  设 $a$、$b$、$c$ 都表示某一具体数（可以是有理数）。从等式 $a = b$ 出发，下面四种变形结果仍然成立：

  + *两边同加* $c$：$a + c = b + c$；
  + *两边同减* $c$：$a - c = b - c$；
  + *两边同乘* $c$：$a c = b c$；
  + *两边同除* $c$（要求 $c != 0$）：$a / c = b / c$。

  天平直觉：同时在两侧加上同样重的砝码，平衡保持；同时减去等量，平衡也保持；两侧同乘 / 同除非零的同一个倍数，依旧平衡。

  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *
      // Two balance states side by side
      // State 1: a = b
      let fx = 6
      let fy = 0
      let fh = 2.0
      // Fulcrum
      line((fx - 1.2, fy), (fx + 1.2, fy), (fx, fy + fh), close: true,
           fill: rgb("#78909C"), stroke: 0.8pt + rgb("#455A64"))
      let beam-y = fy + fh
      line((fx - 6, beam-y), (fx + 6, beam-y), stroke: 1.5pt + rgb("#37474F"))
      // Left pan: a
      rect((fx - 5.5, beam-y + 0.3), (fx - 2.5, beam-y + 2.0),
           fill: rgb("#BBDEFB"), stroke: 1pt + rgb("#1565C0"), radius: 2pt)
      content((fx - 4, beam-y + 1.15), text(size: 10pt, weight: "bold", fill: rgb("#0D47A1"))[$a$])
      // Right pan: b
      rect((fx + 2.5, beam-y + 0.3), (fx + 5.5, beam-y + 2.0),
           fill: rgb("#FFCDD2"), stroke: 1pt + rgb("#C62828"), radius: 2pt)
      content((fx + 4, beam-y + 1.15), text(size: 10pt, weight: "bold", fill: rgb("#C62828"))[$b$])

      // Arrow to state 2
      line((fx + 7, beam-y + 1), (fx + 10, beam-y + 1), stroke: 1.2pt + rgb("#555"), mark: (end: ">"))
      content((fx + 8.5, beam-y + 2.0), text(size: 7pt, fill: rgb("#555"))[两边 $+ c$], anchor: "south")

      // State 2: a+c = b+c
      let fx2 = fx + 17
      line((fx2 - 1.2, fy), (fx2 + 1.2, fy), (fx2, fy + fh), close: true,
           fill: rgb("#78909C"), stroke: 0.8pt + rgb("#455A64"))
      line((fx2 - 6, beam-y), (fx2 + 6, beam-y), stroke: 1.5pt + rgb("#37474F"))
      // Left: a + c
      rect((fx2 - 5.5, beam-y + 0.3), (fx2 - 2.5, beam-y + 2.0),
           fill: rgb("#BBDEFB"), stroke: 1pt + rgb("#1565C0"), radius: 2pt)
      content((fx2 - 4, beam-y + 1.15), text(size: 9pt, weight: "bold", fill: rgb("#0D47A1"))[$a + c$])
      // Right: b + c
      rect((fx2 + 2.5, beam-y + 0.3), (fx2 + 5.5, beam-y + 2.0),
           fill: rgb("#FFCDD2"), stroke: 1pt + rgb("#C62828"), radius: 2pt)
      content((fx2 + 4, beam-y + 1.15), text(size: 9pt, weight: "bold", fill: rgb("#C62828"))[$b + c$])
      // Equal signs
      content((fx, beam-y + 2.5), text(size: 10pt, weight: "bold")[$=$], anchor: "south")
      content((fx2, beam-y + 2.5), text(size: 10pt, weight: "bold")[$=$], anchor: "south")
    }),
    caption: [等式性质：天平两边同加 $c$，平衡不变],
  )

  这四条规则加起来还给了一条常用的衍生：*移项* —— 把等式一边的某项移到另一边，要*变号*：

  $ x + 5 = 12 $

  两边同时 $- 5$：

  $ x = 12 - 5 = 7 $

  于是“$+5$ 过到右边变 $-5$”。看起来像在“移动”，实质是两边同减 $5$ 的简写。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *
      // Step 1: x + 5 = 12
      let y1 = 3
      rect((0, y1), (6, y1 + 2), fill: rgb("#E3F2FD"), stroke: 1pt + rgb("#1565C0"), radius: 3pt)
      content((3, y1 + 1), text(size: 9pt, weight: "bold", fill: rgb("#0D47A1"))[$x + 5$])
      content((7, y1 + 1), text(size: 12pt, weight: "bold")[$=$])
      rect((8, y1), (12, y1 + 2), fill: rgb("#FFCDD2"), stroke: 1pt + rgb("#C62828"), radius: 3pt)
      content((10, y1 + 1), text(size: 9pt, weight: "bold", fill: rgb("#C62828"))[$12$])
      // Arrow down
      line((6, y1 - 0.3), (6, y1 - 1.5), stroke: 1.2pt + rgb("#555"), mark: (end: ">"))
      content((8.5, y1 - 0.9), text(size: 7pt, fill: rgb("#555"))[两边 $- 5$], anchor: "west")
      // Step 2: x = 12 - 5 = 7
      let y2 = -0.5
      rect((0, y2), (4, y2 + 2), fill: rgb("#E3F2FD"), stroke: 1pt + rgb("#1565C0"), radius: 3pt)
      content((2, y2 + 1), text(size: 9pt, weight: "bold", fill: rgb("#0D47A1"))[$x$])
      content((5, y2 + 1), text(size: 12pt, weight: "bold")[$=$])
      rect((6, y2), (12, y2 + 2), fill: rgb("#FFCDD2"), stroke: 1pt + rgb("#C62828"), radius: 3pt)
      content((9, y2 + 1), text(size: 9pt, weight: "bold", fill: rgb("#C62828"))[$12 - 5 = 7$])
    }),
    caption: [移项变号：$x + 5 = 12$ 两边同减 $5$，得 $x = 7$],
  )
]

#side-hack[
  关键在于“同”字：*同加、同减、同乘、同除*。只改一边，天平就会歪掉。
]

#tryit[
  + 在等式 $3 x = 21$ 两边同时除以 $3$，写出变形结果。
]

#history-note[
  约公元前 $300$ 年，欧几里得（Euclid）在《几何原本》开篇列出的"公理"中，第二条正是"等量加等量，其和相等"，第三条是"等量减等量，其差相等"。这些朴素的约定写下来之后两千多年从未被推翻，正是今天等式性质的老祖宗。
]

#blueprint[
  - *四条基本性质*（$a = b$）：
    - 两边同加同减同一个数：$a plus.minus c = b plus.minus c$；
    - 两边同乘同一个数：$a c = b c$；
    - 两边同除同一个非零数：$a / c = b / c$（$c != 0$）。
  - *推论：移项变号*。把等式一边的某项移到另一边时，符号相反。
  - *合法变形集合*：加减乘除同一个数 $+$ 在等式两侧各自合并同类项（#secref("cb05-expressions-and-like-terms")）。其他“化简”都必须可以归约到这几条。
]

#self-check[
  等式两边同时除以 $0$ 行不行？为什么“同时乘”和“同时除”在 $0$ 这里待遇不同？
]


#pitfall[
  *高频错误*

  ✗ 两边乘 $0$
  → ✓ 同乘时允许，但结果 $0 = 0$ 丢掉了原信息；更严重的是同*除以 $0$* 根本没有定义。

  ✗ 移项忘记变号
  → ✓ $x + 5 = 12$ 移项得 $x = 12 - 5$，不是 $x = 12 + 5$。

  ✗ 只在一边加、另一边忘了加
  → ✓ 变形前问一句：“这一步两边都做了吗？”
]

#mastery[
  *基础*

  + 在 $a = b$ 两边同时减去 $9$，写出结果。
  + 在 $5 x = 20$ 两边同时除以 $5$，写出结果。
  + 把 $x + 13 = 0$ 通过移项化为最简形式。
  + 在 $a = b$ 两边同时乘以 $-3$，写出结果。
  + 把 $x - 5 = 10$ 通过移项化为 $x = ?$ 的形式。

  *应用*

  + 用等式性质一步变形：$2 x + 3 = 11$ → $2 x = ?$。
  + 用等式性质一步变形：$4 x = 24$ → $x = ?$。
  + 用等式性质一步变形：$y / 3 = 7$ → $y = ?$。

  *挑战*

  + 说明为什么“等式两边不能同乘 $0$ 再做比较”。
  + 已知 $a = b + 3$，$b = 5$，利用等式性质推出 $a + 7$ 的值。
  + *[反直觉]* 判断："如果 $a = b$，则 $a^2 = b^2$；反过来，如果 $a^2 = b^2$，则 $a = b$。" 哪一句对、哪一句要打一个反例？给反例并说明这与等式性质（两边同操作要"可逆"）的关系。
  + *[跨知识点]* 用等式性质把 $5 x - 7 = 3 x + 11$ 一步一步化简到 $x = ?$，每一步注明用了哪条性质（同加、同减、同乘、同除）。再说说为什么这就是 #secref("tool:al04-linear-one-variable") 里"移项变号"的真正依据。
  + *[构造题]* 写出三个不同的方程（不要求只是数字不同），让它们都用"两边同除以 $-2$"作为关键一步。给出方程并演示这一步操作；提示注意符号。
  + *[找 Bug]* 小白要解 $(x - 1) / 2 = (x + 3) / 5$，他第一步写："两边同乘 $10$，得到 $x - 1 = x + 3$。" 找出错误位置，并说明：小白为什么会这样想？他把*等式性质*"两边同乘同一个数"与*分数约分*"分子分母同除约掉"混在了一起——这两条规则各自针对的对象是什么？正确该怎样把 $10$ 真正乘到等式两边的*整体*？

  #answer-cut[
  + $a - 9 = b - 9$（等式性质：两边同减 $9$）。
  + $x = 4$（等式性质：两边同除以 $5$，$20 div 5 = 4$）。
  + $x = -13$（移项变号：$+13$ 移到右边变 $-13$）。
  + $-3a = -3b$（等式性质：两边同乘同一个数，等式仍成立）。
  + $x = 15$（移项变号：$-5$ 移到右边变 $+5$，即两边同加 $5$）。
  + $2x = 8$（等式两边同减 $3$：$11 - 3 = 8$）。
  + $x = 6$（等式两边同除以 $4$：$24 div 4 = 6$）。
  + $y = 21$（等式两边同乘 $3$：$7 times 3 = 21$）。
  + 两边同乘 $0$ 后都变成 $0$，原信息丢失；而“由 $0 = 0$ 推回原等式”并不合法。
  + 步骤：$b = 5$ 代入 $a = b + 3$ 得 $a = 8$。再用等式性质：$a = 8$ 两边同加 $7$，得 $a + 7 = 15$。
  + 第一句*对*（两边同平方是合法操作）；第二句*要打反例*：取 $a = 3, b = -3$，$a^2 = b^2 = 9$，但 $a != b$。原因：平方不是可逆操作（开方有 $±$ 两个分支），从 $a^2 = b^2$ 只能推出 $|a| = |b|$，即 $a = ±b$，不能直接说 $a = b$。"两边同操作必须可逆"，这是等式性质背后的一个隐含要求。
  + $5 x - 7 = 3 x + 11$ → 两边同*减* $3 x$：$2 x - 7 = 11$；→ 两边同*加* $7$：$2 x = 18$；→ 两边同*除以* $2$：$x = 9$。验证 $5 times 9 - 7 = 38$，$3 times 9 + 11 = 38$ ✓。"移项变号"其实就是在两边同时加（或减）这一项，呼应 #secref("tool:al04-linear-one-variable")——把 $3 x$ 从右移到左变号，本质是两边同减 $3 x$。
  + 例 1：$-2 x = 14$，两边同除 $-2$ 得 $x = -7$（注意符号反转）。 例 2：$-2 x + 5 = 1$，先两边减 $5$ 得 $-2 x = -4$，再同除 $-2$ 得 $x = 2$。 例 3：$-2(x + 1) = 6$，两边同除 $-2$ 得 $x + 1 = -3$，再减 $1$ 得 $x = -4$。三例共同点：除以负数等式仍成立，但等号两边的符号都要随之翻转（同除负数 = 等式性质 + 符号反转）。
  + 错。两边乘 $10$ 后必须分别乘进每个分式：左边 $(x - 1)/2 times 10 = 5(x - 1)$，右边 $(x + 3)/5 times 10 = 2(x + 3)$。正确化简：$5 x - 5 = 2 x + 6 ⇒ 3 x = 11 ⇒ x = 11/3$。小白的错在于把 $10$ 乘了分母却忘了把分子也对应放大——他只想到"约掉分母"，没真正用同乘 $10$（同乘要乘整个边的全部，而不是只盯分母）。
  ]
]

#side-hack[
  ☞ 代数所有方程解法——一次、二次、分式、根式——都在反复使用这四条性质；几何证明"由等式⋯得⋯"也是在用它们。
]
