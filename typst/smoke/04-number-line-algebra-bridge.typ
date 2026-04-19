#import "../lib/theme-v2.typ": *

#show: textbook-v2

#set page(header: none, footer: none)

// Standalone chapter smoke entrypoints start at chapter 04.
// Chapters 01-03 are covered by typst/main.typ, while this file pulls in the
// prerequisite trunk material needed for an independent bridge compile.

= 第四章烟雾测试：数轴与代数桥

#include "../01-counting/05-mixed-operations.typ"
#include "../01-counting/06-operation-laws.typ"
#include "../01-counting/07-multiplication-laws.typ"
#include "../02-fraction-ratio-foundation/04-ratios-percentages.typ"
#include "../02-fraction-ratio-foundation/05-conversions-and-comparisons.typ"
#include "../04-number-line-algebra-bridge/00-overview.typ"
#include "../04-number-line-algebra-bridge/01-rational-numbers.typ"
#include "../04-number-line-algebra-bridge/01a-opposites-absolute-operations.typ"
#include "../04-number-line-algebra-bridge/02-real-numbers.typ"
#include "../04-number-line-algebra-bridge/03-variables-and-expressions.typ"
#include "../04-number-line-algebra-bridge/04-equation-intuition.typ"
#include "../04-number-line-algebra-bridge/05-review.typ"
