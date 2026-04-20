#import "../lib/theme-v2.typ": *

#show: textbook-v2

#set page(header: none, footer: none)

// Gate and branch smoke files inline their prerequisite trunk chain so each
// chapter can be compiled independently from the main book entrypoint.

= 第八章烟雾测试：函数模型

#include "../01-counting/05-mixed-operations.typ"
#include "../01-counting/06-operation-laws.typ"
#include "../01-counting/07-multiplication-laws.typ"
#include "../02-fraction-ratio-foundation/01-factors-multiples.typ"
#include "../02-fraction-ratio-foundation/01a-primes-composites.typ"
#include "../02-fraction-ratio-foundation/01b-gcd-lcm.typ"
#include "../02-fraction-ratio-foundation/02-fractions-meaning.typ"
#include "../02-fraction-ratio-foundation/02a-mixed-fraction-property.typ"
#include "../02-fraction-ratio-foundation/02b-fraction-simplify-compare.typ"
#include "../02-fraction-ratio-foundation/02c-fraction-operations.typ"
#include "../02-fraction-ratio-foundation/03-decimals.typ"
#include "../02-fraction-ratio-foundation/04-ratios-percentages.typ"
#include "../02-fraction-ratio-foundation/05-conversions-and-comparisons.typ"
#include "../03-geometry-foundation/01-basic-shapes.typ"
#include "../03-geometry-foundation/01a-point-line-plane.typ"
#include "../03-geometry-foundation/01b-perimeter.typ"
#include "../03-geometry-foundation/02-area-volume.typ"
#include "../03-geometry-foundation/03-volume.typ"
#include "../03-geometry-foundation/03-angles.typ"
#include "../03-geometry-foundation/03a-angle-types.typ"
#include "../03-geometry-foundation/03b-angle-relations.typ"
#include "../03-geometry-foundation/04-parallel-perpendicular.typ"
#include "../03-geometry-foundation/05-coordinate-entry.typ"
#include "../04-number-line-algebra-bridge/01-rational-numbers.typ"
#include "../04-number-line-algebra-bridge/01a-opposites-absolute-operations.typ"
#include "../04-number-line-algebra-bridge/02-real-numbers.typ"
#include "../04-number-line-algebra-bridge/03-variables-and-expressions.typ"
#include "../04-number-line-algebra-bridge/04-equation-intuition.typ"
#include "../05-foundation-gate/00-overview.typ"
#include "../05-foundation-gate/01-foundation-check.typ"
#include "../05-foundation-gate/02-branch-entry-recaps.typ"
#include "../05-foundation-gate/03-review.typ"
#include "../08-function-models/00-overview.typ"
#include "../08-function-models/01-linear-functions.typ"
#include "../08-function-models/02-inverse-proportion.typ"
#include "../08-function-models/03-foundation-summary.typ"
#include "../08-function-models/04-quadratic-functions.typ"
#include "../08-function-models/05-rate-change-models.typ"
#include "../08-function-models/06-review.typ"
