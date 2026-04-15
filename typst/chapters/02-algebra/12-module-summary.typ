#import "../../lib/theme.typ": *

== 模块二总结：代数

=== 知识脉络回顾

#box(
  inset: 10pt,
  fill: luma(245),
  stroke: (paint: luma(180), thickness: 0.6pt),
  radius: 3pt,
)[
数系的扩展：

有理数 -> 实数

式与方程：

代数式 -> 整式运算 -> 因式分解 -> 分式 -> 方程 -> 不等式

函数与图象：

正比例函数 -> 一次函数 -> 二次函数
]

=== 易错提醒

#box(
  inset: 10pt,
  fill: luma(245),
  stroke: (paint: luma(180), thickness: 0.6pt),
  radius: 3pt,
)[
- $(-3)×(-5)=15$，同号得正，异号得负。
- 移项一定要变号。
- $(a + b)^2$ 里不能漏掉 $2 a b$。
- 不等式乘除负数时要变号。
- 分式方程一定要验根。
- $√16 = 4$，算术平方根只取非负值。
]

=== 核心公式速查

#box(
  inset: 10pt,
  fill: luma(245),
  stroke: (paint: luma(180), thickness: 0.6pt),
  radius: 3pt,
)[
- 完全平方公式：$(a ± b)^2 = a^2 ± 2 a b + b^2$
- 平方差公式：$a^2 - b^2 = (a + b)(a - b)$
- 求根公式：$x = (-b ± √(b^2 - 4 a c)) / (2 a)$
- 韦达定理：$x_1 + x_2 = -b / a$，$x_1 x_2 = c / a$
- 顶点坐标：$(-b / (2 a), c - b^2 / (4 a))$
]

=== 知识拓展

#box(
  inset: 10pt,
  fill: luma(245),
  stroke: (paint: luma(180), thickness: 0.6pt),
  radius: 3pt,
)[
*复数* 引入了虚数单位 $i$，使一元二次方程在更广的数域里总能求根。

*高次方程* 的一般公式解并不总存在，这推动了代数学的进一步发展。

从方程到函数，是从“求一个数”走向“研究一类关系”的重要跃迁。
]
