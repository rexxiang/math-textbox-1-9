// 附录 A：术语表

== 术语表

本表收录全书核心数学术语，按首次出现的部分排列。每个术语附中英文对照与简要定义。

=== 公共基础

#table(
  columns: (auto, auto, 1fr),
  inset: 6pt,
  stroke: 0.4pt,
  align: (left, left, left),
  table.header([*术语（中文）*], [*English*], [*定义*]),

  [自然数], [Natural number],
  [从 0 开始的非负整数：$0, 1, 2, 3, dots.h$],

  [位值], [Place value],
  [数字在某一位上代表的值，由位置决定（个位、十位、百位……）],

  [加法交换律], [Commutative law of addition],
  [$a + b = b + a$],

  [加法结合律], [Associative law of addition],
  [$(a + b) + c = a + (b + c)$],

  [乘法交换律], [Commutative law of multiplication],
  [$a times b = b times a$],

  [乘法结合律], [Associative law of multiplication],
  [$(a times b) times c = a times (b times c)$],

  [分配律], [Distributive law],
  [$a times (b + c) = a times b + a times c$],

  [因数], [Factor / Divisor],
  [若 $a times b = c$（$a, b$ 为整数），则 $a, b$ 都是 $c$ 的因数],

  [倍数], [Multiple],
  [若 $c = a times b$（$b$ 为正整数），则 $c$ 是 $a$ 的倍数],

  [质数（素数）], [Prime number],
  [大于 1 且只有 1 和自身两个因数的自然数],

  [合数], [Composite number],
  [大于 1 且有两个以上因数的自然数],

  [分解质因数], [Prime factorization],
  [把一个合数写成若干质数之积],

  [最大公因数], [Greatest common divisor (GCD)],
  [两个或多个整数共有因数中最大的那个],

  [最小公倍数], [Least common multiple (LCM)],
  [两个或多个整数共有倍数中最小的正数],

  [分数], [Fraction],
  [形如 $a / b$（$b eq.not 0$）的数，$a$ 为分子，$b$ 为分母],

  [真分数], [Proper fraction],
  [分子小于分母的正分数],

  [假分数], [Improper fraction],
  [分子大于或等于分母的正分数],

  [通分], [Finding a common denominator],
  [把不同分母的分数化为同分母分数],

  [约分], [Simplifying a fraction],
  [把分子分母同除以它们的公因数],

  [小数], [Decimal],
  [用小数点表示的十进制分数],

  [估算], [Estimation],
  [用近似值快速判断结果范围],

  [点], [Point],
  [没有大小、只有位置的几何元素],

  [直线], [Line],
  [向两端无限延伸、没有端点的线],

  [射线], [Ray],
  [有一个端点、向一端无限延伸的线],

  [线段], [Line segment],
  [有两个端点的直线的一部分],

  [角], [Angle],
  [从一点出发的两条射线所组成的图形],

  [平行], [Parallel],
  [同一平面内永不相交的两条直线，记作 $a parallel b$],

  [垂直], [Perpendicular],
  [两条直线相交成 $90 degree$ 角，记作 $a bot b$],

  [三角形], [Triangle],
  [由三条线段围成的封闭图形],

  [周长], [Perimeter],
  [封闭图形一周的总长度],

  [面积], [Area],
  [平面图形所占区域的大小],

  [体积], [Volume],
  [立体图形所占空间的大小],
)

=== 共通桥梁

#table(
  columns: (auto, auto, 1fr),
  inset: 6pt,
  stroke: 0.4pt,
  align: (left, left, left),
  table.header([*术语（中文）*], [*English*], [*定义*]),

  [比], [Ratio],
  [两个量之间的倍数关系，记作 $a : b$],

  [比例], [Proportion],
  [表示两个比相等的式子：$a : b = c : d$],

  [百分数], [Percentage],
  [分母为 100 的特殊比值],

  [负数], [Negative number],
  [小于零的数，在数轴上位于原点左侧],

  [有理数], [Rational number],
  [可以表示为两个整数之比的数（$p / q, q eq.not 0$）],

  [绝对值], [Absolute value],
  [数轴上一个数到原点的距离，记作 $abs(a)$],

  [数轴], [Number line],
  [标有原点、正方向和单位长度的直线],

  [坐标], [Coordinate],
  [用有序数对 $(x, y)$ 确定平面上点的位置],

  [原点], [Origin],
  [坐标平面中两条坐标轴的交点 $(0, 0)$],

  [代数式], [Algebraic expression],
  [用字母和运算符号表示数量关系的式子],

  [方程], [Equation],
  [含有未知数的等式],

  [解方程], [Solving an equation],
  [找到使方程成立的未知数的值],

  [平方根], [Square root],
  [若 $x^2 = a$（$a >= 0$），则 $x = plus.minus sqrt(a)$],

  [无理数], [Irrational number],
  [不能表示为两个整数之比的实数，如 $sqrt(2), pi$],
)

=== 代数与符号

#table(
  columns: (auto, auto, 1fr),
  inset: 6pt,
  stroke: 0.4pt,
  align: (left, left, left),
  table.header([*术语（中文）*], [*English*], [*定义*]),

  [单项式], [Monomial],
  [只含数字与字母乘积的代数式，如 $3 x^2 y$],

  [多项式], [Polynomial],
  [若干单项式的和],

  [同类项], [Like terms],
  [字母部分完全相同的单项式],

  [因式分解], [Factoring / Factorization],
  [把多项式写成几个因式之积],

  [分式], [Rational expression],
  [分子或分母含字母的分数表达式（分母 $eq.not 0$）],

  [一次方程], [Linear equation],
  [未知数最高次数为 1 的方程],

  [二元一次方程组], [System of linear equations],
  [含两个未知数的一次方程组],

  [二次方程], [Quadratic equation],
  [形如 $a x^2 + b x + c = 0$（$a eq.not 0$）的方程],

  [判别式], [Discriminant],
  [$Delta = b^2 - 4 a c$，决定二次方程根的个数],

  [不等式], [Inequality],
  [用 $<, >, lt.eq, gt.eq$ 连接的式子],
)

=== 几何与证明

#table(
  columns: (auto, auto, 1fr),
  inset: 6pt,
  stroke: 0.4pt,
  align: (left, left, left),
  table.header([*术语（中文）*], [*English*], [*定义*]),

  [全等], [Congruent],
  [形状和大小完全相同的两个图形，记作 $tilde.eq$],

  [相似], [Similar],
  [形状相同但大小可以不同的图形，记作 $tilde$],

  [相似比], [Scale factor],
  [相似图形对应边的比值],

  [平行四边形], [Parallelogram],
  [两组对边分别平行的四边形],

  [菱形], [Rhombus],
  [四条边都相等的平行四边形],

  [梯形], [Trapezoid],
  [只有一组对边平行的四边形],

  [圆], [Circle],
  [平面上到定点（圆心）距离等于定长（半径）的点的集合],

  [弦], [Chord],
  [连接圆上两点的线段],

  [弧], [Arc],
  [圆上两点之间的部分],

  [勾股定理], [Pythagorean theorem],
  [直角三角形中 $a^2 + b^2 = c^2$（$c$ 为斜边）],

  [三角比], [Trigonometric ratio],
  [直角三角形中角与边的比值关系（$sin, cos, tan$）],

  [对称], [Symmetry],
  [图形经变换后与自身重合],

  [旋转], [Rotation],
  [图形绕一个固定点转动一定角度],

  [平移], [Translation],
  [图形沿一个方向移动一定距离],
)

=== 函数与变化

#table(
  columns: (auto, auto, 1fr),
  inset: 6pt,
  stroke: 0.4pt,
  align: (left, left, left),
  table.header([*术语（中文）*], [*English*], [*定义*]),

  [函数], [Function],
  [对于自变量 $x$ 的每一个值，因变量 $y$ 都有唯一确定的值与之对应],

  [自变量], [Independent variable],
  [函数关系中可自由取值的变量],

  [因变量], [Dependent variable],
  [由自变量的值唯一确定的变量],

  [正比例函数], [Direct variation],
  [$y = k x$（$k eq.not 0$）],

  [一次函数], [Linear function],
  [$y = k x + b$（$k eq.not 0$）],

  [斜率], [Slope],
  [直线的倾斜程度：$k = (y_2 - y_1) / (x_2 - x_1)$],

  [反比例函数], [Inverse variation],
  [$y = k / x$（$k eq.not 0$）],

  [二次函数], [Quadratic function],
  [$y = a x^2 + b x + c$（$a eq.not 0$）],

  [顶点], [Vertex],
  [二次函数图像（抛物线）的最高或最低点],

  [对称轴], [Axis of symmetry],
  [抛物线的对称轴：$x = -b / (2 a)$],
)

=== 数据与不确定性

#table(
  columns: (auto, auto, 1fr),
  inset: 6pt,
  stroke: 0.4pt,
  align: (left, left, left),
  table.header([*术语（中文）*], [*English*], [*定义*]),

  [平均数], [Mean],
  [一组数据的总和除以数据个数],

  [中位数], [Median],
  [一组数据从小到大排列后处于正中间的值],

  [众数], [Mode],
  [一组数据中出现次数最多的值],

  [方差], [Variance],
  [各数据与平均数之差的平方的平均值，衡量数据的离散程度],

  [频率], [Frequency (relative)],
  [某事件发生的次数与总次数的比],

  [频率分布直方图], [Frequency histogram],
  [用矩形面积表示各组频率的统计图],

  [概率], [Probability],
  [事件发生的可能性大小，取值范围 $[0, 1]$],

  [样本空间], [Sample space],
  [随机试验所有可能结果的集合],

  [总体], [Population],
  [统计研究中要考察的全部对象],

  [样本], [Sample],
  [从总体中抽取的一部分对象],
)
