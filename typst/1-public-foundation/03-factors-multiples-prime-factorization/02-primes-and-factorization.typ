#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall
#import "../../lib/diagram-packages.typ": cetz

=== 质数、合数与质因数分解 <tool:pf03-primes-factorization>

#vocab[质数 prime number][合数 composite number][质因数分解 prime factorization]

#crisis[
  这是一个反直觉的事实：所有比 1 大的整数，不管多大，都可以用一小撮"拆不动"的数乘出来——而且拆法本质上只有一种。

  拿 12 试试：$3 times 4$ → $3 times 2 times 2$，拆到底了。可 7 怎么拆都只能写成 $1 times 7$。

  *有没有一些数像基本砖块，已经拆不动；而另一些数其实是由这些砖块拼起来的？*
]

#history-note[
  约公元前 300 年，欧几里得（Euclid）在《几何原本》第九卷命题 20 中证明了“素数有无穷多个”——这是数学史上最早也最优美的证明之一。稍后，埃拉托斯特尼（Eratosthenes，约公元前 276–194 年）发明了“筛法”：把 2 的倍数划掉、3 的倍数划掉……层层筛过后剩下的就是素数。这两个工具至今仍是认识素数的起点。
]

#discovery[
  观察几个数：

  - 6 可以拆成 $2 times 3$
  - 12 可以拆成 $2 times 2 times 3$
  - 7 除了 1 和 7 自己，没有别的整齐拆法

  于是整数开始分成两类：

  - 像 2、3、5、7 这样，只有 1 和自身两个正因数的数，叫质数
  - 像 4、6、8、9、12 这样，还能拆出别的因数的数，叫合数

  合数继续往里拆，最后总会拆成若干个质数的乘积，这就叫质因数分解。

  #figure(
    cetz.canvas(length: 0.38cm, {
      import cetz.draw: *

      let prime-fill = rgb("#C8E6C9")
      let prime-stroke = rgb("#2E7D32")
      let comp-fill = rgb("#E0E0E0")
      let comp-stroke = luma(120)

      // Helper: draw a node circle with label
      let node(pos, lbl, is-prime) = {
        circle(pos, radius: 1.1,
          fill: if is-prime { prime-fill } else { comp-fill },
          stroke: 1.2pt + if is-prime { prime-stroke } else { comp-stroke })
        content(pos, text(weight: "bold", size: 9pt, lbl))
      }

      // Positions (y increases upward)
      let n60  = (8, 9)
      let n2a  = (4, 6)
      let n30  = (12, 6)
      let n2b  = (9, 3)
      let n15  = (15, 3)
      let n3   = (12, 0)
      let n5   = (18, 0)

      // Connecting lines (drawn first, behind nodes)
      for (p, c) in ((n60, n2a), (n60, n30), (n30, n2b), (n30, n15), (n15, n3), (n15, n5)) {
        line(p, c, stroke: 1pt + luma(100))
      }

      // Nodes
      node(n60, [60], false)
      node(n2a, [2], true)
      node(n30, [30], false)
      node(n2b, [2], true)
      node(n15, [15], false)
      node(n3,  [3], true)
      node(n5,  [5], true)

      // Legend dots
      circle((3, -2), radius: 0.4, fill: prime-fill, stroke: 0.8pt + prime-stroke)
      content((4.2, -2), text(size: 7pt)[\= 质数（拆不动）], anchor: "west")
      circle((11, -2), radius: 0.4, fill: comp-fill, stroke: 0.8pt + comp-stroke)
      content((12.2, -2), text(size: 7pt)[\= 合数（还能拆）], anchor: "west")

      // Result line
      content((10, -4), text(size: 10pt)[$ 60 = 2 times 2 times 3 times 5 $])
    }),
    caption: [质因数分解树：$60 = 2 times 2 times 3 times 5$],
  )
]

#side-hack[
  判断一个数是不是质数时，不必从 $2$ 一直试到它本身。试除到"自己乘自己大于等于被测数"的那个因数为止就够了——如果到那里还没找到因数，后面也不会有。例如测 $37$：$6 times 6 = 36 < 37$、$7 times 7 = 49 > 37$，所以只需试 $2, 3, 4, 5, 6$。
]

#tryit[
  先自己试试：

  + 17 是质数还是合数？21 呢？
  + 把 18 和 60 做质因数分解。
]

#blueprint[
  - *质数*：大于 1，且正因数只有 1 和自身两个。
  - *合数*：大于 1，且除了 1 和自身以外还有别的正因数。
  - *1 既不是质数也不是合数*。

  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *

      let prime-fill = rgb("#C8E6C9")
      let prime-stroke = rgb("#2E7D32")
      let comp-fill = rgb("#FFCDD2")
      let comp-stroke = rgb("#C62828")
      let neither-fill = rgb("#E0E0E0")

      // Number grid 1-20
      for i in range(20) {
        let row = calc.quo(i, 10)
        let col = calc.rem(i, 10)
        let n = i + 1
        let x = col * 2.5
        let y = (1 - row) * 2.5

        let primes = (2, 3, 5, 7, 11, 13, 17, 19)
        let is-prime = primes.contains(n)
        let is-one = n == 1

        let fill-c = if is-one { neither-fill } else if is-prime { prime-fill } else { comp-fill }
        let stroke-c = if is-one { luma(120) } else if is-prime { prime-stroke } else { comp-stroke }

        rect((x, y), (x + 2.2, y + 2.2), fill: fill-c, stroke: 0.8pt + stroke-c, radius: 2pt)
        content((x + 1.1, y + 1.1), text(weight: "bold", size: 8pt, str(n)))
      }

      // Legend
      let ly = -1.5
      rect((0, ly), (1.2, ly + 1), fill: prime-fill, stroke: 0.6pt + prime-stroke, radius: 2pt)
      content((1.6, ly + 0.5), text(size: 7pt)[\= 质数], anchor: "west")
      rect((6, ly), (7.2, ly + 1), fill: comp-fill, stroke: 0.6pt + comp-stroke, radius: 2pt)
      content((7.6, ly + 0.5), text(size: 7pt)[\= 合数], anchor: "west")
      rect((13, ly), (14.2, ly + 1), fill: neither-fill, stroke: 0.6pt + luma(120), radius: 2pt)
      content((14.6, ly + 0.5), text(size: 7pt)[\= 既不是质数也不是合数], anchor: "west")
    }),
    caption: [1 到 20 中的质数与合数一览],
  )

  - *质因数分解*：把一个合数写成若干质数相乘的形式。
]

#pitfall[
  *高频错误*

  ✗ 把 1 看成最小的质数
  → ✓ 质数要有恰好两个正因数，1 只有一个正因数。

  ✗ 以为合数只要能拆成两个数相加就行
  → ✓ 判断质数合数看的是因数，不是加法拆分。
]

#mastery[
  *基础*

  + 在 $1, 2, 3, 4, 6, 9, 11, 15$ 中，哪些是质数，哪些是合数，哪些两者都不是？
  + 把 18 做质因数分解。
  + 把 60 做质因数分解。
  + 判断对错并改正："9 是质数，因为它是奇数。"
  + 从 20 到 30 之间，找出所有质数。

  *应用*

  + 为什么 28 是合数？请至少给出一种拆法。
  + 如果一个数的因数恰好有 1、2、4、7、14、28，它属于哪一类？

  *挑战 ☞ 选做*

  + 为什么说质数像“整数的砖块”？请结合 12 和 30 的分解来解释。
  + 试想：如果把 1 也算作质数，会给质因数分解带来什么混乱？

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + 质数：2、3、11；合数：4、6、9、15；两者都不是：1（质数定义：恰好有两个正因数）。
  + $18 = 2 times 3^2$（短除法：$18 div 2 = 9$，$9 = 3 times 3$）。
  + $60 = 2^2 times 3 times 5$（短除法：$60 div 2 = 30$，$30 div 2 = 15$，$15 div 3 = 5$）。
  + 错；9 是合数，因为 $9 = 3 times 3$，除了 1 和 9 还有因数 3。奇数不一定是质数（质数 ≠ 奇数）。
  + 23、29。（逐一检验：21 = 3 × 7，22 = 2 × 11，24 = 2³ × 3，25 = 5²，26 = 2 × 13，27 = 3³，28 = 2² × 7 都是合数）
  + 因为 $28 = 4 times 7 = 2^2 times 7$，除了 1 和 28 还有别的因数（合数定义）。
  + 它是合数（因为它有因数 1、2、4、7、14、28，正因数不只两个）。
  + 质数是拆到底的基本砖块。$12 = 2 times 2 times 3$，$30 = 2 times 3 times 5$，不同的合数都由少数几种质数组合而成。质因数分解揭示了整数的“成分表”（算术基本定理的初步认识）。
  + 如果 1 也算质数，分解就不唯一了：$6 = 2 times 3 = 1 times 2 times 3 = 1 times 1 times 2 times 3 dots.h$，会失去清晰标准形式（唯一分解定理要求排除 1）。
]
