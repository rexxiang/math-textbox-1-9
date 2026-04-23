#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

= 代数支总结 <ch:algebra-summary>

#blueprint[
  *难度*：★★★★☆ \
  *核心问题*：从桥梁章里“字母代替数”开始，一路走到一元二次方程和不等式——这条代数学习流程到底长什么样？哪些工具是“同一件事的不同写法”？如果中途某处卡住，该回哪一章？ \
  *需要先会*：#secref("cb04-letters-represent-numbers")、#secref("ch:polynomials-like-terms-operations")、#secref("ch:distributive-identities-factorization")、#secref("ch:rational-expressions-operations-extraneous-roots")、#secref("ch:linear-equations-systems-modeling")、#secref("ch:quadratics-and-inequalities")。 \
  *本章在全书的位置*：代数分支*收束*——它不发明新工具，而是把全支的工具串起来看清逻辑依赖。 \
  *忘了可以回到*：本章 §3 会给出“分支学完后最常见的误读”与对应补缺节。
]

#side-hack[
  *本章路线*

  + §1 画出本支的知识地图：从“字母 → 代数式 → 方程 → 因式分解 → 分式 → 二次与不等式”如何一路派生；每个工具都带着 `#secref` 回到本章。
  + §2 出几道*跨章综合题*——每题都显式注明它用到了哪些知识链，让你练习“在一道题里同时使用多章工具”。
  + §3 梳理分支学完之后最常见的*误读*与对应的*哪里不会回哪里*——不是重刷全章，而是精确回到某一节。

  *这章通向哪里*

  - 函数分支：“$f(x) = c$ 时的 $x$”就是本支方程技术的再利用；“定义域”本质靠分式不等式来描述。
  - 几何分支：设未知边 / 角列方程求值，是证明外最常用的求值出口。
  - 数据分支：平均数、中位数、概率里的“至少 / 不超过”落成的正是一元一次不等式。
  - 终章综合：把代数工具和几何、函数、数据工具一起使用解真实问题。
]

#include "01-invention-tree-of-algebra.typ"
#include "02-cross-chapter-synthesis-problems.typ"
#include "03-common-misreadings-and-repair-routes.typ"
