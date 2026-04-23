#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

== 增长模型与函数比较 <ch:growth-models-function-comparison>

#blueprint[
  *难度*：★★★★★ \
  *核心问题*：本分支到现在已经学过了线性、反比例、二次三类*代数*函数族。现实里还有另一种非常常见的节奏——*每加 $1$ 单位 $x$，$y$ 乘同一倍数*（乘法增长）——它短期看不出厉害，长期却*碾压*前面几族。本章回答两件事：（1）怎么识别加法 / 乘法两种增长？（2）拿到一张陌生表 / 一张陌生图，怎样在四族里挑出最合适的那个？*长期*它们又有怎样稳定的*级别排序*？ \
  *需要先会*：#secref("fn05-linear-function")（线性族）、#secref("fn06-slope-as-rate")（斜率 / 变化率）、#secref("fn07-inverse-proportion")（反比例族）、#secref("fn08-quadratic-function")（二次族）、#secref("fn09-comparing-function-families")（一阶 / 二阶差与乘积的数据指纹）。 \
  *本章在全书的位置*：函数分支的*现象层顶点*。上一章介绍完三族函数工具，本章补一个*现象标签*（乘法增长，不算正式函数族）、升级成模型选择流程，并把四族的*长期等级*固定下来，作为往高中过渡的心智模型。 \
  *忘了可以回到*：相邻差 / 比 / 二阶差的计算不稳 $->$ #secref("fn09-comparing-function-families")；顶点式与配方法 $->$ #secref("fn08-quadratic-function")；反比例定义域 $->$ #secref("fn07-inverse-proportion")。
]

#side-hack[
  *本章路线*

  + §1 *加法 vs. 乘法增长*：每加 $1$ 单位 $x$——加同一常数（线性）vs. 乘同一倍率（乘法增长）。用表和图直接对比两者的节奏差距，给出*相邻比恒定*这条新指纹。
  + §2 *模型选择流程*：面对任意一张等距 $x$ 的表，按“差 $->$ 积 $->$ 比 $->$ 二阶差”的顺序，稳准落到四族之一（或诚实地说“都不像”）。
  + §3 *长期较量*：固定族等级*反比例 $≪$ 线性 $≪$ 二次 $≪$ 乘法*（对正 $x$、长期），说明“系数再大也赢不过族”。

  *这章通向哪里*

  - 本章的“乘法增长”就是高中*指数函数* $y = a^x$ 的雏形；本书不正式引入它，但已经给出足够的直观与识别方法。
  - 数据分支在做统计 / 建模时需要的“从数据里选模型”的技能，直接来自这里。
  - 高中还会学*对数函数*（“把乘法换成加法”的逆变换）和*三角函数*（周期性的、新的函数族）。
]

#include "01-additive-vs-multiplicative-growth.typ"
#include "02-model-choice.typ"
#include "03-function-comparison.typ"
