#import "../../lib/theme-v2.typ": blueprint, side-hack, tryit, secref

=== 几何分支混合自测 <meta:ge-self-test>

#blueprint[
  *做题方式*

  下面 $5$ 道题覆盖几何分支的主要动作：全等 / 相似证明、四边形与圆、勾股与三角比、坐标变换。每题末尾标注主要用到的章节链。

  #line(length: 100%, stroke: 0.3pt + luma(200))

  + 已知 $triangle A B C$ 中 $A B = A C$，$D$ 是 $B C$ 的中点。证明 $A D perp B C$。请*写出证明链*，每步注明根据。（#secref("ge01-congruence-correspondence")、#secref("ge01-sss-sas")、#secref("ge01-two-step-proof-chain")）

  + $triangle A B C$ 中，$D$、$E$ 分别在 $A B$、$A C$ 上，$D E parallel B C$。已知 $A D = 4$、$D B = 6$、$D E = 8$。求 $B C$。（#secref("ge02-parallel-line-angles")、#secref("ge02-similarity-aa-ratio")）

  + 圆 $O$ 中，$A B$ 是直径，$C$ 在圆上，$A B = 10$、$A C = 6$。求 $B C$；再求点 $C$ 到 $A B$ 的距离。（#secref("ge03-circle-basics-inscribed")、#secref("ge04-pythagorean")）

  + 一棵树在地面的影长 $= 12$ 米；同一时刻太阳的仰角是 $30 degree$。求树高（取 $sqrt(3) approx 1.73$）。（#secref("ge04-special-right-triangles")、#secref("ge04-elevation-slope")）

  + 在坐标系中，$triangle A B C$ 的顶点为 $A(1, 2)$、$B(4, 2)$、$C(1, 6)$。 \
    (a) 求 $triangle A B C$ 的面积； \
    (b) 写出 $triangle A B C$ 关于 $x$ 轴对称所得的 $triangle A' B' C'$ 的三个顶点； \
    (c) $triangle A' B' C'$ 与 $triangle A B C$ 的面积是否相等？为什么？（#secref("ge05-coordinate-transforms")、#secref("ge05-rigid-transforms")）
]

#side-hack[
  *参考答案*

  + 证明：连 $A D$。在 $triangle A B D$ 与 $triangle A C D$ 中：$A B = A C$（已知），$B D = C D$（$D$ 是中点），$A D = A D$（公共边）；故 $triangle A B D tilde.equiv triangle A C D$（SSS）。 \
    由对应角相等得 $angle A D B = angle A D C$。又 $angle A D B + angle A D C = 180 degree$（$B$、$D$、$C$ 共线），故 $angle A D B = 90 degree$，即 $A D perp B C$。$square$

  + $D E parallel B C =>$ 同位角相等 $=> triangle A D E tilde triangle A B C$（AA）。相似比 $= A D / A B = 4 / (4 + 6) = 2 / 5$。故 $D E / B C = 2 / 5 => B C = 8 div (2 / 5) = 20$。

  + $A B$ 为直径 $=> angle A C B = 90 degree$（Thales）。由勾股：$B C = sqrt(A B^2 - A C^2) = sqrt(100 - 36) = 8$。 \
    设 $C$ 到 $A B$ 的距离为 $h$。$triangle A B C$ 面积有两种写法：$1 slash 2 dot A C dot B C = 1 slash 2 dot 6 dot 8 = 24$；又 $= 1 slash 2 dot A B dot h = 5 h$。故 $5 h = 24 => h = 24 slash 5 = 4.8$。

  + 设树高 $= h$。直角三角形：水平边 $= 12$、铅直边 $= h$、太阳仰角 $= 30 degree$。由 $tan 30 degree = h slash 12$ 且 $tan 30 degree = sqrt(3) slash 3$，得 $h = 12 sqrt(3) slash 3 = 4 sqrt(3) approx 4 dot 1.73 approx 6.92$ 米。

  + (a) $A B = 3$（水平），$A C = 4$（铅直），且 $A B perp A C$。$"面积" = 1 slash 2 dot 3 dot 4 = 6$。 \
    (b) 关于 $x$ 轴对称：$(x, y) -> (x, -y)$，故 $A'(1, -2)$、$B'(4, -2)$、$C'(1, -6)$。 \
    (c) 面积相等，都是 $6$。原因：关于轴的反射是*刚体变换*——保持任意两点间距离不变；因此对应边长度不变，面积也不变。

  #line(length: 100%, stroke: 0.3pt + luma(200))

  *自测说明*：能不看答案独立做出 $3$ 题以上即算走完几何分支。任一题卡住，沿着题尾标注的章节回看。
]
