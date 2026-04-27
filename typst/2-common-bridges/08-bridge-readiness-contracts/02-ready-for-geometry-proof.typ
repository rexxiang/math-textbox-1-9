#import "../../lib/theme-v2.typ": blueprint, side-hack, tryit, secref

=== 通往几何证明分支的准备清单 <meta:ready-for-geometry-proof>

#blueprint[
  *前面学过的知识*

  #table(
    columns: (1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*工具*], [*出处*],
    [点、线、平面、基本图形与图形关系], [#secref("pf06-points-and-planes")、#secref("pf06-lines-rays-segments")、#secref("pf06-polygons-and-circle")、#secref("pf06-shape-relations")],
    [周长、面积、体积的度量语言], [#secref("pf07-perimeter-area")、#secref("pf07-volume")],
    [角、平行线与横截线、三角形内角和], [#secref("pf07-angles")、#secref("pf08-parallel-transversal")、#secref("pf08-triangles-angle-sum")],
    [坐标与位置、四象限、平移与对称], [#secref("pf08-coordinate-intuition")、#secref("cb04-rectangular-system")、#secref("cb04-quadrants")、#secref("cb04-plotting-transforming")],
    [比、比例（为相似打基础）], [#secref("cb01-ratio-basics")、#secref("cb01-proportion")],
    [平方、平方根、勾股式结果读法], [#secref("cb07-square-and-square-root")、#secref("cb07-real-number-line")],
    [等式性质（用于设未知量 + 列方程）], [#secref("cb06-equality-properties")],
  )
]

#blueprint[
  *最常见的误判*

  - 把“看起来相等”当成“已经相等”，没有借助条件/定理作推理。
  - 证明写成“步骤 + 箭头”，没有给出每一步的依据。
  - 对横截线图上同位、内错、同旁内角分不清，或误把不相关的角凑到一起。
  - 用坐标做几何时，坐标顺序或平移方向搞错，导致所谓“对称点”算反。
  - 把面积、周长、体积的公式混写，单位漏“平方 / 立方”。
]

#blueprint[
  *哪里不会回哪里*

  #table(
    columns: (1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*卡在哪一类题*], [*忘了可以回到*],
    [辨角类型错], [#secref("pf08-parallel-transversal")],
    [三角形内角和算错], [#secref("pf08-triangles-angle-sum")],
    [坐标读写 / 平移方向错], [#secref("cb04-rectangular-system")、#secref("cb04-plotting-transforming")],
    [不会判断哪段用比例], [#secref("cb01-ratio-basics")、#secref("cb01-proportion")],
    [面积 / 体积公式混用 / 漏单位], [#secref("pf07-perimeter-area")、#secref("pf07-volume")],
    [平方根意义不清], [#secref("cb07-square-and-square-root")],
  )
]

#blueprint[
  *可以继续前进的信号*

  - 能把“如果 $l_1 parallel l_2$，$t$ 是横截线”的典型图中的同位角、内错角、同旁内角一次指清。
  - 能用三角形内角和 $180 degree$ 和等腰三角形性质同时处理一个多边形的角问题。
  - 能说出“证明”与“验证”的区别，并愿意为每一步写依据。
  - 能在坐标系里准确完成平移与对称，并判断所在象限。
]

#tryit[
  *诊断 · 进入几何证明分支*（答案见本章回顾）

  + 已知 $l_1 parallel l_2$，$t$ 是横截线，某一对内错角分别是 $(2 x + 10) degree$ 与 $(3 x - 20) degree$。求 $x$ 并写出这对角的度数。
  + 三角形三个内角之比为 $2 : 3 : 4$，求各角的度数。
  + 在坐标系中 $A(-3, 2)$ 关于 $x$ 轴对称得到 $A'$，再把 $A'$ 向右平移 $5$ 个单位得到 $B$。写出 $A'$、$B$ 的坐标，并判断 $B$ 所在象限。
]
