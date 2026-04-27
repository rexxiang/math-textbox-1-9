#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

=== 高中桥：十二条延伸 <tool:cp06-after-grade-9>

高中数学不是全新内容，而是把本书的工具向四个方向*继续生长*。本节列出 12 条最直接的桥。每条桥标出：高中要学的新工具 / 它从本书哪节长出 / 一句“为什么它衔接这里”。

#blueprint[
  *代数分支 $->$ 高中 4 条桥*

  #table(
    columns: (auto, 1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    align: left,
    [*高中新工具*], [*本书地基*], [*为什么衔接*],
    [*数列*：等差、等比、通项与求和], [#secref("fn05-linear-function")、#secref("fn10-additive-vs-multiplicative-growth")], [等差就是“加法增长”的离散版；等比就是“乘法增长”的离散版。],
    [*二项式定理*：$(a + b)^n$ 的展开], [#secref("al01-multiply-polynomials")、#secref("al02-special-identities")], [本书已学 $(a + b)^2$、$(a + b)(a - b)$；高中把它推到任意次幂。],
    [*复数* $i^2 = -1$、加减乘除与极形式], [#secref("cb07-real-number-line")、#secref("al05-quadratic-solving") 的 $Delta < 0$ 情形], [当判别式 $Delta < 0$，本书里“方程无实根”；高中新开一类数让它总有根。],
    [*指数 / 对数方程*：$a^x = b$、$log_a x = b$], [#secref("fn10-additive-vs-multiplicative-growth")、#secref("cb07-square-and-square-root")], [乘法增长的*反问题*——已知结果和倍率，问走了几步，就是对数。],
  )
]

#blueprint[
  *几何分支 $->$ 高中 3 条桥*

  #table(
    columns: (auto, 1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    align: left,
    [*高中新工具*], [*本书地基*], [*为什么衔接*],
    [*向量*：带方向的量 & 坐标运算], [#secref("cb04-rectangular-system")、#secref("ge05-rigid-transforms")、#secref("cb01-ratio-basics")], [把平面变换、线段方向、比例统一成一种可加可乘的对象。],
    [*立体几何*：空间里的线、面、体], [#secref("ge05-orthographic-views")、#secref("pf06-simple-solids")、#secref("pf07-volume")], [本书三视图已搭好骨架；高中正式把平面几何的证明搬到空间。],
    [*圆锥曲线*：椭圆、双曲线、抛物线], [#secref("fn08-quadratic-function")、#secref("ge03-circle-basics-inscribed")、#secref("cb04-rectangular-system")], [抛物线你已熟；高中把它放回锥的切截视角，再介绍椭圆、双曲线两兄弟。],
  )
]

#blueprint[
  *函数分支 $->$ 高中 3 条桥*

  #table(
    columns: (auto, 1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    align: left,
    [*高中新工具*], [*本书地基*], [*为什么衔接*],
    [*三角函数*：$sin x, cos x, tan x$ 与周期图像], [#secref("ge04-special-right-triangles")、#secref("fn02-graph-as-function-view")], [直角三角形里的三角比，高中推广到*任意角*，并看成*周期函数*。],
    [*指数函数与对数函数*：$a^x$、$log_a x$], [#secref("fn10-additive-vs-multiplicative-growth")、#secref("fn12-function-comparison")], [本书里“乘法增长现象”与“乘法族长期领先”——高中把它正式升格为函数族。],
    [*导数与变化率*], [#secref("fn06-slope-as-rate")、#secref("fn11-model-choice")], [本书的斜率是*直线函数*的变化率；导数把变化率推广到任意曲线上每一点。],
  )
]

#blueprint[
  *数据分支 $->$ 高中 2 条桥*

  #table(
    columns: (auto, 1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    align: left,
    [*高中新工具*], [*本书地基*], [*为什么衔接*],
    [*正态分布 + 假设检验*：从频率到连续概率模型], [#secref("dt05-histograms")、#secref("dt06-variance")、#secref("dt09-experimental-frequency")、#secref("dt12-estimation")], [直方图形状若呈“钟形”，高中给出 $N(mu, sigma^2)$ 作为连续极限模型；假设检验是把本书“估计”升级为“判断”。],
    [*相关与回归*：两列变量的拟合直线], [#secref("dt03-center-and-spread")、#secref("fn05-linear-function")], [本书只看单列数据；高中同时看 $(x, y)$ 两列，用一条最优直线描述它们的线性关系。],
  )
]

#side-hack[
  *如何读这 12 条桥*

  - *不要*在这里尝试自学桥那端的高中新内容——先把初中六个分支真正*稳住*。
  - *要用*它作路标：做题遇到“这道题看着眼熟，是不是高中的内容？”时，回来查此表，看看它从本书哪节长出来。
  - 每条桥的“本书地基”部分才是你暂时应当精通的地方——那些节稳了，跨桥自然水到渠成。
]
