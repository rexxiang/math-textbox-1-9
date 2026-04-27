#import "../../lib/theme-v2.typ": chapter-nav, chapter-route, side-hack, secref

== 圆与内接外切 <ch:circles-and-inscribed-circumscribed>

车轮为什么必须是圆的？试着想象骑一辆方形轮子的自行车——每转一下都会颠簸一次。圆之所以特别，是因为它到中心的距离处处相等。这一章要把"圆"从一个直觉图形变成一个有可证明结构的数学对象。

#chapter-nav[
  *难度*：★★★★☆ \
  *核心问题*：圆除了"很圆"之外，到底有什么可以拿来做证明的结构？"圆心角"和"圆周角"之间是什么数值关系？"内接"和"外切"又意味着什么？ \
  *需要先会*：#secref("pf06-polygons-and-circle")、#secref("pf07-angles")、#secref("ge01-congruence-correspondence")、#secref("ge01-sss-sas")、#secref("ge03-quadrilateral-family")。 \
  *本章在全书的位置*：几何分支第 5 章——把圆从"直觉图形"变成*有可证明结构的对象*：圆周角定理、Thales 定理、外心与内心。与上一章四边形家族合起来，为后续*勾股 / 变换 / 坐标几何*提供核心几何素材。 \
  *忘了可以回到*：圆的基本认识请回 #secref("pf06-polygons-and-circle")；角的度量请回 #secref("pf07-angles")。
]

#chapter-route[

  + 把圆立成一套语言：圆心 / 半径 / 弦 / 弧；两类角（圆心角、圆周角）由*圆周角定理*挂钩；Thales 定理把"直径 $+$ 圆周角"锁死成 $90 degree$。
  + 把"谁在外谁外接"做成通用视角：三角形外心 $=$ 中垂线交点、内心 $=$ 角平分线交点；正多边形的内接圆与外接圆同心，边长、$R$、$r$ 由 $R^2 = r^2 + (a slash 2)^2$ 串起来。

  *这章通向哪里*

  - 第 6 章勾股：正多边形里的 $R^2 = r^2 + (a slash 2)^2$ 与圆内弦长关系都是直接例子。
  - 第 7 章变换 / 坐标几何：圆是坐标系里最友好的曲线；旋转对称的分析几乎都从圆出发。
  - 3c 域函数：圆周运动、周期性都要借本章的圆来直观理解。
]

#side-hack[
  *入章自检*——以下几道小题只用前面章节学过的知识。如果卡住，请先按上面"忘了可以回到"的指引补一补。

  + 一个圆有几条对称轴？
  + 平行四边形的对角有什么关系？
  + 如果两个三角形的三边对应相等，它们是什么关系？
]

#include "01-circle-basics-and-angle-relations.typ"
#include "02-inscribed-and-circumscribed.typ"
