#import "../../lib/theme-v2.typ": chapter-nav, chapter-route, side-hack, secref

== 变换·坐标几何·视图 <ch:transformations-coordinate-geometry-views>

把一张照片左右翻转，画面反过来了——但任意两点之间的距离一点没变。平移、旋转也是如此：图形的位置变了，形状和大小却纹丝不动。这类"动了但没变"的操作到底有什么共同规律？这一章就来回答这个问题。

#chapter-nav[
  *难度*：★★★★☆ \
  *核心问题*：把一个图形整体地*移动 / 翻转 / 旋转*，它到底有哪些东西不变？把这套操作放进坐标系里，能不能用一条简单的公式把“图形变了”写清楚？立体的东西呢——画在纸上的“三个小图”怎么还原回立体？ \
  *需要先会*：#secref("cb04-rectangular-system")、#secref("cb04-plotting-transforming")、#secref("pf06-simple-solids")、#secref("ge01-congruence-correspondence")、#secref("ge04-pythagorean")。 \
  *本章在全书的位置*：几何分支第 $7$ 章——把前四章积累的“全等、相似、勾股”放到*坐标*与*变换*这两种坐标化语言里，并补全“平面 $<->$ 立体”的投影。 \
  *忘了可以回到*：坐标平面与四象限请回 #secref("cb04-quadrants")；立体图形的基本认识请回 #secref("pf06-simple-solids")。
]

#chapter-route[

  + §1 把*平移 / 旋转 / 反射*当作同一个家族看：它们都是*保距*变换（任意两点之间的距离在变换前后不变），于是自动*保角*、*保面积*；三种变换各有自己的“特征参数”。
  + §2 把坐标平面请回来：两点间距离 $= sqrt((Delta x)^2 + (Delta y)^2)$（勾股在坐标系的直译），中点 $= $ 坐标平均；三种刚体变换用坐标公式重写——平移加向量、关于原点旋转 $90 degree$ 是 $(x, y) -> (-y, x)$、关于 $x$-轴反射是 $(x, y) -> (x, -y)$。
  + §3 把立体摊成纸上的三张图：*正视图 / 侧视图 / 俯视图*。一个物体、三张图，既能从立体去画，也能从三张图反推立体。

  *这章通向哪里*

  - 3c 域函数：直线 $y = k x + b$ 的*平移*正是本章的“函数图象的平移”。
  - 3d 域数据：散点图里两点距离、均值点的位置，都要用坐标公式。
  - 全局：刚体变换保距、坐标化表达——这是高中向量、解析几何、乃至线性代数的直接前身。
]

#side-hack[
  *入章自检*——以下几道小题只用前面章节学过的知识。如果卡住，请先按上面"忘了可以回到"的指引补一补。

  + 点 $(3, -2)$ 在第几象限？
  + 把一个三角形整体向右平移 $3$ 格，它的形状和大小会变吗？
  + 长方体有几个面、几条棱？
]

#include "01-rigid-transformations-and-congruence.typ"
#include "02-coordinate-geometry-and-transformations.typ"
#include "03-orthographic-views-of-solids.typ"
