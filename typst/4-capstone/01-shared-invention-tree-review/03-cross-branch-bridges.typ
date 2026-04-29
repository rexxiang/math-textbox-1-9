#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

=== 跨分支同源工具对照 <meta:cp-cross-branch-bridges>

四条分支虽然各自独立生长，但*同一件数学工具*常常在不同分支里以不同名字出现。这一节把这些“同源不同名”的工具排成对照表，让你看见——你以为你在学一件新东西，其实只是给老工具换了一套外衣。

#blueprint[
  *五组同源工具：换了外衣的老朋友*

  #table(
    columns: (auto, 1.2fr, 1.2fr, 1.2fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    align: (left, left, left, left, left),
    [*共同骨架*], [*在代数里*], [*在几何里*], [*在函数里*], [*在数据里*],
    [*比例 / 比率*\ "两量之比恒"], [分式 / 同比化简 #secref("al03-common-denominator-operations")], [相似比 #secref("ge02-similarity-aa-ratio")、放缩与比例尺 #secref("ge02-scale-and-measurement")], [正比例 / 斜率 #secref("fn04-direct-variation")、#secref("fn06-slope-as-rate")], [频率 / 百分比 #secref("dt01-organizing-data")、相对频率 #secref("dt09-experimental-frequency")],
    [*平方 / 平方根*\ $a^2$ 和它的反演], [完全平方 / 求根公式 #secref("al02-special-identities")、#secref("al05-quadratic-solving")], [勾股定理 / 直角三角形边长 #secref("ge04-pythagorean")], [二次函数顶点 / 抛物线 #secref("fn08-quadratic-function")], [方差 $s^2$ #secref("dt06-variance")],
    [*距离 / 测量*\ "两点 / 两数之间多远"], [绝对值 $|x - y|$ #secref("al05-linear-inequalities")], [距离公式 $sqrt((Delta x)^2 + (Delta y)^2)$ #secref("ge05-coordinate-transforms")], [纵向差 $|y_1 - y_2|$ 与横向差 $|x_1 - x_2|$ #secref("fn06-slope-as-rate")], [偏差 $x_i - bar x$ #secref("dt06-variance")],
    [*等量约束*\ "$=$ 是一种声明"], [方程 #secref("cb06-equation-as-balance")、五步法 #secref("al04-linear-one-variable")], [全等条件等式 / 角度关系式 #secref("ge02-parallel-line-angles")], [函数零点 $f(x) = 0$ #secref("fn03-formula-as-function-view")], [估计式 $bar x = mu$（点估计） #secref("dt12-estimation")],
    [*分类 / 穷举*\ "把所有情况列出来"], [分式方程的*验根分支*（去分母引入的额外可能）], [全等判定五法 SSS / SAS / ASA / AAS（不含 SSA） #secref("ge01-asa-aas-ssa")], [模型选择四问 #secref("fn11-model-choice")], [样本空间 $Omega$ #secref("dt07-sample-spaces")],
  )
]

#blueprint[
  *三条最常被反复用的“跨分支链”*

  *链一：相似 ↔ 一次函数 ↔ 比例*

  - 几何里两个相似三角形对应边*等比*（#secref("ge02-similarity-aa-ratio")）。
  - 函数里 $y = k x$ 是“$y$ 与 $x$ 等比”——*同一件事*的代数表达（#secref("fn04-direct-variation")）。
  - 桥梁里的“比”（#secref("cb01-ratio-basics")）就是这件事被抽象出来的中间形式。

  这条链把*几何中的形状放缩*与*函数中的线性关系*联在一起：*相似比 $=$ 一次函数斜率 $=$ 比的常数*。

  *链二：勾股 ↔ 距离公式 ↔ 方差结构*

  - 几何里 $a^2 + b^2 = c^2$（#secref("ge04-pythagorean")）。
  - 坐标几何里两点距离 $sqrt((Delta x)^2 + (Delta y)^2)$（#secref("ge05-coordinate-transforms")）就是勾股的代数化。
  - 数据里方差 $s^2 = (1 / n) sum (x_i - bar x)^2$（#secref("dt06-variance")）也是“偏差平方和”——同一种*平方求和*的结构。

  这条链揭示：*勾股定理*在几何里是一条公式，在数据里却是“离散度”的核心机制。

  *链三：方程 ↔ 函数零点 ↔ 概率事件*

  - 代数里解方程是问“哪个 $x$ 让两边相等”（#secref("al04-linear-one-variable")）。
  - 函数里求零点是问“图像和 $x$ 轴在哪相交”——本质就是 $f(x) = 0$（#secref("fn03-formula-as-function-view")）。
  - 概率里事件 $A$ 是 $Omega$ 的子集——“满足某条件的所有结果”（#secref("dt07-sample-spaces")、#secref("dt08-probability-language")）。

  三处都是“满足条件的解集”这个共同概念在不同分支的化身。
]

#side-hack[
  *跨分支借力的两个时机*

  + *卡题时*：如果你在数据题里被方差吓住，可以回到几何里勾股定理重新感受“平方求和”这件事——结构是同一个，只是对象变了。
  + *综合题时*：跨分支题目（如“坐标系里某直线 $y = k x$ 上有 $n$ 个点，求它们到原点的平均距离”）一定会同时调用至少两条链——能否一眼看出“这题用了哪几条链”，是综合能力的关键。

  这也是为什么 #secref("meta:cross-domain-problem-solving-modeling") 那一章会成为本部的核心练习场。
]

#blueprint[
  *“同源工具”查漏指南*

  当你在某一分支*第一次遇到*下列概念时，建议*主动回头*查它的同源工具——多半你已经学过它的另一个版本：

  #table(
    columns: (1.2fr, 1.5fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*第一次遇到的概念*], [*它的同源工具，可以一并复习*],
    [函数斜率 #secref("fn06-slope-as-rate")], [相似比 #secref("ge02-similarity-aa-ratio")、比 #secref("cb01-ratio-basics")],
    [二次函数顶点 #secref("fn08-quadratic-function")], [配方法 / 求根公式 #secref("al05-quadratic-solving")],
    [方差 #secref("dt06-variance")], [完全平方 #secref("al02-special-identities")、勾股 #secref("ge04-pythagorean")],
    [概率事件 #secref("dt08-probability-language")], [函数定义域上的子集（解集）思想 #secref("al05-linear-inequalities")],
    [坐标距离公式 #secref("ge05-coordinate-transforms")], [勾股定理 #secref("ge04-pythagorean")],
  )

  *先识别同源，再学新名字*——这是减少“工具名词数量”的根本办法。
]
