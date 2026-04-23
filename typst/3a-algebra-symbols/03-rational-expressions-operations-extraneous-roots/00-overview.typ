#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

= 分式：结构、运算与增根 <ch:rational-expressions-operations-extraneous-roots>

#blueprint[
  *难度*：★★★★☆ \
  *核心问题*：当分母里也出现字母时，“有意义的前提”“约分的法则”“解方程后为什么要验根”这三件事，各该怎么被写死？ \
  *需要先会*：#secref("pf04-fraction-equivalence")、#secref("pf04-fraction-arithmetic")、#secref("cb05-solving-linear")、#secref("al02-factorization-as-reverse")。 \
  *本章在全书的位置*：代数分支第三章——把小学的分数四则正式升级为“分母含字母的分式”，并第一次引入“增根”。 \
  *忘了可以回到*：若因式分解还不熟，请回 #secref("al02-factorization-as-reverse")；若分数四则还不稳，请回 #secref("pf04-fraction-arithmetic")。
]

#side-hack[
  *本章路线*

  + 先说清分式本身是什么：分母含字母的分数；它*什么时候有意义*？怎么化简？
  + 再把“通分 + 加减 + 乘除”一口气搞定，全都建立在分式基本性质之上。
  + 最后学解*分式方程*，并回答那个绕不开的问题：为什么必须验根？*增根*到底从哪里冒出来的？

  *这章通向哪里*

  - 第 4、5 章的应用题里，行程、工程、利率经常自然地写成分式方程。
  - 函数分支的反比例函数 $y = k / x$ 就是本章“分母含字母”的最简单图象版。
  - 高中的“有理函数”“定义域讨论”，其“分母不为零”正是这里第一次明确提出来的。
]

#include "01-rational-expression-structure.typ"
#include "02-common-denominator-and-operations.typ"
#include "03-rational-equations-and-extraneous-roots.typ"
