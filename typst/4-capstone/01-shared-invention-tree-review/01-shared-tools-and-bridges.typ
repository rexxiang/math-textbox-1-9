#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

== 公共基础与共通桥梁的跨分支复用 <tool:cp01-shared-tools-crossref>

全书分成 6 个大块：公共基础、共通桥梁、代数、几何、函数、数据。四支分支各自独立生长，但它们*都建在公共基础与共通桥梁这 25 个基础概念上*。本节把哪些基础概念被*几个*分支同时使用排成一张可复查的表。

#blueprint[
  *跨分支复用清单（节选）*

  #table(
    columns: (auto, 1fr, 1fr, 1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    align: (left, center, center, center, center),
    [*工具 / 概念*], [*代数 al*], [*几何 ge*], [*函数 fn*], [*数据 dt*],
    [字母代替数 #secref("cb04-letters-represent-numbers")], [✓ 建模], [✓ 设未知边], [✓ 写公式], [✓ 写期望 / 均值],
    [等式性质 #secref("cb05-equality-properties")], [✓ 解方程], [✓ 代数求边], [✓ 求零点], [✓ 估计式 #secref("dt12-estimation")],
    [比与比例 #secref("cb01-ratio-basics") / #secref("cb01-proportion")], [✓ 分式同比化简], [✓ 相似比 (#secref("ge02-similarity-aa-ratio"))], [✓ 正比例函数 (#secref("fn04-direct-variation"))], [✓ 频率 / 百分比 (#secref("dt01-organizing-data"))],
    [平面直角坐标系 #secref("cb03-rectangular-system")], [—], [✓ 坐标几何 (#secref("ge05-coordinate-transforms"))], [✓ 画图像 (#secref("fn02-graph-as-function-view"))], [✓ 散点与直方图 (#secref("dt05-histograms"))],
    [实数与数轴 #secref("cb06-real-number-line")], [✓ 不等式 (#secref("al05-linear-inequalities"))], [✓ 根号边长 (#secref("ge04-pythagorean"))], [✓ 连续变量], [✓ 连续数据分箱],
    [平方与平方根 #secref("cb06-square-and-square-root")], [✓ 求根公式 (#secref("al05-quadratic-solving"))], [✓ 勾股 (#secref("ge04-pythagorean"))], [✓ 二次函数 (#secref("fn08-quadratic-function"))], [✓ 方差 (#secref("dt06-variance"))],
    [四则运算律 #secref("pf02-order-laws")], [✓ 恒等变形], [✓ 面积 / 周长拆合], [✓ 公式化简], [✓ 均值化简],
    [分数运算 #secref("pf04-fraction-arithmetic")], [✓ 分式 (#secref("al03-common-denominator-operations"))], [✓ 面积比 / 体积比], [✓ 反比例 (#secref("fn07-inverse-proportion"))], [✓ 频率 / 古典概率],
    [角与内角和 #secref("pf07-angles") / #secref("pf08-triangles-angle-sum")], [—], [✓ 平行 / 全等 / 相似], [—], [—],
    [周长面积体积 #secref("pf07-perimeter-area") / #secref("pf07-volume")], [✓ 应用题], [✓ 四边形 / 圆 / 立体], [✓ 长方形面积型二次], [—],
    [坐标直觉 #secref("pf08-coordinate-intuition")], [—], [✓ 坐标几何], [✓ 画图像], [✓ 散点图],
  )

  *读这张表的方式*：哪一行打了多个 ✓，说明那个工具是*跨分支的公共基础设施*——卡在任何一支里都可能因为它没稳住而卡住。
]

#blueprint[
  *四支分支的“核心新工具”与它依赖的前面学过的知识*

  每一支的新工具都可以分解成“把已有工具重新组合”。下表列出各支最具标志性的一个工具，及它的地基：

  #table(
    columns: (auto, 1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    align: left,
    [*分支*], [*代表工具*], [*直接依赖*],
    [代数 al], [一元二次方程求根公式 (#secref("al05-quadratic-solving"))], [等式性质 (#secref("cb05-equality-properties"))、平方根 (#secref("cb06-square-and-square-root"))、配方法],
    [几何 ge], [勾股定理 (#secref("ge04-pythagorean"))], [全等 (#secref("ge01-congruence-correspondence"))、面积拼合 (#secref("pf07-perimeter-area"))、平方根],
    [函数 fn], [斜率 (#secref("fn06-slope-as-rate"))], [坐标系 (#secref("cb03-rectangular-system"))、比 (#secref("cb01-ratio-basics"))、变化率直觉],
    [数据 dt], [方差 (#secref("dt06-variance"))], [均值 (#secref("dt03-center-and-spread"))、平方 (#secref("cb06-square-and-square-root"))、分数],
  )

  你会发现：每一支的“标志性发明”其实是“前面学过的知识按新方式组合后产生的一张新图”。*没有哪一支是凭空出现的*。
]

#side-hack[
  *一句话总览*：全书 6 大模块像一张地基网。公共基础与共通桥梁是地下管网；四支分支是地上建筑。卡在任何一层，先问自己：*下一层还稳吗？*
]
