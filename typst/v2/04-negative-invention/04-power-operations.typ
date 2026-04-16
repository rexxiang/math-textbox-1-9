#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab

== §4.4 幂的运算 <sec-4-4>

#vocab[幂 power / 底数 base / 指数 exponent / 零次幂 zero exponent / 负指数 negative exponent]

#crisis[
  用计算器算 $2^3 times 2^4$，得 $128 = 2^7$。

  $2^3 times 2^4 = 2^(3+4)$？真的只是把指数相加？

  再试：$(2^3)^4 = 2^12$？

  *这些指数运算背后有什么规律？能用字母写成通用公式吗？*
]

#history-note[
  *符号的演化*：我们今天用 $a^n$ 表示幂，要感谢法国数学家笛卡尔（1637 年）。在他之前，数学家写 $a a a$（重复字母）或者繁琐的文字描述。统一的指数符号让幂运算规律的发现和书写变得极为简洁——这是数学符号化的一个里程碑。
]

#discovery[
  *第一步*：回忆幂的定义。

  $a^n = underbrace(a times a times dots.h times a, n "个" a)$，其中 $a$ 是*底数*，$n$ 是*指数*。

  *第二步*：同底数幂相乘。

  $2^3 times 2^4 = (2 times 2 times 2) times (2 times 2 times 2 times 2) = 2^7$

  一共有 $3 + 4 = 7$ 个 $2$ 相乘，所以：$2^3 times 2^4 = 2^(3+4) = 2^7$。

  一般规律：$a^m times a^n = a^(m+n)$

  *第三步*：幂的乘方。

  $(2^3)^4 = 2^3 times 2^3 times 2^3 times 2^3 = 2^(3+3+3+3) = 2^(3 times 4) = 2^12$

  一般规律：$(a^m)^n = a^(m n)$

  *第四步*：积的乘方。

  $(2 times 3)^4 = (2 times 3)(2 times 3)(2 times 3)(2 times 3) = 2^4 times 3^4$

  一般规律：$(a b)^n = a^n b^n$

  *第五步*：同底数幂相除。

  $2^7 div 2^3 = frac(2 times 2 times 2 times 2 times 2 times 2 times 2, 2 times 2 times 2) = 2^(7-3) = 2^4$

  一般规律（$a != 0$）：$a^m div a^n = a^(m-n)$

  *第六步*：零次幂——当 $m = n$ 时。

  $a^3 div a^3 = a^(3-3) = a^0$，但 $a^3 div a^3 = 1$（任何非零数除以自身等于 1）。

  所以：$a^0 = 1$（$a != 0$）

  *第七步*：负整数指数——当 $m < n$ 时。

  $a^2 div a^5 = a^(2-5) = a^(-3)$，但 $frac(a^2, a^5) = frac(1, a^3)$。

  所以：$a^(-n) = frac(1, a^n)$（$a != 0$）
]

#blueprint[
  *幂的运算法则*（$a != 0$，$m, n$ 为整数）

  #table(
    columns: (auto, 1fr, auto),
    align: (left, left, left),
    [*名称*], [*法则*], [*例子*],
    [同底数幂相乘], [$a^m times a^n = a^(m+n)$], [$x^3 times x^5 = x^8$],
    [幂的乘方], [$(a^m)^n = a^(m n)$], [$(x^2)^3 = x^6$],
    [积的乘方], [$(a b)^n = a^n b^n$], [$(2x)^3 = 8x^3$],
    [同底数幂相除], [$a^m div a^n = a^(m-n)$], [$x^7 div x^3 = x^4$],
    [零次幂], [$a^0 = 1$], [$5^0 = 1$，$(-3)^0 = 1$],
    [负整数指数], [$a^(-n) = frac(1, a^n)$], [$2^(-3) = frac(1, 8)$],
  )

  *例 1*：化简 $x^4 times x^3 div x^2$。

  *解*：$x^4 times x^3 div x^2 = x^(4+3) div x^2 = x^7 div x^2 = x^(7-2) = x^5$

  *例 2*：计算 $(2a^2)^3$。

  *解*：$(2a^2)^3 = 2^3 times (a^2)^3 = 8 a^6$

  *例 3*：化简 $frac(a^3 b^5, a b^2)$（$a != 0$，$b != 0$）。

  *解*：$frac(a^3 b^5, a b^2) = a^(3-1) b^(5-2) = a^2 b^3$

  *例 4*：计算 $(1/3)^0 + 2^(-3) - (-2)^2$。

  *解*：$(1/3)^0 = 1$（零次幂）；$2^(-3) = frac(1, 8)$；$(-2)^2 = 4$。

  所以原式 $= 1 + frac(1, 8) - 4 = -frac(23, 8)$。
]

#side-hack[
  *记住法则的口诀*：

  - 同底相乘，指数相加：$a^m times a^n = a^(m+n)$
  - 幂再乘方，指数相乘：$(a^m)^n = a^(m n)$
  - 积的乘方，各自乘方：$(a b)^n = a^n b^n$

  *易错点*：$a^m times b^n != (a b)^(m+n)$——底数不同不能直接合并！
]

#mastery[
  *基础*

  + 计算：$3^4 times 3^2$
  + 计算：$(2^3)^2$
  + 计算：$(x y)^5$
  + 计算：$a^8 div a^3$（$a != 0$）

  *应用*

  + 化简：$x^5 times x^2 div x^4$
  + 化简：$(3a^2)^2 times 2a^3$
  + 计算：$2^(-2) + (1/3)^0 - (-1)^(2023)$

  *挑战*

  + 化简：$frac((2a^2 b)^3, 4a^3 b^2)$（$a != 0$，$b != 0$）
  + 若 $2^x = 8$，$3^y = 27$，计算 $frac(2^(x+1) times 3^(y-1), 2^x times 3^y)$。
  + 证明：若 $a != 0$，则 $a^m div a^n = a^(m-n)$。（提示：分 $m > n$，$m = n$，$m < n$ 三种情况。）

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + $3^(4+2) = 3^6 = 729$
  + $2^(3 times 2) = 2^6 = 64$
  + $x^5 y^5$
  + $a^(8-3) = a^5$

  *应用*
  + $x^5 times x^2 div x^4 = x^7 div x^4 = x^3$
  + $(3a^2)^2 times 2a^3 = 9a^4 times 2a^3 = 18a^7$
  + $frac(1, 4) + 1 + 1 = frac(9, 4)$（注：$(-1)^(2023) = -1$）

  *挑战*
  + $frac((2a^2 b)^3, 4a^3 b^2) = frac(8a^6 b^3, 4a^3 b^2) = 2a^3 b$
  + $2^x = 2^3$ 所以 $x = 3$；$3^y = 3^3$ 所以 $y = 3$。$frac(2^4 times 3^2, 2^3 times 3^3) = frac(2^4, 2^3) times frac(3^2, 3^3) = 2^1 times 3^(-1) = frac(2, 3)$。
  + 当 $m > n$：$a^m div a^n = frac(a^m, a^n)$，分子分母约去 $n$ 个 $a$ 得 $a^(m-n)$。当 $m = n$：$a^m div a^m = 1 = a^0 = a^(m-n)$。当 $m < n$：$a^m div a^n = frac(1, a^(n-m)) = a^(-(n-m)) = a^(m-n)$。故三种情况均有 $a^m div a^n = a^(m-n)$。
]
