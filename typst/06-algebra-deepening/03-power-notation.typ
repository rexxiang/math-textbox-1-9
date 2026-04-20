#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref

== §6.3 幂的记号与乘除法则 <sec-6-3>

#vocab[幂 power / 指数 exponent / 底数 base]

#crisis[
  重复相乘的式子，写起来越来越长：

  - $2 times 2 times 2 times 2 times 2 = ?$
  - $x dot x dot x dot x dot x$ 能不能一眼看清乘了几次？
  - 一串 $x dot x dot x dot x$ 再接上一串 $x dot x dot x$，难道每次都要全写开再数一遍吗？

  我们需要一种更短的写法，还需要知道这种写法在接到一起、约掉一些时，究竟怎样变化。
]

#history-note[
  指数记号并不是一开始就这么统一的。人们先是不停遇到"同一个量重复相乘"的长串写法，后来才慢慢把它压缩成更短的符号。符号一旦变短，规律就更容易被看出来，运算也就更稳定了。
]

#discovery[
  在 #secref("6.2") 里，你已经见过 $x^2$ 这种"平方"的短写。现在把这个想法再往前推进：

  - $x dot x dot x$ 可以看成"同一个 $x$ 连乘了 3 次"
  - $a dot a dot a dot a dot a$ 可以看成"同一个 $a$ 连乘了 5 次"
  - 如果两串同底数的重复乘法接到一起，次数之间会不会有简单关系？
  - 如果从一串里约掉一部分，次数又怎样变化？
]

#tryit[
  先不看下面，自己试着整理：

  - 把 $x dot x dot x dot x$ 写成短写法
  - 把 $a dot a dot a times a dot a$ 写成一次更短的写法（先别管具体规则，数一数有几个 $a$）
  - $x^7 div x^3$，分子分母各有几个 $x$？约掉后还剩几个？
]

#blueprint[
  *一、幂的记号*

  同一个因子重复相乘，可以写成*幂*：

  $ a dot a dot a = a^3 $

  这里：

  - $a$ 叫*底数*
  - $3$ 叫*指数*

  $a^3$ 读作"$a$ 的三次幂"，意思就是 3 个 $a$ 相乘。

  *例 1*：把 $x dot x dot x dot x dot x$ 写成幂。

  $ x dot x dot x dot x dot x = x^5 $

  *例 2*：把 $(2a) dot (2a) dot (2a)$ 写成幂。

  $ (2a) dot (2a) dot (2a) = (2a)^3 $

  *二、同底数幂相乘*

  （$a != 0$，$m, n$ 为非负整数）

  前面有 $m$ 个 $a$，后面有 $n$ 个 $a$，接起来就是 $m+n$ 个：

  $ a^m times a^n = a^(m+n) $

  *例 3*：化简 $x^4 times x^3$

  $ x^4 times x^3 = x^(4+3) = x^7 $

  *三、同底数幂相除*

  （$a != 0$，$m >= n$）

  分子分母里有相同个数的 $a$ 可以约掉：

  $ a^m div a^n = a^(m-n) $

  *例 4*：化简 $x^7 div x^3$

  $ x^7 div x^3 = x^(7-3) = x^4 $

  *例 5*：化简 $x^4 times x^3 div x^2$

  $ x^4 times x^3 div x^2 = x^(4+3-2) = x^5 $
]

#pitfall[
  *底数不同，指数不能乱加。*

  ❌ $a^3 times b^4 = (a b)^7$

  ✓ 只有同底数幂相乘，才能把指数相加：$a^m times a^n = a^(m+n)$
]

#side-hack[
  看到指数题时，先分两步：

  - 先认底数——是不是同一个底数？
  - 再看方向——是接在一起（指数相加），还是被约掉一些（指数相减）？

  先认类型，再套规则，就不容易乱。
]

#mastery[
  *基础*

  + 写成幂的形式：
    - $y dot y dot y$
    - $m dot m dot m dot m dot m$
  + 化简：
    - $x^3 times x^5$
    - $b^7 div b^2$
    - $a^4 times a^2 div a^3$

  *应用*

  + 化简：$x^2 times x^3 div x$
  + 已知一个正方体棱长是 $x$，体积写成 $x dot x dot x$。请把它改写成幂。
  + 一个长方形，长是 $a^3$，宽是 $a^2$，面积是多少？

  *挑战*

  + 若 $x^m times x^2 = x^9$，求 $m$。
  + 解释：为什么 $a^3 div a^3$ 按定义等于 1，而按同底数幂相除规则等于 $a^0$？这两件事合在一起说明了什么？

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + $y^3$；$m^5$
  + $x^3 times x^5 = x^8$；$b^7 div b^2 = b^5$；$a^4 times a^2 div a^3 = a^(4+2-3) = a^3$

  *应用*
  + $x^2 times x^3 div x = x^(2+3-1) = x^4$
  + $x^3$
  + $a^3 times a^2 = a^5$

  *挑战*
  + $m + 2 = 9$，所以 $m = 7$
  + 按定义，$a^3 div a^3 = 1$（同一个数除以自己）；按规则，$a^3 div a^3 = a^(3-3) = a^0$。两件事合在一起，就强烈暗示 $a^0 = 1$——这个结论在下一节会正式推导。

  _乘方的乘方，以及整数幂的更多规则——下一节继续。_
]
