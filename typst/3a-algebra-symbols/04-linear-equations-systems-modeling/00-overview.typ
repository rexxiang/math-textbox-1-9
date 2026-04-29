#import "../../lib/theme-v2.typ": chapter-nav, chapter-route, side-hack, secref

== 一元一次方程、方程组与建模 <ch:linear-equations-systems-modeling>

"我心里想了一个数，乘以 $3$ 再减去 $4$，得到 $11$，请问我想的是几？"这大概是人类最古老的数学游戏之一。把"心里想的数"叫做 $x$，写成 $3x - 4 = 11$，再一步步把 $x$ 请出来——方程就是把猜谜变成推理的工具。

#chapter-nav[
  *难度*：★★★★☆ \
  *核心问题*：桥梁章里解过最简单的一元一次方程（#secref("cb06-solving-linear")）。当式子里同时出现括号、分母、双边未知量，以及真实情境里的“请你自己设元”时，怎样稳稳地走完“建模—求解—检验”全链？ \
  *需要先会*：#secref("cb05-letters-represent-numbers")、#secref("cb06-equation-as-balance")、#secref("cb06-equality-properties")、#secref("cb06-solving-linear")、#secref("al01-add-subtract-polynomials")。 \
  *本章在全书的位置*：代数分支第 4 章——把“字母→代数式→方程”的路线开到应用。既复用桥上的等式性质，也为第 5 章一元二次方程、第 6 章代数总结做准备。
]

#chapter-route[

  + 先把一元一次方程的*标准五步*（去分母 → 去括号 → 移项 → 合并 → 系数化 1）说清楚，每一步都指向一条等式性质。
  + 再升维到*二元一次方程组*：两个条件锁住两个未知量，代入 / 加减两条消元路怎么选？
  + 最后走一次完整的*应用建模*：设元 → 译句成式 → 检验合理性。“设一个未知量、读一遍句子、列等量关系”才是真正的工具，行程 / 工程 / 配比只是它的不同变奏。
]

#side-hack[
  *入章自检*——以下几道小题只用前面章节学过的知识。如果卡住，请先回到上面"需要先会"的链接补一补。

  + 解方程 $3x - 4 = 11$。
  + 化简 $(2x + 3) + (x - 1) = ?$
  + 一支笔 $a$ 元，一本本子 $b$ 元，买 $2$ 支笔和 $3$ 本本子一共多少元？
]

#include "01-linear-equation-one-variable.typ"
#include "02-systems-of-linear-equations.typ"
#include "03-modeling-word-problems.typ"
