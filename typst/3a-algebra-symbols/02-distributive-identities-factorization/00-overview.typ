#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

= 分配律、乘法公式与因式分解 <ch:distributive-identities-factorization>

#blueprint[
  *难度*：★★★★☆ \
  *核心问题*：分配律既能“乘开”也能“提回”——这条双向公路怎么稳稳走？再加上两条乘法公式，我们能否系统地把多项式拆回乘积？ \
  *需要先会*：#secref("pf02-order-laws")、#secref("pf03-gcd-lcm")、#secref("al01-multiply-polynomials")。 \
  *本章在全书的位置*：代数分支第二章——把第 1 章的“乘法展开”反向化，为第 3 章分式约分、第 5 章二次方程奠基。 \
  *忘了可以回到*：若整式乘法还生疏，请回 #secref("al01-multiply-polynomials") 把展开动作练稳。
]

#side-hack[
  *本章路线*

  + 先把分配律看成一条*双向公路*：向前是“展开”，向后是“提公因式”。
  + 再把两条最常用的乘法公式（平方差、完全平方）*正反两用*一次说清。
  + 最后把“因式分解”写成一条清晰的流程：先提公因式 → 再看公式 → 必要时匹配中间项。

  *这章通向哪里*

  - 第 3 章：分式要约分、通分，分子分母都得能因式分解。
  - 第 5 章：一元二次方程最直接的解法就是因式分解成 $(a x + b)(c x + d) = 0$。
  - 几何分支里“面积重排”的经典证明，背后就是分配律和平方差的图形版。
]

#include "01-distributive-rewrite.typ"
#include "02-special-identities.typ"
#include "03-factorization-as-reverse.typ"
