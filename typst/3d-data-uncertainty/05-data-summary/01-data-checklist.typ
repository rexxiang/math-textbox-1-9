#import "../../lib/theme-v2.typ": blueprint, secref

=== 数据分支速查卡 <tool:data-checklist>

#blueprint[
  *第 $1$ 层——描述（把数据看清楚）*

  #table(
    columns: (auto, 1fr, 1.4fr),
    inset: 6pt,
    stroke: 0.4pt,
    align: left,
    [*工具*], [*做什么*], [*关键公式 / 要点*],
    [整理数据 #secref("dt01-organizing-data")], [分类、排序、制表、极差], [$"极差" = "max" - "min"$；去重 $+$ 归类],
    [图表与读取 #secref("dt02-charts-and-readings")], [条形 / 折线 / 饼图的选型与读图], [类别 $->$ 条形；时间 $->$ 折线；占比 $->$ 饼图],
    [中心与离散 #secref("dt03-center-and-spread")], [$bar x$ / 中位数 / 众数 / 极差 / 四分位数], [$bar x = 1 / n sum x_i$；异常值敏感：均值 $>$ 中位数],
  )
]

#blueprint[
  *第 $2$ 层——压缩（数据量大时的二次整理）*

  #table(
    columns: (auto, 1fr, 1.4fr),
    inset: 6pt,
    stroke: 0.4pt,
    align: left,
    [*工具*], [*做什么*], [*关键公式 / 要点*],
    [频率分布 #secref("dt04-frequency-distributions")], [分组 $+$ 计频率], [组距 $h$；$f_i = n_i / n$；$sum f_i = 1$],
    [直方图 #secref("dt05-histograms")], [分布的图像表达], [y 轴 $=$ 频率 / 组距（频率密度）；面积 $=$ 频率],
    [方差与标准差 #secref("dt06-variance")], [围绕均值的离散度], [$s^2 = 1 / n sum (x_i - bar x)^2$；$s = sqrt(s^2)$],
  )
]

#blueprint[
  *第 $3$ 层——不确定（把“随机”本身当对象）*

  #table(
    columns: (auto, 1fr, 1.4fr),
    inset: 6pt,
    stroke: 0.4pt,
    align: left,
    [*工具*], [*做什么*], [*关键公式 / 要点*],
    [样本空间 $Omega$ #secref("dt07-sample-spaces")], [把“所有可能结果”穷举，为概率铺好分母], [$|Omega| = a_1 times a_2 times ...$；树状图 / 乘法原理],
    [古典概率 #secref("dt08-probability-language")], [在等可能前提下算概率], [$P(A) = |A| / |Omega|$；$P(A^c) = 1 - P(A)$；互斥 $=>$ $P(A union B) = P(A) + P(B)$],
    [相对频率 #secref("dt09-experimental-frequency")], [用实验结果估概率], [$f_n(A) = n_A / n$；大数定律 $=>$ $f_n -> P$],
  )
]

#blueprint[
  *第 $4$ 层——推断（从部分估计整体）*

  #table(
    columns: (auto, 1fr, 1.4fr),
    inset: 6pt,
    stroke: 0.4pt,
    align: left,
    [*工具*], [*做什么*], [*关键公式 / 要点*],
    [总体 vs 样本 #secref("dt10-population-vs-sample")], [给抽样对象命名], [总体 $N$；样本容量 $n$；为什么必须抽样],
    [SRS 与偏差 #secref("dt11-sampling-bias")], [判抽样方式是否公平], [SRS 是基准；方便 / 自选 / 无应答偏差；*样本量大抵不过偏差*],
    [点估计 #secref("dt12-estimation")], [用样本统计量估总体参数], [$bar x$ 估 $mu$，$f_n$ 估 $p$；$n$ 大 $=>$ 随机误差小，但救不了系统偏差],
  )
]

#blueprint[
  *从“数据 $->$ 结论”的统一流程*

  任何数据任务都按这 $4$ 步：

  + *看清楚*：整理、作图（§dt01–§dt03）——数据长什么样？有没有异常值、缺失、单位混乱？
  + *压缩*：若 $n$ 很大，分组画直方图、算 $bar x$ / $s^2$（§dt04–§dt06）——用少数统计量总结整体形态。
  + *识别随机*：这些数据是*抽样*来的吗？涉及的是*概率*还是*频率*？样本空间是什么？（§dt07–§dt09）
  + *推断*：从样本统计量估总体参数（§dt10–§dt12）——估计值是多少、靠不靠谱、抽样方式是否有偏？

  拿到新数据时，按这 $4$ 步过一遍，几乎所有初中 / 小学阶段的统计问题都能定位到对应工具。
]
