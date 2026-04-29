#import "../../lib/theme-v2.typ": chapter-nav, chapter-route, side-hack, secref

== 分式：结构、运算与增根 <ch:rational-expressions-operations-extraneous-roots>

在计算器上按下 $1 div 0$，屏幕会跳出"Error"。除以零不只是让机器崩溃——当分母里出现字母的时候，某些看似合理的解会让分母变成零，把整个式子炸掉。这种"假解"叫增根，它是分式世界里最容易踩的坑。

#chapter-nav[
  *难度*：★★★★☆ \
  *核心问题*：当分母里也出现字母时，“有意义的前提”“约分的法则”“解方程后为什么要验根”这三件事，各该怎么说清楚？ \
  *需要先会*：#secref("pf04-fraction-equivalence")、#secref("pf04-fraction-arithmetic")、#secref("cb06-solving-linear")、#secref("al02-factorization-as-reverse")。 \
  *本章在全书的位置*：代数分支第三章——把小学的分数四则正式升级为“分母含字母的分式”，并第一次引入“增根”。
]

#chapter-route[

  + 先说清分式本身是什么：分母含字母的分数；它*什么时候有意义*？怎么化简？
  + 再把“通分 + 加减 + 乘除”一口气搞定，全都建立在分式基本性质之上。
  + 最后学解*分式方程*，并回答那个绕不开的问题：为什么必须验根？*增根*到底从哪里冒出来的？
]

#side-hack[
  *入章自检*——以下几道小题只用前面章节学过的知识。如果卡住，请先回到上面"需要先会"的链接补一补。

  + 把 $x^2 - 9$ 因式分解。
  + 解方程 $2x + 1 = 7$。
  + $2 slash 3 + 1 slash 6 = ?$
]

#include "01-rational-expression-structure.typ"
#include "02-common-denominator-and-operations.typ"
#include "03-rational-equations-and-extraneous-roots.typ"
