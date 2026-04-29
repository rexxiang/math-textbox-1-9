#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

=== 几何能力清单 <meta:ge-checklist>

#blueprint[
  *逐条勾选——能不查书独立做到的才算 ✓*

  这是几何分支整段学完后的*能力清单*。每条对应一个具体动作，括号里给出该能力的归属——勾不上某条，就回那一节复看。

  - ☐ 看到两个全等三角形，能立刻写出*对应顶点表*（$A <-> A'$ 等），再据此读出对应边、对应角。（#secref("ge01-congruence-correspondence")）
  - ☐ 在判定全等时能正确选用 SSS / SAS / ASA / AAS，并*主动指出*"SSA 不是判定法"。（#secref("ge01-sss-sas")、#secref("ge01-asa-aas-ssa")）
  - ☐ 能写出至少两步的证明链：从已知出发，每一步注明根据。（#secref("ge01-two-step-proof-chain")）
  - ☐ 在两条直线被第三条所截时，能区分同位角、内错角、同旁内角，并据此判平行。（#secref("ge02-parallel-line-angles")）
  - ☐ 会用 AA 判定相似，能写出对应边的*比值*与对应角的相等关系。（#secref("ge02-similarity-aa-ratio")）
  - ☐ 知道相似比为 $k$ 时，对应边比 $= k$、周长比 $= k$、面积比 $= k^2$。（#secref("ge02-scale-and-measurement")）
  - ☐ 能在四边形继承树（平行四边形 → 矩形 / 菱形 / 正方形 / 梯形）上指出每种四边形的*独有特征*。（#secref("ge03-quadrilateral-family")）
  - ☐ 能用圆周角定理与 Thales 定理（直径所对圆周角是直角）解圆中的角度问题。（#secref("ge03-circle-basics-inscribed")）
  - ☐ 能用勾股定理 $a^2 + b^2 = c^2$ 求直角三角形第三边，并清楚哪条是斜边。（#secref("ge04-pythagorean")）
  - ☐ 记住 $30 degree$/$45 degree$/$60 degree$ 直角三角形的定边比（$1 : sqrt(3) : 2$ 与 $1 : 1 : sqrt(2)$），能直接套用而不必查表。（#secref("ge04-special-right-triangles")）
  - ☐ 在仰角/俯角/坡度问题里，能正确把"水平线 + 视线 + 铅直线"组装成一个直角三角形。（#secref("ge04-elevation-slope")）
  - ☐ 能在坐标系下写出*平移、关于 $x$ 轴 / $y$ 轴对称、关于原点对称*三类刚体变换的坐标公式，并用它们求图形的像。（#secref("ge05-coordinate-transforms")、#secref("ge05-rigid-transforms")）

  #line(length: 100%, stroke: 0.3pt + luma(200))

  *打勾不到 $9$ 条*：先停下，回到打不上勾的那一节重读基础题。 \
  *打勾 $9$ 到 $11$ 条*：可以做 #secref("meta:ge-self-test")，再针对失分点回看。 \
  *$12$ 条全部打勾*：恭喜，几何分支正式过关——也可以再看 #secref("meta:ge-repair-routes") 把易错点过一遍。
]

#side-hack[
  *清单怎么用最有效*

  + 不要凭印象勾——每勾一条都*现场画一张图*验证自己是不是真的能做。
  + 卡住不要硬过——记下卡点、去对应章节做 $2$ 道基础题再回来勾。
  + 涉及证明的条目（全等、相似、两步证明链）尤其要*动笔写出每一步根据*；只在脑子里"过一遍"几乎一定漏。
]
