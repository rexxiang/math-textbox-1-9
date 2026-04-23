#import "../../lib/theme-v2.typ": blueprint, side-hack, tryit, secref

== 通往数据分支的准备清单 <meta:ready-for-data>

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
    [平面直角坐标系（画散点图、折线图）], [#secref("cb03-rectangular-system")、#secref("cb03-plotting-transforming")],
    [用字母表示数、代数式求值（写均值公式）], [#secref("cb04-letters-represent-numbers")、#secref("cb04-expressions-and-like-terms")],
    [估算与合理性检查], [#secref("pf05-estimation-reasonableness")、#secref("cb06-real-number-line")],
  )
]

#blueprint[
  *最常见的误判*

  - 把“百分数”当成一个抽象数字，忘记它背后的基数。
  - 读图时不看坐标轴的单位与刻度，随手读数。
  - 把“频率 $=$ 频数 $div$ 总数”写错顺序，或漏掉“$times 100%$”。
  - 算偏差时忽略负号，或把“偏差”和“绝对偏差”混为一谈。
  - 把“样本”和“总体”当成一回事，看到样本结果就直接声称总体。
]

#blueprint[
  *哪里不会回哪里*

  #table(
    columns: (1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*卡在哪一类题*], [*忘了可以回到*],
    [比 / 频率 / 百分比之间译不过来], [#secref("cb01-ratio-basics")、#secref("cb01-percent")],
    [读散点图 / 折线图老失误], [#secref("cb03-rectangular-system")、#secref("cb03-plotting-transforming")],
    [写不出“均值 $=$ 总和 $div$ 个数”代数式], [#secref("cb04-letters-represent-numbers")、#secref("cb04-relationship-templates")],
    [负数偏差算错绝对值], [#secref("cb02-opposite-and-absolute")],
    [小数 / 分数互化不稳], [#secref("pf04-fraction-arithmetic")、#secref("pf05-decimals-conversion")],
  )
]

#blueprint[
  *可以继续前进的信号*

  - 能用字母写出“$n$ 个数据的均值 $bar(x) = (x_1 + x_2 + dots + x_n) / n$”。
  - 看到“全校 $1200$ 人里男生占 $54%$”能立刻算出男生人数，并口头解释 $54%$ 的基数是谁。
  - 能在一张折线图上指出哪段在上升、哪段在下降，并用坐标读出峰值。
  - 看到“样本均值”和“总体均值”能意识到它们可能不同。
]

#tryit[
  *诊断 · 进入数据分支*（答案见本章 `99-review.typ`）

  + 一小组 $8$ 名学生的考试分数为 $72, 85, 90, 65, 78, 88, 92, 80$。算出他们的平均分，并用字母公式写出过程。
  + 一次民意调查，问卷回收 $250$ 份，其中 $170$ 份支持方案 $A$。写出支持率（用百分数表达，保留一位小数）；并说出这里的“基数”是谁。
  + 某七天的日最高气温分别是 $18, 20, 22, 19, 25, 24, 21$（摄氏度）。估算这七天的平均气温，并计算第五天的气温与平均气温的偏差（带符号）。
]
