#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

== 平面直角坐标系与四象限 <ch:coordinate-position-plane>

#blueprint[
  *难度*：★★★☆☆ \
  *核心问题*：怎样给平面上每一个点都发一张独一无二的“身份证”，让它既能被画出来，又能被方程使用？ \
  *需要先会*：#secref("pf08-coordinate-intuition")（坐标直觉）、#secref("pf07-angles")、#secref("pf06-points-and-planes")。 \
  *本章在全书的位置*：共通桥梁 / 把“点 ↔ 有序数对”正式升级成平面直角坐标系，并编号四象限。 \
  *忘了可以回到*：若读写 $(x, y)$ 时还会犹豫顺序，先回 #secref("pf08-coordinate-intuition")。
]

#side-hack[
  *本章路线*

  + 先把原来“两条数轴”正式定义成平面直角坐标系，明确原点和两轴方向。
  + 再把平面分成四个区域，用四象限命名；学会只看符号就能说“点在哪一块”。
  + 最后练习在坐标系里画点、读点，并用平移、对称理解坐标的变化。

  *这座桥通向哪里*

  - 函数分支全部图象都画在平面直角坐标系里；没有本章就没法画出 $y = k x$。
  - 几何分支的“坐标几何”用 $(x, y)$ 表示点、计算距离、讨论中点。
  - 数据分支的散点图、折线图都是本章的直接后续应用。
]

#side-hack[
  *入章自检*——以下几道小题只用前面章节学过的知识。如果卡住，请先按上面"忘了可以回到"的指引补一补。

  + 在数轴上，$-2$ 在 $0$ 的哪一边？
  + 一个直角是多少度？
  + 如果用"第 $3$ 排第 $5$ 列"来描述一个位置，需要几个数？
]

#include "01-rectangular-system.typ"
#include "02-quadrants.typ"
#include "03-plotting-and-transforming.typ"
