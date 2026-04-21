#import "lib/theme-v2.typ": *

#show: textbook-v2

#set page(header: none, footer: none)

#align(center)[
  #text(size: 24pt, weight: "bold")[数学发明者手册]
  #v(0.5em)
  #text(size: 14pt, fill: luma(100))[小学一年级 — 初中三年级]
]

#pagebreak()
#outline(title: [目录])
#pagebreak()

#set heading(numbering: none)
#counter(page).update(1)
#set page(numbering: "i", header: none, footer: frontmatter-page-footer)

// 导读
= 导读与使用导航
#include "0-orientation/0-o00-welcome.typ"
#include "0-orientation/0-o01-how-to-use.typ"
#include "0-orientation/0-o02-symbols.typ"
#include "0-orientation/0-o03-invention-tree.typ"

#counter(heading).update(0)
#set heading(numbering: "1.1")
#set page(numbering: "1", header: main-page-header, footer: main-page-footer)
#counter(page).update(1)

// a 域：数感（ℕ→ℤ→ℚ→ℝ + 四则 + 位值 + 比例）
= 数感
#include "1a-number-sense/0-a00-overview-counting.typ"
#include "1a-number-sense/0-a01-overview-fraction-ratio-foundation.typ"
#include "1a-number-sense/0-a02-overview-number-line-algebra-bridge.typ"
#include "1a-number-sense/1-a01-natural-number.typ"
#include "1a-number-sense/1-a04-digit.typ"
#include "1a-number-sense/1-a07-addition.typ"
#include "1a-number-sense/1-a10-multiplication.typ"
#include "1a-number-sense/1-a13-order-of-operations.typ"
#include "1a-number-sense/1-a15-add-commutative.typ"
#include "1a-number-sense/1-a17-mul-commutative.typ"
#include "1a-number-sense/1-a20-factor-multiple.typ"
#include "1a-number-sense/1-a23-prime.typ"
#include "1a-number-sense/1-a25-prime-factorization.typ"
#include "1a-number-sense/1-a28-fraction-definition.typ"
#include "1a-number-sense/1-a31-mixed-number.typ"
#include "1a-number-sense/1-a34-simplify.typ"
#include "1a-number-sense/1-a38-fraction-add-sub.typ"
#include "1a-number-sense/1-a41-decimal.typ"
#include "1a-number-sense/1-a44-ratio.typ"
#include "1a-number-sense/1-a47-decimal-fraction-conversion.typ"
#include "1a-number-sense/1-a49-number-line.typ"
#include "1a-number-sense/1-a52-opposite-number.typ"
#include "1a-number-sense/1-a55-irrational-number.typ"
#include "1a-number-sense/4-a00-review-counting.typ"
#include "1a-number-sense/4-a01-review-fraction-ratio-foundation.typ"
#include "1a-number-sense/4-a02-review-number-line-algebra-bridge.typ"

// b 域：形状（点线面 + 周长面积体积 + 角平行 + 坐标入门）
= 形状
#include "1b-shapes/0-b00-overview-geometry-foundation.typ"
#include "1b-shapes/1-b01-point.typ"
#include "1b-shapes/1-b04-ray.typ"
#include "1b-shapes/1-b07-triangle.typ"
#include "1b-shapes/1-b10-perimeter.typ"
#include "1b-shapes/1-b13-area.typ"
#include "1b-shapes/1-b17-volume.typ"
#include "1b-shapes/1-b20-angle.typ"
#include "1b-shapes/1-b23-acute-angle.typ"
#include "1b-shapes/1-b26-complementary.typ"
#include "1b-shapes/1-b29-parallel-lines.typ"
#include "1b-shapes/1-b32-co-interior-supplementary.typ"
#include "1b-shapes/1-b36-coordinate-system.typ"
#include "1b-shapes/4-b00-review-geometry-foundation.typ"

// 基础总结闸门
= 基础收束与分支起步
#include "2-foundation-transition/2-t00-overview.typ"
#include "2-foundation-transition/2-t01-foundation-check.typ"
#include "2-foundation-transition/2-t02-branch-entry-recaps.typ"
#include "2-foundation-transition/2-t03-review.typ"

// c 域：符号（字母式 + 整式 + 幂 + 因式分解 + 方程/不等式/分式）
= 符号
#include "3a-symbols/0-c00-overview-algebra-deepening.typ"
#include "3a-symbols/1-c01-variable.typ"
#include "3a-symbols/1-c04-equation.typ"
#include "3a-symbols/1-c07-polynomial.typ"
#include "3a-symbols/1-c12-polynomial-multiply.typ"
#include "3a-symbols/1-c15-power-notation.typ"
#include "3a-symbols/1-c18-zero-exponent.typ"
#include "3a-symbols/1-c21-factorization.typ"
#include "3a-symbols/1-c25-rational-expression.typ"
#include "3a-symbols/1-c28-common-denominator.typ"
#include "3a-symbols/1-c31-rational-equation.typ"
#include "3a-symbols/1-c34-linear-equation.typ"
#include "3a-symbols/2-c00-foundation-summary.typ"
#include "3a-symbols/3-c37-system-of-equations.typ"
#include "3a-symbols/3-c40-quadratic-equation.typ"
#include "3a-symbols/3-c45-inequality.typ"
#include "3a-symbols/4-c00-review-algebra-deepening.typ"

// d 域：几何证明（全等/相似/圆/勾股/三角比/变换/视图）
= 几何证明
#include "3b-geometry-proof/0-d00-overview-geometry-deepening.typ"
#include "3b-geometry-proof/1-d01-congruence-definition.typ"
#include "3b-geometry-proof/1-d04-sss-criterion.typ"
#include "3b-geometry-proof/1-d07-asa-criterion.typ"
#include "3b-geometry-proof/1-d10-similar-triangles.typ"
#include "3b-geometry-proof/1-d14-quadrilateral-angle-sum.typ"
#include "3b-geometry-proof/1-d17-rectangle.typ"
#include "3b-geometry-proof/1-d20-radius-linking.typ"
#include "3b-geometry-proof/2-d00-foundation-summary.typ"
#include "3b-geometry-proof/3-d23-pythagorean-theorem.typ"
#include "3b-geometry-proof/3-d26-trigonometric-ratios.typ"
#include "3b-geometry-proof/3-d29-elevation-depression.typ"
#include "3b-geometry-proof/3-d32-rigid-transformations.typ"
#include "3b-geometry-proof/3-d35-orthographic-projection.typ"
#include "3b-geometry-proof/3-d37-regular-polygon-inscribed.typ"
#include "3b-geometry-proof/4-d00-review-geometry-deepening.typ"

// e 域：函数（一次/反比例/二次 + 增长模型）
= 函数
#include "3c-functions/0-e00-overview-function-models.typ"
#include "3c-functions/1-e01-function-concept.typ"
#include "3c-functions/1-e04-inverse-proportion.typ"
#include "3c-functions/2-e00-foundation-summary.typ"
#include "3c-functions/3-e05-quadratic-function.typ"
#include "3c-functions/3-e08-additive-growth.typ"
#include "3c-functions/4-e00-review-function-models.typ"

// f 域：数据（描述统计 + 频率分布 + 概率 + 抽样）
= 数据
#include "3d-data/0-f00-overview-data-statistics.typ"
#include "3d-data/1-f01-frequency-count.typ"
#include "3d-data/1-f04-mean.typ"
#include "3d-data/1-f07-range.typ"
#include "3d-data/1-f09-frequency-distribution-table.typ"
#include "3d-data/2-f00-foundation-summary.typ"
#include "3d-data/3-f11-sample-space.typ"
#include "3d-data/3-f14-experimental-probability.typ"
#include "3d-data/3-f16-population-sample.typ"
#include "3d-data/4-f00-review-data-statistics.typ"

// 终章综合
= 终章综合
#include "4-capstone/4-z00-overview.typ"
#include "4-capstone/4-z01-invention-tree.typ"
#include "4-capstone/4-z02-review.typ"
#include "4-capstone/4-z03-whats-next.typ"
