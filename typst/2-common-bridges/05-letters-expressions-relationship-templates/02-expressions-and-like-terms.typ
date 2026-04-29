#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut, self-check
#import "../../lib/diagram-packages.typ": cetz

=== 代数式与合并同类项 <tool:cb05-expressions-and-like-terms>

#vocab[项 term][同类项 like terms][合并同类项 combining like terms]

#crisis[
  代数式 $3 x + 2 x$ 到底等于 $5 x$ 还是 $5 x^2$？

  如果每次都要现推一遍分配律，就会又慢又容易出错。什么情况下两项能合并，什么情况下不能？
]

#tryit[
  + 指出 $7 a - 3 b + a + 5 b^2$ 中有哪些同类项。
  + 判断 $2 x y$ 与 $2 y x$ 是否同类项，并说明理由。
]

#discovery[
  *先用旧工具试试。* 算术里"$3$ 个苹果加 $2$ 个苹果得 $5$ 个苹果"，字母也一样：$3x + 2x$，两者都是"一个 $x$"，加完得 $5x$——没问题。那 $3x + 2x^2$ 呢？直觉说"都含 $x$，加一下：$3 + 2 = 5$"，结果是 $5x$？还是 $5x^2$？还是 $5x^3$（指数也加上）？

  试着推下去——

  取 $x = 2$：$3 times 2 + 2 times 4 = 6 + 8 = 14$。试"合并结果" $5x = 10$——差 $4$；试 $5x^2 = 20$——差 $6$；试 $5x^3 = 40$——差更大。三种凑法都和 $14$ 对不上。

  *这里卡住了。* 光知道"都含 $x$"，却没办法区分 $x$ 的一次方和二次方——不同次方就像不同单位，不能直接相加。所以我们需要一个新工具来*精确判断两项是否属于同一"种"、可以合并*。

  把代数式看成若干个*项*相加减的串：

  $ 3 x + 2 x - 4 + 5 x^2 - x $

  一共五项：$3 x$、$+2 x$、$-4$、$+5 x^2$、$-x$（符号属于它后面的项）。

  两个项如果*字母部分完全相同*（相同字母、相同指数），就叫*同类项*。上面的例子里：

  - $3 x$、$2 x$、$-x$ 都是 $x$ 的一次项，互为同类项；
  - $5 x^2$ 是 $x$ 的二次项，跟一次项不同类；
  - $-4$ 是常数项，跟带字母的都不同类。

  合并同类项就是“把系数加起来，字母部分不变”：

  $ 3 x + 2 x - x = (3 + 2 - 1) x = 4 x $

  整个式子化简为：

  $ 5 x^2 + 4 x - 4 $

  能不能合并的判据只有两个字：*同类*。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *
      let bw = 3.0
      let bh = 1.8
      let gap = 0.4
      // Group 1: like terms (x terms) in blue
      let gx = 0
      for (i, label) in ((0, [$3 x$]), (1, [$2 x$]), (2, [$-x$])) {
        let x = gx + i * (bw + gap)
        rect((x, 0), (x + bw, bh), fill: rgb("#BBDEFB"), stroke: 1pt + rgb("#1565C0"), radius: 2pt)
        content((x + bw / 2, bh / 2), text(size: 9pt, weight: "bold", fill: rgb("#0D47A1"))[#label])
      }
      content((gx + 1.5 * (bw + gap), bh + 0.8),
        text(size: 8pt, weight: "bold", fill: rgb("#1565C0"))[同类项：都是 $x$ 的一次项], anchor: "south")
      // Group 2: x^2 term (alone) in green
      let g2x = 3 * (bw + gap) + 1.5
      rect((g2x, 0), (g2x + bw, bh), fill: rgb("#C8E6C9"), stroke: 1pt + rgb("#388E3C"), radius: 2pt)
      content((g2x + bw / 2, bh / 2), text(size: 9pt, weight: "bold", fill: rgb("#2E7D32"))[$5 x^2$])
      content((g2x + bw / 2, bh + 0.8),
        text(size: 8pt, weight: "bold", fill: rgb("#2E7D32"))[$x$ 的二次项], anchor: "south")
      // Group 3: constant in amber
      let g3x = g2x + bw + gap + 1.5
      rect((g3x, 0), (g3x + bw, bh), fill: rgb("#FFECB3"), stroke: 1pt + rgb("#F9A825"), radius: 2pt)
      content((g3x + bw / 2, bh / 2), text(size: 9pt, weight: "bold", fill: rgb("#F57F17"))[$-4$])
      content((g3x + bw / 2, bh + 0.8),
        text(size: 8pt, weight: "bold", fill: rgb("#F57F17"))[常数项], anchor: "south")
    }),
    caption: [分类：$3 x$、$2 x$、$-x$ 互为同类项；$5 x^2$ 和 $-4$ 各自一类],
  )
]

#side-hack[
  合并同类项的本质就是分配律反着用：$3 x + 2 x = (3 + 2) x$。先找出公共“字母标签”，再把系数收到一起。
]

#history-note[
  约 $820$ 年，波斯数学家花拉子米（al-Khwārizmī）在《代数学》（_Al-jabr_）中把方程化简归结为两步操作："al-jabr"（补项）和"al-muqābala"（消项合并）。其中"al-muqābala"就是把方程两边的同类项合并——用今天的话说，$3x + 2x$ 合并成 $5x$，正是花拉子米一千多年前已经在做的事。
]

#blueprint[
  - *项*：代数式中被加减号隔开的部分，符号属于它后面的项。
  - *同类项*：字母部分（字母与指数）完全相同的两项。常数项之间互为同类项。
  - *合并同类项*：只把系数相加减，字母部分保持不变。
  - *顺序无所谓*：$x y$ 和 $y x$ 相同（乘法交换律）；$x y$ 和 $x^2$ 不同（指数不一致）。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *
      // Before: 3x + 2x - x as separate bars
      let bw = 2.0
      let bh = 1.2
      // Top: before combining
      content((-3.5, bh / 2), text(size: 7pt, weight: "bold")[合并前：], anchor: "east")
      for (i, w-scale, label, clr) in (
        (0, 3, [$3 x$], rgb("#1565C0")),
        (1, 2, [$2 x$], rgb("#42A5F5")),
        (2, 1, [$-x$], rgb("#90CAF9")),
      ) {
        let x = i * (bw * 3 + 1.0)
        rect((x, 0), (x + bw * w-scale, bh), fill: rgb("#E3F2FD"), stroke: 0.8pt + clr)
        content((x + bw * w-scale / 2, bh / 2), text(size: 8pt, fill: clr)[#label])
      }
      // Plus/minus signs
      content((bw * 3 + 0.5, bh / 2), text(size: 10pt, weight: "bold")[$+$])
      content((bw * 3 + 1.0 + bw * 2 + 0.5, bh / 2), text(size: 10pt, weight: "bold")[$+$])
      // Arrow down
      let mid-x = 6.0
      line((mid-x, -0.5), (mid-x, -1.5), stroke: 1.2pt + rgb("#555"), mark: (end: ">"))
      content((mid-x + 1.5, -1.0), text(size: 7pt, fill: rgb("#555"))[$= (3+2-1)x$], anchor: "west")
      // Bottom: after combining
      let by = -3.2
      content((-3.5, by + bh / 2), text(size: 7pt, weight: "bold")[合并后：], anchor: "east")
      rect((0, by), (bw * 4, by + bh), fill: rgb("#BBDEFB"), stroke: 1.2pt + rgb("#1565C0"))
      content((bw * 2, by + bh / 2), text(size: 9pt, weight: "bold", fill: rgb("#0D47A1"))[$4 x$])
    }),
    caption: [合并同类项：$3 x + 2 x - x = (3 + 2 - 1) x = 4 x$],
  )
]

#self-check[
  $3x$ 与 $3x^2$ 是同类项吗？说出你的判断依据，注意“次数”和“字母”两条都要看。
]


#pitfall[
  看看这段展开计算：

  #block(inset: (left: 12pt))[
    化简 $2(x + 3y) - (x - y)$。

    第 1 行：$= 2x + 3y - x - y$ $quad$ （“2 只乘了 $x$，没乘 $3y$；后面的负号只撤掉了 $x$”）

    第 2 行：$= x + 2y$
  ]

  ✎ 第 1 行有两处错误，你能都指出来吗？

  #block(width: 100%, fill: rgb("#FFFDE7"), radius: 2pt, inset: 8pt)[
    *错处 1*：$2(x + 3y)$ 展开应乘到括号里每一项：$2x + 6y$，不是 $2x + 3y$。

    *错处 2*：$-(x - y)$ 展开应把负号分别作用于每一项：$-x + y$，不是 $-x - y$。

    *正确推导*：
    $ 2(x + 3y) - (x - y) = 2x + 6y - x + y = x + 7y $
  ]

  另外两条：

  ✗ $3x + 2y$ 合并成 $5 x y$ → ✓ 字母部分不同，不是同类项，不能合并

  ✗ 合并时忘了符号：$5a - 3a = 8a$ → ✓ 是 $2a$（符号属于它后面的项）
]

#mastery[
  *基础*

  + 在 $8 a + 5 - 3 a - 2 + b$ 中，有哪些同类项？
  + 化简：$5 x - 2 x + 3$。
  + 化简：$-4 y + y + 7 y$。
  + 化简：$9 a - 3 a + 2 a$。
  + 判断对错：$5 x^2 y$ 与 $5 x y^2$ 是同类项。

  *应用*

  + 化简：$3 a + 2 b - a - 5 b$。
  + 化简：$2 x^2 - 5 x + x^2 + 4 x$。
  + 一个长方形的长比宽长 $3$ 厘米。若宽是 $a$ 厘米，写出它的周长，并化简。

  *挑战*

  + 化简：$-(a - 2 b) + 3 (a + b)$。
  + 若 $3 x + k y$ 与 $-2 x + 5 y$ 的“同类项系数之和”都是 $1$（即 $x$ 的系数加起来等于 $1$、$y$ 的系数加起来等于 $1$），求 $k$。
  + *[找 Bug]*：志强（Zhi Qiang）化简 $5 x - 3 (x - 2)$ 时这样写：$5 x - 3 x - 6 = 2 x - 6$。指出他的错误，写出正确化简过程。
  + *反直觉*：$5 x - 5 x = 0$。那 $5 x^2 - 5 x$ 也等于 $0$ 吗？请说明为什么*不一样*。
  + *跨知识*：化简 $(a + b)^2 - (a - b)^2$。结果说明"两个完全平方之差"等于什么？（跨完全平方公式）
  + *构造题*：构造一个由至少 $4$ 个含字母项组成的多项式，使它化简后只剩一个常数项（无字母）。

  #answer-cut[
  + $8 a$ 与 $-3 a$（都是 $a$ 的一次项）；$5$ 与 $-2$（都是常数项）。$b$ 没有同类项。
  + $3 x + 3$（$5 x - 2 x = 3 x$，合并同类项；$+3$ 是常数项，无可合并项）。
  + $4 y$（$-4 + 1 + 7 = 4$，系数相加，字母不变）。
  + $8 a$（系数相加：$9 - 3 + 2 = 8$，字母部分不变，合并同类项）。
  + 错误（$x^2 y$ 与 $x y^2$ 字母部分的指数不同，不是同类项）。
  + $2 a - 3 b$（$a$ 类：$3 - 1 = 2$；$b$ 类：$2 - 5 = -3$；分类合并）。
  + $3 x^2 - x$（$x^2$ 类：$2 + 1 = 3$；$x$ 类：$-5 + 4 = -1$；不同次项分开合并）。
  + 周长 $= 2 (a + (a + 3)) = 4 a + 6$ 厘米。
  + 先去括号：$-(a - 2b) = -a + 2b$，$3(a + b) = 3a + 3b$。合并：$a$ 类 $-1 + 3 = 2$，$b$ 类 $2 + 3 = 5$。结果 $2a + 5b$。
  + $x$ 的系数：$3 + (-2) = 1 "，满足"$；$y$ 的系数 $k + 5 = 1$，所以 $k = -4$。
  + 错误：去括号时 $-3$ 只乘了 $x$，忘了乘 $-2$（应当变号）。正确：$-3(x - 2) = -3 x + 6$，所以 $5 x - 3(x - 2) = 5 x - 3 x + 6 = 2 x + 6$（不是 $2 x - 6$）。要点：括号前面是负号 / 负系数时，括号内每一项都要变号。
  + *不等于 $0$*。$5 x^2$ 和 $5 x$ 的字母部分指数不同（$x^2$ 与 $x$）——*不是同类项*，不能合并。所以 $5 x^2 - 5 x$ 化简后仍是 $5 x^2 - 5 x$（不能再约）。陷阱：系数相同 + 字母外形相似不代表同类——*指数也要相同*才行（同类项 = 字母 + 指数都相同）。
  + $(a + b)^2 - (a - b)^2 = (a^2 + 2 a b + b^2) - (a^2 - 2 a b + b^2) = 4 a b$。结果 $= 4 a b$。说明：两个完全平方的*差*恰好等于"两数乘积的 4 倍"（跨完全平方）。这也是平方差公式的一种深化：$X^2 - Y^2 = (X - Y)(X + Y)$；这里 $X = a + b$、$Y = a - b$，$X - Y = 2 b$、$X + Y = 2 a$，$(2 a)(2 b) = 4 a b$ ✓。
  + 例：$3 a + 2 b - 3 a + 5 - 2 b + 7$。合并：$a$ 类：$3 - 3 = 0$；$b$ 类：$2 - 2 = 0$；常数：$5 + 7 = 12$。结果 $= 12$（无字母）。要点：构造时让所有同字母系数相加为 $0$，常数项保留即可（系数巧合互消）。
  ]
]

#side-hack[
  ☞ 代数整式的加减运算，就是这节合并同类项在更复杂式子上的推广；写 $y = a x^2 + b x + c$ 时，"项"的概念也直接来自这里。
]
