#import "../../lib/theme-v2.typ": chapter-nav, chapter-route, side-hack, secref

== 全等与基本判定 <ch:congruence-and-basic-criteria>

两块拼图摆在桌上，你能不用重叠的方式判断它们是不是完全一样的吗？光靠眼睛看，总觉得"差不多"——但"差不多"在数学里可不算数。这一章要做的，就是把"看起来一样"变成一套可以写下来、一步步验证的语言。

#chapter-nav[
  *难度*：★★★★☆ \
  *核心问题*：当我们说两个三角形"一样"时，到底在说什么？怎样把这种"一样"写成可以一步步验证的语言？"三边相等"和"两边夹角"分别为什么够用？ \
  *需要先会*：#secref("pf06-polygons-and-circle")、#secref("pf07-angles")、#secref("pf08-parallel-transversal")、#secref("pf08-triangles-angle-sum")。 \
  *本章在全书的位置*：几何分支第一章——把小学的"图形认识"扩展为可以写出来的*证明*。本章与后续相似（#secref("ch:similarity-scale-parallel-line-geometry")）构成"锁形 vs 放缩"的两条主线。
]

#chapter-route[

  + 先把"全等"从"看起来一样"压成*对应边、对应角一一相等*这套可写下来的语言，并明确字母顺序决定对应表。
  + 再发明两条核心判定法：SSS（三边对应相等）和 SAS（两边及夹角对应相等）。
]

#side-hack[
  *证明游戏规则：哪些可以直接用？*

  本书不展开长公理系统，但几何证明需要一份最小约定：

  - 两点确定一条直线；线段可以比较长短，角可以比较大小。
  - 同一条线段、同一个角当然等于自己；对顶角、邻补角、直角等基础角事实可以直接调用。
  - 平行线被截线形成的同位角、内错角、同旁内角关系，已经在 #secref("tool:pf08-parallel-transversal") 学过，可以作为旧工具引用。
  - 一旦证明两个图形全等，就可以读出对应边、对应角相等；反过来要判全等，必须使用可靠判定。

  三角形全等里，`SSS`、`SAS`、`ASA`、`AAS` 是判定工具；`SSA` 不是。看到"两边一角"时，先问这个角是不是夹角。
]

#side-hack[
  *入章自检*——以下几道小题只用前面章节学过的知识。如果卡住，请先回到上面"需要先会"的链接补一补。也可以回看 #secref("meta:ready-for-geometry-proof") 这份"进入几何证明分支前的清单"。

  + 一个三角形的两个角分别是 $50 degree$ 和 $70 degree$，第三个角是多少度？
  + 两条平行线被一条直线所截，一对同位角有什么关系？
  + 正五边形有几条边、几个顶点？
]

#include "01-congruence-and-correspondence.typ"
#include "02-sss-sas-criteria.typ"
