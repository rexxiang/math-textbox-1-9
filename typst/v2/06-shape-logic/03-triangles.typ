#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, secref

== §6.3 三角形 <sec-6-3>

#vocab[三角形 triangle / 全等 congruent / 相似 similar / 中位线 midsegment / 等腰三角形 isosceles triangle / 等边三角形 equilateral triangle]

#crisis[
  观察各种桥梁的结构。有些桥用了大量三角形的钢架，有些用了四边形的框架。工程师发现，四边形框架容易变形——轻轻一推就歪了，而三角形框架纹丝不动。

  *三角形为什么是最稳定的形状？它有哪些独特的性质？*
]

#history-note[
  *泰勒斯测金字塔*：传说泰勒斯到埃及后，法老问他能否测量金字塔的高度。泰勒斯在地上立了一根木棍，等到木棍的影子与木棍等长时（此时太阳光线与地面成 $45 degree$ 角），测量金字塔影子的长度——那就等于金字塔的高度。这是人类最早利用*相似三角形*解决实际问题的记录之一。
]

#discovery[
  *第一步*：三角形的稳定性。

  用三根吸管和图钉做一个三角形框架，再做一个四边形框架。推一推——四边形会变形，三角形不会。原因是：*三条边的长度确定后，三角形的形状就完全确定了*。这叫做三角形的*刚性*。

  *第二步*：内角和。

  剪一个三角形纸片，把三个角撕下来，拼在一起。你会发现它们恰好拼成一条直线——也就是 $180 degree$！

  这不是巧合。用 #secref("6.2") 学的平行线性质可以严格证明：过顶点 $A$ 作 $B C$ 的平行线，利用内错角相等，三个角恰好凑成一个平角。

  *第三步*：什么时候两个三角形「完全一样」？

  如果两个三角形的形状、大小完全相同（可以重合），我们说它们*全等*，记作 $triangle A B C tilde.eq triangle D E F$。

  但我们不需要逐一检查 6 个元素（3 边 3 角）。只需要满足以下任意一组条件即可：
]

#side-hack[
  *SSA（边边角）不能判定全等！* 已知两边和一个非夹角，可能对应两个不同的三角形（这叫做「歧义情形」）。记住：角必须是两边的*夹角*（SAS）才行。唯一的例外是直角三角形的 HL 判定。
]

#blueprint[
  *三角形的基本概念*

  - *按边分类*：不等边三角形（三边都不等）、等腰三角形（至少两边相等）、等边三角形（三边相等）
  - *按角分类*：锐角三角形（三个锐角）、直角三角形（一个直角）、钝角三角形（一个钝角）
  - *三边关系*：任意两边之和大于第三边，任意两边之差小于第三边。即若三边为 $a, b, c$，则 $abs(a - b) < c < a + b$。

  *三角形内角和定理*

  $ angle A + angle B + angle C = 180 degree $

  推论：
  - 三角形的一个外角等于与它不相邻的两个内角之和
  - 三角形的一个外角大于任何一个与它不相邻的内角
  - 直角三角形的两个锐角互余

  *三角形全等的判定*

  #table(
    columns: (auto, 1fr),
    align: left,
    [*SSS*], [三边分别相等],
    [*SAS*], [两边和它们的夹角分别相等],
    [*ASA*], [两角和它们的夹边分别相等],
    [*AAS*], [两角和其中一角的对边分别相等],
    [*HL*], [（仅限直角三角形）斜边和一条直角边分别相等],
  )

  全等三角形的对应边相等，对应角相等。

  *等腰三角形*

  - *性质*：等腰三角形的两个底角相等（「等边对等角」）
  - *判定*：如果三角形有两个角相等，则它是等腰三角形（「等角对等边」）
  - 等腰三角形的顶角平分线、底边上的中线、底边上的高互相重合（「三线合一」）

  *等边三角形*

  - 三边相等，三个角都等于 $60 degree$
  - 判定：三个角都是 $60 degree$ 的三角形是等边三角形；有一个角为 $60 degree$ 的等腰三角形是等边三角形

  *相似三角形*

  两个三角形形状相同但大小可能不同，叫做*相似*，记作 $triangle A B C tilde triangle D E F$。

  *判定*：

  #table(
    columns: (auto, 1fr),
    align: left,
    [*AA*], [两组角分别相等],
    [*SAS*], [两组边的比相等，且夹角相等],
    [*SSS*], [三组边的比分别相等],
  )

  *性质*：相似三角形的对应边成比例，对应角相等。设相似比为 $k$，则：
  - 对应边之比 $= k$
  - 对应周长之比 $= k$
  - 对应面积之比 $= k^2$

  *三角形中位线定理*

  连接三角形两边中点的线段叫做*中位线*。

  *中位线平行于第三边，且等于第三边的一半。*

  即若 $M$、$N$ 分别是 $A B$、$A C$ 的中点，则 $M N parallel B C$ 且 $M N = frac(1, 2) B C$。

  *例 1*：在 $triangle A B C$ 中，$angle A = 50 degree$，$angle B = 70 degree$，求 $angle C$。

  *解*：$angle C = 180 degree - angle A - angle B = 180 degree - 50 degree - 70 degree = 60 degree$

  *例 2*：已知 $triangle A B C tilde triangle D E F$，$A B = 6$，$D E = 9$，$B C = 8$，求 $E F$。

  *解*：相似比 $k = frac(D E, A B) = frac(9, 6) = frac(3, 2)$，所以 $E F = B C times k = 8 times frac(3, 2) = 12$。

  *例 3*：证明：等腰三角形底边上的中线垂直于底边。

  *证明*：设等腰 $triangle A B C$ 中 $A B = A C$，$M$ 是 $B C$ 的中点。在 $triangle A B M$ 和 $triangle A C M$ 中：$A B = A C$，$B M = C M$，$A M = A M$（公共边），所以 $triangle A B M tilde.eq triangle A C M$（SSS）。因此 $angle A M B = angle A M C$。又 $angle A M B + angle A M C = 180 degree$，所以 $angle A M B = 90 degree$，即 $A M perp B C$。
]

#mastery[
  *基础*

  + 三条线段长分别为 $3, 4, 8$，能组成三角形吗？$5, 7, 11$ 呢？$6, 6, 6$ 呢？
  + 在 $triangle A B C$ 中，$angle A = 36 degree$，$angle B = 72 degree$，求 $angle C$，并判断这是什么类型的三角形。
  + 如图，$triangle A B C$ 中，$A B = D E$，$angle B = angle E$，$B C = E F$。$triangle A B C tilde.eq triangle D E F$ 吗？用了哪个判定？

  *应用*

  + 在 $triangle A B C$ 中，$angle C = 90 degree$，$angle A = 35 degree$。$angle B$ 是多少度？
  + 如图，$A B = A C$，$angle A = 40 degree$。求 $angle B$ 和 $angle C$。
  + 旗杆高 $10$ 米，在地面上影子长 $15$ 米。同一时刻，一棵树的影子长 $9$ 米。求树的高度。

  *挑战*

  + 在 $triangle A B C$ 中，$D$、$E$ 分别是 $A B$、$A C$ 的中点。若 $B C = 12$，求 $D E$。并证明 $D E parallel B C$。
  + 已知 $triangle A B C$ 中，$angle B A C = 90 degree$，$A B = 3$，$A C = 4$，$A D$ 是 $B C$ 边上的高。求 $A D$ 的长度。（提示：用面积法，$S = frac(1, 2) times B C times A D = frac(1, 2) times A B times A C$）
  + 在 $triangle A B C$ 中，$angle A = 2 angle B$，$angle C = 3 angle B$，求三个角的度数。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + $3 + 4 = 7 < 8$，不能组成三角形。$5 + 7 = 12 > 11$，$7 + 11 > 5$，$5 + 11 > 7$，能组成三角形。$6, 6, 6$ 能组成等边三角形。
  + $angle C = 180 degree - 36 degree - 72 degree = 72 degree$。因为 $angle B = angle C = 72 degree$，所以是等腰三角形。
  + 是。$A B = D E$，$angle B = angle E$，$B C = E F$——SAS 判定。

  *应用*
  + $angle B = 90 degree - 35 degree = 55 degree$
  + $A B = A C$，等腰三角形底角相等，$angle B = angle C = frac(180 degree - 40 degree, 2) = 70 degree$
  + 旗杆与树在同一时刻的影子构成相似三角形。$frac(h, 10) = frac(9, 15)$，$h = 10 times frac(9, 15) = 6$（米）

  *挑战*
  + 由中位线定理，$D E = frac(1, 2) B C = 6$，且 $D E parallel B C$。
  + 由勾股定理（#secref("6.6")），$B C = sqrt(3^2 + 4^2) = 5$。面积：$frac(1, 2) times 5 times A D = frac(1, 2) times 3 times 4 = 6$，所以 $A D = frac(12, 5) = 2.4$。
  + $angle A + angle B + angle C = 180 degree$，即 $2 angle B + angle B + 3 angle B = 180 degree$，$6 angle B = 180 degree$，$angle B = 30 degree$。所以 $angle A = 60 degree$，$angle B = 30 degree$，$angle C = 90 degree$。
]
