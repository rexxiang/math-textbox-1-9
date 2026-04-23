#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

== 平方根与无理数：给数轴补洞 <ch:square-root-irrational-number-line>

#blueprint[
  *难度*：★★★☆☆ \
  *核心问题*：当我们想知道“边长多少的正方形面积恰好是 $2$？”时，$QQ$ 不够用。这个“缺口”怎么补？ \
  *需要先会*：#secref("pf07-perimeter-area")、#secref("pf07-volume")、#secref("cb02-rational-numbers")、#secref("cb02-opposite-and-absolute")。 \
  *本章在全书的位置*：共通桥梁 / 在 $QQ$ 之外引进无理数，让数轴在“所有点”意义上真正补全。 \
  *忘了可以回到*：如果对“每个有理数都对应数轴上的一个点”还不确定，先回 #secref("cb02-rational-numbers")。
]

#side-hack[
  *本章路线*

  + 先把“已知面积，求边长”这类问题逼出平方与平方根的概念。
  + 再用反证法直觉说明 $sqrt(2)$ 不能写成 $p/q$，给出无理数的第一例。
  + 最后把无理数放回数轴，解释 $RR$ 的直觉意义（连续 / 无洞）。

  *这座桥通向哪里*

  - 代数分支解一元二次方程会直接用到平方根与 $sqrt(\ )$ 的运算。
  - 几何分支的勾股定理结论就是一种典型的平方根表达式。
  - 函数分支讨论连续函数时要求定义域在 $RR$ 上，而不只是 $QQ$。
]

#side-hack[
  *入章自检*——以下几道小题只用前面章节学过的知识。如果卡住，请先按上面"忘了可以回到"的指引补一补。

  + 一个正方形的边长是 $4$，面积是多少？
  + $-3 slash 4$ 在数轴上大约在什么位置（$0$ 的左边还是右边？在 $-1$ 和 $0$ 之间吗）？
  + $3^2 = ?$，$5^2 = ?$
]

#include "01-square-and-square-root.typ"
#include "02-irrational-numbers-exist.typ"
#include "03-real-number-line.typ"
