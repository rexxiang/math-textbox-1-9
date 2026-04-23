#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

== 数轴、负数与有理数 <ch:number-line-negative-rational>

#blueprint[
  *难度*：★★★☆☆ \
  *核心问题*：原点左边那一段空白里装着什么？把“负的量”塞进数轴以后，原来的算术会不会乱掉？ \
  *需要先会*：#secref("pf01-decimal-system")、#secref("pf02-add-subtract-undo")、#secref("pf04-fraction-equivalence")、#secref("pf05-decimals-conversion")。 \
  *本章在全书的位置*：共通桥梁 / 把数轴向左延伸，合并整数与分数 → 有理数集合 $QQ$。 \
  *忘了可以回到*：若“$3 - 5$”会觉得“不能减”，请先回 #secref("pf02-add-subtract-undo") 重新看“减法是撤销”。
]

#side-hack[
  *本章路线*

  + 先让数轴向左延伸出负数，看清楚“负号 $!=$ 减号”。
  + 再用相反数和绝对值，把“方向”和“远近”分开记。
  + 最后把整数与分数合并到数轴上，正式引入有理数 $QQ$。

  *这座桥通向哪里*

  - 代数分支从一元一次方程开始就会大量出现负系数、负根。
  - 函数分支整张坐标系的“左半边”和“下半边”就是负方向。
  - 几何分支在建立坐标几何时，点的坐标也允许负值。
]

#include "01-number-line-extends-left.typ"
#include "02-opposite-and-absolute-value.typ"
#include "03-rational-numbers-on-line.typ"
