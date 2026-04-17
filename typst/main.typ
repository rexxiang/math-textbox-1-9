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

// 第 2 章：分与合（小学 3-6 年级）
= 分与合
#include "02-fraction-decimal/00-overview.typ"
#include "02-fraction-decimal/01-factors-multiples.typ"
#include "02-fraction-decimal/02-fractions.typ"
#include "02-fraction-decimal/03-decimals.typ"
#include "02-fraction-decimal/04-conversions.typ"
#include "02-fraction-decimal/05-review.typ"

// 第 3 章：比例世界（小学 5-7 年级）
= 比例世界
#include "03-ratio-world/00-overview.typ"
#include "03-ratio-world/01-percentages.typ"
#include "03-ratio-world/02-ratios-proportions.typ"
#include "03-ratio-world/03-data-collection.typ"
#include "03-ratio-world/04-central-tendency.typ"
#include "03-ratio-world/05-review.typ"

// 第 4 章：负数的发明（初中 7-8 年级）
= 负数的发明
#include "04-negative-invention/00-overview.typ"
#include "04-negative-invention/01-rational-numbers.typ"
#include "04-negative-invention/02-real-numbers.typ"
#include "04-negative-invention/03-review.typ"

// 第 5 章：方程——未知数猎手（初中 7-9 年级）
= 方程\u{2014}\u{2014}未知数猎手
#include "05-equation-machine/00-overview.typ"
#include "05-equation-machine/01-algebraic-expressions.typ"
#include "05-equation-machine/02-factorization.typ"
#include "05-equation-machine/03-rational-expressions.typ"
#include "05-equation-machine/04-linear-equations.typ"
#include "05-equation-machine/05-systems-of-equations.typ"
#include "05-equation-machine/06-quadratic-equations.typ"
#include "05-equation-machine/07-inequalities.typ"
#include "05-equation-machine/08-review.typ"

// 第 6 章：形的逻辑（小学 3-6 年级基础 + 初中 7-9 年级）
= 形的逻辑
#include "06-shape-logic/00-overview.typ"
#include "06-shape-logic/01-basic-shapes.typ"
#include "06-shape-logic/02-area-volume.typ"
#include "06-shape-logic/03-angles.typ"
#include "06-shape-logic/04-parallel-perpendicular.typ"
#include "06-shape-logic/05-congruent-triangles.typ"
#include "06-shape-logic/06-similar-triangles.typ"
#include "06-shape-logic/07-quadrilaterals.typ"
#include "06-shape-logic/08-circles.typ"
#include "06-shape-logic/09-pythagorean-theorem.typ"
#include "06-shape-logic/10-transformations.typ"
#include "06-shape-logic/11-projections.typ"
#include "06-shape-logic/12-coordinate-geometry.typ"
#include "06-shape-logic/13-circle-extensions.typ"
#include "06-shape-logic/14-review.typ"

// 第 7 章：函数——变化的望远镜（初中 8-9 年级）
= 函数\u{2014}\u{2014}变化的望远镜
#include "07-function-lens/00-overview.typ"
#include "07-function-lens/01-linear-functions.typ"
#include "07-function-lens/02-inverse-proportion.typ"
#include "07-function-lens/03-quadratic-functions.typ"
#include "07-function-lens/04-trigonometric-functions.typ"
#include "07-function-lens/05-review.typ"

// 第 8 章：数据侦探（初中 7-9 年级）
= 数据侦探
#include "08-data-detective/00-overview.typ"
#include "08-data-detective/01-variability.typ"
#include "08-data-detective/02-frequency-distribution.typ"
#include "08-data-detective/03-probability.typ"
#include "08-data-detective/04-sampling-estimation.typ"
#include "08-data-detective/05-review.typ"

// 第 9 章：终章
= 终章
#include "09-capstone/invention-tree.typ"
#include "09-capstone/whats-next.typ"

// Future macro-structure mapping reference only.
// Documentary note: this is not an alternate include list and must not be
// uncommented for cutover. Target chapter directories are being populated
// incrementally; some now contain real draft content, but active includes must
// not switch until the relevant migration task is complete and reviewed.
//
// Planned target order and source mapping:
// 1. 01-arithmetic-foundation <- current 01-counting
// 2. 02-fraction-ratio-foundation <- current 02-fraction-decimal + ratio basics
//    from current 03-ratio-world:
//    - move in: percentage meaning, fraction/decimal/percentage conversion,
//      ratio and proportion basics, part-part vs part-whole interpretation, and
//      basic proportional allocation
//    - keep out for later chapters: 利率 / 增长率 application strands,
//      正比例 / 反比例 as function-model preparation, and 比例尺 as geometry-scale
//      content
// 3. 03-geometry-foundation <- geometry foundations from current 06-shape-logic
//    plus 比例尺 / spatial scale applications from current 03-ratio-world
// 4. 04-number-line-algebra-bridge <- current 04-negative-invention
// 5. 05-foundation-gate <- reserved checkpoint chapter before deepening tracks
// 6. 06-algebra-deepening <- current 05-equation-machine
// 7. 07-geometry-deepening <- remaining deepening content from current
//    06-shape-logic, plus current 07-function-lens/04-trigonometric-functions.typ
//    reframed as geometry measurement
// 8. 08-function-models <- current 07-function-lens except trigonometric
//    measurement, plus from current
//    03-ratio-world:
//    - 正比例 -> bridge into y = kx / direct proportion function treatment
//    - 反比例 -> bridge into y = k/x / inverse proportion function treatment
//    - 利率、增长率 -> percentage change / rate applications kept with later
//      modeling contexts rather than the foundation chapter
// 9. 09-data-statistics <- current 03-ratio-world data/statistics lessons
//    (03-data-collection, 04-central-tendency, data portions of 05-review)
//    plus current 08-data-detective
// 10. 10-capstone <- current 09-capstone
//     - 09-capstone/invention-tree.typ -> future 10-capstone/invention-tree.typ
//     - 09-capstone/whats-next.typ -> future 10-capstone/whats-next.typ
