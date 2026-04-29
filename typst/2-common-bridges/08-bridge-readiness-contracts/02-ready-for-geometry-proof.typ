#import "../../lib/theme-v2.typ": blueprint, side-hack, tryit, secref

=== 通往几何证明分支的入口准备 <meta:ready-for-geometry-proof>

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
    [根式四则与化简（化简 $sqrt(2) / sqrt(8) / sqrt(a^2 + b^2)$ 等）], [#secref("ch:square-root-irrational-number-line")（3b-6 勾股 + 三角比章会就地复习常用化简，但若 $sqrt(\ )$ 写法本身陌生，先回这里）],
  )

  *对几何证明分支特别关键的是*：坐标系语言（点、向量式的位置关系、平移 / 对称）以及 #secref("cb04-plotting-transforming") 里的图形变换直觉——后续相似、勾股与圆都靠"位置可读、变换可控"展开；不熟坐标的同学很容易"几何会、解析卡"。
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
    [$sqrt(2)/sqrt(8)$ 这类化简卡住], [#secref("ch:square-root-irrational-number-line")],
  )

  *进入几何证明分支前最常见的误判*是：把图形当孤立形状看，忘了用平面位置语言（"在……上 / 之间 / 同侧 / 对边"）以及对应顶点顺序——证明里的"$triangle A B C tilde.eq triangle D E F$"不是装饰，字母顺序就是对应关系本身。如果读题时还在反复重画图找位置，先回 #secref("cb04-rectangular-system") 与 #secref("pf08-coordinate-intuition") 把"位置语言"刷顺。
]

#tryit[
  *诊断 · 进入几何证明分支*（答案见本章回顾）

  + 已知 $l_1 parallel l_2$，$t$ 是横截线，某一对内错角分别是 $(2 x + 10) degree$ 与 $(3 x - 20) degree$。求 $x$ 并写出这对角的度数。
  + 三角形三个内角之比为 $2 : 3 : 4$，求各角的度数。
  + 在坐标系中 $A(-3, 2)$ 关于 $x$ 轴对称得到 $A'$，再把 $A'$ 向右平移 $5$ 个单位得到 $B$。写出 $A'$、$B$ 的坐标，并判断 $B$ 所在象限。
]
