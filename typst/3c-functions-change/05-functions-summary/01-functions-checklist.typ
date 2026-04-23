#import "../../lib/theme-v2.typ": blueprint, side-hack, tryit, secref

== 函数分支速查卡 <tool:functions-checklist>

#blueprint[
  *四族函数 + 一个现象 + 一条选择流程*

  #table(
    columns: (auto, 1fr, 1fr, 1.2fr),
    inset: 6pt,
    stroke: 0.4pt,
    align: left,
    [*族 / 现象*], [*公式*], [*图像*], [*典型表指纹 & 应用*],
    [一次 / 线性 #secref("fn05-linear-function")], [$y = k x + b$ ($k != 0$)], [直线，斜率 $k$、截距 $b$], [相邻差 $Delta y$ 恒；匀速、固定变化率],
    [正比例 #secref("fn04-direct-variation")], [$y = k x$ ($k != 0$)], [过原点直线], [$y / x$ 恒；尺寸放缩、比例、统一单价],
    [斜率 / 变化率 #secref("fn06-slope-as-rate")], [$k = (Delta y) / (Delta x)$], [直线陡缓], [速度、单价、温度变化率],
    [反比例 #secref("fn07-inverse-proportion")], [$y = k / x$ ($k != 0$)], [两支双曲线；渐近于坐标轴], [$x y$ 恒；总量固定下两量彼此此消彼长],
    [二次 #secref("fn08-quadratic-function")], [$y = a x^2 + b x + c$ ($a != 0$)], [抛物线；顶点 $(-b/(2 a), ...)$；对称轴 $x = -b/(2 a)$], [二阶差 $Delta^2 y$ 恒 $= 2 a$（等距）；抛物运动、最大化 / 最小化],
    [加法增长 #secref("fn10-additive-vs-multiplicative-growth")], [$y = y(0) + c x$（即线性）], [直线], [相邻差恒；固定每期增量],
    [乘法增长（现象）], [$y = y(0) r^x$], [先贴地后陡升 ($r > 1$) / 快速下滑后贴地 ($r < 1$)], [相邻比恒；复利、倍增、衰减],
  )
]

#blueprint[
  *函数的三种表达*

  见 #secref("fn01-table-as-function-view")、#secref("fn02-graph-as-function-view")、#secref("fn03-formula-as-function-view")。任一函数都可以在*表 / 图 / 公式*三种表达间来回切换；不同场合各有所长。

  - *表*：核实具体值、发现数据指纹、当公式未知时第一入口。
  - *图*：一眼看出族的形状、截距、对称性、趋势。
  - *公式*：高效外推、参与更多代数运算。
]

#blueprint[
  *模型选择流程*（#secref("fn11-model-choice")）

  输入：一张 $(x, y)$ 表，$x$ 等间距。

  + 算相邻差 $Delta y$；恒定 $=>$ *线性*，$k = Delta y / Delta x$。
  + 算相邻积 $x y$（$x != 0$）；恒定 $=>$ *反比例*，$k = x y$。
  + 算相邻比 $y(x + 1) / y(x)$；恒定 $=>$ *乘法增长*，$r =$ 该比值。
  + 算二阶差 $Delta^2 y$；恒定 $=>$ *二次*，$a = Delta^2 y / (2 (Delta x)^2)$。
  + 以上皆不恒 $=>$ 诚实写“以上四族皆不符”。
]

#blueprint[
  *长期族等级*（#secref("fn12-function-comparison")）

  对正 $x$ 长期：
  $ c / x space ≪ space k x + b space ≪ space a x^2 + ... space ≪ space y(0) r^x quad (r > 1). $

  - 系数再大也改变不了*族*之间的长期大小关系。
  - 短期则完全可能被系数暂时翻盘（尤其在 $x in [0, 10]$ 之间）。
]

#side-hack[
  *一句话记忆*

  - *加固定量* $=>$ 直线；*乘固定倍* $=>$ 爆炸曲线。
  - *乘积恒定* $=>$ 反比例；*二阶差恒定* $=>$ 抛物线。
  - *长期排名*：反比例（弱） $->$ 线性 $->$ 二次 $->$ 乘法增长（最强）。
]
