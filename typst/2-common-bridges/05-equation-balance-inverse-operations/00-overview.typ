#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

= 方程：平衡与反向操作 <ch:equation-balance-inverse-operations>

#blueprint[
  *难度*：★★★☆☆ \
  *核心问题*：一条“含字母的等式”到底是什么？怎样一步步把那个字母“请出来”？ \
  *需要先会*：#secref("pf02-order-laws")、#secref("pf02-add-subtract-undo")、#secref("cb04-letters-represent-numbers")、#secref("cb02-opposite-and-absolute")。 \
  *本章在全书的位置*：共通桥梁 / 从“代数式”走到“方程”：让字母变成待解的未知量。 \
  *忘了可以回到*：若“字母代替数”还不顺，回 #secref("cb04-letters-represent-numbers")。
]

#side-hack[
  *本章路线*

  + 先把方程看成“两边必须等重的天平”，弄清什么叫解方程。
  + 再把“等式两边同加/同减/同乘/同除”总结为等式性质，这是所有变形的地基。
  + 最后用反向操作把 $a x + b = c$（简单系数）一步步解出来。

  *这座桥通向哪里*

  - 代数分支：整章“一元一次方程 + 二元一次方程组 + 一元二次方程”都以本章为起点。
  - 函数分支：$f(x) = 0$ 的根就是本节方程的图形含义。
  - 几何分支：设边长、设角度的方程思想是解几何题的常用方法。
]

#include "01-equation-as-balance.typ"
#include "02-equality-properties.typ"
#include "03-solving-linear-one-variable.typ"
