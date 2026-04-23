#import "../../lib/theme-v2.typ": blueprint, side-hack, tryit, secref

== 通往代数分支的准备清单 <meta:ready-for-algebra>

#blueprint[
  *前面学过的知识*

  #table(
    columns: (1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*工具*], [*出处*],
    [位值与四则运算律], [#secref("pf01-decimal-system")、#secref("pf02-order-laws")],
    [加减与乘除互为撤销], [#secref("pf02-add-subtract-undo")、#secref("pf02-mul-div-structure")],
    [分数、小数、百分数三合一], [#secref("pf04-fraction-arithmetic")、#secref("pf05-decimals-conversion")、#secref("cb01-percent")],
    [数轴 + 负数 + 相反数 / 绝对值], [#secref("cb02-number-line-extends-left")、#secref("cb02-opposite-and-absolute")],
    [字母代替数、合并同类项、关系模板], [#secref("cb04-letters-represent-numbers")、#secref("cb04-expressions-and-like-terms")、#secref("cb04-relationship-templates")],
    [方程的意义、等式性质、反向操作解一元一次方程], [#secref("cb05-equation-as-balance")、#secref("cb05-equality-properties")、#secref("cb05-solving-linear")],
    [比例与百分数的应用题设置], [#secref("cb01-ratio-basics")、#secref("cb01-proportion")、#secref("cb01-percent")],
  )
]

#blueprint[
  *最常见的误判*

  - 把字母运算的结果当成“新运算”，忘记它只是用字母写出的算术。
  - 合并同类项时忽略负号或指数：$2 x$ 和 $x^2$ 可以合并？不行。
  - 解方程只做单边的变形，破坏了平衡。
  - 移项时忘了变号，或把系数和常数项混在一边。
  - 应用题把“比 : 比例 : 百分数”当成三件互不相关的事，而不是同一关系的三种写法。
]

#blueprint[
  *哪里不会回哪里*

  #table(
    columns: (1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*卡在哪一类题*], [*忘了可以回到*],
    [写不出“某数的 $k$ 倍加 $b$”这种代数式], [#secref("cb04-letters-represent-numbers")],
    [代数式化简老是出错], [#secref("cb04-expressions-and-like-terms")],
    [列应用题找不到关系], [#secref("cb04-relationship-templates")、#secref("cb01-ratio-basics")],
    [不会从等式性质推出解的步骤], [#secref("cb05-equality-properties")],
    [解方程前几步没问题，最后系数约分算错], [#secref("cb05-solving-linear")、#secref("pf04-fraction-arithmetic")],
    [负号处理常出错], [#secref("cb02-number-line-extends-left")、#secref("cb02-opposite-and-absolute")],
  )
]

#blueprint[
  *可以继续前进的信号*

  - 能把 $2 x + 3 = 7$ 分步反向解出 $x = 2$，并说出每步用到了哪条等式性质。
  - 能把 $3 (2 x - 1) + 4 = x + 12$ 化成标准形再解出来，自动代回检验。
  - 能把“小明比小红多 $3$ 岁，两人年龄和 $25$”立即翻译成方程并求解。
  - 会区分“部分 : 部分”和“部分 : 整体”的比，不会把应用题的基数搞错。
  - 遇到负系数或负常数不紧张，能保持符号一致性。
]

#tryit[
  *诊断 · 进入代数分支*（答案见本章回顾）

  + 化简：$4 (a - 2) - 3 (2 a - 1)$。
  + 解方程：$2 (x - 3) = 3 x - 8$。
  + 一批货物按 $3 : 5$ 分给甲、乙两组。若甲组得 $240$ 件，乙组得多少件？列方程或用比例均可。
]
