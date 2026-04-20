#import "../lib/theme-v2.typ": *

#show: textbook-v2

#set page(header: none, footer: none)

// Gate and branch smoke files inline their prerequisite trunk chain so each
// chapter can be compiled independently from the main book entrypoint.

= 第六章烟雾测试：代数深化

#include "../01-counting/05-mixed-operations.typ"
#include "../01-counting/06-operation-laws.typ"
#include "../01-counting/07-multiplication-laws.typ"
#include "../02-fraction-ratio-foundation/01-factors-multiples.typ"
#include "../02-fraction-ratio-foundation/01a-primes-composites.typ"
#include "../02-fraction-ratio-foundation/01b-gcd-lcm.typ"
#include "../02-fraction-ratio-foundation/02-fractions-meaning.typ"
#include "../02-fraction-ratio-foundation/02a-fraction-simplify-compare.typ"
#include "../02-fraction-ratio-foundation/02b-fraction-operations.typ"
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
#include "../06-algebra-deepening/00-overview.typ"
#include "../06-algebra-deepening/01-algebraic-expressions.typ"
#include "../06-algebra-deepening/02-polynomial-multiplication.typ"
#include "../06-algebra-deepening/03-power-notation.typ"
#include "../06-algebra-deepening/04-factorization.typ"
#include "../06-algebra-deepening/05-rational-expressions.typ"
#include "../06-algebra-deepening/06-linear-equations.typ"
#include "../06-algebra-deepening/07-foundation-summary.typ"
#include "../06-algebra-deepening/08-systems-of-equations.typ"
#include "../06-algebra-deepening/09-quadratic-equations.typ"
#include "../06-algebra-deepening/10-inequalities.typ"
#include "../06-algebra-deepening/11-review.typ"
