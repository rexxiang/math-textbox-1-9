#import "../../lib/theme-v2.typ": chapter-nav, chapter-route, side-hack, secref

== 代数总结 <ch:algebra-summary>

到这里，你的代数工具箱已经装满了：字母、代数式、方程、因式分解、分式、二次方程、不等式……一件件摊开在桌上，看看哪些工具其实是同一招的不同面孔，哪些之间有严格的先后顺序。这一章不学新东西，而是帮你把所有工具理成一张清晰的地图。

#chapter-nav[
  *难度*：★★★★☆ \
  *核心问题*：从桥梁章里“字母代替数”开始，一路走到一元二次方程和不等式——这条代数学习流程到底长什么样？哪些工具是“同一件事的不同写法”？如果中途某处卡住，该回哪一章？ \
  *需要先会*：#secref("cb04-letters-represent-numbers")、#secref("ch:polynomials-like-terms-operations")、#secref("ch:distributive-identities-factorization")、#secref("ch:rational-expressions-operations-extraneous-roots")、#secref("ch:linear-equations-systems-modeling")、#secref("ch:quadratic-equations")、#secref("ch:linear-inequalities")。 \
  *本章在全书的位置*：代数*总结*——它不发明新工具，而是把全支的工具串起来看清逻辑依赖。 \
  *忘了可以回到*：本章 §3 会给出“代数学完后最常见的误读”与对应补缺节。
]

#chapter-route[

  + §1 画出前面学的知识地图：从“字母 → 代数式 → 方程 → 因式分解 → 分式 → 二次与不等式”如何一路派生；每个知识点都带着章节编号方便你随时回到对应的那一章。
  + §2 出几道*跨章综合题*——每题都标出了它用到了哪些知识链，让你练习“在一道题里同时使用多章工具”。
  + §3 梳理代数学完之后最常见的*误读*与对应的*哪里不会回哪里*——不是重刷全章，而是精确回到某一节。

  *这章通向哪里*

  - 函数分支：“$f(x) = c$ 时的 $x$”就是前面方程技术的再利用；“定义域”本质靠分式不等式来描述。
  - 几何分支：设未知边 / 角列方程求值，是证明外最常用的求值出口。
  - 数据分支：平均数、中位数、概率里的“至少 / 不超过”落成的正是一元一次不等式。
  - 终章综合：把代数工具和几何、函数、数据工具一起使用解真实问题。
]

#include "01-invention-tree-of-algebra.typ"
#include "02-cross-chapter-synthesis-problems.typ"
#include "03-common-misreadings-and-repair-routes.typ"
