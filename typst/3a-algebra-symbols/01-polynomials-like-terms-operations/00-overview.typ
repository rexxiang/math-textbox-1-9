#import "../../lib/theme-v2.typ": chapter-nav, chapter-route, side-hack, secref

== 整式：项、合并与加减乘法 <ch:polynomials-like-terms-operations>

$3$ 个苹果加 $2$ 个苹果，当然是 $5$ 个苹果。但 $3$ 个苹果加 $2$ 个橘子呢？你只能说"$3$ 个苹果和 $2$ 个橘子"，没法再简化了。"能不能合并"这件事，在代数里有一个精确的名字——同类项。弄清楚谁跟谁是"同类"，整式的加减乘法就全通了。

#chapter-nav[
  *难度*：★★★★☆ \
  *核心问题*：当一整块“含字母的式子”要被当作“整数的升级版”来加减、乘开、整理时，我们需要哪些明确的规则？ \
  *需要先会*：#secref("pf02-order-laws")、#secref("cb05-letters-represent-numbers")、#secref("cb05-expressions-and-like-terms")、#secref("cb06-equality-properties")。 \
  *本章在全书的位置*：代数分支第一章——把桥梁里学过的“字母代替数”扩展为“可运算的整式”。
]

#chapter-route[

  + §1 认识*单项式*：系数是几？次数是多少？——给"一块"字母式子起正式的名字。
  + §2 认识*多项式*：项数是几？整个式子最高次是几？——弄清楚"一串"式子的结构。
  + §3 *同类项*的精确判据 + 合并——搞定化简的核心动作。
  + §4 把"去括号 + 合并同类项"变成整式加减的固定步骤。
  + §5 把单项式乘单项式、单项式乘多项式、多项式乘多项式一次性打通。
]

#side-hack[
  *入章自检*——这三道是诊断题，对应整式运算最容易翻车的旧工具。卡住请先回链接补一补，也可看 #secref("meta:ready-for-algebra")。

  + 用分配律展开 $-3 (a - 2)$。（注意负号——如果你写成 $-3 a - 6$ 或 $3 a - 6$，说明"负号 + 分配律"还没接稳，本章 §4 反复用到。）
  + $2 a + 5 a$ 等于 $7 a$，那 $2 a + 5 a^2$ 呢？能写成 $7 a^3$ 或 $7 a^2$ 吗？（这两种都是高频错。本章 §3 给"同类项"精确定义。）
  + 解方程：$2 x + 7 = 15$。（如果你只会 $x + 7 = 15$，本章会反复假设你能干净地处理"先减再除"两步——卡住请先回桥梁 §6。）
]

#include "01-monomials-coefficient-degree.typ"
#include "02-polynomials-and-degree.typ"
#include "03-like-terms-and-combine.typ"
#include "04-add-subtract-polynomials.typ"
#include "05-multiply-simple-polynomials.typ"
