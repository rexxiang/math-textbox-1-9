#import "../../lib/theme-v2.typ": blueprint, mastery, secref

= 本章回顾 <meta:square-root-irrational-number-line>

#blueprint[
  *知识速查卡*

  #table(
    columns: (1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*主题*], [*一句话抓手*],
    [平方 / 平方根], [反向动作；$a$（$a >= 0$）的两根是 $plus.minus sqrt(a)$，$sqrt(a)$ 本身非负。],
    [算术平方根], [$sqrt(a)$ 约定取非负；$sqrt(a^2) = |a|$。],
    [无理数], [不能写成 $p / q$ 的实数；十进制不终止也不循环。],
    [实数 $RR$], [把 $QQ$ 的“洞”用无理数填上；数轴和 $RR$ 一一对应。],
  )
]

#mastery[
  *混合自测*

  + 求 $225$、$169$ 的两个平方根；写出各自的算术平方根。
  + 计算：$sqrt(81)$、$sqrt(0.04)$、$sqrt(16/25)$。
  + 判断对错：$sqrt((-7)^2) = -7$。
  + 化简：$sqrt(72)$、$sqrt(45)$。
  + 一正方形面积 $12$ 平方米，写出它的边长（最简根号形式）。
  + 判断下列数各属于哪些数集（$NN / ZZ / QQ / RR$）：$-6$；$sqrt(11)$；$0.dot(7)$；$pi$；$1/4$。
  + 估算 $sqrt(30)$ 在哪两个相邻整数之间，再给出精确到一位小数的近似。
  + 判断：$sqrt(3) + sqrt(3)$ 是不是有理数？为什么？
  + 举出一对“两个无理数相加得有理数”的例子。
  + 在区间 $(0, 0.1)$ 内写出一个无理数。

  *参考答案*

  + $plus.minus 15$，算术平方根 $15$；$plus.minus 13$，算术平方根 $13$。
  + $9$、$0.2$、$4/5$。
  + 错；正确值是 $7$。
  + $sqrt(72) = 6 sqrt(2)$；$sqrt(45) = 3 sqrt(5)$。
  + $sqrt(12) = 2 sqrt(3)$ 米。
  + $-6 in ZZ$；$sqrt(11) in RR$（无理）；$0.dot(7) = 7/9 in QQ$；$pi in RR$（无理）；$1/4 in QQ$。
  + $5 < sqrt(30) < 6$；$sqrt(30) approx 5.5$（$5.5^2 = 30.25$）。
  + 不是；$sqrt(3) + sqrt(3) = 2 sqrt(3)$，仍是无理数。
  + 例如 $sqrt(2)$ 与 $-sqrt(2)$，和为 $0$。
  + 例如 $sqrt(2) / 20 approx 0.0707 dots$。
]

#blueprint[
  *巩固复习*

  - 回看 #secref("pf07-perimeter-area")、#secref("pf07-volume")：面积、体积问题一旦反解“边长”，就必然呼唤平方根。
  - 回看 #secref("cb02-rational-numbers")：$QQ$ 的稠密性解释了“有理数铺得很密”，而无理数解释了“密不等于满”。
  - 回看 #secref("pf04-fraction-equivalence")：既约分数的定义正是反证 $sqrt(2)$ 无理性的出发点。

  *☞ 高中桥*

  - 高中会正式处理 $n$ 次方根、有理指数和无理指数，并在实数完备性上讨论极限与连续。
  - 虚数 / 复数是 $RR$ 的下一次扩展，用来回答“$sqrt(-1)$ 在哪”这种问题。
]
