#import "../../lib/theme-v2.typ": chapter-nav, chapter-route, side-hack, secref

== 一元二次方程 <ch:quadratic-equations>

把一颗球向上抛出，它划过一道弧线，最终落回地面。球的高度随时间变化的关系恰好是一条含 $x^2$ 的等式。"球什么时候落地？"翻译成数学就是"这个二次方程的根是多少？"一次方程的老办法不够用了——我们需要新武器。

#chapter-nav[
  *难度*：★★★★★ \
  *核心问题*：当未知量出现*平方*时，一元一次方程的五步不够用。怎样稳定地解任意 $a x^2 + b x + c = 0$？一旦会解，能不能反过来从"想要的根"构造方程？ \
  *需要先会*：#secref("al02-distributive-rewrite")、#secref("al02-special-identities")、#secref("al02-factorization-as-reverse")、#secref("al04-linear-one-variable")、#secref("cb07-square-and-square-root")。 \
  *本章在全书的位置*：代数分支第 5 章——把解方程技术从"一次"推到"二次"，为后续不等式和代数总结打基础。
]

#chapter-route[

  + 先用*配方法*处理一元二次方程——把 $x^2 + b x + c = 0$ 硬生生补成 $(x + m)^2 = k$ 再开方。这是"求根公式"的动机。
  + 再把配方结果*打包*成求根公式 $x = frac(- b plus.minus sqrt(b^2 - 4 a c), 2 a)$；判别式 $Delta$ 的符号决定实数根的个数。
  + 从"根与系数"反问：两根之和、两根之积能不能直接从 $a, b, c$ 里读出？这就是*韦达定理*；用它求对称式、构造方程、简化计算。
]

#side-hack[
  *入章自检*——以下几道小题只用前面章节学过的知识。如果卡住，请先回到上面"需要先会"的链接补一补。

  + 因式分解 $x^2 + 6x + 9$。
  + 解方程 $5x - 3 = 2x + 9$。
  + $sqrt(25) = ?$
]

#include "01-quadratic-equations-by-factoring-and-formula.typ"
#include "02-quadratic-applications-and-vieta.typ"
