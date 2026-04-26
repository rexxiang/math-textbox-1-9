#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref
#import "../../lib/diagram-packages.typ": cetz

=== 无理数：$sqrt(2)$ 不能写成分数 <tool:cb06-irrational-numbers>

#vocab[无理数 irrational number][反证法 proof by contradiction][既约分数 fraction in lowest terms]

#crisis[
  $sqrt(2)$ 这种记号我们已经能写、能用了。但它到底是“有理数”还是“有理数之外的新东西”？

  你试着找 $p / q$ 使它的平方等于 $2$：计算器里 $1.414^2 = 1.999396$，再精确一点 $1.41421356^2 approx 2.0000000013$——总是差一点。*我们要证明：$sqrt(2)$ 不可能等于任何分数。*
]

#history-note[
  古希腊毕达哥拉斯学派最初相信“一切都能写成整数之比”。有人证出 $sqrt(2)$ 不是分数时，这个结论据说让他们震惊——人类第一次明确意识到：有理数不足以铺满整条数轴。
]

#discovery[
  先用反证法。

  #figure(
    cetz.canvas(length: 0.5cm, {
      import cetz.draw: *
      // Unit square with diagonal
      let s = 6
      rect((0, 0), (s, s), fill: rgb("#E3F2FD"), stroke: 1.5pt + rgb("#1565C0"))
      // Diagonal
      line((0, 0), (s, s), stroke: 2pt + rgb("#C62828"))
      // Side labels
      content((s / 2, -0.6), text(size: 9pt, weight: "bold", fill: rgb("#1565C0"))[$1$], anchor: "north")
      content((-0.6, s / 2), text(size: 9pt, weight: "bold", fill: rgb("#1565C0"))[$1$], anchor: "east")
      // Diagonal label
      content((s / 2 + 0.6, s / 2 - 0.6),
        text(size: 9pt, weight: "bold", fill: rgb("#C62828"))[$sqrt(2)$], anchor: "north-west")
      // Right angle mark
      rect((0.4, 0), (0.4 + 0.6, 0.6), stroke: 0.8pt + rgb("#555"), fill: none)
    }),
    caption: [边长为 $1$ 的正方形，对角线长 $= sqrt(2)$],
  )

  *反证法思路*：先假设 $sqrt(2) = p / q$（$p, q$ 是整数，$q != 0$，并化成既约分数，使 $p$、$q$ 没有大于 $1$ 的公因数）。两边平方得到：

  $ 2 = p^2 / q^2 quad => quad p^2 = 2 q^2 $

  等号右边是 $2$ 的倍数，所以 $p^2$ 是偶数。但一个整数的平方若是偶数，这个整数自己也必须是偶数——设 $p = 2 k$，代回得：

  $ (2 k)^2 = 2 q^2 quad => quad 4 k^2 = 2 q^2 quad => quad q^2 = 2 k^2 $

  于是 $q^2$ 也是偶数，$q$ 也是偶数。可 $p$ 和 $q$ 同时是偶数，就意味着它们还有公因数 $2$，这跟我们一开始“$p/q$ 是既约分数”的设定矛盾。

  所以最初的假设 $sqrt(2) = p / q$ 站不住脚。结论：$sqrt(2)$ 不能写成任何分数。

  凡是“不能写成 $p / q$ 的实数”就叫*无理数*。$sqrt(3)$、$sqrt(5)$、$pi$ 都是无理数；$sqrt(4) = 2$、$sqrt(9) = 3$ 则仍然是有理数。
]

#side-hack[
  直观上：无理数写成十进制小数时既*不循环*也*不终止*，而有理数写成小数一定是有限小数或无限循环小数。这条小数判别法非常好用。
]

#tryit[
  + 下列哪些一定是无理数？$2.3$；$1/7$；$sqrt(16)$；$sqrt(10)$；$pi$；$0.1010010001 dots$（每段 $0$ 的个数递增，不循环）。
  + 判断：$sqrt(3) + 1$ 是不是无理数？（直觉上“一个有理数加一个无理数”会怎样？）
  + 举出一个“有理数乘以无理数仍可能是有理数”的例子（提示：乘 $0$）。
]

#blueprint[
  - *无理数*：不能写成 $p / q$（$p in ZZ$，$q in ZZ_(!= 0)$）的实数。
  - *判别直觉*：无限不循环的十进制小数 $<=>$ 无理数；有限小数或无限循环小数 $<=>$ 有理数。
  - *典型无理数*：$sqrt(2)$、$sqrt(3)$、$sqrt(p)$（$p$ 为非完全平方数的正整数）、$pi$ 等。
  - *反证法模板*：假设与结论相反 $->$ 推出矛盾 $->$ 结论成立。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *
      let ox = 4
      let s = 8.0
      // Zoomed number line from 1.0 to 2.0
      line((ox, 0), (ox + 10 * s / 10 + 1, 0), stroke: 1.5pt + rgb("#333"), mark: (end: ">"))
      // Ticks at 1.0, 1.1, ... 2.0
      for i in range(0, 11) {
        let tx = ox + i * s / 10
        let thick = if calc.rem(i, 5) == 0 { 1pt } else { 0.5pt }
        let h = if calc.rem(i, 5) == 0 { 0.4 } else { 0.25 }
        line((tx, -h), (tx, h), stroke: thick + rgb("#555"))
        if calc.rem(i, 5) == 0 or i == 4 {
          let val = 1.0 + i * 0.1
          content((tx, -0.8), text(size: 6pt)[#str(val)], anchor: "north")
        }
      }
      // Mark sqrt(2) ≈ 1.414
      let sq2-x = ox + 4.14 * s / 10
      circle((sq2-x, 0), radius: 0.3, fill: rgb("#C62828"), stroke: 1pt + rgb("#B71C1C"))
      content((sq2-x, 1.5), text(size: 8pt, weight: "bold", fill: rgb("#C62828"))[$sqrt(2) approx 1.414$], anchor: "south")
      // Show bounds
      let l14 = ox + 4 * s / 10
      let l15 = ox + 5 * s / 10
      line((l14, -1.5), (l15, -1.5), stroke: 1.5pt + rgb("#2E7D32"), mark: (start: "|", end: "|"))
      content(((l14 + l15) / 2, -2.2), text(size: 7pt, fill: rgb("#2E7D32"))[$1.4^2 = 1.96 < 2 < 2.25 = 1.5^2$], anchor: "north")
    }),
    caption: [夹逼法定位 $sqrt(2)$：它在 $1.4$ 与 $1.5$ 之间],
  )
]

#pitfall[
  *高频错误*

  ✗ 以为所有带 $sqrt(\ )$ 的数都是无理数
  → ✓ $sqrt(4) = 2$、$sqrt(9/16) = 3/4$ 都是有理数；当被开方数是完全平方数时，根号可拿掉。

  ✗ 以为 $pi$ 是 $22/7$
  → ✓ $22/7$ 只是 $pi$ 的一个近似有理数，二者不相等。

  ✗ 以为“无理数 + 无理数”一定是无理数
  → ✓ 不一定；如 $(sqrt(2)) + (-sqrt(2)) = 0$。
]

#mastery[
  *基础*

  + 判断下列是否为无理数：$3/5$；$-sqrt(2)$；$sqrt(100)$；$0.12345678 dots$（不循环）；$1.dot(6)$。
  + 写出三个不同的无理数。
  + 判断对错：$sqrt(2) + sqrt(3)$ 是有理数。

  *应用*

  + 说明为什么 $sqrt(3)$ 也是无理数（简要复用反证法思路即可）。
  + 一个正方形面积为 $5$，其边长用精确形式表达是什么？它是有理数吗？
  + 在 $0$ 与 $1$ 之间写出一个无理数（提示：$sqrt(1/2)$ 之类）。

  *挑战 ☞ 选做*

  + 证明：若 $a$ 是有理数、$b$ 是无理数，则 $a + b$ 是无理数。（用反证法）
  + 判断：$pi - pi$、$sqrt(2) times sqrt(2)$ 分别是什么数？它们都是有理数吗？

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + $-sqrt(2)$、$0.12345678 dots$ 是无理数；其余都是有理数。
  + 例如 $sqrt(5)$、$pi$、$sqrt(7) - 1$（举一即可）。
  + 错；事实上 $sqrt(2) + sqrt(3)$ 是无理数。
  + 思路仿 $sqrt(2)$：假设 $sqrt(3) = p / q$ 既约，平方得 $p^2 = 3 q^2$；由“$3 | p^2 => 3 | p$”推出 $p = 3 k$，代回再得 $3 | q$，与既约矛盾。
  + 边长为 $sqrt(5)$；它是无理数。
  + 例如 $sqrt(2) / 2$ 或 $pi / 4$。
  + 假设 $a + b = r$ 为有理数，则 $b = r - a$ 也是有理数，矛盾。
  + $pi - pi = 0$ 是有理数；$sqrt(2) times sqrt(2) = 2$ 也是有理数。
]

#side-hack[
  *☞ 这会在后面哪里再出现*

  - 代数分支一元二次方程求根时常出现 $sqrt(\ )$，需要我们判别根是有理数还是无理数。
  - 几何分支勾股定理会反复产生非完全平方数的根号结果。
  - 函数分支中 $y = sqrt(x)$、$y = pi x$ 等自然涉及无理数。
]
