#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

= 四边形·圆·结构 <ch:quadrilaterals-circles-structures>

#blueprint[
  *难度*：★★★★☆ \
  *核心问题*：四边形家族怎么从“平行四边形”一路加条件走到“正方形”？圆除了“很圆”之外，到底有什么可以拿来做证明的结构？内接 / 外切又是什么关系？ \
  *需要先会*：#secref("pf06-polygons-and-circle")、#secref("pf07-angles")、#secref("ge01-congruence-correspondence")、#secref("ge01-sss-sas")、#secref("ge02-parallel-line-angles")、#secref("ge02-similarity-aa-ratio")。 \
  *本章在全书的位置*：几何分支第 3 章——把前两章的“全等 $+$ 相似”落地到两大结构：*四边形家族*（继承树）和*圆*（圆周角 $+$ 内接 / 外切）。这两条线共同支撑后续*勾股 / 变换 / 坐标几何*。 \
  *忘了可以回到*：多边形内角和与圆的基本认识请回 #secref("pf06-polygons-and-circle")；角的度量请回 #secref("pf07-angles")。
]

#side-hack[
  *本章路线*

  + 先把四边形梳成一棵*继承树*：一般四边形 $->$ 平行四边形 $->$（矩形 / 菱形）$->$ 正方形；侧枝另出梯形 / 等腰梯形。每加一条约束就多一串性质。
  + 再把圆立成一套语言：圆心 / 半径 / 弦 / 弧；两类角（圆心角、圆周角）由*圆周角定理*挂钩；Thales 定理把“直径 $+$ 圆周角”锁死成 $90 degree$。
  + 最后把“谁在外谁外接”做成通用视角：三角形外心 $=$ 中垂线交点、内心 $=$ 角平分线交点；正多边形的内接圆与外接圆同心，边长、$R$、$r$ 由 $R^2 = r^2 + (a slash 2)^2$ 串起来。

  *这章通向哪里*

  - 第 4 章勾股：正多边形里的 $R^2 = r^2 + (a slash 2)^2$ 与圆内弦长关系都是直接例子。
  - 第 5 章变换 / 坐标几何：正方形、矩形、圆是坐标系里最友好的图形；旋转对称的分析几乎都从圆出发。
  - 3c 域函数：圆周运动、周期性都要借本章的圆来直观理解。
]

#include "01-quadrilateral-family.typ"
#include "02-circle-basics-and-angle-relations.typ"
#include "03-inscribed-and-circumscribed.typ"
