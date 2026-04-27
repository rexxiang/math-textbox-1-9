#import "../../lib/theme-v2.typ": chapter-nav, chapter-route, side-hack, secref

== 全等与基本判定 <ch:congruence-and-basic-criteria>

两块拼图摆在桌上，你能不用重叠的方式判断它们是不是完全一样的吗？光靠眼睛看，总觉得"差不多"——但"差不多"在数学里可不算数。这一章要做的，就是把"看起来一样"变成一套可以写下来、一步步验证的语言。

#chapter-nav[
  *难度*：★★★★☆ \
  *核心问题*：当我们说两个三角形"一样"时，到底在说什么？怎样把这种"一样"写成可以一步步验证的语言？"三边相等"和"两边夹角"分别为什么够用？ \
  *需要先会*：#secref("pf06-polygons-and-circle")、#secref("pf07-angles")、#secref("pf08-parallel-transversal")、#secref("pf08-triangles-angle-sum")。 \
  *本章在全书的位置*：几何分支第一章——把小学的"图形认识"正式升级为可以写出来的*证明*。本章与后续相似（#secref("ch:similarity-scale-parallel-line-geometry")）构成"锁形 vs 放缩"的两条主线。 \
  *忘了可以回到*：若"平行线被截线产生什么角关系"还不稳，请回 #secref("pf08-parallel-transversal")；若"三角形内角和"忘了，请回 #secref("pf08-triangles-angle-sum")。
]

#chapter-route[

  + 先把"全等"从"看起来一样"压成*对应边、对应角一一相等*这套可写下来的语言，并明确字母顺序决定对应表。
  + 再发明两条核心判定法：SSS（三边对应相等）和 SAS（两边及夹角对应相等）。

  *这章通向哪里*

  - 第 2 章判定深化：补齐 ASA / AAS，划清 SSA 反例边界，并固化两步证明书写格式。
  - 第 3 章相似：把"完全重合"松动为"同形不同大"，同一套判定思路继续用。
  - 第 4 章四边形 / 第 5 章圆：对边相等、对角线平分、圆内等角都靠本章的全等 + 对应打底。
]

#side-hack[
  *入章自检*——以下几道小题只用前面章节学过的知识。如果卡住，请先按上面"忘了可以回到"的指引补一补。

  + 一个三角形的两个角分别是 $50 degree$ 和 $70 degree$，第三个角是多少度？
  + 两条平行线被一条直线所截，一对同位角有什么关系？
  + 正五边形有几条边、几个顶点？
]

#include "01-congruence-and-correspondence.typ"
#include "02-sss-sas-criteria.typ"
