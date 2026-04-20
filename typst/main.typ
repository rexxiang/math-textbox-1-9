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
= 导读
#include "gateway/welcome.typ"
#include "gateway/how-to-use.typ"
#include "gateway/symbols.typ"
#include "gateway/invention-tree.typ"

#counter(heading).update(0)
#set heading(numbering: "1.1")
#set page(numbering: "1", header: main-page-header, footer: main-page-footer)
#counter(page).update(1)

// a 域：数感（ℕ→ℤ→ℚ→ℝ + 四则 + 位值 + 比例）
= 数感
#include "a-number-sense/_overview-from-01-counting.typ"
#include "a-number-sense/_overview-from-02-fraction-ratio-foundation.typ"
#include "a-number-sense/_overview-from-04-number-line-algebra-bridge.typ"
#include "a-number-sense/a01-natural-number.typ"
#include "a-number-sense/a04-digit.typ"
#include "a-number-sense/a07-addition.typ"
#include "a-number-sense/a10-multiplication.typ"
#include "a-number-sense/a13-order-of-operations.typ"
#include "a-number-sense/a15-add-commutative.typ"
#include "a-number-sense/a17-mul-commutative.typ"
#include "a-number-sense/a20-factor-multiple.typ"
#include "a-number-sense/a23-prime.typ"
#include "a-number-sense/a25-prime-factorization.typ"
#include "a-number-sense/a28-fraction-definition.typ"
#include "a-number-sense/a31-mixed-number.typ"
#include "a-number-sense/a34-simplify.typ"
#include "a-number-sense/a38-fraction-add-sub.typ"
#include "a-number-sense/a41-decimal.typ"
#include "a-number-sense/a44-ratio.typ"
#include "a-number-sense/a47-decimal-fraction-conversion.typ"
#include "a-number-sense/a49-number-line.typ"
#include "a-number-sense/a52-opposite-number.typ"
#include "a-number-sense/a55-irrational-number.typ"
#include "a-number-sense/_review-from-01-counting.typ"
#include "a-number-sense/_review-from-02-fraction-ratio-foundation.typ"
#include "a-number-sense/_review-from-04-number-line-algebra-bridge.typ"

// b 域：形状（点线面 + 周长面积体积 + 角平行 + 坐标入门）
= 形状
#include "b-shapes/_overview-from-03-geometry-foundation.typ"
#include "b-shapes/b01-point.typ"
#include "b-shapes/b04-ray.typ"
#include "b-shapes/b07-triangle.typ"
#include "b-shapes/b10-perimeter.typ"
#include "b-shapes/b13-area.typ"
#include "b-shapes/b17-volume.typ"
#include "b-shapes/b20-angle.typ"
#include "b-shapes/b23-acute-angle.typ"
#include "b-shapes/b26-complementary.typ"
#include "b-shapes/b29-parallel-lines.typ"
#include "b-shapes/b32-co-interior-supplementary.typ"
#include "b-shapes/b36-coordinate-system.typ"
#include "b-shapes/_review-from-03-geometry-foundation.typ"

// 基础总结闸门
= 主干收束闸门
#include "foundation-gate/00-overview.typ"
#include "foundation-gate/01-foundation-check.typ"
#include "foundation-gate/02-branch-entry-recaps.typ"
#include "foundation-gate/03-review.typ"

// c 域：符号（字母式 + 整式 + 幂 + 因式分解 + 方程/不等式/分式）
= 符号
#include "c-symbols/_overview-from-06-algebra-deepening.typ"
#include "c-symbols/c01-variable.typ"
#include "c-symbols/c04-equation.typ"
#include "c-symbols/c07-polynomial.typ"
#include "c-symbols/c12-polynomial-multiply.typ"
#include "c-symbols/c15-power-notation.typ"
#include "c-symbols/c18-zero-exponent.typ"
#include "c-symbols/c21-factorization.typ"
#include "c-symbols/c25-rational-expression.typ"
#include "c-symbols/c28-common-denominator.typ"
#include "c-symbols/c31-rational-equation.typ"
#include "c-symbols/c34-linear-equation.typ"
#include "c-symbols/_foundation-summary-from-06-algebra-deepening.typ"
#include "c-symbols/c37-system-of-equations.typ"
#include "c-symbols/c40-quadratic-equation.typ"
#include "c-symbols/c45-inequality.typ"
#include "c-symbols/_review-from-06-algebra-deepening.typ"

// d 域：几何证明（全等/相似/圆/勾股/三角比/变换/视图）
= 几何证明
#include "d-geometry-proof/_overview-from-07-geometry-deepening.typ"
#include "d-geometry-proof/d01-congruence-definition.typ"
#include "d-geometry-proof/d04-sss-criterion.typ"
#include "d-geometry-proof/d07-asa-criterion.typ"
#include "d-geometry-proof/d10-similar-triangles.typ"
#include "d-geometry-proof/d14-quadrilateral-angle-sum.typ"
#include "d-geometry-proof/d17-rectangle.typ"
#include "d-geometry-proof/d20-radius-linking.typ"
#include "d-geometry-proof/_foundation-summary-from-07-geometry-deepening.typ"
#include "d-geometry-proof/d23-pythagorean-theorem.typ"
#include "d-geometry-proof/d26-trigonometric-ratios.typ"
#include "d-geometry-proof/d29-elevation-depression.typ"
#include "d-geometry-proof/d32-rigid-transformations.typ"
#include "d-geometry-proof/d35-orthographic-projection.typ"
#include "d-geometry-proof/d37-regular-polygon-inscribed.typ"
#include "d-geometry-proof/_review-from-07-geometry-deepening.typ"

// e 域：函数（一次/反比例/二次 + 增长模型）
= 函数
#include "e-functions/_overview-from-08-function-models.typ"
#include "e-functions/e01-function-concept.typ"
#include "e-functions/e04-inverse-proportion.typ"
#include "e-functions/_foundation-summary-from-08-function-models.typ"
#include "e-functions/e05-quadratic-function.typ"
#include "e-functions/e08-additive-growth.typ"
#include "e-functions/_review-from-08-function-models.typ"

// f 域：数据（描述统计 + 频率分布 + 概率 + 抽样）
= 数据
#include "f-data/_overview-from-09-data-statistics.typ"
#include "f-data/f01-frequency-count.typ"
#include "f-data/f04-mean.typ"
#include "f-data/f07-range.typ"
#include "f-data/f09-frequency-distribution-table.typ"
#include "f-data/_foundation-summary-from-09-data-statistics.typ"
#include "f-data/f11-sample-space.typ"
#include "f-data/f14-experimental-probability.typ"
#include "f-data/f16-population-sample.typ"
#include "f-data/_review-from-09-data-statistics.typ"

// 终章综合
= 终章综合
#include "capstone/00-overview.typ"
#include "capstone/invention-tree.typ"
#include "capstone/review.typ"
#include "capstone/whats-next.typ"
