#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

= 字母、代数式与关系模板 <ch:letters-expressions-relationship-templates>

#blueprint[
  *难度*：★★★☆☆ \
  *核心问题*：一旦用字母代替具体数，我就不只在算一次题，而是写下一条随时可以重算的*规则*。如何稳定地写出、读懂这条规则？ \
  *需要先会*：#secref("pf02-order-laws")、#secref("pf02-mul-div-structure")、#secref("pf02-add-subtract-undo")、#secref("cb02-number-line-extends-left")（允许系数为负）。 \
  *本章在全书的位置*：共通桥梁 / 算术升级为代数：从“填具体数”到“保留字母”。 \
  *忘了可以回到*：若运算律用得不稳，请回 #secref("pf02-order-laws")。
]

#side-hack[
  *本章路线*

  + 先看清“字母只是一个未定的数”，它遵守和具体数完全一样的运算律。
  + 然后学会写代数式、识别同类项，做一点轻量化简（正式整式加减留到代数分支）。
  + 最后把常用的关系（周长、面积、匀速位移）写成可复用的*模板*。

  *这座桥通向哪里*

  - 代数分支第 1 章（整式与合并同类项）是本章的直接延伸。
  - 函数分支要把关系模板读成“输入 → 输出”。
  - 数据分支写均值、方差公式时，字母就是原始数据的代称。
]

#include "01-letters-represent-numbers.typ"
#include "02-expressions-and-like-terms.typ"
#include "03-relationship-templates.typ"
