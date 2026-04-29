#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

=== 数据学完后的常见误读与查漏指引 <meta:dt-repair-routes>

#blueprint[
  *数据最容易出现的 $10$ 类误读*

  #table(
    columns: (1.3fr, 1.5fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*误读*], [*背后是哪条概念没稳*], [*忘了可以回到*],
    [把“中位数 $=$ 平均数”当成一般规律], [中心三量各自的定义与适用场景没分清；只有当数据*对称*时三量才接近], [#secref("dt03-center-and-spread")],
    [看到方差大就说“数据有异常”], [方差衡量的是*整体离散度*——分布本身宽 / 分类多也会大；异常值是另一件事（用中位数 / 四分位距判更稳）], [#secref("dt03-center-and-spread")、#secref("dt06-variance")],
    [把“概率 $=$ 频率”直接划等号], [频率是*实验数据*，概率是*数学对象*——大数定律说的是“$n$ 足够大时贴近”而不是“恒等”], [#secref("dt08-probability-language")、#secref("dt09-experimental-frequency")],
    [认为“样本越大就越准”], [大样本只能减小*随机误差*，救不了*系统偏差*——抽样方式不公平时 $n$ 再大也估错], [#secref("dt11-sampling-bias")、#secref("dt12-estimation")],
    [直方图把 y 轴当成“频数”而不是“频率 / 组距”], [不等组距时 y 轴必须是*频率密度*，*面积* $=$ 频率才正确], [#secref("dt05-histograms")],
    [算古典概率时不先确认“等可能前提”], [$P = |A| / |Omega|$ 的*前提*是 $Omega$ 中所有结果等可能——不等可能时这条公式不适用], [#secref("dt08-probability-language")、#secref("dt07-sample-spaces")],
    [互斥与独立混为一谈], [*互斥*：$A inter B = nothing$，$P(A union B) = P(A) + P(B)$；*独立*：$P(A inter B) = P(A) P(B)$（独立性留到高中正式定义，初中只用互斥的并）], [#secref("dt08-probability-language")],
    [画频率分布表时把组距取得过宽 / 过窄], [组距太宽掩盖形态，太窄变成原始数据；经验是 $5$~$12$ 组之间], [#secref("dt04-frequency-distributions")],
    [画饼图时类别没穷尽 / 加起来不等于 $100%$], [饼图必须覆盖样本空间所有类别——“其他”一项不能漏], [#secref("dt02-charts-and-readings")、#secref("dt07-sample-spaces")],
    [估计题只报点估计，不评估“可不可信”], [点估计要*同时*报偏差风险与样本量；只给数字不说背景就是“裸数”], [#secref("dt12-estimation")、#secref("dt11-sampling-bias")],
  )
]

#side-hack[
  *只补短板，不整章重刷*

  - 每错一道题，先问自己：“我在哪一条误读上踩了雷？”——定位到上表一行。
  - 按那行*忘了可以回到*列标注的章节，*只重读*对应那节的方法总结与常见陷阱，然后做一遍该节的应用两到三道。
  - 做完再回到 #secref("meta:data-mixed-self-test") 的混合自测试一次；如果还卡，再按新卡点查上表。

  这套循环比“重刷一整本”要快得多，也更容易暴露真正的问题点。
]

#blueprint[
  *分支过关的信号*

  能同时做到以下五条，数据分支就算正式过关：

  + 拿到任意一组原始数据，能按“整理 → 制表 / 制图 → 算 $bar x$、中位数、方差”三步走完*描述阶段*。
  + 拿到“分组数据”，能选准组距、画出直方图、并解释 y 轴含义（频率 / 组距）。
  + 拿到“随机现象”问题，能先写出*样本空间* $Omega$，再判断是否等可能；若是，直接用古典概率；若不是，用相对频率近似。
  + 拿到“从部分推整体”的题，能识别*总体 / 样本 / 抽样方式*三件事；能说出抽样是否公平、是否有偏差风险。
  + 拿到任何带有“概率 / 估计”的结论，都能反问自己：“样本来自哪里？$n$ 多大？方式有偏吗？”——*不裸用*统计量。
]

#side-hack[
  *数据与其他分支的衔接*

  - 往代数去：算均值、方差、概率时要列代数式（#secref("al04-modeling-word-problems")）；估计式 $bar x +-$ 一个误差区间需要不等式（#secref("al05-linear-inequalities")）。
  - 往几何去：散点图的两点距离、重心位置都用坐标公式（#secref("ge05-coordinate-transforms")）；直方图本质是面积法，与 #secref("pf07-perimeter-area") 的面积观一脉相承。
  - 往函数去：相对频率随实验次数的变化是一个函数关系——长期趋于概率（极限直观）；样本均值随 $n$ 增大的“收敛”也是函数视角（#secref("fn10-additive-vs-multiplicative-growth")）。
]
