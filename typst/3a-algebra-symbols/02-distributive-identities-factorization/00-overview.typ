#import "../../lib/theme-v2.typ": chapter-nav, chapter-route, side-hack, secref

== 分配律、乘法公式与因式分解 <ch:distributive-identities-factorization>

试试心算 $99 times 37$。直接乘太难？换个角度：$99 = 100 - 1$，所以 $99 times 37 = 100 times 37 - 37 = 3663$。你刚才不知不觉用了分配律。这条规则不仅能把乘法"拆开"，还能把加法"提回"乘积——反向走一遍，就是因式分解。

#chapter-nav[
  *难度*：★★★★☆ \
  *核心问题*：分配律既能“乘开”也能“提回”——这条双向公路怎么稳稳走？再加上两条乘法公式，我们能否系统地把多项式拆回乘积？ \
  *需要先会*：#secref("pf02-order-laws")、#secref("pf03-gcd-lcm")、#secref("al01-multiply-polynomials")。 \
  *本章在全书的位置*：代数分支第二章——把第 1 章的“乘法展开”反向化，为第 3 章分式约分、第 5 章二次方程奠基。
]

#chapter-route[

  + 先把分配律看成一条*双向公路*：向前是“展开”，向后是“提公因式”。
  + 再把两条最常用的乘法公式（平方差、完全平方）*正反两用*一次说清。
  + 最后把“因式分解”写成一条清晰的流程：先提公因式 → 再看公式 → 必要时匹配中间项。
]

#side-hack[
  *入章自检*——以下几道小题只用前面章节学过的知识。如果卡住，请先回到上面"需要先会"的链接补一补。

  + 展开 $2(x + 3) = ?$
  + $3x + 5x = ?$
  + $12$ 和 $18$ 的最大公因数是多少？
]

#include "01-distributive-rewrite.typ"
#include "02-special-identities.typ"
#include "03-factorization-as-reverse.typ"
