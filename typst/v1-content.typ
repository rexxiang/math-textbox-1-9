// V1 内容入口：五步结构（原版）
#import "lib/theme.typ": *

#show: textbook

#align(center)[
  #text(size: 24pt, weight: "bold")[数学自学教材（1-9 年级）]
]

#pagebreak()
#outline(title: [目录])
#pagebreak()

= 导读
#include "chapters/00-introduction/welcome.typ"
#include "chapters/00-introduction/learning-path.typ"
#include "chapters/00-introduction/symbols.typ"
#include "chapters/00-introduction/table-of-contents.typ"

= 数与运算
#include "chapters/01-numbers/00-overview.typ"
#include "chapters/01-numbers/01-integers.typ"
#include "chapters/01-numbers/02-arithmetic.typ"
#include "chapters/01-numbers/03-operation-laws.typ"
#include "chapters/01-numbers/04-factors-and-multiples.typ"
#include "chapters/01-numbers/05-fractions.typ"
#include "chapters/01-numbers/06-decimals.typ"
#include "chapters/01-numbers/07-percentages.typ"
#include "chapters/01-numbers/08-ratios-and-proportions.typ"
#include "chapters/01-numbers/09-module-summary.typ"

= 代数
#include "chapters/02-algebra/00-overview.typ"
#include "chapters/02-algebra/01-rational-numbers.typ"
#include "chapters/02-algebra/02-real-numbers.typ"
#include "chapters/02-algebra/03-algebraic-expressions.typ"
#include "chapters/02-algebra/04-factorization.typ"
#include "chapters/02-algebra/05-rational-expressions.typ"
#include "chapters/02-algebra/06-linear-equations.typ"
#include "chapters/02-algebra/07-systems-of-equations.typ"
#include "chapters/02-algebra/08-quadratic-equations.typ"
#include "chapters/02-algebra/09-inequalities.typ"
#include "chapters/02-algebra/10-linear-functions.typ"
#include "chapters/02-algebra/11-quadratic-functions.typ"
#include "chapters/02-algebra/12-module-summary.typ"

= 几何
#include "chapters/03-geometry/00-overview.typ"
#include "chapters/03-geometry/01-points-lines-planes.typ"
#include "chapters/03-geometry/02-angles.typ"
#include "chapters/03-geometry/03-parallel-perpendicular.typ"
#include "chapters/03-geometry/04-triangles.typ"
#include "chapters/03-geometry/05-quadrilaterals.typ"
#include "chapters/03-geometry/06-circles.typ"
#include "chapters/03-geometry/07-pythagorean-theorem.typ"
#include "chapters/03-geometry/08-transformations.typ"
#include "chapters/03-geometry/09-coordinate-geometry.typ"
#include "chapters/03-geometry/10-trigonometric-functions.typ"
#include "chapters/03-geometry/11-module-summary.typ"

= 统计与概率
#include "chapters/04-statistics/00-overview.typ"
#include "chapters/04-statistics/01-data-collection.typ"
#include "chapters/04-statistics/02-central-tendency.typ"
#include "chapters/04-statistics/03-data-variability.typ"
#include "chapters/04-statistics/04-frequency-distribution.typ"
#include "chapters/04-statistics/05-probability-basics.typ"
#include "chapters/04-statistics/06-sampling-estimation.typ"
#include "chapters/04-statistics/07-module-summary.typ"
