#import "../../lib/theme-v2.typ": blueprint, side-hack, tryit, secref

=== 通往数据分支的入口准备 <meta:ready-for-data>

#blueprint[
  *前面学过的知识*

  #table(
    columns: (1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*工具*], [*出处*],
    [四则运算、运算律、分数 / 小数互化], [#secref("pf02-order-laws")、#secref("pf04-fraction-arithmetic")、#secref("pf05-decimals-conversion")],
    [比、比例、百分数（频率、比率的基础）], [#secref("cb01-ratio-basics")、#secref("cb01-proportion")、#secref("cb01-percent")],
    [数轴与正负号（处理偏差值）], [#secref("cb02-number-line-extends-left")、#secref("cb02-opposite-and-absolute")],
    [平面直角坐标系（画散点图、折线图）], [#secref("cb04-rectangular-system")、#secref("cb04-plotting-transforming")],
    [用字母表示数、代数式求值（写均值公式）], [#secref("cb05-letters-represent-numbers")、#secref("cb05-expressions-and-like-terms")],
    [估算与合理性检查], [#secref("pf05-estimation-reasonableness")],
  )
]

#blueprint[
  *哪里不会回哪里*

  #table(
    columns: (1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*卡在哪一类题*], [*忘了可以回到*],
    [比 / 频率 / 百分比之间译不过来], [#secref("cb01-ratio-basics")、#secref("cb01-percent")],
    [读散点图 / 折线图老失误], [#secref("cb04-rectangular-system")、#secref("cb04-plotting-transforming")],
    [写不出“均值 $=$ 总和 $div$ 个数”代数式], [#secref("cb05-letters-represent-numbers")、#secref("cb05-relationship-templates")],
    [负数偏差算错绝对值], [#secref("cb02-opposite-and-absolute")],
    [小数 / 分数互化不稳], [#secref("pf04-fraction-arithmetic")、#secref("pf05-decimals-conversion")],
  )
]

#tryit[
  *诊断 · 进入数据分支*（答案见本章回顾）

  + 一小组 $8$ 名学生的考试分数为 $72, 85, 90, 65, 78, 88, 92, 80$。算出他们的平均分，并用字母公式写出过程。
  + 一次民意调查，问卷回收 $250$ 份，其中 $170$ 份支持方案 $A$。写出支持率（用百分数表达，保留一位小数）；并说出这里的“基数”是谁。
  + 某七天的日最高气温分别是 $18, 20, 22, 19, 25, 24, 21$（摄氏度）。估算这七天的平均气温，并计算第五天的气温与平均气温的偏差（带符号）。
]
