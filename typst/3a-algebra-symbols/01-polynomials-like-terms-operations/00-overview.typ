#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

== 整式：项、合并与加减乘法 <ch:polynomials-like-terms-operations>

$3$ 个苹果加 $2$ 个苹果，当然是 $5$ 个苹果。但 $3$ 个苹果加 $2$ 个橘子呢？你只能说"$3$ 个苹果和 $2$ 个橘子"，没法再简化了。"能不能合并"这件事，在代数里有一个精确的名字——同类项。弄清楚谁跟谁是"同类"，整式的加减乘法就全通了。

#blueprint[
  *难度*：★★★★☆ \
  *核心问题*：当一整块“含字母的式子”要被当作“整数的升级版”来加减、乘开、整理时，我们需要哪些明确的规则？ \
  *需要先会*：#secref("pf02-order-laws")、#secref("cb04-letters-represent-numbers")、#secref("cb04-expressions-and-like-terms")、#secref("cb05-equality-properties")。 \
  *本章在全书的位置*：代数分支第一章——把桥梁里学过的“字母代替数”正式升级为“可运算的整式”。 \
  *忘了可以回到*：如果“项”“同类项”还不稳，请回到 #secref("cb04-expressions-and-like-terms") 打底；若分配律不熟，回 #secref("pf02-order-laws")。
]

#side-hack[
  *本章路线*

  + 先把字母写成的“块”分成*单项式*和*多项式*，给出系数、次数、项数这些最基本的名字。
  + 再把“去括号 + 合并同类项”变成整式加减的固定步骤。
  + 最后把单项式乘单项式、单项式乘多项式、多项式乘多项式一次性打通。

  *这章通向哪里*

  - 第 2 章的乘法公式 / 因式分解，要用本章的乘法展开当原料。
  - 第 3 章的分式四则运算，分子分母全都是本章写下的整式。
  - 第 4、5 章的方程与不等式，所有“左边—右边”都得先按本章的规矩整理好。
]

#side-hack[
  *入章自检*——以下几道小题只用前面章节学过的知识。如果卡住，请先按上面"忘了可以回到"的指引补一补。

  + 用分配律展开 $3 times (a + 2)$。
  + $2a + 5a$ 能合并吗？结果是什么？
  + 解方程：$x + 7 = 15$。
]

#include "01-terms-coefficients-like-terms.typ"
#include "02-add-subtract-polynomials.typ"
#include "03-multiply-simple-polynomials.typ"
