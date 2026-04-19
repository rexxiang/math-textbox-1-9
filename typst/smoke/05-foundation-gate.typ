#import "../lib/theme-v2.typ": *

#show: textbook-v2

#set page(header: none, footer: none)

// Gate and branch smoke files inline their prerequisite trunk chain so each
// chapter can be compiled independently from the main book entrypoint.

= 第五章烟雾测试：主干收束闸门

#include "../01-counting/05-mixed-operations.typ"
#include "../01-counting/06-operation-laws.typ"
#include "../01-counting/07-multiplication-laws.typ"
#include "../02-fraction-ratio-foundation/01-factors-multiples.typ"
#include "../02-fraction-ratio-foundation/02-gcd-lcm.typ"
#include "../02-fraction-ratio-foundation/02-fractions.typ"
#include "../02-fraction-ratio-foundation/03-decimals.typ"
#include "../02-fraction-ratio-foundation/04-ratios-percentages.typ"
#include "../02-fraction-ratio-foundation/05-conversions-and-comparisons.typ"
#include "../03-geometry-foundation/01-basic-shapes.typ"
#include "../03-geometry-foundation/02-perimeter.typ"
#include "../03-geometry-foundation/03-point-line-plane.typ"
#include "../03-geometry-foundation/02-area-volume.typ"
#include "../03-geometry-foundation/03-angles.typ"
#include "../03-geometry-foundation/06-angle-relations.typ"
#include "../03-geometry-foundation/04-parallel-perpendicular.typ"
#include "../03-geometry-foundation/05-coordinate-entry.typ"
#include "../04-number-line-algebra-bridge/01-rational-numbers.typ"
#include "../04-number-line-algebra-bridge/02-rational-operations.typ"
#include "../04-number-line-algebra-bridge/02-real-numbers.typ"
#include "../04-number-line-algebra-bridge/03-variables-and-expressions.typ"
#include "../04-number-line-algebra-bridge/04-equation-intuition.typ"
#include "../05-foundation-gate/00-overview.typ"
#include "../05-foundation-gate/01-foundation-check.typ"
#include "../05-foundation-gate/02-branch-entry-recaps.typ"
#include "../05-foundation-gate/03-review.typ"
