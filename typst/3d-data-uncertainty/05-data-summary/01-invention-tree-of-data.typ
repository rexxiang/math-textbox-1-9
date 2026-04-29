#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

=== 数据分支的知识地图 <meta:dt-invention-tree>

#blueprint[
  *主干：从“整理数据”到“从样本估总体”*

  数据这条分支由一条主干生长，每一步都为应付*更杂、更大、更不确定*的数据而被发明出来：

  + *整理与展示*（#secref("dt01-organizing-data") / #secref("dt02-charts-and-readings")）：拿到一堆杂乱数字，第一件事是*分类、排序、制表、画图*——把数据看清楚。
  + *中心与离散*（#secref("dt03-center-and-spread")）：要把一组数*用少数几个数字概括*，先有“中心”（$bar x$ / 中位数 / 众数）再有“离散”（极差 / 四分位距）。
  + *频率分布*（#secref("dt04-frequency-distributions")）：当 $n$ 大到无法逐个看，就把数据*分组*，看每组占多大比例。
  + *直方图*（#secref("dt05-histograms")）：频率分布的图像表达——*面积* $=$ 频率，让分布形态一眼可见。
  + *方差*（#secref("dt06-variance")）：极差 / 四分位距对异常值不稳；用*偏差平方的平均*——方差 $s^2$——把“离散度”变成可以比较的统一数字。
  + *样本空间 $Omega$*（#secref("dt07-sample-spaces")）：处理“随机”这件事，先把*所有可能结果*穷举——为概率铺好分母。
  + *古典概率*（#secref("dt08-probability-language")）：在等可能前提下，$P(A) = |A| / |Omega|$；互补、互斥、并的三条规则一次到位。
  + *相对频率*（#secref("dt09-experimental-frequency")）：实验做多了，频率$->$概率（大数定律的直观）。
  + *总体 vs 样本*（#secref("dt10-population-vs-sample")）：当“看全体”不可能时，必须*抽样*——给抽样对象正式命名。
  + *SRS 与偏差*（#secref("dt11-sampling-bias")）：抽样*方式*决定结果是否公平——SRS 是基准，方便 / 自选 / 无应答会引入偏差。
  + *点估计*（#secref("dt12-estimation")）：用样本统计量估总体参数——$bar x$ 估 $mu$、$f_n$ 估 $p$；样本量大只能减小*随机误差*，救不了*系统偏差*。
]

#blueprint[
  *知识地图表：每一步因何被发明出来*

  #table(
    columns: (1fr, 1.5fr, 1.5fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*工具*], [*被发明的理由*], [*下一步带来什么*],
    [整理数据 #secref("dt01-organizing-data")], [一堆杂乱数字必须先分类、排序、去重], [极差、单位混乱、缺失值都在这一步暴露],
    [图表与读取 #secref("dt02-charts-and-readings")], [文字 / 表格之外要有“一眼看清”的视觉表达], [条形 / 折线 / 饼图各管一类问题],
    [中心与离散 #secref("dt03-center-and-spread")], [一组数要被“几个统计量”概括], [均值 / 中位数 / 众数 / 极差 / 四分位距],
    [频率分布 #secref("dt04-frequency-distributions")], [$n$ 大到逐个看不行——分组], [组距 $h$、频率 $f_i = n_i / n$],
    [直方图 #secref("dt05-histograms")], [分组结果要有图像表达], [面积 $=$ 频率，分布形态一眼可见],
    [方差 #secref("dt06-variance")], [极差不抗异常值——需要更稳的“离散度”], [$s^2 = 1 / n sum (x_i - bar x)^2$],
    [样本空间 #secref("dt07-sample-spaces")], [处理随机要先穷举所有可能结果], [树状图 / 乘法原理],
    [古典概率 #secref("dt08-probability-language")], [等可能前提下，$P = |A| / |Omega|$], [互补 / 互斥 / 并的三条规则],
    [相对频率 #secref("dt09-experimental-frequency")], [概率没法直接看，但实验频率可以], [$f_n -> P$（大数定律直观）],
    [总体 vs 样本 #secref("dt10-population-vs-sample")], [全体不可见时必须抽样——给对象命名], [总体 $N$、样本容量 $n$],
    [SRS 与偏差 #secref("dt11-sampling-bias")], [抽样方式决定结果是否公平], [SRS 是基准；偏差三类（方便 / 自选 / 无应答）],
    [点估计 #secref("dt12-estimation")], [从样本反推总体参数], [$bar x$ 估 $mu$，$f_n$ 估 $p$；$n$ 大救不了偏差],
  )
]

#side-hack[
  *知识地图的三组横向联系*

  - *中心 ↔ 离散*：均值 $bar x$ 和方差 $s^2$ 是同一组数据的“两面”——先回答“在哪里”，再回答“铺多开”。两者都对异常值敏感（中位数与四分位距是更稳的备份）。
  - *频率 ↔ 概率*：实验频率 $f_n$ 是数据，理论概率 $P$ 是数学对象——大数定律告诉我们 $n$ 足够大时它们贴在一起。这是*统计推断*的直观源头。
  - *样本 ↔ 总体*：所有“从部分知整体”的工作都靠这条桥；偏差让样本估不准总体，$n$ 再大也救不了。

  *一条核心阅读线*

  如果你只能挑出数据分支两条“最抗遗忘”的话，建议挑：

  - “数据 $->$ 结论”的*四步流程*：看清楚 $->$ 压缩 $->$ 识别随机 $->$ 推断（#secref("meta:data-checklist") 里的统一流程）；
  - “大样本只能减小随机误差，救不了系统偏差”（#secref("dt11-sampling-bias")、#secref("dt12-estimation")）。

  前者是识别类问题的入口，后者是判读结论可不可信的关键。
]
