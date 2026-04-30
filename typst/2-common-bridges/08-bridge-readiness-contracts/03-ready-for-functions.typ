#import "../../lib/theme-v2.typ": blueprint, side-hack, tryit, secref

=== 通往函数分支的入口准备 <meta:ready-for-functions>

#blueprint[
  *前面学过的知识*

  #table(
    columns: (1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*工具*], [*出处*],
    [代数式、代入求值、关系模板], [#secref("cb05-letters-represent-numbers")、#secref("cb05-relationship-templates")],
    [比、比例、百分数（正比例思想的来源）], [#secref("cb01-ratio-basics")、#secref("cb01-proportion")、#secref("cb01-percent")],
    [数轴、负数、有理数], [#secref("cb02-number-line-extends-left")、#secref("cb02-rational-numbers")],
    [平面直角坐标系与四象限、描点读点、平移对称], [#secref("cb04-rectangular-system")、#secref("cb04-quadrants")、#secref("cb04-plotting-transforming")],
    [方程意义与反向操作解法], [#secref("cb06-equation-as-balance")、#secref("cb06-solving-linear")],
    [平方、平方根、实数直觉（为二次函数打地基）], [#secref("cb07-square-and-square-root")、#secref("cb07-real-number-line")],
    [完全平方与配方法（求二次顶点：$x^2 + 6 x + 5 -> (x + 3)^2 - 4$）], [#secref("tool:al02-special-identities")、#secref("tool:al02-factorization-as-reverse")（3c-3 顶点式推导直接用，是函数支唯一进入前需要的代数支工具）],
  )

  *对函数分支特别关键的是*：坐标作图与正比例直观——$y = k x$ 的"过原点直线"和"$k$ 是斜率"必须做到看一眼就能在脑海中画出图。函数支的整条主线（一次 $arrow.r$ 反比例 $arrow.r$ 二次 $arrow.r$ 增长模型）都是在这两件事上反复堆叠。
]

#blueprint[
  *哪里不会回哪里*

  #table(
    columns: (1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*卡在哪一类题*], [*忘了可以回到*],
    [不会把生活情景写成代数式], [#secref("cb05-letters-represent-numbers")、#secref("cb05-relationship-templates")],
    [描点老是坐标颠倒 / 判错象限], [#secref("cb04-rectangular-system")、#secref("cb04-quadrants")],
    [同向 / 反向比例判错], [#secref("cb01-proportion")],
    [代入求值时符号错], [#secref("cb02-opposite-and-absolute")、#secref("cb05-letters-represent-numbers")],
    [读不出 $f(x) = c$ 是方程], [#secref("cb06-equation-as-balance")、#secref("cb06-solving-linear")],
    [平方根表达式算不稳], [#secref("cb07-square-and-square-root")],
    [二次顶点 $x^2 + 6 x + 5$ 凑不出 $(x + 3)^2 - 4$], [#secref("tool:al02-special-identities")、#secref("tool:al02-factorization-as-reverse")],
  )

  *进入函数分支前最常见的误判*是：看到 $y = f(x)$ 这种写法就当成"两个独立的变量在乱跳"，忘了函数本质上是"一条规则把 $x$ 唯一对应到 $y$"。$f(x) = c$ 是方程而不是新概念——读到这一步若还分不清"求函数值"与"解方程"，先回 #secref("cb06-equation-as-balance") 把方程意义补稳。
]

#tryit[
  *诊断 · 进入函数分支*（答案见本章回顾）

  + 给定代数式 $y = -2 x + 5$。分别求 $x = -1$、$x = 0$、$x = 3$ 时 $y$ 的值，并在坐标系里描出这三点。
    *提示*：先逐个代入求输出，再把每个结果写成点 $(x, y)$。
  + 若 $y$ 与 $x$ 成正比例，$x = 4$ 时 $y = -12$。写出它们的关系式，并求 $x = -2$ 时 $y$ 的值。
    *提示*：先设 $y = k x$，用已知的一组 $(x, y)$ 求 $k$。
  + 行驶情境（一）：把“一辆车以 $60$ 千米/小时行驶 $t$ 小时，行驶里程 $s$ 千米”写成 $s$ 关于 $t$ 的关系式，并说明它是不是正比例。
    *提示*：先找“每 $1$ 小时增加多少千米”；这一步只写式子，不急着求 $t$。
  + 行驶情境（二）：沿用上一题的关系式，当 $s = 90$ 时求 $t$。（把它当成方程求解）
    *提示*：把 $s = 90$ 代入关系式，它就变成一元一次方程。
]

#side-hack[
  *通过标准*：前两题和行驶情境两步都正确，并且能解释每一步为什么成立，就可以进入函数分支；错 1--2 处，先按上面的“哪里不会回哪里”回补后再做一遍；若多数题卡住，建议重读共通桥梁中对应章节，再回来检查。

  #table(
    columns: (1fr, 1.5fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*自评分*], [*下一步*],
    [会算但说不清], [回补对应概念，尤其是代入、正比例、坐标描点和方程意义。],
    [能解释每步依据], [可进入函数分支。],
    [能举一个错例并修正], [很稳；这是继续前进信号。],
  )
]
