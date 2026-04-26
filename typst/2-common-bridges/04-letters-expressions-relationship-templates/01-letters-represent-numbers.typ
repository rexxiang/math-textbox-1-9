#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref
#import "../../lib/diagram-packages.typ": cetz

=== 字母代替数：规则代替一次计算 <tool:cb04-letters-represent-numbers>

#vocab[变量 variable][常量 constant][代数式 algebraic expression][系数 coefficient]

#crisis[
  一斤苹果 $6$ 元，买 $3$ 斤是 $18$ 元。下次如果买 $7$ 斤呢？$10$ 斤呢？

  一次次算下去像在抄同一张草稿。*我们希望写一条公式，让“买几斤”这个未知量代入一次就能解决所有情况。*
]

#history-note[
  用字母代替数的习惯是 $16$ 世纪才逐步稳定下来的。把“未知数”写成 $x$、把“已知常数”写成 $a$、$b$，这个约定让很多原来只能口头描述的规则第一次变成可以运算的对象。
]

#discovery[
  让 $n$ 表示“买几斤”。那么要付的钱数就是：

  $ 6 n $

  这就是一个*代数式*。它没具体结果，但任何时候把 $n$ 换成具体数，都能立刻算出结果：

  - $n = 3$：$6 times 3 = 18$；
  - $n = 7$：$6 times 7 = 42$；
  - $n = 10$：$6 times 10 = 60$。

  $n$ 这种“能代表不同数”的字母叫*变量*；$6$ 这种固定不变的数叫*常量*。乘号通常省略：$6 n$ 就是 $6 times n$。

  字母并没有脱离数的世界——只要它代表一个数，四则运算、运算律（#secref("pf02-order-laws")）就仍然成立：

  $ 6 (n + 2) = 6 n + 12 $

  正是分配律；它对 $n$ 是具体数还是字母都成立。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *
      // Rectangle: width = 6, height = n
      let w = 10
      let h = 5
      rect((0, 0), (w, h), fill: rgb("#E3F2FD"), stroke: 1.5pt + rgb("#1565C0"), radius: 3pt)
      // Labels
      content((w / 2, -0.8), text(size: 9pt, weight: "bold", fill: rgb("#1565C0"))[$6$], anchor: "north")
      content((-0.8, h / 2), text(size: 9pt, weight: "bold", fill: rgb("#1565C0"))[$n$], anchor: "east")
      // Area label inside
      content((w / 2, h / 2), text(size: 12pt, weight: "bold", fill: rgb("#0D47A1"))[$S = 6 n$])
      // Dimension arrows
      line((-0.3, 0), (-0.3, h), stroke: 0.8pt + rgb("#555"), mark: (start: "|", end: "|"))
      line((0, -0.3), (w, -0.3), stroke: 0.8pt + rgb("#555"), mark: (start: "|", end: "|"))
    }),
    caption: [面积模型：长 $6$、宽 $n$ 的长方形面积就是代数式 $6 n$],
  )
]

#side-hack[
  看到代数式时，默念一句“当 $n$ 被具体数替换时，这条式子就变回小学算术”。这句话能帮你克服“字母看起来很抽象”的紧张感。
]

#tryit[
  + 把“甲每月存 $200$ 元，存了 $m$ 个月”写成代数式。
  + 当 $a = 3$ 时，求代数式 $4 a - 5$ 的值。
  + 代数式 $-3 x$ 的系数是多少？变量是哪个？
]

#blueprint[
  - *代数式*：由数、字母、运算符号（加、减、乘、除、乘方）按运算规则组成的一串式子。单独一个数或字母也算代数式。
  - *变量*：可以代表不同数的字母；*常量*：固定不变的数。
  - *系数*：代数式中字母前面的数字部分；$-3 x$ 的系数是 $-3$，不是 $3$。
  - *代入求值*：把变量换成具体数，按运算顺序（#secref("pf02-order-laws")）计算。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *
      // Input-formula-output machine
      let bx = 0
      // Input box
      rect((bx, 0), (bx + 4, 2.5), fill: rgb("#E8F5E9"), stroke: 1.2pt + rgb("#388E3C"), radius: 3pt)
      content((bx + 2, 1.25), text(size: 9pt, weight: "bold", fill: rgb("#2E7D32"))[$n = 7$])
      content((bx + 2, -0.6), text(size: 7pt, fill: rgb("#555"))[输入], anchor: "north")
      // Arrow
      line((bx + 4.5, 1.25), (bx + 7.5, 1.25), stroke: 1.5pt + rgb("#555"), mark: (end: ">"))
      // Formula box
      rect((bx + 8, 0), (bx + 14, 2.5), fill: rgb("#FFF9C4"), stroke: 1.2pt + rgb("#F9A825"), radius: 3pt)
      content((bx + 11, 1.25), text(size: 9pt, weight: "bold", fill: rgb("#F57F17"))[$6 times n$])
      content((bx + 11, -0.6), text(size: 7pt, fill: rgb("#555"))[公式], anchor: "north")
      // Arrow
      line((bx + 14.5, 1.25), (bx + 17.5, 1.25), stroke: 1.5pt + rgb("#555"), mark: (end: ">"))
      // Output box
      rect((bx + 18, 0), (bx + 22, 2.5), fill: rgb("#FFCDD2"), stroke: 1.2pt + rgb("#C62828"), radius: 3pt)
      content((bx + 20, 1.25), text(size: 9pt, weight: "bold", fill: rgb("#C62828"))[$42$])
      content((bx + 20, -0.6), text(size: 7pt, fill: rgb("#555"))[输出], anchor: "north")
    }),
    caption: [代入求值：把 $n = 7$ 代入公式 $6 n$，输出 $42$],
  )
]

#pitfall[
  *高频错误*

  ✗ 把 $6 n$ 理解成“$6$ 后面写了个 $n$”
  → ✓ 它表示 $6 times n$；字母和数相邻时有隐含的乘号。

  ✗ 把 $-3 x$ 的系数写成 $3$
  → ✓ 系数要带符号；$-3 x$ 的系数是 $-3$。

  ✗ 代入求值时忘了括号
  → ✓ 当代入的是负数或带运算的表达式时，必须加括号，如 $4 a - 5$ 在 $a = -2$ 时要写 $4 times (-2) - 5$。
]

#mastery[
  *基础*

  + 用代数式表示：“一本书每本 $x$ 元，买 $5$ 本共花多少钱？”
  + 用代数式表示：“甲的年龄是乙的 $2$ 倍减 $3$，乙今年 $y$ 岁，甲多少岁？”
  + 写出代数式 $-7 a$、$0.5 b$、$-x$ 的系数。

  *应用*

  + 当 $x = 5$ 时，求 $2 x^2 - 3 x + 1$ 的值。
  + 当 $a = -2$ 时，求 $4 - 3 a$ 的值。
  + 长方形长 $a$ 米、宽 $b$ 米。写出周长和面积各自的代数式。

  *挑战 ☞ 选做*

  + 若 $a + b = 6$，求 $3(a + b) - 7$ 的值；你用到了哪条运算律？
  + 某商品原价 $p$ 元，打 $r%$ 出售（其中 $r$ 为百分号前的数字）。写出售价的代数式。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + $5 x$。
  + $2 y - 3$。
  + $-7$、$0.5$、$-1$。
  + $2 times 25 - 15 + 1 = 36$。
  + $4 - 3 times (-2) = 10$。
  + 周长 $2 (a + b)$；面积 $a b$。
  + $3 times 6 - 7 = 11$；用到了“整体代入”思想，本质是 $3(a + b) = 3 a + 3 b$ 的分配律。
  + 售价 $= p times r / 100$（或 $(r / 100) p$）。
]

#side-hack[
  *☞ 这会在后面哪里再出现*

  - 代数分支第 1 章整式与合并同类项会把“字母也要跟数一样被运算”正式推开。
  - 函数分支把 $f(x)$ 看成“输入 $x$、按代数式计算、输出一个数”的过程。
  - 数据分支用 $x_i$、$bar(x)$ 表达原始数据和均值，本节的变量约定是前提。
]
