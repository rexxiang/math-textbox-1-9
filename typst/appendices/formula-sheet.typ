// 附录 B：公式速查表

== 公式速查表

=== 算术与数论

/ 加法交换律: $ a + b = b + a $

/ 加法结合律: $ (a + b) + c = a + (b + c) $

/ 乘法交换律: $ a times b = b times a $

/ 乘法结合律: $ (a times b) times c = a times (b times c) $

/ 分配律: $ a times (b + c) = a times b + a times c $

/ 分数加减: $ a / m + b / m = (a + b) / m, quad a / m - b / m = (a - b) / m $

/ 异分母加减: $ a / m + b / n = (a n + b m) / (m n) $

/ 分数乘法: $ a / b times c / d = (a c) / (b d) $

/ 分数除法: $ a / b div c / d = a / b times d / c $

=== 比例与百分数

/ 比例基本性质: $ "若" a : b = c : d, "则" a d = b c $

/ 百分数: $ "百分数" = "部分" / "整体" times 100% $

=== 代数

/ 完全平方和: $ (a + b)^2 = a^2 + 2 a b + b^2 $

/ 完全平方差: $ (a - b)^2 = a^2 - 2 a b + b^2 $

/ 平方差公式: $ a^2 - b^2 = (a + b)(a - b) $

/ 一元二次方程求根公式: $ x = frac(-b plus.minus sqrt(b^2 - 4 a c), 2 a) quad (a eq.not 0, space b^2 - 4 a c >= 0) $

/ 判别式: $ Delta = b^2 - 4 a c $

/ 韦达定理: $ x_1 + x_2 = -b / a, quad x_1 x_2 = c / a $

/ 绝对值: $ abs(a) = cases(a &"若" a >= 0, -a &"若" a < 0) $

/ 幂运算: $ a^m times a^n = a^(m+n), quad (a^m)^n = a^(m n), quad (a b)^n = a^n b^n $

=== 一次函数与直线

/ 斜率: $ k = (y_2 - y_1) / (x_2 - x_1) $

/ 斜截式: $ y = k x + b $

/ 两点间距离: $ d = sqrt((x_2 - x_1)^2 + (y_2 - y_1)^2) $

/ 中点坐标: $ M = lr((frac(x_1 + x_2, 2), space frac(y_1 + y_2, 2))) $

=== 二次函数

/ 一般式: $ y = a x^2 + b x + c quad (a eq.not 0) $

/ 顶点式: $ y = a (x - h)^2 + k, quad "顶点" (h, k) $

/ 对称轴: $ x = -b / (2 a) $

/ 顶点坐标: $ lr((-frac(b, 2 a), space frac(4 a c - b^2, 4 a))) $

=== 反比例函数

/ 反比例: $ y = k / x quad (k eq.not 0) $

=== 平面几何——面积

/ 三角形: $ S = 1 / 2 times a times h $

/ 矩形: $ S = a times b $

/ 平行四边形: $ S = a times h $

/ 梯形: $ S = 1 / 2 times (a + b) times h $

/ 菱形: $ S = 1 / 2 times d_1 times d_2 $

/ 圆: $ S = pi r^2 $

/ 扇形: $ S = frac(n, 360) times pi r^2 = 1 / 2 l r quad (l "为弧长") $

=== 平面几何——周长与弧长

/ 圆的周长: $ C = 2 pi r $

/ 弧长: $ l = frac(n, 360) times 2 pi r = frac(n pi r, 180) $

=== 立体几何——体积与表面积

/ 长方体体积: $ V = a b c $

/ 正方体体积: $ V = a^3 $

/ 圆柱体积: $ V = pi r^2 h $

/ 圆锥体积: $ V = 1 / 3 pi r^2 h $

/ 球体积: $ V = 4 / 3 pi r^3 $

/ 球表面积: $ S = 4 pi r^2 $

/ 圆柱侧面积: $ S_"侧" = 2 pi r h $

=== 勾股定理与三角比

/ 勾股定理: $ a^2 + b^2 = c^2 quad (c "为直角三角形斜边") $

/ 正弦: $ sin A = "对边" / "斜边" $

/ 余弦: $ cos A = "邻边" / "斜边" $

/ 正切: $ tan A = "对边" / "邻边" $

/ 基本关系: $ sin^2 A + cos^2 A = 1 $

/ 特殊角:
#table(
  columns: (auto, auto, auto, auto),
  inset: 6pt,
  stroke: 0.4pt,
  align: center,
  table.header([], [$30 degree$], [$45 degree$], [$60 degree$]),
  [$sin$], [$1 / 2$], [$sqrt(2) / 2$], [$sqrt(3) / 2$],
  [$cos$], [$sqrt(3) / 2$], [$sqrt(2) / 2$], [$1 / 2$],
  [$tan$], [$sqrt(3) / 3$], [$1$], [$sqrt(3)$],
)

=== 全等与相似

/ 全等三角形判定: SSS、SAS、ASA、AAS、HL（直角三角形）

/ 相似三角形性质:
对应边成比例，对应角相等。若相似比为 $k$，则面积比为 $k^2$。

=== 概率与统计

/ 古典概型: $ P(A) = "事件 A 包含的基本事件数" / "样本空间的基本事件总数" $

/ 概率加法（互斥）: $ P(A union B) = P(A) + P(B) quad ("若" A, B "互斥") $

/ 对立事件: $ P(overline(A)) = 1 - P(A) $

/ 平均数: $ overline(x) = 1 / n sum_(i=1)^n x_i $

/ 方差: $ S^2 = 1 / n sum_(i=1)^n (x_i - overline(x))^2 $

/ 加权平均数: $ overline(x) = frac(w_1 x_1 + w_2 x_2 + dots.h + w_n x_n, w_1 + w_2 + dots.h + w_n) $
