#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 运算顺序与运算律：让结构不走样 <tool:pf02-order-laws>

#vocab[运算顺序 order of operations][运算律 laws of operations][分配律 distributive law]

#crisis[
  计算 $3 + 4 times 5$ 时，有人先算加法得 35，有人先算乘法得 23。

  如果同一道题能算出两个答案，式子就没法沟通了。

  *我们需要规则，不是为了死记顺序，而是为了保护式子原本表示的结构。*
]

#discovery[
  在 $3 + 4 times 5$ 里，$4 times 5$ 本来表示“5 个 4”这个整体。如果先算 $3 + 4$，就把原来的结构改坏了。


  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let red = rgb("#F44336")
      let green = rgb("#4CAF50")

      // Expression: 3 + 4 × 5
      content((0, 8), text(weight: "bold", size: 11pt)[$3 + 4 times 5$], anchor: "west")

      // Step 1: multiply first (circled)
      rect((5.5, 6.5), (11, 8.5), stroke: 1.5pt + red, radius: 3pt)
      content((8, 5.5), text(fill: red, size: 8pt)[① 先算乘法], anchor: "north")
      line((8, 6.3), (8, 5.9), stroke: 0.8pt + red, mark: (end: ">"))

      // Arrow down to result
      content((4, 3.5), text(weight: "bold", size: 11pt)[$3 + 20$], anchor: "west")
      line((5, 6.2), (5, 4.2), stroke: 0.8pt + luma(120), mark: (end: ">"))

      // Step 2: add
      content((4, 1), text(weight: "bold", size: 11pt)[$= 23$], anchor: "west")
      content((10, 2.5), text(fill: blue, size: 8pt)[② 再算加法], anchor: "west")
      line((5, 3.0), (5, 1.8), stroke: 0.8pt + luma(120), mark: (end: ">"))
    }),
    caption: [$3 + 4 times 5$：先乘除、后加减],
  )

  所以我们约定：

  - 有括号先算括号
  - 没有括号时先乘除，后加减
  - 同级运算从左到右

  另一方面，有些改写不会破坏结构，反而更方便：

  - $48 + 52 + 27 = (48 + 52) + 27$
  - $25 times 4 times 7 = (25 times 4) times 7$
  - $6 times (9 + 1) = 6 times 9 + 6 times 1$

  这些就是运算律在工作。
]

#side-hack[
  看见 25 和 4、125 和 8 这样的“好朋友”时，先想能不能用交换律、结合律把它们抱到一起；看见同一个因数反复出现时，想想能不能用分配律提出来。
]

#tryit[
  先自己试试：

  + 计算 $24 - 8 div 4 + 3 times 2$。
  + 把 $7 times 9 + 7$ 改写成一个乘法式。
]

#history-note[
  欧几里得（Euclid，约公元前 300 年）在《几何原本》第二卷中用几何图形展示了分配律——把一个矩形拆成两部分再分别算面积。两千多年后的 1814 年，法国数学家塞尔瓦（François Servois）第一次给“交换律”和“分配律”起了正式名字。这些运算律让心算时的“换顺序、凑整、提出来”有了严格的依据。
]

#side-hack[
  *重演韦达的字母代数：用字母表达分配律*

  16 世纪，法国数学家弗朗索瓦·韦达（Viète）首创用字母同时代表已知量和未知量，让代数从"解某道具体题"升级到"描述一类规律"。下面重演这个思想：

  + 用具体数字验证分配律：取 $a = 5, b = 3, c = 7$，计算 $a times (b + c)$ 和 $a times b + a times c$，两者相等吗？
  + 再取三组不同数字（自己选），各自验证一次。
  + 现在用字母 $a, b, c$ 写出分配律的一般形式：$a times (b + c) = ?$
  + 思考：如果不用字母，只用语言描述这条规律，句子会有多长？字母表示法的优势是什么？

  #answer-cut[
    + $5 times (3 + 7) = 5 times 10 = 50$；$5 times 3 + 5 times 7 = 15 + 35 = 50$。相等。
    + （由读者自选，验证过程类似）
    + $a times (b + c) = a times b + a times c$。
    + 字母表示的优势：简洁、普遍（适用于所有数）、可以代数运算（化简、变形）；语言描述会变成"一个数乘以两个数的和，等于这个数分别乘以这两个数再相加"——冗长且不便运算。
  ]
]

#blueprint[
  - *运算顺序*：有括号先算括号；无括号时先乘除，后加减；同级从左到右。
  - *交换律与结合律*：在加法中、乘法中可以重排和重组，帮助凑整与配对。
  - *分配律*：$a times (b + c) = a times b + a times c$

  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let green = rgb("#4CAF50")
      let light-blue = rgb("#E3F2FD")
      let light-green = rgb("#C8E6C9")

      // Left: 6 × (9+1) as one big rectangle
      content((5, 8), text(weight: "bold", size: 9pt)[$6 times (9 + 1) = 6 times 10$], anchor: "south")

      // Right side: split into 6×9 + 6×1
      // 6 rows × 9 columns
      for row in range(6) {
        for col in range(9) {
          rect((col * 1.3, row * 1.1), (col * 1.3 + 1.2, row * 1.1 + 1.0),
               fill: light-blue, stroke: 0.3pt + blue)
        }
      }

      // 6 rows × 1 column
      for row in range(6) {
        rect((9 * 1.3, row * 1.1), (9 * 1.3 + 1.2, row * 1.1 + 1.0),
             fill: light-green, stroke: 0.3pt + green)
      }

      // Labels
      content((5.85, -0.8), text(size: 8pt, fill: blue)[$6 times 9$], anchor: "north")
      content((12, -0.8), text(size: 8pt, fill: green)[$6 times 1$], anchor: "north")

      // Dividing line
      line((9 * 1.3 - 0.1, -0.2), (9 * 1.3 - 0.1, 6.8), stroke: (dash: "dashed", paint: luma(120), thickness: 1pt))
    }),
    caption: [分配律面积模型：$6 times (9+1) = 6 times 9 + 6 times 1$],
  )
，也能反过来把共同因数提出来。
]

#pitfall[
  *高频错误*

  ✗ 把“交换律”推广到所有运算，觉得减法除法也能随便换顺序
  → ✓ 这里主要安全地用于加法和乘法；减法、除法通常不能这样换。

  ✗ 会背“先乘除后加减”，却不知道原因
  → ✓ 真正原因是：乘法常常先把相同结构打包，若先加减，原式的意思会被改掉。
]

#mastery[
  *基础*

  + 计算：$30 - 12 div 3 + 5 times 2$。
  + 用运算律快算：$36 + 64 + 25$。
  + 用分配律改写：$9 times 8 + 9 times 2$。
  + 判断对错并改正："减法也满足交换律，所以 $8 - 3 = 3 - 8$。"
  + 在 $5 + 6 times 3$ 中，应该先算哪一步？为什么？

  *应用*

  + 为什么 $5 times (12 + 8)$ 可以先算括号？这在情境里对应什么？
  + 小店卖出 19 支铅笔和 1 支钢笔，每支都 7 元。为什么 $19 times 7 + 1 times 7$ 可以更快算？

  *挑战 ☞ 选做*

  + 解释为什么 $3 + 4 times 5$ 和 $(3 + 4) times 5$ 不是同一个问题。
  + 如果把 $8 times 27 + 2 times 27$ 看成“10 个 27”，这一步到底用了什么结构眼光？

  #answer-cut[
  + 先乘除后加减：$12 div 3 = 4$，$5 times 2 = 10$，再算 $30 - 4 + 10 = 36$（运算顺序：先乘除后加减）。
  + $(36 + 64) + 25 = 100 + 25 = 125$（加法交换律 + 结合律）。
  + $9 times (8 + 2) = 9 times 10 = 90$（分配律逆用：提公因数）。
  + 错；减法没有交换律，$8 - 3 = 5$ 而 $3 - 8$ 在整数范围内无意义（交换律仅适用于加法和乘法）。
  + 先算 $6 times 3 = 18$，因为乘法优先于加法；再算 $5 + 18 = 23$（运算顺序：先乘除后加减）。
  + 因为括号先把 12 和 8 合成一个整体 20，表示每组里一共有 20 个，再乘 5 组得 $5 times 20 = 100$（括号优先）。
  + 两个项里都有因数 7，可以用分配律逆用提出来：$(19 + 1) times 7 = 20 times 7 = 140$（分配律）。
  + 前者是 $3 +$ “5 个 4”$= 3 + 20 = 23$，后者是“3 加 4”后再取 5 组 $= 7 times 5 = 35$。结构不同，所以结果不同（运算顺序改变了式子的含义）。
  + 用了分配律反过来提公因数：$8 times 27 + 2 times 27 = (8 + 2) times 27 = 10 times 27 = 270$。看见了两组同样大小的 27 可以先合并组数（分配律逆用）。
  ]
]
