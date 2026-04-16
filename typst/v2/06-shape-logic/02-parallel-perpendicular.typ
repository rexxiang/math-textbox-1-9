#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab

== §6.2 平行与垂直 <sec-6-2>

#vocab[平行 parallel / 垂直 perpendicular / 同位角 corresponding angles / 内错角 alternate interior angles / 同旁内角 co-interior angles (same-side interior)]

#crisis[
  铁轨由两根钢轨组成，它们从起点到终点始终保持相同的间距。如果两根钢轨在某处交叉了会怎样？——火车会脱轨！

  *两条直线「永不相交」，该怎么精确描述？它们之间有什么特殊的角度关系？*
]

#history-note[
  *欧几里得第五公设*：在《几何原本》的 5 条公设中，第五公设（平行公设）是最「复杂」的一条：「过直线外一点，有且仅有一条直线与已知直线平行。」两千年来无数数学家试图用前四条公设证明它，全都失败了。19 世纪，罗巴切夫斯基和黎曼分别发现：如果否定第五公设，可以建立全新的「非欧几何」——这彻底改变了人类对空间的理解，并为爱因斯坦的广义相对论提供了数学基础。
]

#discovery[
  *第一步*：平行的直觉。

  拿一张横格纸。每一条横线都与相邻的横线保持固定间距，无论延长多远都不会相交。这就是*平行*。

  *定义*：在同一平面内，不相交的两条直线叫做*平行线*。记作 $a parallel b$，读作「$a$ 平行于 $b$」。

  *第二步*：截线与八个角。

  当一条直线（截线 $l$）与两条平行线 $a$、$b$ 相交时，会产生 8 个角。这些角之间有三组重要的关系：

  - *同位角*：在截线同侧，一个在 $a$ 上方一个在 $b$ 上方（位置相同）
  - *内错角*：在截线两侧，都在 $a$、$b$ 之间（交错分布）
  - *同旁内角*：在截线同侧，都在 $a$、$b$ 之间

  *第三步*：垂直。

  两条直线相交成 $90 degree$（直角）时，称它们*互相垂直*。记作 $a perp b$，读作「$a$ 垂直于 $b$」。交点叫做*垂足*。
]

#side-hack[
  *判定 vs 性质——别搞混！*

  - *判定*是「怎么知道两条直线平行？」——从角的关系推出平行。
  - *性质*是「已知平行，能得到什么？」——从平行推出角的关系。

  方向相反：判定是「角 $arrow.r$ 平行」，性质是「平行 $arrow.r$ 角」。做证明题时先想清楚你要用哪个方向！
]

#blueprint[
  *平行线的判定*（从角推出平行）

  设直线 $l$ 分别与直线 $a$、$b$ 相交：

  + *同位角相等 $arrow.r$ 两直线平行*
  + *内错角相等 $arrow.r$ 两直线平行*
  + *同旁内角互补 $arrow.r$ 两直线平行*

  *平行线的性质*（从平行推出角）

  若 $a parallel b$，被直线 $l$ 所截：

  + *同位角相等*
  + *内错角相等*
  + *同旁内角互补*（和为 $180 degree$）

  *补充性质*：

  - 平行于同一条直线的两条直线互相平行（$a parallel b$，$b parallel c$ $arrow.r$ $a parallel c$）
  - 过直线外一点，有且仅有一条直线与已知直线平行（平行公设）

  *垂直*

  - *定义*：两条直线相交所成的角为 $90 degree$ 时，称这两条直线互相*垂直*。记作 $a perp b$。
  - 过一点有且仅有一条直线与已知直线垂直。
  - *垂线段最短*：从直线外一点到直线上各点的连线中，垂线段最短。

  *点到直线的距离*

  从直线外一点 $P$ 向直线 $l$ 作垂线，垂足为 $H$，则线段 $P H$ 的长度叫做*点 $P$ 到直线 $l$ 的距离*。

  *平行线之间的距离*

  两条平行线之间的距离处处相等（在任意位置作垂线段，长度都相同）。

  *例 1*：如图，$a parallel b$，截线 $l$ 与 $a$ 交于点 $A$，与 $b$ 交于点 $B$。若 $angle 1 = 70 degree$，求 $angle 2$（$angle 1$ 与 $angle 2$ 是内错角）。

  *解*：因为 $a parallel b$（已知），所以 $angle 2 = angle 1 = 70 degree$（两直线平行，内错角相等）。

  *例 2*：如图，$angle 1 = 110 degree$，$angle 2 = 110 degree$（$angle 1$ 和 $angle 2$ 是同位角），能否判定 $a parallel b$？

  *解*：因为 $angle 1 = angle 2$（同位角相等），所以 $a parallel b$（同位角相等，两直线平行）。

  *例 3*：如图，$a parallel b$，$angle 1 = 50 degree$，求 $angle 2$（$angle 1$ 与 $angle 2$ 是同旁内角）。

  *解*：因为 $a parallel b$，所以 $angle 1 + angle 2 = 180 degree$（两直线平行，同旁内角互补）。因此 $angle 2 = 180 degree - 50 degree = 130 degree$。
]

#mastery[
  *基础*

  + 下列说法正确的是哪个？
    - (A) 不相交的两条直线一定平行
    - (B) 在同一平面内，不相交的两条直线一定平行
    - (C) 两条平行线之间的距离可以不相等
    - (D) 过一点可以画无数条直线与已知直线平行
  + 如图，$a parallel b$，截线 $l$ 与 $a$、$b$ 分别交于 $A$、$B$。若 $angle 1 = 58 degree$，求 $angle 1$ 的同位角、内错角和同旁内角。
  + 判断：$angle 1 = 120 degree$，$angle 2 = 60 degree$，$angle 1$ 与 $angle 2$ 是同旁内角。$a parallel b$ 吗？

  *应用*

  + 如图，$A B parallel C D$，$B E$ 平分 $angle A B C$，$angle C = 70 degree$。求 $angle A B E$。
  + 一根旗杆垂直于地面，阳光与地面成 $35 degree$ 角照射。求阳光与旗杆的夹角。

  *挑战*

  + 如图，$A B parallel C D$，点 $E$ 在 $A B$、$C D$ 之间（不在这两条直线上），$angle A B E = 40 degree$，$angle D C E = 30 degree$。求 $angle B E C$。（提示：过 $E$ 作 $A B$ 的平行线。）
  + 用平行线性质证明：三角形内角和为 $180 degree$。（提示：过一个顶点作对边的平行线。）

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + (B)。(A) 错：空间中异面直线不相交也不平行；(C) 错：平行线间距处处相等；(D) 错：有且仅有一条。
  + 同位角 $= 58 degree$，内错角 $= 58 degree$，同旁内角 $= 180 degree - 58 degree = 122 degree$
  + $angle 1 + angle 2 = 120 degree + 60 degree = 180 degree$，同旁内角互补，所以 $a parallel b$。

  *应用*
  + $A B parallel C D$，所以 $angle A B C + angle C = 180 degree$（同旁内角互补），$angle A B C = 110 degree$。$B E$ 平分 $angle A B C$，所以 $angle A B E = 55 degree$。
  + 旗杆垂直地面，阳光与地面成 $35 degree$ 角，所以阳光与旗杆的夹角 $= 90 degree - 35 degree = 55 degree$。

  *挑战*
  + 过 $E$ 作 $E F parallel A B$。因为 $A B parallel C D$，所以 $E F parallel C D$。$angle B E F = angle A B E = 40 degree$（内错角），$angle C E F = angle D C E = 30 degree$（内错角）。所以 $angle B E C = angle B E F + angle C E F = 40 degree + 30 degree = 70 degree$。
  + 设 $triangle A B C$，过 $A$ 作 $D E parallel B C$。则 $angle D A B = angle B$（内错角），$angle E A C = angle C$（内错角）。而 $angle D A B + angle B A C + angle E A C = 180 degree$（平角），所以 $angle B + angle B A C + angle C = 180 degree$。
]
