#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, secref, tryit, pitfall

== §6.5A 分式的四则运算 <sec-6-5A>

#vocab[通分 finding a common denominator / 最简公分母 least common denominator of rational expressions]

#crisis[
  在 §6.5 里，你学会了约分——把一个分式化简。现在要更进一步：两个分式能相加吗？

  回想 #secref("2.2") 里的分数加法：$frac(1, 3) + frac(1, 4)$，你需要先找公分母 $12$，再通分：

  $ frac(1, 3) + frac(1, 4) = frac(4, 12) + frac(3, 12) = frac(7, 12) $

  现在面对的是：$frac(1, a) + frac(1, b)$。

  分母换成了字母——通分还有用吗？公分母应该是什么？

  先停下来想一想，再继续读。
]

#discovery[
  上一节我们已经确认：分式和分数一样，分子分母可以同乘同除（§6.5 发明的分式基本性质）。

  现在把这条原则推广到四则运算上。

  分数的加减法需要通分（找公分母）——分式的加减法也一样。

  让我们直接试试：$frac(1, x) + frac(2, x + 1)$ 怎么加？

  $x$ 和 $x+1$ 没有公因式，所以最简公分母是 $x(x+1)$，把两个分式分别通分，再合并分子即可。
]

#tryit[
  先自己算，再对照 blueprint 检验！

  计算：$frac(2, x - 1) - frac(1, x + 1)$

  提示：$x - 1$ 和 $x + 1$ 没有公因式，所以最简公分母是 $(x-1)(x+1)$。每个分式的分子分母各自乘什么，才能把分母变成这个？

  写出完整过程之后，对照 blueprint 里的例 3 检验。
]

#blueprint[
  *工具一：通分*

  把几个分母不同的分式，化为分母相同的分式，叫做*通分*。步骤：

  + 找出各分母的*最简公分母*（各分母因式分解后，取每个因式的最高次幂之积）
  + 把每个分式的分子分母*同乘*一个整式，使分母变为最简公分母（利用 §6.5 的工具二：分式基本性质）

  *例 1*：通分 $frac(1, a)$ 和 $frac(1, b)$

  分母 $a$ 和 $b$ 互质，最简公分母是 $a b$：

  $ frac(1, a) = frac(b, a b), quad frac(1, b) = frac(a, a b) $

  *例 2*：通分 $frac(1, x - 1)$ 和 $frac(1, (x-1)^2)$

  最简公分母是 $(x - 1)^2$：

  $ frac(1, x-1) = frac(x-1, (x-1)^2), quad frac(1, (x-1)^2) = frac(1, (x-1)^2) $

  *工具二：分式加减法*

  *同分母*：分母不变，分子相加减

  $ frac(A, C) plus.minus frac(B, C) = frac(A plus.minus B, C) $

  *异分母*：先通分，再按同分母加减

  *例 3*：计算 $frac(2, x - 1) - frac(1, x + 1)$

  最简公分母是 $(x - 1)(x + 1)$：

  $
    frac(2, x - 1) - frac(1, x + 1)
    &= frac(2(x + 1), (x - 1)(x + 1)) - frac(x - 1, (x - 1)(x + 1)) \
    &= frac(2(x + 1) - (x - 1), (x - 1)(x + 1)) \
    &= frac(2x + 2 - x + 1, x^2 - 1) \
    &= frac(x + 3, x^2 - 1)
  $

  *例 4*：计算 $frac(1, a) + frac(1, b)$（§6.5 危机的答案）

  最简公分母是 $a b$：

  $ frac(1, a) + frac(1, b) = frac(b, a b) + frac(a, a b) = frac(a + b, a b) $

  *工具三：分式乘除法*

  *乘法*：分子乘分子，分母乘分母，再约分化简

  $ frac(A, B) dot frac(C, D) = frac(A C, B D) $

  *除法*：乘以倒式

  $ frac(A, B) div frac(C, D) = frac(A, B) dot frac(D, C) = frac(A D, B C) $

  *例 5*：计算 $frac(x^2 - 1, x) dot frac(x^2, x + 1)$

  先因式分解分子，再约分：

  $
    frac(x^2 - 1, x) dot frac(x^2, x + 1)
    = frac((x + 1)(x - 1), x) dot frac(x^2, x + 1)
    = frac((x - 1) dot x^2, x)
    = x(x - 1)
  $

  *例 6*：计算 $frac(x^2 - 4, x + 1) div frac(x - 2, x^2 - 1)$

  $
    frac(x^2 - 4, x + 1) div frac(x - 2, x^2 - 1)
    &= frac(x^2 - 4, x + 1) dot frac(x^2 - 1, x - 2) \
    &= frac((x + 2)(x - 2), x + 1) dot frac((x + 1)(x - 1), x - 2) \
    &= (x + 2)(x - 1)
  $
]

#pitfall[
  *两个最容易犯的错误：*

  *坑一：通分时忘记分子也要同步变化*

  ❌ 把 $frac(1, x - 1)$ 通分到公分母 $(x-1)(x+1)$ 时，只改分母，分子仍写 $1$，得到 $frac(1, (x-1)(x+1))$

  ✓ 正确：分母乘以 $(x+1)$，分子也要乘以 $(x+1)$：$frac(x+1, (x-1)(x+1))$

  *坑二：加减运算展开分子时，忘记带括号*

  ❌ $frac(2, x-1) - frac(1, x+1)$，通分后分子写成 $2(x+1) - x - 1$（第二个分子 $x-1$ 没有加括号，减号没有分配进去）

  ✓ 正确：减去一个分式，要把整个分子加上括号再展开：$2(x+1) - (x-1) = 2x + 2 - x + 1 = x + 3$

  别这样做！减法展开时，括号里的每一项符号都要改变。
]

#side-hack[
  *乘除运算：先约分再乘*——不要先把所有分子乘到一起，再想怎么化简。计算 $frac(A, B) dot frac(C, D)$ 时，先看看 $A$ 和 $D$ 有没有公因式，$B$ 和 $C$ 有没有公因式，约掉再乘，数字小得多。
]

#mastery[
  *基础*

  + 计算（分式乘除）：
    - $frac(x, y) dot frac(y^2, x^2)$
    - $frac(a^2 - b^2, 2) div frac(a + b, 4)$
    - $frac(x^2 - 1, x + 2) dot frac(x^2 + 4 x + 4, x^2 - x)$
  + 计算（分式加减）：
    - $frac(2, x) + frac(3, x)$
    - $frac(1, x) - frac(1, x + 1)$
    - $frac(1, x - 2) + frac(1, x + 2)$

  *应用*

  + 化简：$frac(1, x - 1) - frac(2, x^2 - 1)$
  + 化简：$frac(x + 1, x - 1) - frac(x - 1, x + 1)$
  + 甲单独做一件工作需 $m$ 天，乙单独需 $n$ 天。两人合作一天，完成了几分之几？化简结果。

  *挑战*

  + 化简：$frac(1, x - 1) - frac(1, x + 1) - frac(2, x^2 - 1)$（计算结果有惊喜）
  + 计算：$frac(x^2 + 2 x + 1, x^2 - 4) div frac(x + 1, x - 2)$
  + 已知 $a + b = 5$，$a b = 3$，求 $frac(1, a) + frac(1, b)$ 的值。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + $frac(x, y) dot frac(y^2, x^2) = frac(y, x)$；$frac(a^2-b^2, 2) div frac(a+b, 4) = frac((a+b)(a-b), 2) dot frac(4, a+b) = 2(a-b)$；$frac(x^2-1, x+2) dot frac(x^2+4x+4, x^2-x) = frac((x+1)(x-1), x+2) dot frac((x+2)^2, x(x-1)) = frac((x+1)(x+2), x)$
  + $frac(2, x) + frac(3, x) = frac(5, x)$；$frac(1, x) - frac(1, x+1) = frac(x+1-x, x(x+1)) = frac(1, x(x+1))$；$frac(1, x-2) + frac(1, x+2) = frac(x+2+x-2, (x-2)(x+2)) = frac(2x, x^2-4)$

  *应用*
  + $frac(1, x-1) - frac(2, x^2-1) = frac(1, x-1) - frac(2, (x+1)(x-1)) = frac(x+1-2, (x+1)(x-1)) = frac(x-1, (x+1)(x-1)) = frac(1, x+1)$
  + $frac(x+1, x-1) - frac(x-1, x+1) = frac((x+1)^2-(x-1)^2, (x-1)(x+1)) = frac(4x, x^2-1)$
  + $frac(1, m) + frac(1, n) = frac(m+n, m n)$

  *挑战*
  + $frac(1, x-1) - frac(1, x+1) - frac(2, x^2-1) = frac(x+1-(x-1)-2, (x-1)(x+1)) = frac(0, x^2-1) = 0$
  + $frac(x^2+2x+1, x^2-4) div frac(x+1, x-2) = frac((x+1)^2, (x+2)(x-2)) dot frac(x-2, x+1) = frac(x+1, x+2)$
  + $frac(1, a) + frac(1, b) = frac(a+b, a b) = frac(5, 3)$
]
