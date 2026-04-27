#import "../../lib/theme-v2.typ": chapter-nav, chapter-route, side-hack, secref

== 函数表示：表 / 图 / 公式三张面孔 <ch:function-representations>

自动售水机：你投进一枚硬币，出来一瓶特定的饮料。同样的硬币，永远出同样的饮料——投入决定产出，而且只有一个产出。这个简单的规则，就是"函数"最朴素的样子。这一章要做的，是给这个规则三张不同的面孔：表、图和公式。

#chapter-nav[
  *难度*：★★★★☆ \
  *核心问题*：从小学起我们就会填“$x$ 变了、$y$ 跟着变”的两列表，初中也画过许多坐标点和直线。但什么样的“对应关系”才专门叫*函数*？同一个函数，为什么有时写成表、有时画成图、有时写成公式？这三种写法之间怎样互相翻译？哪些坐标图不代表函数？ \
  *需要先会*：#secref("cb04-rectangular-system")（坐标平面与点）、#secref("cb05-letters-represent-numbers")（字母代替数）、#secref("cb05-expressions-and-like-terms")（代数式）、#secref("cb06-equation-as-balance")（方程与变形）、#secref("cb07-square-and-square-root")（根号合法性）、分母不能为 $0$（从 #secref("ch:fractions") 与 #secref("cb05-expressions-and-like-terms") 可知）。 \
  *本章在全书的位置*：函数分支*入口*——把“函数”这个总概念独立出来、同时给出它最常用的三张面孔（表 / 图 / 公式），为后续*具体函数类型*（正比例、一次、反比例、二次 ……）搭好共用语言。 \
  *忘了可以回到*：若代数式化简或分式合法性判断卡壳，回 #secref("cb05-expressions-and-like-terms")；若坐标系操作不熟，回 #secref("cb04-rectangular-system")。
]

#chapter-route[

  + §1 从“自动售水机”的数据表出发，把*函数*的关键特征抽象出来：每个输入对应*唯一*输出。引入*输入输出表*这张最原始的面孔。
  + §2 把输入输出表里的每一行画成坐标点，点连成*图像*。配套引入*垂线检验*，用一条铅垂线的交点数来判“这张图是不是函数”。
  + §3 把规则写成*公式* $y = f(x)$。引入*独立变量 / 因变量 / 定义域*；讲清楚“公式不像表能自带输入范围，需要单独写出定义域”。

  *这章通向哪里*

  - 第 2 章：最简单的函数——正比例 $y = k x$ 与一次 $y = k x + b$。它们的图像都是直线。
  - 第 3 章：反比例 $y = k / x$（双曲线）与二次 $y = a x^2 + b x + c$（抛物线）。
  - 第 4 章：把同一问题放进不同函数模型里，看谁长期会跑得更快——*线性 vs. 乘法增长*。
  - 代数分支：$f(x) = 0$ 时求 $x$ 就是方程——把代数分支里方程的工具再次启用。
  - 几何分支：直线的斜率与三角函数中的 $tan$ 有联系——将来可以对接。
]

#side-hack[
  *入章自检*——以下几道小题只用前面章节学过的知识。如果卡住，请先按上面"忘了可以回到"的指引补一补。

  + 在坐标系中，点 $(-1, 4)$ 在第几象限？
  + 当 $x = 2$ 时，$3x^2 - 1 = ?$
  + 分式 $5 / (x - 3)$ 在 $x = ?$ 时没有意义？
]

#include "01-input-output-tables.typ"
#include "02-graphs-and-correspondence.typ"
#include "03-formulas-as-rules.typ"
