#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

== 字母、代数式与关系模板 <ch:letters-expressions-relationship-templates>

"某个数加上 $5$，结果是 $12$"——每次遇到这类题，你都得重新读一遍题目、重新算一遍。但如果把"某个数"换成字母 $x$，写成 $x + 5 = 12$，这条规则就被固定下来了，换什么数都能直接套用。字母不是故弄玄虚，而是帮你一劳永逸地记住一条规则。

#blueprint[
  *难度*：★★★☆☆ \
  *核心问题*：一旦用字母代替具体数，我就不只在算一次题，而是写下一条随时可以重算的*规则*。怎样准确地写出、读懂这条规则？ \
  *需要先会*：#secref("pf02-order-laws")、#secref("pf02-mul-div-structure")、#secref("pf02-add-subtract-undo")、#secref("cb02-number-line-extends-left")（允许系数为负）。 \
  *本章在全书的位置*：共通桥梁 / 算术升级为代数：从“填具体数”到“保留字母”。 \
  *忘了可以回到*：若运算律用得不稳，请回 #secref("pf02-order-laws")。
]

#side-hack[
  *本章路线*

  + 先看清“字母只是一个未定的数”，它遵守和具体数完全一样的运算律。
  + 然后学会写代数式、识别同类项，做一点简单的化简（正式整式加减以后再学）。
  + 最后把常用的关系（周长、面积、匀速位移）写成能反复套用的*模板*。

  *这座桥通向哪里*

  - 代数分支第 1 章（整式与合并同类项）是本章的直接延伸。
  - 函数分支要把关系模板读成“输入 → 输出”。
  - 数据分支写均值、方差公式时，字母就是原始数据的代称。
]

#side-hack[
  *入章自检*——以下几道小题只用前面章节学过的知识。如果卡住，请先按上面"忘了可以回到"的指引补一补。

  + $3 + 5 times 2 = ?$（注意运算顺序。）
  + $-3$ 在数轴上 $0$ 的哪一边？
  + 一支铅笔 $2$ 元，买 $n$ 支要花多少元？
]

#include "01-letters-represent-numbers.typ"
#include "02-expressions-and-like-terms.typ"
#include "03-relationship-templates.typ"
