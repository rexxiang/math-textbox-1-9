#import "../../lib/theme-v2.typ": blueprint, side-hack, tryit, secref

=== 通往代数分支的入口准备 <meta:ready-for-algebra>

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
    [字母代替数、合并同类项、关系模板], [#secref("cb05-letters-represent-numbers")、#secref("cb05-expressions-and-like-terms")、#secref("cb05-relationship-templates")],
    [方程的意义、等式性质、反向操作解一元一次方程], [#secref("cb06-equation-as-balance")、#secref("cb06-equality-properties")、#secref("cb06-solving-linear")],
    [比例与百分数的应用题设置], [#secref("cb01-ratio-basics")、#secref("cb01-proportion")、#secref("cb01-percent")],
  )

  *对代数分支特别关键的是*：字母运算（同类项、分配律展开）、等式性质（移项变号、两边同乘 / 同除）以及 #secref("ch:square-root-irrational-number-line") 里的平方根——它们是后续整式、因式分解、分式与二次方程的最直接前置。
]

#blueprint[
  *哪里不会回哪里*

  #table(
    columns: (1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*卡在哪一类题*], [*忘了可以回到*],
    [写不出“某数的 $k$ 倍加 $b$”这种代数式], [#secref("cb05-letters-represent-numbers")],
    [代数式化简老是出错], [#secref("cb05-expressions-and-like-terms")],
    [列应用题找不到关系], [#secref("cb05-relationship-templates")、#secref("cb01-ratio-basics")],
    [不会从等式性质推出解的步骤], [#secref("cb06-equality-properties")],
    [解方程前几步没问题，最后系数约分算错], [#secref("cb06-solving-linear")、#secref("pf04-fraction-arithmetic")],
    [负号处理常出错], [#secref("cb02-number-line-extends-left")、#secref("cb02-opposite-and-absolute")],
  )

  *进入代数分支前最常见的误判*是：把字母当"数本身"而不是"占位符"——见到 $a + b$ 就想立刻"算成一个数"。代数分支要求你能在不知具体值的情况下变形 $a + b$、$(x + 2)^2$ 这类式子；如果还卡在"非要算出数"的执念里，先回 #secref("cb05-letters-represent-numbers") 重练。
]

#tryit[
  *诊断 · 进入代数分支*（答案见本章回顾）

  + 化简：$4 (a - 2) - 3 (2 a - 1)$。
  + 解方程：$2 (x - 3) = 3 x - 8$。
  + 一批货物按 $3 : 5$ 分给甲、乙两组。若甲组得 $240$ 件，乙组得多少件？列方程或用比例均可。
]

#side-hack[
  *通过标准*：3 题全部正确，并且能解释每一步为什么成立，就可以进入代数分支；错 1--2 个，先按上面的“哪里不会回哪里”回补后再做一遍；若多数题卡住，建议重读共通桥梁中对应章节，再回来检查。

  #table(
    columns: (1fr, 1.5fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*自评分*], [*下一步*],
    [会算但说不清], [回补对应概念，尤其是字母占位、等式性质和比例来源。],
    [能解释每步依据], [可进入代数分支。],
    [能举一个错例并修正], [很稳；这是继续前进信号。],
  )
]
