#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

= 本章回顾：综合题答案与过关信号 <meta:geometry-summary>

#blueprint[
  *综合题参考答案（§2）*

  *综合题 1*：由 Thales（#secref("ge03-circle-basics-inscribed")），$A B$ 是直径 $=>$ $angle A C B = 90 degree$。由勾股：$B C = sqrt(A B^2 - A C^2) = sqrt(100 - 36) = 8$。面积 $= 1 slash 2 times 6 times 8 = 24$。点 $C$ 到 $A B$ 的距离设为 $h$；又由“面积 $= 1 slash 2 times A B times h$”得 $24 = 1 slash 2 times 10 times h => h = 24 slash 5$。

  *综合题 2*：较大者三条边 $= 6 times 3 slash 2 = 9$、$8 times 3 slash 2 = 12$、斜边 $= sqrt(9^2 + 12^2) = 15$（也可由较小者斜边 $= 10$ 再按 $2 : 3$ 放得到 $15$）。

  - 周长：较小者 $6 + 8 + 10 = 24$；较大者 $9 + 12 + 15 = 36$。$24 : 36 = 2 : 3$，与相似比一致。
  - 面积：较小者 $= 1 slash 2 times 6 times 8 = 24$；较大者 $= 1 slash 2 times 9 times 12 = 54$。$24 : 54 = 4 : 9 = 2^2 : 3^2$。*相似比的平方*。

  *综合题 3*：
  + $A B = 6$（水平）；$A C = 8$（铅直）；$B C = sqrt((6 - 0)^2 + (0 - 8)^2) = sqrt(36 + 64) = 10$。周长 $= 6 + 8 + 10 = 24$。
  + 关于 $y = x$ 反射：$(x, y) -> (y, x)$，故 $A(0, 0) -> A'(0, 0)$、$B(6, 0) -> B'(0, 6)$、$C(0, 8) -> C'(8, 0)$。
  + $A' B' = 6$、$A' C' = 8$、$B' C' = sqrt((8 - 0)^2 + (0 - 6)^2) = sqrt(64 + 36) = 10$。周长 $= 24$——与原三角形相同。原因：反射是刚体变换，保距（#secref("ge05-rigid-transforms")）$=>$ 每条边与原三角形的对应边长度相等。

  *综合题 4*：设塔高 $= h$，塔在地面的投影为 $F$；$A$、$B$、$F$ 共线，$B$ 在 $A$、$F$ 之间，$A F = A B + B F = 60 + B F$。

  - 在 $A$ 点：$tan 30 degree = h slash A F => A F = h slash tan 30 degree = h sqrt(3)$。
  - 在 $B$ 点：$tan 60 degree = h slash B F => B F = h slash tan 60 degree = h slash sqrt(3) = h sqrt(3) slash 3$。
  - 由 $A F - B F = 60$：$h sqrt(3) - h sqrt(3) slash 3 = 60 => (2 sqrt(3) slash 3) h = 60 => h = 60 times 3 slash (2 sqrt(3)) = 90 slash sqrt(3) = 30 sqrt(3)$ 米。
]

#blueprint[
  *过关信号总清单*

  能同时做到这五条，几何支就可以正式宣布过关：

  ☞ 在任何全等 / 相似题上能先写对应表、再选判定法，并按两步证明链写出来（#secref("ge01-congruence-correspondence") / #secref("ge01-sss-sas") / #secref("ge02-similarity-aa-ratio") / #secref("ge01-two-step-proof-chain")）。\
  ☞ 在任何涉及四边形 / 圆的题上，能在继承树上找到位置，或优先想到圆周角定理 / Thales（#secref("ge03-quadrilateral-family") / #secref("ge03-circle-basics-inscribed")）。\
  ☞ 在任何直角三角形问题上，能立刻分辨“求的是斜边还是直角边”“是否用 $30$/$45$/$60$ 的定边比”（#secref("ge04-pythagorean") / #secref("ge04-special-right-triangles")）。\
  ☞ 在任何仰角 / 俯角 / 坡度问题上，能把水平线、视线、铅直线组成直角三角形并套用特殊角三角比（#secref("ge04-elevation-slope")）。\
  ☞ 在任何坐标 / 变换问题上，能正确写出距离、中点公式与三类刚体变换的坐标公式，方向一致（#secref("ge05-coordinate-transforms") / #secref("ge05-rigid-transforms")）。

  #line(length: 100%, stroke: 0.3pt + luma(200))

  五条都打勾，接下来可以选择进入函数与变化、数据与不确定性，或返回代数分支做更深的串联——本支的“几何直觉 + 坐标化语言”会在三条主线里反复出现。
]

#side-hack[
  *☞ 高中桥 / 继续往前*

  - *解析几何*：把直线、圆、圆锥曲线都写成方程，几何问题彻底变成代数问题。本支的距离 / 中点 / 变换公式会作为最基础的工具反复登场。
  - *向量*：把“从 $P$ 到 $Q$ 的位移”命名为向量；平移、旋转、反射用矩阵统一表示。本支的刚体变换是其几何雏形。
  - *三角*：本支只开了 $30 degree$ / $45 degree$ / $60 degree$ 三个口子，高中用单位圆把三角比推广到任意角；随之而来的一般三角形主定理把“直角”这个限制拿掉。
  - *空间几何*：三视图是最朴素的投影；再往前走是透视变换、空间向量、线性代数与计算机图形学。

  几何支到这里正式收束。下次当你打开任何一本几何教科书，会发现它的目录和本支的发明树高度吻合——从“图形直观”到“坐标化与变换”这条线索，是几何学两千多年来的共同骨架。
]
