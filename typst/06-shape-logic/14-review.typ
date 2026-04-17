#import "../lib/theme-v2.typ": blueprint, mastery, secref

== 第六章回顾：形的逻辑

#blueprint[
  *知识速查卡*

  #grid(columns: (1fr, 1fr), gutter: 12pt,
    block[
      *面积与体积公式*（#secref("6.2")）
      - 三角形：$S = frac(1, 2) a h$
      - 平行四边形：$S = a h$
      - 梯形：$S = frac(1, 2)(a+b) h$
      - 圆：$S = pi r^2$，周长 $C = 2pi r$
      - 长方体：$V = l w h$
      - 圆柱：$V = pi r^2 h$，侧面积 $= 2pi r h$
    ],
    block[
      *角的关系*（#secref("6.3"), #secref("6.4")）
      - 互余：$angle A + angle B = 90 degree$
      - 互补：$angle A + angle B = 180 degree$
      - 对顶角相等
      - 平行线：同位角相等，内错角相等，同旁内角互补
    ],
  )

  #grid(columns: (1fr, 1fr), gutter: 12pt,
    block[
      *三角形*（#secref("6.5"), #secref("6.6")）
      - 内角和：$angle A + angle B + angle C = 180 degree$
      - 三边关系：$|a-b| < c < a+b$
      - 全等判定：SSS、SAS、ASA、AAS、HL
      - 相似判定：AA、SAS、SSS；边长比 $= k$，面积比 $= k^2$
      - 中位线：平行于第三边，且等于第三边的一半
      - 等腰三角形：等边对等角，三线合一
    ],
    block[
      *圆与勾股*（#secref("6.8"), #secref("6.9")）
      - 勾股定理：$a^2 + b^2 = c^2$（$c$ 为斜边）
      - 逆定理：满足此式 → 直角三角形
      - 常见勾股数：(3,4,5), (5,12,13), (8,15,17)
      - 圆心角：$= 2 times$ 对应圆周角
      - 直径所对圆周角是直角
      - 垂直于弦的半径平分弦
    ],
  )
]

#mastery[
  *混合自测题*

  + 一个三角形三个内角的比为 $1 : 2 : 3$，求各角度数，并判断三角形类型。

  + 两条平行线被一条截线截，同旁内角之一为 $65 degree$，求另一同旁内角。

  + 三角形三边长为 7、8、9，判断是锐角、直角还是钝角三角形。

  + 直角三角形两直角边分别为 9 cm 和 12 cm，求斜边和最短高。

  + 等腰三角形腰长 $10$，底边 $12$，求底边上的高。

  + 两个相似三角形的周长比为 $3 : 5$，较小三角形面积为 $18$ cm²，求较大三角形面积。

  + 求圆心角为 $120 degree$ 、半径为 $6$ 的扇形面积和弧长。

  + 一个长方体，长 $8$、宽 $5$、高 $3$，求对角线长。

  + 证明：若 $angle A = angle B$，$angle C = angle D$，且 $B C = A D$，则 $triangle A B C tilde.eq triangle B A D$。

  + *进阶*：如图，正方形 $A B C D$ 边长为 $4$，$E$ 是 $B C$ 的中点，求 $A E$ 的长，以及 $tan(angle D A E)$ 的值。

  + *进阶（螺旋）*：正三角形边长为 $a$，用 #secref("5.1") 中的平方与根式知识，求高的精确值。（答：$frac(sqrt(3), 2) a$）

  + *进阶*：在半径为 $5$ 的圆中，一条弦长为 $8$。求圆心到这条弦的距离，并说明为什么作出的垂线会平分这条弦。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  + 设三角为 $k, 2k, 3k$，$6k = 180 degree$，$k = 30 degree$。三角：$30 degree, 60 degree, 90 degree$——直角三角形。
  + 同旁内角互补：$180 degree - 65 degree = 115 degree$
  + 以最长边 9 为基准：$9^2 = 81$，$7^2 + 8^2 = 49 + 64 = 113$。因为 $81 < 113$，即最长边的平方*小于*其余两边的平方和，所以是*锐角*三角形。
  + 斜边 $= sqrt(81+144) = sqrt(225) = 15$ cm；面积 $= frac(1, 2) times 9 times 12 = 54$，高 $= frac(2 times 54, 15) = 7.2$ cm
  + 高 $= sqrt(10^2 - 6^2) = sqrt(64) = 8$
  + 面积比 $= (3/5)^2 = 9/25$，较大面积 $= 18 times 25/9 = 50$ cm²
  + 面积 $= frac(120, 360) pi r^2 = frac(1, 3) pi times 36 = 12pi$；弧长 $= frac(120, 360) times 2pi times 6 = 4pi$
  + 对角线 $= sqrt(8^2 + 5^2 + 3^2) = sqrt(98) = 7sqrt(2)$
  + 在 $triangle A B C$ 和 $triangle B A D$ 中：$angle A = angle B$（已知），$angle C = angle D$（已知），$B C = A D$（已知）→ AAS（两角一对边）全等
  + $A E = sqrt(4^2 + 2^2) = sqrt(20) = 2sqrt(5)$；$angle D A E = 90 degree - angle B A E$，$tan(angle B A E) = frac(B E, A B) = frac(2, 4) = frac(1, 2)$，故 $tan(angle D A E) = frac(A B, B E) = frac(4, 2) = 2$
  + 高 $= sqrt(a^2 - (a/2)^2) = sqrt(3a^2/4) = frac(sqrt(3), 2) a$
  + 设垂足为 $H$。由垂直于弦的半径平分弦，得 $A H = 4$。在直角三角形中，$O H = sqrt(5^2 - 4^2) = 3$。作出的垂线会平分弦，是因为由半径相等和公共边可得到两侧直角三角形全等。

  *螺旋复习*

  + 勾股定理 $a^2 + b^2 = c^2$ 对应 #secref("5.6") 中的二次方程——若已知斜边 $c = 13$，一边 $a = 5$，可用方程求另一边：$5^2 + b^2 = 13^2$，即 $b^2 = 144$，$b = 12$。
  + #secref("3.2") 的比例思想在 #secref("6.6") 相似三角形中再次出现——若两个相似三角形对应边之比为 $2 : 3$，那么面积比是多少？（答：$4 : 9$）
]
