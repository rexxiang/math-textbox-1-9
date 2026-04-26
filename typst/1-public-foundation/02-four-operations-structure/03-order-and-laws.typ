#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall
#import "../../lib/diagram-packages.typ": cetz

=== 运算顺序与运算律：让结构不走样 <tool:pf02-order-laws>

#vocab[运算顺序 order of operations][运算律 laws of operations][分配律 distributive law]

#crisis[
  计算 $3 + 4 times 5$ 时，有人先算加法得 35，有人先算乘法得 23。

  如果同一道题能算出两个答案，式子就没法沟通了。

  *我们需要规则，不是为了死记顺序，而是为了保护式子原本表示的结构。*
]

#history-note[
  运算顺序和运算律让复杂算式可以被不同的人以同样方式理解，也让心算时的“换顺序、凑整、提出来”变得合法。
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
  + 把 $48 + 27 + 52$ 改写成更便于心算的样子。
  + 把 $7 times 9 + 7$ 改写成一个乘法式。
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

  *应用*

  + 为什么 $5 times (12 + 8)$ 可以先算括号？这在情境里对应什么？
  + 小店卖出 19 支铅笔和 1 支钢笔，每支都 7 元。为什么 $19 times 7 + 1 times 7$ 可以更快算？

  *挑战 ☞ 选做*

  + 解释为什么 $3 + 4 times 5$ 和 $(3 + 4) times 5$ 不是同一个问题。
  + 如果把 $8 times 27 + 2 times 27$ 看成“10 个 27”，这一步到底用了什么结构眼光？

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + $24 - 2 + 6 = 28$。
  + $(36 + 64) + 25 = 125$。
  + $9 times (8 + 2)$。
  + 因为括号先把 12 和 8 合成一个整体，表示每组里一共有 20 个，再乘 5 组。
  + 因为两个项里都有 7，可以写成 $(19 + 1) times 7 = 20 times 7 = 140$。
  + 前者是在 3 和“5 个 4”相加，后者是在“3 加 4”之后再取 5 组，结构不同。
  + 用了分配律反过来提公因数，也说明你看见了两个同样大小的 27 组可以先合并组数。
]
