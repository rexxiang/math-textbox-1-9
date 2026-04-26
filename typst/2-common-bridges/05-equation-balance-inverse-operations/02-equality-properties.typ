#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref
#import "../../lib/diagram-packages.typ": cetz

=== 等式性质：保持天平平衡 <tool:cb05-equality-properties>

#vocab[等式性质 properties of equality][同加同减][同乘同除]

#crisis[
  方程是个天平。想把未知量“请出来”，你得一步步变形，但每一步都*不能破坏平衡*。到底什么样的变形是合法的？

  *我们要把“合法变形”归纳成四条明确可查的等式性质。*
]

#history-note[
  古希腊欧几里得《几何原本》的五条公理里，第一条就是“等量加等量，其和相等”。这条朴素的约定，正是今天等式性质的老祖宗。
]

#discovery[
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
  + 在等式 $x - 7 = 4$ 两边同时加 $7$，写出变形结果。
  + 在等式 $3 x = 21$ 两边同时除以 $3$，写出变形结果。
]

#blueprint[
  - *四条基本性质*（$a = b$）：
    - 两边同加同减同一个数：$a plus.minus c = b plus.minus c$；
    - 两边同乘同一个数：$a c = b c$；
    - 两边同除同一个非零数：$a / c = b / c$（$c != 0$）。
  - *推论：移项变号*。把等式一边的某项移到另一边时，符号相反。
  - *合法变形集合*：加减乘除同一个数 $+$ 在等式两侧各自合并同类项（#secref("cb04-expressions-and-like-terms")）。其他“化简”都必须可以归约到这几条。
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

  *挑战 ☞ 选做*

  + 说明为什么“等式两边不能同乘 $0$ 再做比较”。
  + 已知 $a = b + 3$，$b = 5$，利用等式性质推出 $a + 7$ 的值。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
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
]

#side-hack[
  *☞ 这会在后面哪里再出现*

  - 代数分支所有方程解法（一次、二次、分式、根式）都在反复使用本节四条性质。
  - 几何分支证明题里出现“由等式 ... 得 ...”也是在用这些性质。
  - 函数分支讨论“若 $f(a) = f(b)$”之类命题时，两边同时作某种操作也源于本节。
]
