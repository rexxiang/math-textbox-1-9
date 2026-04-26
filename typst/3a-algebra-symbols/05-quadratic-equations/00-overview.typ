#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

== 一元二次方程 <ch:quadratic-equations>

#blueprint[
  *难度*：★★★★★ \
  *核心问题*：当未知量出现*平方*时，一元一次方程的五步不够用。怎样稳定地解任意 $a x^2 + b x + c = 0$？一旦会解，能不能反过来从"想要的根"构造方程？ \
  *需要先会*：#secref("al02-distributive-rewrite")、#secref("al02-special-identities")、#secref("al02-factorization-as-reverse")、#secref("al04-linear-one-variable")、#secref("cb06-square-and-square-root")。 \
  *本章在全书的位置*：代数分支第 5 章——把解方程技术从"一次"推到"二次"，为后续不等式和代数总结打基础。 \
  *忘了可以回到*：若因式分解不稳，请回 #secref("al02-factorization-as-reverse")；若"$sqrt$"的意义还不清楚，请回 #secref("cb06-square-and-square-root")。
]

#side-hack[
  *本章路线*

  + 先用*配方法*处理一元二次方程——把 $x^2 + b x + c = 0$ 硬生生补成 $(x + m)^2 = k$ 再开方。这是"求根公式"的动机。
  + 再把配方结果*打包*成求根公式 $x = frac(- b plus.minus sqrt(b^2 - 4 a c), 2 a)$；判别式 $Delta$ 的符号决定实数根的个数。
  + 从"根与系数"反问：两根之和、两根之积能不能直接从 $a, b, c$ 里读出？这就是*韦达定理*；用它求对称式、构造方程、简化计算。

  *这章通向哪里*

  - 下一章：把等号松动为不等号——一元一次不等式。
  - 函数分支：二次函数 $y = a x^2 + b x + c$ 的零点就是本章方程的根；判别式决定抛物线与 $x$ 轴的位置关系。
  - 几何分支：利用二次方程求"未知边"是相似三角形、勾股定理之后的常见出口。
]

#side-hack[
  *入章自检*——以下几道小题只用前面章节学过的知识。如果卡住，请先按上面"忘了可以回到"的指引补一补。

  + 因式分解 $x^2 + 6x + 9$。
  + 解方程 $5x - 3 = 2x + 9$。
  + $sqrt(25) = ?$
]

#include "01-quadratic-equations-by-factoring-and-formula.typ"
#include "02-quadratic-applications-and-vieta.typ"
