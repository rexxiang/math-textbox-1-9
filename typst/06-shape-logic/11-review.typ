#import "../lib/theme-v2.typ": blueprint, mastery, secref

== 第六章回顾：形的逻辑

#blueprint[
  *知识速查卡*

  #grid(columns: (1fr, 1fr), gutter: 12pt,
    block[
      *面积与体积公式*（#secref("6.2")）
      - 三角形：$S = frac{1}{2} a h$
      - 平行四边形：$S = a h$
      - 梯形：$S = frac{1}{2}(a+b) h$
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
      *三角形*（#secref("6.5")）
      - 内角和：$angle A + angle B + angle C = 180 degree$
      - 三边关系：$|a-b| < c < a+b$
      - 全等判定：SSS、SAS、ASA、AAS、HL
      - 相似判定：AA、SAS、SSS；边长比 $= k$，面积比 $= k^2$
      - 等腰三角形：等边对等角，三线合一
    ],
    block[
      *圆与勾股*（#secref("6.7"), #secref("6.8")）
      - 勾股定理：$a^2 + b^2 = c^2$（$c$ 为斜边）
      - 逆定理：满足此式 → 直角三角形
      - 常见勾股数：(3,4,5), (5,12,13), (8,15,17)
      - 圆心角：$= 2 times$ 对应圆周角
      - 弦切角：$=$ 对应弧的圆周角
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

  + 证明：若 $angle A = angle B$，$angle C = angle D$，且 $BC = AD$，则 $triangle ABC cong triangle BAD$。

  + *进阶*：如图，正方形 $ABCD$ 边长为 $4$，$E$ 是 $BC$ 的中点，求 $AE$ 的长，以及 $tan(angle DAE)$ 的值。

  + *进阶（螺旋）*：正三角形边长为 $a$，用 #secref("4.4") 的平方根知识，求高的精确值。（答：$frac(sqrt(3), 2) a$）

  + *进阶*：用坐标法（#secref("7.4")）验证：若 $A(0,0)$，$B(4,0)$，$C(2,2sqrt(3))$，则 $triangle ABC$ 是正三角形。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  + 设三角为 $k, 2k, 3k$，$6k = 180 degree$，$k = 30 degree$。三角：$30 degree, 60 degree, 90 degree$——直角三角形。
  + 同旁内角互补：$180 degree - 65 degree = 115 degree$
  + 判断：$7^2 + 8^2 = 49 + 64 = 113 < 81 = 9^2$？错，$9^2 = 81$，而 $113 > 81$，所以 $c^2 < a^2 + b^2$，是*锐角*三角形。
  + 斜边 $= sqrt{81+144} = sqrt{225} = 15$ cm；面积 $= frac{1}{2} times 9 times 12 = 54$，高 $= frac{2 times 54}{15} = 7.2$ cm
  + 高 $= sqrt{10^2 - 6^2} = sqrt{64} = 8$
  + 面积比 $= (3/5)^2 = 9/25$，较大面积 $= 18 times 25/9 = 50$ cm²
  + 面积 $= frac{120}{360} pi r^2 = frac{1}{3} pi times 36 = 12pi$；弧长 $= frac{120}{360} times 2pi times 6 = 4pi$
  + 对角线 $= sqrt{8^2 + 5^2 + 3^2} = sqrt{98} = 7sqrt{2}$
  + 在 $triangle ABC$ 和 $triangle BAD$ 中：$angle A = angle B$，$BC = AD$，$AB = BA$（公共边）→ AAS（两角一夹边）全等
  + $AE = sqrt{4^2 + 2^2} = sqrt{20} = 2sqrt{5}$；$angle DAE$：$tan = frac{DE}{AD} = frac{2}{4} = frac{1}{2}$（其中 $DE = BE = 2$，$AD = 4$）
  + 高 $= sqrt{a^2 - (a/2)^2} = sqrt{3a^2/4} = frac{sqrt{3}}{2} a$
  + $AB = 4$，$AC = sqrt{4+12} = 4$，$BC = sqrt{4+12} = 4$，三边相等 ✓

  *螺旋复习*

  + 勾股定理 $a^2 + b^2 = c^2$ 对应 #secref("5.6") 中的二次方程——若已知斜边 $c = 13$，一边 $a = 5$，可用方程求另一边：$5^2 + b^2 = 13^2$，即 $b^2 = 144$，$b = 12$。
  + 第 7 章坐标几何（#secref("7.4")）中，两点距离公式正是本章勾股定理的推广形式。
]
