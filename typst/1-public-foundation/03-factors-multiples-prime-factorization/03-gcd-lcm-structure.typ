#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 最大公因数与最小公倍数 <tool:pf03-gcd-lcm>

#vocab[最大公因数 greatest common divisor][最小公倍数 least common multiple][公共结构 common structure]

#crisis[
  你以为下面两个问题毫无关系？

  问题甲：24 颗糖和 36 块饼干要平均分成若干份，每份里糖和饼干的数量都必须是整数，而且份数尽量多。问题乙：一盏灯每 6 秒闪一次，另一盏灯每 8 秒闪一次。现在同时闪，下次什么时候再同时闪？

  *一个在找“能共同分出的最大单位”，一个在找“能共同对齐的最早时刻”——它们都在看整数的公共结构。*
]

#tryit[
  + 求 20 和 30 的最大公因数。
]


#discovery[
  我们会列因数——找 24 和 36 的公因数，把两者的因数全列出来再找重叠：$24$ 的因数：$1, 2, 3, 4, 6, 8, 12, 24$；$36$ 的因数：$1, 2, 3, 4, 6, 9, 12, 18, 36$。重叠部分最大是 $12$。列表法算出来了。

  试着推下去——

  换成 $420$ 和 $630$：$420$ 的因数要列出 $1, 2, 3, 4, 5, 6, 7, 10, 12, 14, 15, 20, 21, 28, 30, 35, 42, 60, 70, 84, 105, 140, 210, 420$，共 24 个；$630$ 还要列一张更长的表，再逐项比对。光是不漏掉就耗尽精力，而且找完最大公因数，最小公倍数又要重新列一张倍数表：$420, 840, 1260 dots$；$630, 1260 dots$——偶尔能碰上，但碰不上只能一直往下数。

  逐一列举因数和倍数在稍大的数面前就算不动，而且看不出两数"共享哪些乘法结构"——只能把表面列出来，背后到底是哪几条乘法相同还是说不清。

  先看 24 和 36：

  $ 24 = 2^3 times 3, quad 36 = 2^2 times 3^2 $

  两个数共同拥有的质因数部分是 $2^2 times 3 = 12$，所以最大公因数是 12。

  再看 6 和 8：

  $ 6 = 2 times 3, quad 8 = 2^3 $

  想找最小公倍数，就要让两个数的所有质因数都被装进去，而且够用就好，于是得到 $2^3 times 3 = 24$。


  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let red = rgb("#F44336")
      let purple = rgb("#9C27B0")

      // Two overlapping circles (Venn diagram)
      let cx1 = 5
      let cx2 = 11
      let cy = 5
      let r = 5

      circle((cx1, cy), radius: r, fill: rgb("#BBDEFB40"), stroke: 1.5pt + blue)
      circle((cx2, cy), radius: r, fill: rgb("#FFCDD240"), stroke: 1.5pt + red)

      // Labels
      content((cx1, 10.5), text(weight: "bold", fill: blue, size: 9pt)[24 的质因数], anchor: "south")
      content((cx2, 10.5), text(weight: "bold", fill: red, size: 9pt)[36 的质因数], anchor: "south")

      // Left only: extra 2
      content((2.5, 5), text(weight: "bold", size: 10pt)[2], anchor: "center")

      // Overlap: 2² × 3 = 12 (GCD)
      content((8, 6), text(weight: "bold", fill: purple, size: 10pt)[$2^2$], anchor: "center")
      content((8, 4), text(weight: "bold", fill: purple, size: 10pt)[$3$], anchor: "center")

      // Right only: extra 3
      content((13.5, 5), text(weight: "bold", size: 10pt)[3], anchor: "center")

      // GCD label
      content((8, 1), text(fill: purple, size: 8pt)[重叠 = GCD = $2^2 times 3 = 12$], anchor: "north")
    }),
    caption: [韦恩图：24 和 36 共有的质因数部分就是最大公因数],
  )

  所以：

  - GCD 看“共同拥有的最多能拿多少”
  - LCM 看“为了同时装下两者，最少要做到多大”
]

#side-hack[
  记场景：最长能平均切成几段、最多分几组，常想到最大公因数；最早再次同时、最少几个才能对齐，常想到最小公倍数。
]

#tryit[
  + 求 8 和 12 的最小公倍数。
]

#history-note[
  欧几里得（Euclid，约公元前 300 年）在《几何原本》第七卷记录了"辗转相除法"——反复用较小数去除较大数，直到余数为零，就得到最大公因数。这是人类历史上最古老的算法之一。《九章算术》（约公元 1 世纪）中的"更相减损术"用的是类似思路：反复做减法来找公因数。有了最大公因数，最小公倍数也随之得出——两个方向的总结由此齐全。
]

#blueprint[
  - *最大公因数*：几个数共同因数里最大的那个，表示它们共同拥有的最大整齐单位。
  - *最小公倍数*：几个数共同倍数里最小的那个，表示它们最早共同对齐的整倍结果。
  - 用质因数分解求时：
    - GCD 取共同质因数的较小次幂
    - LCM 取出现过的所有质因数的较大次幂

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let red = rgb("#F44336")
      let green = rgb("#4CAF50")

      // Number line 0 to 30
      line((-1, 0), (22, 0), stroke: 1.2pt + luma(80), mark: (end: ">"))

      // Ticks every 6 (multiples of 6)
      for i in range(6) {
        let x = i * 4
        let val = i * 6
        line((x, -0.5), (x, 0.5), stroke: 0.8pt + luma(60))
        content((x, -1.5), text(size: 8pt, str(val)), anchor: "north")
        if val > 0 {
          circle((x, 0.8), radius: 0.25, fill: blue, stroke: 0.5pt + blue)
        }
      }

      // Multiples of 8 marks above
      for i in range(4) {
        let val = i * 8
        let x = val * 4 / 6
        if val > 0 {
          circle((x, 1.8), radius: 0.25, fill: red, stroke: 0.5pt + red)
          if val != 24 {
            content((x, 2.6), text(size: 7pt, fill: red, str(val)), anchor: "south")
          }
        }
      }

      // Highlight LCM = 24
      circle((16, 0), radius: 0.4, fill: green, stroke: 1.2pt + green)
      content((16, 3.2), text(fill: green, weight: "bold", size: 9pt)[LCM = 24], anchor: "south")

      // Legend
      content((1, 3.5), text(size: 7pt, fill: blue)[● 6 的倍数], anchor: "west")
      content((8, 3.5), text(size: 7pt, fill: red)[● 8 的倍数], anchor: "west")
    }),
    caption: [数轴上 6 和 8 的倍数：第一次同时出现在 24],
  )

]

#pitfall[
  *高频错误*

  ✗ 求最小公倍数时只保留共同部分
  → ✓ 共同部分通常只够做最大公因数；最小公倍数还要把各自独有的质因数也补齐。

  ✗ 看到“平均分”就一律求最小公倍数
  → ✓ 要先问自己：是在找共同单位，还是在找共同对齐的整倍时刻？
]

#mastery[
  *基础*

  + 求 18 和 24 的最大公因数。
  + 求 12 和 15 的最小公倍数。
  + 用一句话区别最大公因数和最小公倍数。
  + 判断对错并改正："两个数的最大公因数一定比它们的最小公倍数大。"
  + 求 8 和 12 的最大公因数和最小公倍数。

  *应用*

  + *双解法对比题*——求 $24$ 和 $36$ 的最大公因数和最小公倍数。
    - *方法 A（短除 / 列因数法）*：从最小的质数开始，反复除两个数的公共因子，直到互素；把抽出来的所有公共因子相乘得 GCD，再乘上剩下的两个商得 LCM。完整写出短除步骤。
    - *方法 B（质因数分解法）*：分别把 $24$ 和 $36$ 写成质因数幂次相乘的形式（$24 = 2^? times 3^?$，$36 = 2^? times 3^?$）；GCD 取每个质因数的*较小*次幂，LCM 取*较大*次幂。完整写出分解和取幂过程。
    - *比较*：两种方法的结果应当相同。请写出哪种方法更快、为什么；并说明*若数字非常大*（例如 $5040$ 和 $7560$），你更愿意用哪种？

  *挑战*

  + 为什么求 24 和 36 的最大公因数时，看到 $2^3$ 和 $2^2$ 要选较小的 2 次幂？
  + 一个数既是 6 的倍数，也是 8 的倍数，且尽量小。你是在找什么？为什么？

  + 两个正整数的最大公因数是 $6$，最小公倍数是 $60$。它们的乘积是多少？这个结论用一句话怎么表达？
  + 若 $gcd(a, b) = a$，能说明 $a$ 和 $b$ 之间什么关系？举例验证。
  + 已知两正整数乘积为 $360$，最大公因数为 $6$，求最小公倍数。
  + *[构造题]*：构造两个不相等的正整数，使得 $"GCD" = 12$ 且 $"LCM" = 60$。先问自己：可能有几组解？

#answer-cut[
  + $18 = 2 times 3^2$，$24 = 2^3 times 3$，取共同质因数的较小次幂：$gcd = 2 times 3 = 6$（GCD：取较小次幂）。
  + $12 = 2^2 times 3$，$15 = 3 times 5$，取所有质因数的较大次幂：$lcm = 2^2 times 3 times 5 = 60$（LCM：取较大次幂）。
  + 最大公因数向内看共同单位（能共同整齐分出的最大块），最小公倍数向外看共同整倍结果（能同时装下两者的最小数）。
  + 错；最大公因数不会超过两个数中较小的那个，而最小公倍数不会小于较大的那个，所以通常 GCD ≤ LCM（GCD 与 LCM 的大小关系）。
  + $8 = 2^3$，$12 = 2^2 times 3$；$gcd(8, 12) = 2^2 = 4$（取较小次幂），$lcm(8, 12) = 2^3 times 3 = 24$（取较大次幂）。

  *双解法对比题*：
  - 方法 A（短除法）：把 $24, 36$ 同时写下，先除 $2$：得 $12, 18$；再除 $2$：得 $6, 9$；再除 $3$：得 $2, 3$（互素停）。$gcd = 2 times 2 times 3 = 12$；$lcm = 12 times 2 times 3 = 72$。
  - 方法 B（质因数分解）：$24 = 2^3 times 3$；$36 = 2^2 times 3^2$。GCD 取较小次幂 $2^2 times 3 = 12$；LCM 取较大次幂 $2^3 times 3^2 = 72$。
  - 两法结果都是 $gcd = 12, lcm = 72$。比较：数字较小时方法 A 直接，运算少；但数字大、质因数复杂时（例如 $5040 = 2^4 times 3^2 times 5 times 7$，$7560 = 2^3 times 3^3 times 5 times 7$），方法 B 更系统、不容易漏因子，*结构上看一眼就能写出 GCD/LCM*。一般倾向：心算用 A，正式书写或大数用 B。

  *挑战*
  + 因为共同拥有的 2 最多只有两个；$2^3$ 里第三个 2 是 24 独有的，36 没有，已经不是“共同拥有”的部分。取较小次幂才能保证两个数都能拿出这么多（GCD 原理）。
  + 在找最小公倍数。因为要找同时是 6 和 8 的倍数且尽量小的那个数，$lcm(6, 8) = 24$（LCM 定义）。
  + 乘积 $= "GCD" times "LCM" = 6 times 60 = 360$。结论：两正整数之积等于其最大公因数与最小公倍数之积（$a times b = gcd(a,b) times "lcm"(a,b)$）。
  + $gcd(a,b) = a$ 说明 $a$ 能整除 $b$（即 $a | b$）。因为 $a$ 是 $b$ 的因数，所以 $a$ 正好是"共同因数中最大的"那个。例：$gcd(4, 12) = 4$，$4 | 12$ ✓（GCD 等于其中一个数时，表示整除关系）。
  + $"LCM" = (a times b) / gcd = 360 / 6 = 60$（利用 $a times b = gcd times "lcm"$ 反解 LCM）。
  + *[构造题]*：需要 $gcd = 12, "lcm" = 60$，乘积 $= 12 times 60 = 720$。设两数为 $12 m$ 和 $12 n$（$m, n$ 互素，$"lcm" = 12 m n = 60$，故 $m n = 5$）。$m n = 5$ 且互素：$(m, n) = (1, 5)$ 或 $(5, 1)$，对应 $(12, 60)$。只有一组不相等解：${12, 60}$。验证：$gcd(12, 60) = 12$，$"lcm"(12, 60) = 60$ ✓（构造思路：先设公共因子，再求互素配对）。
]
]
