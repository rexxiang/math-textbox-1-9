// 附录 C：符号表

== 符号表

本表列出全书中使用的数学符号。"Typst 写法"栏给出在 `$ ... $` 数学模式中的输入方式。

=== 数集

#table(
  columns: (auto, auto, 1fr),
  inset: 6pt,
  stroke: 0.4pt,
  align: (center, left, left),
  table.header([*符号*], [*Typst 写法*], [*含义*]),
  [$NN$], [`NN`], [自然数集 $\{0, 1, 2, 3, dots.h\}$],
  [$ZZ$], [`ZZ`], [整数集 $\{dots.h, -2, -1, 0, 1, 2, dots.h\}$],
  [$QQ$], [`QQ`], [有理数集],
  [$RR$], [`RR`], [实数集],
)

=== 基本运算

#table(
  columns: (auto, auto, 1fr),
  inset: 6pt,
  stroke: 0.4pt,
  align: (center, left, left),
  table.header([*符号*], [*Typst 写法*], [*含义*]),
  [$+$], [`+`], [加],
  [$-$], [`-`], [减],
  [$times$], [`times`], [乘],
  [$div$], [`div`], [除],
  [$plus.minus$], [`plus.minus`], [正负号],
  [$a / b$], [`a / b`], [分数（$a$ 除以 $b$）],
  [$sqrt(a)$], [`sqrt(a)`], [算术平方根],
  [$root(n, a)$], [`root(n, a)`], [$n$ 次方根],
  [$a^n$], [`a^n`], [$a$ 的 $n$ 次幂],
  [$abs(a)$], [`abs(a)`], [绝对值],
)

=== 关系符号

#table(
  columns: (auto, auto, 1fr),
  inset: 6pt,
  stroke: 0.4pt,
  align: (center, left, left),
  table.header([*符号*], [*Typst 写法*], [*含义*]),
  [$=$], [`=`], [等于],
  [$eq.not$], [`eq.not`], [不等于],
  [$<$], [`<`], [小于],
  [$>$], [`>`], [大于],
  [$<=$], [`<=`], [小于或等于],
  [$>=$], [`>=`], [大于或等于],
  [$approx$], [`approx`], [约等于],
  [$prop$], [`prop`], [成正比],
)

=== 几何符号

#table(
  columns: (auto, auto, 1fr),
  inset: 6pt,
  stroke: 0.4pt,
  align: (center, left, left),
  table.header([*符号*], [*Typst 写法*], [*含义*]),
  [$angle$], [`angle`], [角],
  [$triangle$], [`triangle`], [三角形],
  [$bot$], [`bot`], [垂直],
  [$parallel$], [`parallel`], [平行],
  [$tilde.eq$], [`tilde.eq`], [全等],
  [$tilde$], [`tilde`], [相似],
  [$degree$], [`degree`], [度（角度单位）],
  [$pi$], [`pi`], [圆周率（$approx 3.14159$）],
  [$circle$], [`circle`], [圆],
)

=== 集合与逻辑

#table(
  columns: (auto, auto, 1fr),
  inset: 6pt,
  stroke: 0.4pt,
  align: (center, left, left),
  table.header([*符号*], [*Typst 写法*], [*含义*]),
  [$in$], [`in`], [属于],
  [$in.not$], [`in.not`], [不属于],
  [$subset$], [`subset`], [真子集],
  [$subset.eq$], [`subset.eq`], [子集],
  [$union$], [`union`], [并集],
  [$inter$], [`inter`], [交集],
  [$emptyset$], [`emptyset`], [空集],
)

=== 函数与求和

#table(
  columns: (auto, auto, 1fr),
  inset: 6pt,
  stroke: 0.4pt,
  align: (center, left, left),
  table.header([*符号*], [*Typst 写法*], [*含义*]),
  [$f(x)$], [`f(x)`], [函数 $f$ 在 $x$ 处的值],
  [$Delta$], [`Delta`], [增量 / 判别式],
  [$sum$], [`sum`], [求和],
  [$infinity$], [`infinity`], [无穷大],
  [$arrow.r$], [`arrow.r`], [趋向 / 推出],
  [$arrow.l.r$], [`arrow.l.r`], [等价 / 双向推出],
)

=== 统计

#table(
  columns: (auto, auto, 1fr),
  inset: 6pt,
  stroke: 0.4pt,
  align: (center, left, left),
  table.header([*符号*], [*Typst 写法*], [*含义*]),
  [$overline(x)$], [`overline(x)`], [平均数（$x$ 的均值）],
  [$S^2$], [`S^2`], [方差],
  [$P(A)$], [`P(A)`], [事件 $A$ 的概率],
  [$n$], [`n`], [样本容量],
)

=== 其他常用符号

#table(
  columns: (auto, auto, 1fr),
  inset: 6pt,
  stroke: 0.4pt,
  align: (center, left, left),
  table.header([*符号*], [*Typst 写法*], [*含义*]),
  [$therefore$], [`therefore`], [所以],
  [$because$], [`because`], [因为],
  [$dots.h$], [`dots.h`], [省略号（水平）],
  [$dots.v$], [`dots.v`], [省略号（垂直）],
)
