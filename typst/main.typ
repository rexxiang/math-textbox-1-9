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

#set page(header: main-page-header, footer: main-page-footer)
#counter(page).update(1)

// 第 0 章：导读
= 导读
#include "00-gateway/welcome.typ"
#include "00-gateway/how-to-use.typ"
#include "00-gateway/symbols.typ"
#include "00-gateway/invention-tree.typ"

// 第 1 章：数的萌芽（小学 1-4 年级）
= 数的萌芽
#include "01-counting/00-overview.typ"
#include "01-counting/01-natural-numbers.typ"
#include "01-counting/02-place-value.typ"
#include "01-counting/03-addition-subtraction.typ"
#include "01-counting/04-multiplication-division.typ"
#include "01-counting/05-mixed-operations.typ"
#include "01-counting/06-operation-laws.typ"
#include "01-counting/07-review.typ"

// Note: 01-arithmetic-foundation remains a placeholder stub and is intentionally
// not part of the live include graph yet.

// 第 2 章：分数、比与百分数基础（小学 3-6 年级）
= 分数、比与百分数基础
#include "02-fraction-ratio-foundation/00-overview.typ"
#include "02-fraction-ratio-foundation/01-factors-multiples.typ"
#include "02-fraction-ratio-foundation/02-fractions.typ"
#include "02-fraction-ratio-foundation/03-decimals.typ"
#include "02-fraction-ratio-foundation/04-ratios-percentages.typ"
#include "02-fraction-ratio-foundation/05-conversions-and-comparisons.typ"
#include "02-fraction-ratio-foundation/06-review.typ"

// 第 3 章：几何基础（小学 3-6 年级）
= 几何基础
#include "03-geometry-foundation/00-overview.typ"
#include "03-geometry-foundation/01-basic-shapes.typ"
#include "03-geometry-foundation/02-area-volume.typ"
#include "03-geometry-foundation/03-angles.typ"
#include "03-geometry-foundation/04-parallel-perpendicular.typ"
#include "03-geometry-foundation/05-coordinate-entry.typ"
#include "03-geometry-foundation/06-review.typ"

// 第 4 章：数轴与代数桥（初中 7-8 年级）
= 数轴与代数桥
#include "04-number-line-algebra-bridge/00-overview.typ"
#include "04-number-line-algebra-bridge/01-rational-numbers.typ"
#include "04-number-line-algebra-bridge/02-real-numbers.typ"
#include "04-number-line-algebra-bridge/03-variables-and-expressions.typ"
#include "04-number-line-algebra-bridge/04-equation-intuition.typ"
#include "04-number-line-algebra-bridge/05-review.typ"

// 第 5 章：基础总闸门（初中 7-9 年级）
= 基础总闸门
#include "05-foundation-gate/00-overview.typ"
#include "05-foundation-gate/01-foundation-check.typ"
#include "05-foundation-gate/02-branch-entry-recaps.typ"
#include "05-foundation-gate/03-review.typ"

// 第 6 章：代数深化（初中 7-9 年级）
= 代数深化
#include "06-algebra-deepening/00-overview.typ"
#include "06-algebra-deepening/01-algebraic-expressions.typ"
#include "06-algebra-deepening/02-factorization.typ"
#include "06-algebra-deepening/03-rational-expressions.typ"
#include "06-algebra-deepening/04-linear-equations.typ"
#include "06-algebra-deepening/05-systems-of-equations.typ"
#include "06-algebra-deepening/06-quadratic-equations.typ"
#include "06-algebra-deepening/07-inequalities.typ"
#include "06-algebra-deepening/08-review.typ"

// 第 7 章：几何深化（初中 7-9 年级）
= 几何深化
#include "07-geometry-deepening/00-overview.typ"
#include "07-geometry-deepening/01-congruent-triangles.typ"
#include "07-geometry-deepening/02-similar-triangles.typ"
#include "07-geometry-deepening/03-quadrilaterals.typ"
#include "07-geometry-deepening/04-circles.typ"
#include "07-geometry-deepening/05-pythagorean-theorem.typ"
#include "07-geometry-deepening/06-trigonometric-measurement.typ"
#include "07-geometry-deepening/07-transformations.typ"
#include "07-geometry-deepening/08-projections.typ"
#include "07-geometry-deepening/09-circle-extensions.typ"
#include "07-geometry-deepening/10-review.typ"

// 第 8 章：函数模型（初中 8-9 年级）
= 函数模型
#include "08-function-models/00-overview.typ"
#include "08-function-models/01-linear-functions.typ"
#include "08-function-models/02-inverse-proportion.typ"
#include "08-function-models/03-quadratic-functions.typ"
#include "08-function-models/04-rate-change-models.typ"
#include "08-function-models/05-review.typ"

// 第 9 章：数据统计（初中 7-9 年级）
= 数据统计
#include "09-data-statistics/00-overview.typ"
#include "09-data-statistics/01-data-collection.typ"
#include "09-data-statistics/02-central-tendency.typ"
#include "09-data-statistics/03-variability.typ"
#include "09-data-statistics/04-frequency-distribution.typ"
#include "09-data-statistics/05-probability.typ"
#include "09-data-statistics/06-sampling-estimation.typ"
#include "09-data-statistics/07-review.typ"

// 第 10 章：终章综合
= 终章综合
#include "10-capstone/00-overview.typ"
#include "10-capstone/invention-tree.typ"
#include "10-capstone/whats-next.typ"
