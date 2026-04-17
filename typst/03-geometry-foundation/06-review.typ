#import "../lib/theme-v2.typ": blueprint, mastery, secref

== 第三章回顾：几何基础

#blueprint[
  *知识速查卡*

  #grid(columns: (1fr, 1fr), gutter: 12pt,
    block[
      *图形与度量*（#secref("3.1"), #secref("3.2")）
      - 长方形周长：$C = 2(a + b)$
      - 正方形周长：$C = 4a$
      - 圆周长：$C = 2 pi r = pi d$
      - 长方形面积：$S = a b$
      - 三角形面积：$S = frac(1, 2) b h$
      - 梯形面积：$S = frac(1, 2)(a+b) h$
    ],
    block[
      *角与直线关系*（#secref("3.3"), #secref("3.4")）
      - 互余：$angle A + angle B = 90 degree$
      - 互补：$angle A + angle B = 180 degree$
      - 对顶角相等
      - 两直线平行时：同位角相等、内错角相等、同旁内角互补
      - 直线垂直时，夹角为 $90 degree$
    ],
  )

  #grid(columns: (1fr, 1fr), gutter: 12pt,
    block[
      *面积与体积公式*
      - 平行四边形：$S = b h$
      - 圆：$S = pi r^2$
      - 长方体：$V = a b c$
      - 正方体：$V = a^3$
      - 圆柱：$V = pi r^2 h$
      - 圆锥：$V = frac(1, 3) pi r^2 h$
    ],
    block[
      *坐标入门*（#secref("3.5")）
      - 点 $(a, b)$：先横后纵
      - 第一至第四象限：$(+, +)$、$(-, +)$、$(-, -)$、$(+, -)$
      - $x$ 轴上的点：$y = 0$
      - $y$ 轴上的点：$x = 0$
      - 关于 $x$ 轴对称：$y$ 变号；关于 $y$ 轴对称：$x$ 变号
    ],
  )
]

#mastery[
  *混合自测题*

  + 长方形长 12 cm、宽 7 cm，求周长和面积。
  + 一个三角形底为 10 cm、高为 6 cm，求面积。
  + 点 $M(-4, 3)$ 在第几象限？它关于 $y$ 轴的对称点是什么？
  + 求 $37 degree$ 的余角和补角。
  + 两条直线相交，其中一个角为 $68 degree$，其对顶角和邻补角分别是多少？
  + 两条平行线被一条截线所截，同位角之一为 $125 degree$，对应的内错角和同旁内角分别是多少？
  + 一个圆的半径为 5 cm，求周长和面积（用 $pi$ 表示）。
  + 一个圆柱底面半径为 3 cm、高为 8 cm，求体积。
  + 已知 $A(1, 2)$，把它向左平移 3 个单位、再向下平移 4 个单位，得到哪个点？

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  + 周长 $= 2(12 + 7) = 38$ cm；面积 $= 12 times 7 = 84$ cm²。
  + 面积 $= frac(1, 2) times 10 times 6 = 30$ cm²。
  + $M$ 在第二象限；关于 $y$ 轴的对称点是 $(4, 3)$。
  + 余角 $= 90 degree - 37 degree = 53 degree$；补角 $= 180 degree - 37 degree = 143 degree$。
  + 对顶角是 $68 degree$；邻补角是 $180 degree - 68 degree = 112 degree$。
  + 内错角 $= 125 degree$；同旁内角 $= 180 degree - 125 degree = 55 degree$。
  + 周长 $= 2 pi r = 10pi$ cm；面积 $= pi r^2 = 25pi$ cm²。
  + 体积 $= pi r^2 h = pi times 3^2 times 8 = 72pi$ cm³。
  + 向左得 $(-2, 2)$，再向下得 $(-2, -2)$。
]
