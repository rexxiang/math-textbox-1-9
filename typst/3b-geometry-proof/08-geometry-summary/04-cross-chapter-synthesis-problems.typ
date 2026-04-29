#import "../../lib/theme-v2.typ": blueprint, side-hack, tryit, secref

=== 跨章综合练习 <meta:ge-synthesis-problems>

#blueprint[
  *怎样用这一节*

  下面 $4$ 道题每一题都明确标注了它所用到的*知识链*——即从几何的哪几章出发。做每题之前，请先把标出的章节引用过一遍，想一下“这里具体会用到那章的哪个动作”，再动笔。

  做完后对照 #secref("meta:geometry-summary") 里的参考答案。如果某题卡住，到 #secref("meta:ge-repair-routes") 查“查漏指引”。
]

#tryit[
  *综合题 1* \
  涉及章节：#secref("ge03-circle-basics-inscribed") + #secref("ge04-pythagorean")

  $A B$ 是圆 $O$ 的直径，$A B = 10$。$C$ 在圆上，$A C = 6$。

  + 求 $B C$ 与 $triangle A B C$ 的面积；
  + 求点 $C$ 到直径 $A B$ 的距离（即 $triangle A B C$ 在 $A B$ 边上的高）。

  ---

  *综合题 2* \
  涉及章节：#secref("ge02-similarity-aa-ratio") + #secref("ge04-pythagorean")

  两个直角三角形相似，相似比 $2 : 3$。较小者两条直角边分别为 $6$、$8$。

  + 写出较大者三条边的长度；
  + 分别写出两者的周长与面积，并核对它们的比例关系。

  ---

  *综合题 3* \
  涉及章节：#secref("ge05-coordinate-transforms") + #secref("ge04-pythagorean") + #secref("ge05-rigid-transforms")

  $triangle A B C$ 的顶点 $A(0, 0)$、$B(6, 0)$、$C(0, 8)$。

  + 求 $triangle A B C$ 的三条边长与周长；
  + 把 $triangle A B C$ 关于直线 $y = x$ 反射得到 $triangle A' B' C'$。写出像三角形的三个顶点坐标；
  + 求 $triangle A' B' C'$ 的周长。它和 $triangle A B C$ 的周长有何关系？为什么？

  ---

  *综合题 4* \
  涉及章节：#secref("ge04-elevation-slope") + #secref("ge04-special-right-triangles")

  某段水平直路的远端有一座塔。在 $A$ 处测得塔顶仰角 $= 30 degree$；沿路*朝塔走 $60$ 米*到 $B$ 处，再测得塔顶仰角 $= 60 degree$。

  + 画出几何模型（塔在地面投影点 $F$，$A$、$B$、$F$ 共线，塔高 $h$）；
  + 用特殊直角三角形边比建立 $A F$、$B F$ 关于 $h$ 的表达式；
  + 求塔高 $h$（最简根号形式）。
]

#side-hack[
  综合题的难点通常不是“某一个动作”，而是：*在纸上同时记得哪两个工具要串起来*。写解时主动把“这一步用的是哪一章的哪个动作”在空白处标一下，会显著减少漏步。
]
