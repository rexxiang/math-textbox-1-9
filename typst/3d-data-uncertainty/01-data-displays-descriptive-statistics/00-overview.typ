#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

== 数据展示与描述统计：数据的第一张脸 <ch:data-displays-descriptive-statistics>

#blueprint[
  *难度*：★★★☆☆ \
  *核心问题*：我们已经会处理很多“有规律”的数——运算、方程、函数。但现实里常常拿到一把*杂乱*的数字（一次考试 $50$ 人的分数、一年每天的气温、一班同学的身高 ……）。面对这样一把数，应该怎样*整理*、怎样*画*、怎样用*一两个数字*概括它？什么时候画图会帮助我们看见真相，什么时候反而会骗我们？ \
  *需要先会*：#secref("cb01-ratio-basics")（比例 / 百分比作为图表语言）、#secref("cb01-percent")（扇形图用到百分比）、#secref("cb03-rectangular-system")（折线图的坐标）、#secref("cb04-relationship-templates")（两列数据的概念）、#secref("fn01-table-as-function-view")（一张表能代表什么关系）。 \
  *本章在全书的位置*：数据分支*入口*。这里还不算“统计学”——只是把数据“摆整齐”、“挑一两个数字概括”，为后续的频率分布、方差、概率、抽样搭好语言地基。 \
  *忘了可以回到*：如果百分比或坐标系生疏，回 #secref("cb01-percent")、#secref("cb03-rectangular-system")；如果不记得什么叫“一张表是函数”，回 #secref("fn01-table-as-function-view")。
]

#side-hack[
  *本章路线*

  + §1 *整理数据的三张常用图*：条形图 / 折线图 / 扇形图。图形不是装饰——它是“整理过的数据”，不同问题要配不同的图。
  + §2 *从图里读数 & 识别误导图*：怎样从图里看出比例、趋势、对照？哪些常见花招（截断纵轴、等间距伪装、非等宽分类）会让人把小差距看成大差距？
  + §3 *用一两个数字概括*：平均数 / 中位数 / 众数（center，代表“中间在哪”）；极差（spread，代表“散得多宽”）。为什么只报一个不够、必须同时给出 *center + spread*。

  *这章通向哪里*

  - 第 2 章：当数据条目更多时，频率分布表 + 直方图接管“整理”；极差不够用时，方差 / 标准差接管“spread”。
  - 第 3 章：从“已经收好的数据”转向*还没发生*的结果——样本空间、概率。
  - 第 4 章：当全体数据拿不到时，用样本去*估计*总体——抽样。
  - 代数分支：平均数本质是一个加权和式（#secref("cb04-expressions-and-like-terms") 的代数式 $+$ 除法）。
  - 函数分支：折线图本身就是把数据看作“时间 $->$ 值”的函数。
]

#include "01-organizing-data.typ"
#include "02-charts-and-readings.typ"
#include "03-center-and-spread.typ"
