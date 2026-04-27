#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

== 正比例 · 一次函数 · 斜率 <ch:direct-variation-linear-functions-slope>

你匀速走路：1 小时走 5 公里，2 小时走 10 公里，3 小时走 15 公里。把这些点画在坐标纸上，它们排成一条直线。这种"每加一个单位，输出就加固定量"的节奏，是生活中最常见的变化模式——也是本章的主角。

#blueprint[
  *难度*：★★★★☆ \
  *核心问题*：生活里最常见的变化是“每加 $1$ 单位输入，输出就加固定量”——这类关系到底长什么样的公式、什么样的图像、什么样的数据表？怎样把这条“每单位变化”抽象为*斜率*这个数？一条直线的公式、两点、图、表四者之间如何互相翻译？ \
  *需要先会*：#secref("cb01-ratio-basics")、#secref("cb01-proportion")（比与比例）、#secref("cb03-rectangular-system")（坐标平面）、#secref("cb04-expressions-and-like-terms")（代数式）、#secref("cb05-solving-linear")（一次方程）、#secref("fn03-formula-as-function-view")（函数公式与定义域）。 \
  *本章在全书的位置*：函数分支*第一类具体函数族*——正比例 $y = k x$ 是最朴素的版本，一次函数 $y = k x + b$ 加上常数项起点，*斜率*则把这两家公式里控制“陡度”的那个数严格定义为“每加 $1$ 单位 $x$，$y$ 变化量”。 \
  *忘了可以回到*：比与比例卡住 $->$ #secref("cb01-ratio-basics")；画点、读图卡住 $->$ #secref("cb03-plotting-transforming")；把 $y = k x + b$ 解出 $x$ 卡住 $->$ #secref("cb05-solving-linear")。
]

#side-hack[
  *本章路线*

  + §1 *正比例函数* $y = k x$：用“每袋米重量”开场，抽象出正比例的公式、过原点直线图像、$y / x = k$ 常数法判别。
  + §2 *一次函数* $y = k x + b$：用“出租车起步价 $+$ 按公里计费”引入常数项 $b$；图像 $=$ 正比例图像整条上 / 下移 $b$；识别法与画图三点速写。
  + §3 *斜率*：把 $k$ 正式定义成 $(Delta y) / (Delta x) = (y_2 - y_1) / (x_2 - x_1)$；用相似三角形证明这个比值与选哪两点无关；公式、表、图三种读法并列。

  *这章通向哪里*

  - 第 3 章：反比例 $y = k / x$（不再是直线）与二次 $y = a x^2 + b x + c$（抛物线）。它们的图像都不是直线——和本章的“直线一族”形成显著对比。
  - 第 4 章：把“每加 $1$ 单位加同一个数”（加法增长 $=$ 线性）与“每加 $1$ 单位乘同一个数”（乘法增长）并列，看谁长期跑得快。
  - 代数分支：用 #secref("cb05-solving-linear") 解 $k x + b = 0$ 就是求*一次函数的零点*。
  - 几何分支：一次函数图像的斜率 $k$ 与倾斜角 $alpha$ 之间有 $k = tan alpha$ 的关系——高中阶段会用到。
]

#side-hack[
  *入章自检*——以下几道小题只用前面章节学过的知识。如果卡住，请先按上面"忘了可以回到"的指引补一补。

  + 化简比 $8 : 12$。
  + 解方程 $4x - 1 = 11$。
  + 下面这张表里，$y$ 是 $x$ 的函数吗？$x = 1, 2, 3$；$y = 3, 5, 7$。
]

#include "01-direct-variation.typ"
#include "02-linear-functions.typ"
#include "03-slope-as-rate.typ"
