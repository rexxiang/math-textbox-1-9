#import "lib/theme-v2.typ": *

#show: textbook-v2

#set page(header: none, footer: none)

#align(center)[
  #text(size: 24pt, weight: "bold")[数学发明者手册]
  #v(0.5em)
  #text(size: 14pt, fill: luma(100))[小学一年级 — 初中三年级]
]

#pagebreak()
#outline(title: [目录], depth: 2)
#pagebreak()

#set heading(numbering: none)
#counter(page).update(1)
#set page(numbering: "i", header: none, footer: frontmatter-page-footer)

// 导读（前言：罗马页码，无章号）
= 导读

#include "0-orientation/01-how-to-self-study/00-overview.typ"
#include "0-orientation/01-how-to-self-study/99-review.typ"
#include "0-orientation/02-symbols-invention-tree-repair-routes/00-overview.typ"
#include "0-orientation/02-symbols-invention-tree-repair-routes/99-review.typ"

#counter(heading).update(0)
#set heading(numbering: (..nums) => {
  let n = nums.pos()
  if n.len() <= 2 { numbering("1.1", ..n) }
})
#set page(numbering: "1", header: main-page-header, footer: main-page-footer)
#counter(page).update(1)

// 1-public-foundation
= 公共基础
#include "1-public-foundation/00-part-map.typ"
#include "1-public-foundation/01-number-place-value-decimal/00-overview.typ"
#include "1-public-foundation/01-number-place-value-decimal/99-review.typ"
#include "1-public-foundation/02-four-operations-structure/00-overview.typ"
#include "1-public-foundation/02-four-operations-structure/99-review.typ"
#include "1-public-foundation/03-factors-multiples-prime-factorization/00-overview.typ"
#include "1-public-foundation/03-factors-multiples-prime-factorization/99-review.typ"
#include "1-public-foundation/04-fractions/00-overview.typ"
#include "1-public-foundation/04-fractions/99-review.typ"
#include "1-public-foundation/05-decimals-units-estimation-measurement/00-overview.typ"
#include "1-public-foundation/05-decimals-units-estimation-measurement/99-review.typ"
#include "1-public-foundation/06-points-lines-segments/00-overview.typ"
#include "1-public-foundation/06-points-lines-segments/99-review.typ"
#include "1-public-foundation/07-polygons-solids-shape-relations/00-overview.typ"
#include "1-public-foundation/07-polygons-solids-shape-relations/99-review.typ"
#include "1-public-foundation/08-perimeter-area-volume-angle/00-overview.typ"
#include "1-public-foundation/08-perimeter-area-volume-angle/99-review.typ"
#include "1-public-foundation/09-parallel-triangles-basic-geometry/00-overview.typ"
#include "1-public-foundation/09-parallel-triangles-basic-geometry/99-review.typ"
#include "1-public-foundation/10-foundation-readiness-check/00-overview.typ"
#include "1-public-foundation/10-foundation-readiness-check/99-review.typ"

// 2-common-bridges
= 共通桥梁
#include "2-common-bridges/00-part-map.typ"
#include "2-common-bridges/01-ratio-proportion-percent/00-overview.typ"
#include "2-common-bridges/01-ratio-proportion-percent/99-review.typ"
#include "2-common-bridges/02-number-line-negative-rational/00-overview.typ"
#include "2-common-bridges/02-number-line-negative-rational/99-review.typ"
#include "2-common-bridges/03-rational-arithmetic/00-overview.typ"
#include "2-common-bridges/03-rational-arithmetic/99-review.typ"
#include "2-common-bridges/04-coordinate-position-plane/00-overview.typ"
#include "2-common-bridges/04-coordinate-position-plane/99-review.typ"
#include "2-common-bridges/05-letters-expressions-relationship-templates/00-overview.typ"
#include "2-common-bridges/05-letters-expressions-relationship-templates/99-review.typ"
#include "2-common-bridges/06-equation-balance-inverse-operations/00-overview.typ"
#include "2-common-bridges/06-equation-balance-inverse-operations/99-review.typ"
#include "2-common-bridges/07-square-root-irrational-number-line/00-overview.typ"
#include "2-common-bridges/07-square-root-irrational-number-line/99-review.typ"
#include "2-common-bridges/08-bridge-readiness-contracts/00-overview.typ"
#include "2-common-bridges/08-bridge-readiness-contracts/99-review.typ"

// 3a-algebra-symbols
= 代数与符号
#include "3a-algebra-symbols/00-part-map.typ"
#include "3a-algebra-symbols/01-polynomials-like-terms-operations/00-overview.typ"
#include "3a-algebra-symbols/01-polynomials-like-terms-operations/99-review.typ"
#include "3a-algebra-symbols/02-distributive-identities-factorization/00-overview.typ"
#include "3a-algebra-symbols/02-distributive-identities-factorization/99-review.typ"
#include "3a-algebra-symbols/03-rational-expressions-operations-extraneous-roots/00-overview.typ"
#include "3a-algebra-symbols/03-rational-expressions-operations-extraneous-roots/99-review.typ"
#include "3a-algebra-symbols/04-linear-equations-systems-modeling/00-overview.typ"
#include "3a-algebra-symbols/04-linear-equations-systems-modeling/99-review.typ"
#include "3a-algebra-symbols/05-quadratic-equations/00-overview.typ"
#include "3a-algebra-symbols/05-quadratic-equations/99-review.typ"
#include "3a-algebra-symbols/06-linear-inequalities/00-overview.typ"
#include "3a-algebra-symbols/06-linear-inequalities/99-review.typ"
#include "3a-algebra-symbols/07-algebra-summary/00-overview.typ"
#include "3a-algebra-symbols/07-algebra-summary/99-review.typ"

// 3b-geometry-proof
= 几何与证明
#include "3b-geometry-proof/00-part-map.typ"
#include "3b-geometry-proof/01-congruence-and-basic-criteria/00-overview.typ"
#include "3b-geometry-proof/01-congruence-and-basic-criteria/99-review.typ"
#include "3b-geometry-proof/02-advanced-criteria-and-proof-writing/00-overview.typ"
#include "3b-geometry-proof/02-advanced-criteria-and-proof-writing/99-review.typ"
#include "3b-geometry-proof/03-similarity-scale-parallel-line-geometry/00-overview.typ"
#include "3b-geometry-proof/03-similarity-scale-parallel-line-geometry/99-review.typ"
#include "3b-geometry-proof/04-quadrilateral-family/00-overview.typ"
#include "3b-geometry-proof/04-quadrilateral-family/99-review.typ"
#include "3b-geometry-proof/05-circles-and-inscribed-circumscribed/00-overview.typ"
#include "3b-geometry-proof/05-circles-and-inscribed-circumscribed/99-review.typ"
#include "3b-geometry-proof/06-pythagorean-radicals-trigonometric-ratios/00-overview.typ"
#include "3b-geometry-proof/06-pythagorean-radicals-trigonometric-ratios/99-review.typ"
#include "3b-geometry-proof/07-transformations-coordinate-geometry-views/00-overview.typ"
#include "3b-geometry-proof/07-transformations-coordinate-geometry-views/99-review.typ"
#include "3b-geometry-proof/08-geometry-summary/00-overview.typ"
#include "3b-geometry-proof/08-geometry-summary/99-review.typ"

// 3c-functions-change
= 函数与变化
#include "3c-functions-change/00-part-map.typ"
#include "3c-functions-change/01-function-representations/00-overview.typ"
#include "3c-functions-change/01-function-representations/99-review.typ"
#include "3c-functions-change/02-direct-variation-linear-functions-slope/00-overview.typ"
#include "3c-functions-change/02-direct-variation-linear-functions-slope/99-review.typ"
#include "3c-functions-change/03-inverse-proportion-quadratic-functions/00-overview.typ"
#include "3c-functions-change/03-inverse-proportion-quadratic-functions/99-review.typ"
#include "3c-functions-change/04-growth-models-function-comparison/00-overview.typ"
#include "3c-functions-change/04-growth-models-function-comparison/99-review.typ"
#include "3c-functions-change/05-functions-summary/00-overview.typ"
#include "3c-functions-change/05-functions-summary/99-review.typ"

// 3d-data-uncertainty
= 数据与不确定性
#include "3d-data-uncertainty/00-part-map.typ"
#include "3d-data-uncertainty/01-data-displays-descriptive-statistics/00-overview.typ"
#include "3d-data-uncertainty/01-data-displays-descriptive-statistics/99-review.typ"
#include "3d-data-uncertainty/02-frequency-histograms-variance/00-overview.typ"
#include "3d-data-uncertainty/02-frequency-histograms-variance/99-review.typ"
#include "3d-data-uncertainty/03-sample-space-probability-experimental-frequency/00-overview.typ"
#include "3d-data-uncertainty/03-sample-space-probability-experimental-frequency/99-review.typ"
#include "3d-data-uncertainty/04-population-samples-estimation/00-overview.typ"
#include "3d-data-uncertainty/04-population-samples-estimation/99-review.typ"
#include "3d-data-uncertainty/05-data-summary/00-overview.typ"
#include "3d-data-uncertainty/05-data-summary/99-review.typ"

// 4-capstone
= 终章综合
#include "4-capstone/00-part-map.typ"
#include "4-capstone/01-shared-invention-tree-review/00-overview.typ"
#include "4-capstone/01-shared-invention-tree-review/99-review.typ"
#include "4-capstone/02-cross-domain-problem-solving-modeling/00-overview.typ"
#include "4-capstone/02-cross-domain-problem-solving-modeling/99-review.typ"
#include "4-capstone/03-next-learning-map/00-overview.typ"
#include "4-capstone/03-next-learning-map/99-review.typ"

// 附录
= 附录
#include "appendices/glossary.typ"
#include "appendices/formula-sheet.typ"
#include "appendices/symbol-table.typ"
#include "appendices/future-bridges.typ"
