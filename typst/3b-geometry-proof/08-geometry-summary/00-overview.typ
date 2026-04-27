#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

== 几何总结 <ch:geometry-summary>

想象把前面七章发明的所有证明工具——全等判定、相似比、圆周角定理、勾股定理、坐标公式——统统摆上同一张工作台。这一章不再发明新工具，而是帮你看清它们之间的逻辑线：谁依赖谁、谁在什么场景下登场。

#blueprint[
  *难度*：★★★★☆ \
  *核心问题*：从“图形直观”一路到“三角比、变换与视图”，这条几何分支的学习流程到底是怎么一步一步长出来的？每一章到底发明了*哪一个新工具*来解决上一章无法解决的问题？若中途某处卡住，该回哪一章？ \
  *需要先会*：#secref("pf06-polygons-and-circle")、#secref("pf07-angles")、#secref("pf08-triangles-angle-sum")、#secref("ge01-congruence-correspondence")、#secref("ge01-sss-sas")、#secref("ge01-asa-aas-ssa")、#secref("ge01-two-step-proof-chain")、#secref("ge02-parallel-line-angles")、#secref("ge02-similarity-aa-ratio")、#secref("ge02-scale-and-measurement")、#secref("ge03-quadrilateral-family")、#secref("ge03-circle-basics-inscribed")、#secref("ge03-inscribed-circumscribed")、#secref("ge04-pythagorean")、#secref("ge04-special-right-triangles")、#secref("ge04-elevation-slope")、#secref("ge05-rigid-transforms")、#secref("ge05-coordinate-transforms")、#secref("ge05-orthographic-views")。 \
  *本章在全书的位置*：几何分支*总结*——不发明新工具，而是把全支的工具串起来看清逻辑依赖。 \
  *忘了可以回到*：本章 §3 会给出“分支学完后最常见的误读”与对应补缺节。
]

#side-hack[
  *本章路线*

  + §1 画出几何的知识地图：从“图形直观（点 / 线 / 角 / 多边形 / 圆）”如何一步步被加结构，最终长出“全等 → 相似 → 四边形与圆 → 勾股 & 三角比 → 变换 & 视图”。每个知识点都带着章节编号方便你随时回到对应的那一章。
  + §2 出 $3$ 道*跨章综合题*——每题都显式注明它用到了哪些知识链。
  + §3 梳理分支学完之后最常见的*误读*与对应的*哪里不会回哪里*——只重读某一节，不重刷整章。

  *这章通向哪里*

  - 代数分支：几何题里“设未知边 / 角”求值，就是代数分支的方程 / 不等式再利用。
  - 函数分支：坐标系里“点的轨迹”就是一个函数关系；直线、圆都是最早的例子。
  - 数据分支：几何图形（柱状图、饼图、散点图）的面积比较与坐标位置，靠前面学到的几何知识解读。
  - 终章综合：几何工具和代数、函数、数据工具合起来解真实问题。
]

#include "01-invention-tree-of-geometry.typ"
#include "02-cross-chapter-synthesis-problems.typ"
#include "03-common-misreadings-and-repair-routes.typ"
