#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

== 一元一次不等式 <ch:linear-inequalities>

#blueprint[
  *难度*：★★★★★ \
  *核心问题*：等号换成了 $<, >, <=, >=$，等式性质还能用吗？哪一条性质坏掉了？$|x|$ 又怎样翻译成不等式？ \
  *需要先会*：#secref("al04-linear-one-variable")、#secref("cb02-opposite-and-absolute")。 \
  *本章在全书的位置*：代数分支第 6 章——从"等号"松动为"不等号"，把等式性质推广到不等式，为代数总结做收尾。 \
  *忘了可以回到*：若一元一次方程的五步法还不稳，请回 #secref("al04-linear-one-variable")；若"$|x|$"的直观不清楚，请回 #secref("cb02-opposite-and-absolute")。
]

#side-hack[
  *本章路线*

  + 先把等式性质搬到不等式——加减、乘正数 → 方向不变；乘除*负数* → 方向*反转*。
  + 用这些性质解一元一次不等式与不等式组，在数轴上画解集。
  + 最后给 $|x|$ 一个不等式翻译：$|x| < r$ ⟺ $-r < x < r$，$|x| > r$ ⟺ $x < -r$ 或 $x > r$。

  *这章通向哪里*

  - 函数分支："定义域"的限制条件常落成不等式。
  - 数据分支：概率中的"至少" / "不超过"常常落成一元一次不等式或不等式组。
]

#side-hack[
  *入章自检*——以下几道小题只用前面章节学过的知识。如果卡住，请先按上面"忘了可以回到"的指引补一补。

  + 解方程 $5x - 3 = 2x + 9$。
  + $|-7| = ?$
  + 在数轴上，$-3$ 在 $2$ 的哪一边？
]

#include "01-linear-inequalities-and-absolute-value.typ"
