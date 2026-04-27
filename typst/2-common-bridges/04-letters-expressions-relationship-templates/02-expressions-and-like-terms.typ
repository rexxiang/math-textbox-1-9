#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref
#import "../../lib/diagram-packages.typ": cetz

=== 代数式与合并同类项 <tool:cb04-expressions-and-like-terms>

#vocab[项 term][同类项 like terms][合并同类项 combining like terms]

#crisis[
  代数式 $3 x + 2 x$ 到底等于 $5 x$ 还是 $5 x^2$？

  如果每次都要现推一遍分配律，就会又慢又容易出错。*我们需要一个能一眼看出“谁能合并、谁不能合并”的判别法。*
]

#history-note[
  约 $820$ 年，波斯数学家花拉子米（al-Khwārizmī）在《代数学》（_Al-jabr_）中把方程化简归结为两步操作："al-jabr"（补项）和"al-muqābala"（消项合并）。其中"al-muqābala"就是把方程两边的同类项合并——用今天的话说，$3x + 2x$ 合并成 $5x$，正是花拉子米一千多年前已经在做的事。
]

#discovery[
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

#tryit[
  + 指出 $7 a - 3 b + a + 5 b^2$ 中有哪些同类项。
  + 判断 $2 x y$ 与 $2 y x$ 是否同类项，并说明理由。
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

#pitfall[
  *高频错误*

  ✗ 把 $3 x + 2 y$ 合并成 $5 x y$
  → ✓ 它们不是同类项，根本不能合并。

  ✗ 合并时忘了符号
  → ✓ 符号属于它后面的项：$5 a - 3 a = 2 a$，不是 $8 a$。

  ✗ 把 $x$ 和 $x^2$ 当成同类项
  → ✓ 指数不同就不是同类项。
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

  *挑战 ☞ 选做*

  + 化简：$-(a - 2 b) + 3 (a + b)$。
  + 若 $3 x + k y$ 与 $-2 x + 5 y$ 的“同类项系数之和”都是 $1$（即 $x$ 的系数加起来等于 $1$、$y$ 的系数加起来等于 $1$），求 $k$。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
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
]

#side-hack[
  *☞ 这会在后面哪里再出现*

  - 代数分支第 1 章整式的加减运算就是这一节的大规模推广。
  - 函数分支在写 $y = a x^2 + b x + c$ 时，“系数 + 幂次”正是本节的项结构。
  - 数据分支在写线性组合 $alpha x + beta y$（如加权平均）时，也需要辨清“谁和谁能合并”。
]
