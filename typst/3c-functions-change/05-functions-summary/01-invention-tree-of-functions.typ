#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

=== 函数分支的知识地图 <meta:fn-invention-tree>

#blueprint[
  *主干：从“关系模板”到“四族函数 + 长期比较”*

  函数这条分支由一条主干生长，每一步都回答*上一步还回答不了的那件事*：

  + *关系模板*（#secref("cb05-relationship-templates")）：把“甲随乙变”这件事先用文字模板写出来——“总价 $=$ 单价 $times$ 数量”等等。
  + *函数三视图*（#secref("fn01-table-as-function-view") / #secref("fn02-graph-as-function-view") / #secref("fn03-formula-as-function-view")）：同一段“输入 → 输出”的关系可以*同时*用表 / 图 / 公式三种语言写下来，互相印证。
  + *正比例 & 一次函数*（#secref("fn04-direct-variation") / #secref("fn05-linear-function")）：从“相邻差恒定”出发，先认出最简单的一族——直线。
  + *斜率作为变化率*（#secref("fn06-slope-as-rate")）：直线之所以是直线，是因为“每多 $1$ 个单位的 $x$，$y$ 多固定一份”。这一份就是 $k$。
  + *反比例 & 二次函数*（#secref("fn07-inverse-proportion") / #secref("fn08-quadratic-function")）：当“相邻差”不再恒定，但*乘积恒定*或者*二阶差恒定*——又一族被挑出来。
  + *四族函数比较*（#secref("fn09-comparing-function-families")）：四族放在一张坐标系里，看它们各自的“特征指纹”如何并存。
  + *加法 vs 乘法增长*（#secref("fn10-additive-vs-multiplicative-growth")）：两种最常见的“随时间变”——一种永远在直线上，一种是爆炸式或塌陷式。
  + *模型选择流程*（#secref("fn11-model-choice")）：拿到一张陌生的 $(x, y)$ 表，*按四步*——算差、算积、算比、算二阶差——把它分类到上面四族中的某一族。
  + *长期排名*（#secref("fn12-function-comparison")）：当 $x$ 走到很大时，谁先“跑出去”？——把四族按长期增长速度排成一条不可逆的等级链。
]

#blueprint[
  *知识地图表：每一步因何被发明出来*

  #table(
    columns: (1fr, 1.5fr, 1.5fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*工具*], [*被发明的理由*], [*下一步带来什么*],
    [关系模板 #secref("cb05-relationship-templates")], [先把“随……变”用一条自然语言模板钉住], [为后续“给关系起个符号名字”作铺垫],
    [函数表 #secref("fn01-table-as-function-view")], [面对一段陌生关系，最直接的入口是列表], [发现“相邻差”“相邻比”等指纹],
    [函数图像 #secref("fn02-graph-as-function-view")], [一眼看出族的形状、截距、对称性], [图像与表互相印证、互相补全],
    [函数公式 #secref("fn03-formula-as-function-view")], [外推、运算都需要符号化的紧凑表达], [公式 $=>$ 表 $=>$ 图三种切换全打通],
    [正比例 #secref("fn04-direct-variation")], [比 / 倍数 / 单价等问题最常见的一族], [$y / x$ 恒，过原点的直线],
    [一次函数 #secref("fn05-linear-function")], [允许“起点不是原点”的匀速变化], [$y = k x + b$；相邻差恒定],
    [斜率 #secref("fn06-slope-as-rate")], [直线“多陡”需要一个数字], [$k = (Delta y) / (Delta x)$ 把变化率单位化],
    [反比例 #secref("fn07-inverse-proportion")], [总量固定时两量此消彼长], [双曲线、$x y$ 恒],
    [二次函数 #secref("fn08-quadratic-function")], [二阶差恒定的一族（抛物运动、面积）], [顶点、对称轴、最大 / 最小],
    [族际比较 #secref("fn09-comparing-function-families")], [四族放一张图——它们各自占哪一块图景], [为模型选择和长期排名作准备],
    [加法 vs 乘法增长 #secref("fn10-additive-vs-multiplicative-growth")], [两种最常见的“随时间变”要被显式区分], [识别出乘法增长这类“非多项式”现象],
    [模型选择 #secref("fn11-model-choice")], [拿到 $(x, y)$ 表要有一套机械流程], [差 / 积 / 比 / 二阶差 四问],
    [长期排名 #secref("fn12-function-comparison")], [比较族际增长强弱要有不可逆等级], [反比例 $≪$ 线性 $≪$ 二次 $≪$ 乘法增长],
  )
]

#side-hack[
  *知识地图的三组横向联系*

  - *表 ↔ 图 ↔ 公式*：同一个函数的三种语言，互相切换是这条分支最常用的肌肉。
  - *正比例 ↔ 一次 ↔ 反比例 ↔ 二次*：四族都通过“相邻差 / 积 / 二阶差”这套指纹与彼此区分；模型选择流程就是把这几条指纹*按顺序*问一遍。
  - *斜率 ↔ 比例*：一次函数的 $k$ 与正比例的常数 $k$ 是同一件事——“每单位 $x$ 带来的 $y$ 增量”。这条线把代数的 #secref("cb01-ratio-basics") 和函数语言绑在了一起。

  *一条核心阅读线*

  如果你只能挑出函数分支两条“最抗遗忘”的话，建议挑：

  - “拿到 $(x, y)$ 表，先按差 / 积 / 比 / 二阶差四问定族”（#secref("fn11-model-choice")）；
  - “长期 $x -> infinity$ 时，族际排名固定不变”（#secref("fn12-function-comparison")）。

  前者是识别类问题的骨，后者是预测 / 估计类问题的骨。
]
