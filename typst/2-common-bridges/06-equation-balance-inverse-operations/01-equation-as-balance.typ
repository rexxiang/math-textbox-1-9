#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut, self-check
#import "../../lib/diagram-packages.typ": cetz

=== 方程即天平 <tool:cb06-equation-as-balance>

#vocab[方程 equation][未知量 unknown][解 solution][等式 equation (literal)]

#crisis[
  在 #secref("ch:letters-expressions-relationship-templates") 里，我们学会了用字母写代数式，比如 $3x + 5$。代数式描述了"某个数的 3 倍再加 5"，但它本身不告诉我们 $x$ 是多少。

  如果我想找到"某个数，使得它的 3 倍加 5 恰好等于 17"，用算术的思路只能靠"凑"：试 $x = 4$？$3 times 4 + 5 = 17$，恰好对了。但如果题目是：

  "一批金币，平均分给 $7$ 人还剩 $3$ 枚，平均分给 $6$ 人还差 $4$ 枚，共几枚金币？"

  靠逐一试数，要反复猜测，没有系统。公元 9 世纪，阿拉伯数学家花拉子米（al-Khwārizmī）面对这类问题时意识到一件事：

  算术里的等号只会"宣布结果"，比如 $3 + 4 = 7$ 是说"计算到这里结束了"。但他需要一种等号，能"声明约束"——说"这个未知量必须满足……"，然后系统地把它找出来，而不是靠猜。

  *问题：代数式 $3x + 5$ 和等式 $3x + 5 = 17$ 里的等号，有什么本质上的不同？*
]

#tryit[
  *先用文字描述，体会繁琐。*

  以下三个生活情境，请只用汉字句子描述其中的数量约束（*不要写含 $x$ 的方程*），然后试着根据你的描述推出答案：

  + 一箱苹果，小明先取走 $8$ 个，再取走剩下的一半，最终还剩 $6$ 个。问原来有多少个苹果？
  + 一根绳子对折后比原来短了 $15$ 厘米，对折后的长度是多少？
  + Priya存了 $3$ 周的零花钱，每周同样多，加上家长额外给的 $10$ 元，共 $46$ 元。每周零花钱是多少？
]

#discovery[
  遇到简单问题，算术硬算：Priya存了 $3$ 周零花钱加上家长给的 $10$ 元共 $46$ 元——先减 $10$ 得 $36$，再除以 $3$ 得 $12$，每周 $12$ 元。可以算出来。但如果题目换成"先花了存款总额的一半，再花了 $8$ 元，最后还剩 $14$ 元，原来有多少"？

  试着推下去——

  设原有 $M$ 元：还剩 $M/2 - 8 = 14$，所以 $M/2 = 22$，$M = 44$。凑出来了——但为了找"先做什么后做什么"，要在脑子里*倒着拆*好几步，每道新题都得重新想顺序。

  算术法只能从已知"一步步往后推"；一旦未知量出现在被减、被乘等中间环节里，就必须反向拆解，没有系统。换几道题再试，每一道都得重新拆，毫无章法。

  *两种等号*

  算术里的等号是"计算的终点"：$3 + 4 = 7$ 是说"左边算完了，结果是 $7$"。两边都是已知数，等号只是宣布计算结束。

  但在 $3x + 5 = 17$ 里，$x$ 还不知道。这个等号不是"算完了"，而是一句*断言*："不管 $x$ 是什么，它必须让左边等于右边。"这是一个*约束*，不是一个结果。

  *代数式 vs 方程*

  - $3x + 5$：只是一个*描述*，告诉我们"某数的 3 倍再加 5"——但没有说是多少。任何 $x$ 都能代进去算出一个值。
  - $3x + 5 = 17$：加上等号和右边的 $17$，它变成一个*约束*——只有特定的 $x$ 才能让等号成立。

  哪个 $x$ 满足这个约束？

  - $x = 3$？左边 $= 14$，$14 != 17$，不满足。
  - $x = 4$？左边 $= 17$，$17 = 17$，满足！

  这个满足约束的 $x$ 值，就叫方程的*解*。找它的过程，叫*解方程*。

  *为什么这比"凑答案"好？*

  方程语言让我们先承认未知量 $x$ 的存在，再建立约束，最后系统地推出 $x$ 的值——花拉子米发明的，正是这种思路的系统化方法。把"天平两边保持平衡"作为操作准则，就是下一节的核心。
]


#history-note[
  约公元前 $1$ 世纪，《九章算术》第八章"方程"的书吏要解决一个新问题：单条等式不够用了——粮食、赋税、工分这类问题里同时有好几个未知量。他们把每条方程的系数排成一列算筹（纵横排开，形似今天的矩阵），再逐列相消求解。这种排表化简的工具就叫"方程"——汉语里"方程"二字最早正是从这种"方阵列式"的排法来的，这比欧洲的矩阵方法早了近两千年。约 $820$ 年，波斯数学家花拉子米（al-Khwārizmī）在面对类似问题时，提出"al-jabr"——把减去的项移到等号另一边变成加项——这个动作便是今天所说的"移项"，也是 algebra（代数）一词的源头。

  ☞ 这条历史线索后续在： 花拉子米的天平法在代数分支中被系统扩展为五步标准流程；见 #secref("al04-linear-one-variable")。
]

#history-note[
  *重演花拉子米的天平代数*

  约公元 830 年，花拉子米（al-Khwarizmi）在《代数学》中用"天平法"描述方程：若天平平衡，两边同时加同量、同时减同量，天平仍平衡。他把"还原"（al-jabr，把负项移到对面变正项）和"对消"（al-muqabala，两边同减同量）作为解方程的两个核心操作。

  试用"天平法"重演以下步骤，找出 $x$：

  天平初始平衡：左边 $3 x + 4$，右边 $13$。

  + 执行"对消"操作：两边同时减 $4$，天平还平衡吗？左右各变成什么？
  + 执行"对消"操作：两边同时除以 $3$，得到 $x = ?$
  + 验证：把答案代回原式，确认两边相等。
  + 思考：花拉子米的"al-jabr"（还原）操作对应现代解方程的哪一步？

  #answer-cut[
    + 两边减 $4$：左 $3 x$，右 $9$，天平仍平衡（$3 x = 9$）。
    + 两边除以 $3$：$x = 3$。
    + 验证：$3 times 3 + 4 = 13$ ✓。
    + "al-jabr"（还原）= 把含 $x$ 的"负项"移到等式另一边并变号（移项变号），即现代的"移项"操作；"algebra"一词正源于此。
  ]
]

#blueprint[
  - *方程*：含有未知量的等式。等号在方程里是*约束*——"两边表示同一个数，未知量必须满足这个要求"——而不是"计算到这里结束了"（对比算术里的 $3 + 4 = 7$）。
  - *未知量*：方程里待确定的字母；默认只谈一个未知量时称它为 $x$。
  - *解*：使等号两边相等的未知量取值。
  - *解方程*：找出满足等式约束的未知量值；不是凑答案，而是系统地推导出来。

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
    caption: [方程就是一架天平：两边一样重；对两边做相同的操作，天平仍然平衡],
  )

  #figure(
    cetz.canvas(length: 0.35cm, {
      import cetz.draw: *
      // stage 1: 2x + 3 = 9
      let y0 = 1.0
      content((4.2, 6.4), text(size: 7pt, weight: "bold")[$2x + 3 = 9$], anchor: "south")
      rect((0, y0), (3.6, y0 + 3.8), fill: rgb("#E3F2FD"), stroke: 0.5pt + rgb("#1565C0"), radius: 3pt)
      rect((4.8, y0), (8.4, y0 + 3.8), fill: rgb("#FFF3E0"), stroke: 0.5pt + rgb("#E65100"), radius: 3pt)
      content((4.2, y0 + 2.0), text(size: 12pt, weight: "bold")[=])
      for i in range(2) {
        let bx = 0.35 + i * 1.45
        rect((bx, y0 + 2.35), (bx + 1.1, y0 + 3.25), fill: rgb("#BBDEFB"), stroke: 0.6pt + rgb("#1565C0"), radius: 2pt)
        content((bx + 0.55, y0 + 2.8), text(size: 7pt, weight: "bold", fill: rgb("#0D47A1"))[$x$])
      }
      for i in range(3) {
        let cx = 0.65 + i * 1.0
        circle((cx, y0 + 1.25), radius: 0.28, fill: rgb("#EEEEEE"), stroke: 0.45pt + rgb("#757575"))
        content((cx, y0 + 1.25), text(size: 5pt)[1])
      }
      for i in range(9) {
        let col = calc.rem(i, 3)
        let row = calc.floor(i / 3)
        let cx = 5.35 + col * 0.85
        let cy = y0 + 1.0 + row * 0.8
        circle((cx, cy), radius: 0.25, fill: rgb("#EEEEEE"), stroke: 0.45pt + rgb("#757575"))
        content((cx, cy), text(size: 4.5pt)[1])
      }
      // operation arrow 1
      line((8.9, y0 + 2.0), (10.5, y0 + 2.0), stroke: 0.8pt + rgb("#555"), mark: (end: ">"))
      content((9.7, y0 + 2.45), text(size: 6pt)[两边去 $3$], anchor: "south")

      // stage 2: 2x = 6
      let x2 = 11.0
      content((x2 + 4.2, 6.4), text(size: 7pt, weight: "bold")[$2x = 6$], anchor: "south")
      rect((x2, y0), (x2 + 3.6, y0 + 3.8), fill: rgb("#E3F2FD"), stroke: 0.5pt + rgb("#1565C0"), radius: 3pt)
      rect((x2 + 4.8, y0), (x2 + 8.4, y0 + 3.8), fill: rgb("#FFF3E0"), stroke: 0.5pt + rgb("#E65100"), radius: 3pt)
      content((x2 + 4.2, y0 + 2.0), text(size: 12pt, weight: "bold")[=])
      for i in range(2) {
        let bx = x2 + 0.55 + i * 1.35
        rect((bx, y0 + 2.0), (bx + 1.1, y0 + 2.9), fill: rgb("#BBDEFB"), stroke: 0.6pt + rgb("#1565C0"), radius: 2pt)
        content((bx + 0.55, y0 + 2.45), text(size: 7pt, weight: "bold", fill: rgb("#0D47A1"))[$x$])
      }
      for i in range(6) {
        let col = calc.rem(i, 3)
        let row = calc.floor(i / 3)
        let cx = x2 + 5.35 + col * 0.85
        let cy = y0 + 1.25 + row * 0.8
        circle((cx, cy), radius: 0.25, fill: rgb("#EEEEEE"), stroke: 0.45pt + rgb("#757575"))
        content((cx, cy), text(size: 4.5pt)[1])
      }
      line((x2 + 8.9, y0 + 2.0), (x2 + 10.5, y0 + 2.0), stroke: 0.8pt + rgb("#555"), mark: (end: ">"))
      content((x2 + 9.7, y0 + 2.45), text(size: 6pt)[两边除以 $2$], anchor: "south")

      // stage 3: x = 3
      let x3 = 22.0
      content((x3 + 4.2, 6.4), text(size: 7pt, weight: "bold", fill: rgb("#2E7D32"))[$x = 3$], anchor: "south")
      rect((x3, y0), (x3 + 3.6, y0 + 3.8), fill: rgb("#E8F5E9"), stroke: 0.5pt + rgb("#388E3C"), radius: 3pt)
      rect((x3 + 4.8, y0), (x3 + 8.4, y0 + 3.8), fill: rgb("#FFF3E0"), stroke: 0.5pt + rgb("#E65100"), radius: 3pt)
      content((x3 + 4.2, y0 + 2.0), text(size: 12pt, weight: "bold")[=])
      rect((x3 + 1.25, y0 + 2.0), (x3 + 2.35, y0 + 2.9), fill: rgb("#C8E6C9"), stroke: 0.7pt + rgb("#388E3C"), radius: 2pt)
      content((x3 + 1.8, y0 + 2.45), text(size: 7pt, weight: "bold", fill: rgb("#2E7D32"))[$x$])
      for i in range(3) {
        let cx = x3 + 5.5 + i * 0.9
        circle((cx, y0 + 2.05), radius: 0.27, fill: rgb("#EEEEEE"), stroke: 0.45pt + rgb("#757575"))
        content((cx, y0 + 2.05), text(size: 4.5pt)[1])
      }
      content((13.2, 0.3), text(size: 6pt, fill: rgb("#555"))[每一步左右做同样操作，所以天平一直平衡], anchor: "center")
    }),
    caption: [天平解 $2x+3=9$：初始平衡 → 两边同时去掉 $3$ 个单位砝码 → 两边同时分成 $2$ 份，得到 $x=3$。],
  )
]

#self-check[
  方程 $2x + 3 = 11$ 像一台天平，等号两边各代表什么？你能说出两边到底“各放了什么”吗？
]


#pitfall[
  看看 Luca 在算 $(3 + 5) times 2$ 时这样写：

  #block(inset: (left: 12pt))[
    第 1 步：$3 + 5 = 8$

    第 2 步：$8 times 2 = 16$

    Luca 把两步串成一行：

    $ 3 + 5 = 8 = 8 times 2 = 16 $
  ]

  ✎ 每个数字都对，整行却是错的。错在哪里？

  #block(width: 100%, fill: rgb("#FFFDE7"), radius: 2pt, inset: 8pt)[
    *卡在哪里*：Luca 把等号当成了"接下来"。中间一段 $8 = 8 times 2$ 单独读就是 $8 = 16$——明显不成立。等号要求*两边真正相等*，不是连接两个步骤的箭头。

    *正确做法*：每一步另起一行，或者用箭头/逗号代替等号：

    $ (3 + 5) times 2 = 8 times 2 = 16 $

    （这里的两个等号读成"等于 8，再等于 16"，每一段两边都真的相等。）

    ✓ 正确写法：$(3 + 5) times 2 = 16$。
  ]

  其余常见走错：

  ✗ 把方程当成代数式 → ✓ $2 x - 7$ 不是方程（没有等号）；$2 x - 7 = 0$ 才是。

  ✗ 以为 $x = 0$ 的方程没有解 → ✓ $0$ 也是一个解；关键是代入后两边是否相等。
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

  *挑战*

  + 判断是否存在 $a$ 使 $x = 2$ 同时是两条方程 $2 x - a = 1$ 和 $3 x + a = 8$ 的解；若存在求出，若不存在说明理由。
  + 一辆车从 $A$ 地到 $B$ 地，按 $60$ 千米/小时要用 $t$ 小时；按 $50$ 千米/小时要用 $t + 1$ 小时。设未知量并写出方程，不必求解。
  + *[解释 / 找 Bug]*：小赵（Xiao Zhao）说："等号两边形式一样的就是方程，例如 $a + 2 = 2 + a$。"他的说法对吗？方程的核心特征是什么？请解释"恒等式"和"含未知量待求解的方程"在使用语境上的差别（提示：思考 $a + 2 = 2 + a$ 对所有 $a$ 都成立，而 $x + 2 = 7$ 只对特定 $x$ 成立）。
  + *反直觉*：方程 $x = x$ 有几个解？方程 $x + 1 = x$ 又有几个解？请说明。
  + *跨知识*：把"长方形长是宽的 $2$ 倍少 $1$，周长 $= 22$"写成方程，未知量取宽。请写出方程并尝试解。（跨周长 + 方程）
  + *构造题*：构造一个含未知量 $x$ 的方程，使 $x = 5$ 与 $x = -5$ 同时是它的解。

  #answer-cut[
  + 方程：$a + 2 = 7$（含未知量的等式）；$c - 3 = c - 3$ 非方程（$c$ 不是待确定字母，恒成立属恒等式）；$5b + 1$ 无等号不是方程；$d + 4 > 0$ 是不等式不是方程。
  + 是（代入检验：左 $= 2 times 5 + 1 = 11$，右 $= 11$，两边相等）。
  + 例如 $x + 3 = 3$ 或 $2x = 0$（任何使 $x = 0$ 时等号成立的等式）。
  + 都是方程（都含未知量且有等号）。
  + 是：$4 times 3 - 7 = 12 - 7 = 5$，左 $=$ 右（代入检验法）。
  + $3p = 45$（"$3$ 本共 $45$ 元"翻译成方程），$p = 15$ 元。
  + $2x + 5 = 17$（把"某数的 $2$ 倍加 $5$"翻译成含未知量的等式）。
  + 代入检验：左 $= 3 times (-1) + 4 = 1$，右 $= (-1) + 2 = 1$。左 $=$ 右，所以 $x = -1$ 是解。
  + 由第一式 $a = 3$，代入第二式得 $6 + 3 = 9 != 8$，不存在这样的 $a$（等式性质 + 代入检验）。
  + 例如 $60 t = 50 (t + 1)$。
  + 部分对，需要细化。"含等号的式子"在数学里都可以叫等式；当等式中*含未知量*时叫方程。$a + 2 = 2 + a$ 是恒等式（对所有 $a$ 都成立，由加法交换律保证），实践中我们关注它作为*运算律的陈述*，不会"求解 $a$"。$x + 2 = 7$ 是含未知量的方程，关注的是"找出使等号成立的特定 $x$"——这类等式才是我们要*解*的对象。区别：恒等式 = 永真的等式（不需要求解）；方程 = 含未知量、需要求出特定取值的等式。
  + $x = x$ 不是方程（恒等式，本节定义中归为非方程）；若解释为方程则有无穷多解。$x + 1 = x$ 化简得 $1 = 0$，恒不成立——无解。要点：方程的解可能"无穷多"也可能"无"——取决于化简后是否仍含 $x$ 且能找到使其成立的值（解的个数三种情形）。
  + 设宽 $= x$，则长 $= 2 x - 1$。周长 $= 2 ((2 x - 1) + x) = 2 (3 x - 1) = 6 x - 2 = 22$。解：$6 x = 24, x = 4$（宽 $= 4$，长 $= 7$）。验证周长 $= 2(7+4) = 22$ ✓（跨周长 + 方程）。
  + 例如 $x^2 = 25$（满足 $x = 5$ 或 $x = -5$）。验证：$5^2 = 25$ ✓、$(-5)^2 = 25$ ✓。又如 $|x| = 5$、$x^2 - 25 = 0$ 都行。要点：含*平方 / 绝对值*的方程容易出现"两个对称解"（一元二次方程的雏形）。
  ]
]

#side-hack[
  ☞ "平衡"这个直觉会一直沿用——代数系统化方程解法、函数把"解"解读为图象的交点、几何设未知边/角列方程，都是它的延续。
]
