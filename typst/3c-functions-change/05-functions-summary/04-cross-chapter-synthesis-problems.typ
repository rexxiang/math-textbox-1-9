#import "../../lib/theme-v2.typ": blueprint, side-hack, tryit, secref

=== 跨章综合练习 <meta:fn-synthesis-problems>

#blueprint[
  *怎样用这一节*

  下面 $5$ 道题每一题都明确标注了它所用到的*知识链*——即这一支函数分支里的哪几节。做每题之前，先把标出的章节引用过一遍，想一下“这里具体会用到那一节的哪个动作”，再动笔。

  做完后对照 #secref("meta:functions-summary-review") 里的参考答案。如果某题卡住，到 #secref("meta:fn-repair-routes") 查“查漏指引”。
]

#tryit[
  *综合题 1* \
  涉及章节：#secref("fn01-table-as-function-view") + #secref("fn11-model-choice")

  下表给出某种装置的输入 $x$ 与输出 $y$：

  #table(
    columns: 6,
    inset: 4pt,
    stroke: 0.4pt,
    [$x$], [$0$], [$1$], [$2$], [$3$], [$4$],
    [$y$], [$3$], [$5$], [$11$], [$21$], [$35$],
  )

  按*差 → 积 → 比 → 二阶差*四问流程判断它属于哪一族函数？写出公式 $y = f(x)$。

  ---

  *综合题 2* \
  涉及章节：#secref("fn05-linear-function") + #secref("fn06-slope-as-rate")

  已知一次函数 $y = k x + b$ 的图像过两点 $(2, -1)$ 与 $(-1, 5)$。

  + 求斜率 $k$；
  + 求截距 $b$，写出函数式；
  + 求 $y = 0$ 时的 $x$（即与 $x$ 轴的交点横坐标）。

  ---

  *综合题 3* \
  涉及章节：#secref("fn07-inverse-proportion") + #secref("fn08-quadratic-function")

  已知反比例函数 $y = k / x$ 与二次函数 $y = a x^2 + c$ 都过点 $(2, 3)$，且二次函数的顶点在 $y$ 轴上。

  + 求 $k$；
  + 求 $a, c$（提示：顶点在 $y$ 轴 $=>$ $b = 0$）；
  + 求两条曲线在第一象限的另一个交点（若存在）。

  ---

  *综合题 4* \
  涉及章节：#secref("fn08-quadratic-function") + #secref("fn11-model-choice")

  一只小球从 $20$ 米高的台上水平掷出，水平距离 $x$（米）与离地高度 $h$（米）满足 $h = 20 - 0.05 x^2$（不计空气阻力）。

  + 这是哪一族函数？凭什么判断？
  + 小球落地（$h = 0$）时的水平距离是多少？
  + 落地前 $h$ 的最大值出现在哪里？等于多少？

  ---

  *综合题 5* \
  涉及章节：#secref("fn10-additive-vs-multiplicative-growth") + #secref("fn12-function-comparison")

  甲方案：每年存入 $1000$ 元（加法增长，本金累加）；
  乙方案：本金 $1000$ 元，每年按 $r = 1.1$ 翻动（乘法增长 $y = 1000 dot 1.1^n$）。

  + 写出 $n$ 年后两方案的总数 $S_甲(n), S_乙(n)$（甲只关心年末本金累计，不计利息）；
  + 计算 $n = 1, 5, 10, 20$ 时两方案的数；
  + 解释“起步谁快、长期谁大”——并指出大约从哪个 $n$ 开始乙超过甲。
]

#side-hack[
  综合题的难点通常不是“某一个动作”，而是：*在纸上同时记得哪几条工具要串起来*。写解时主动把“这一步用的是哪一节的哪个动作”在空白处标一下，会显著减少漏步。
]
