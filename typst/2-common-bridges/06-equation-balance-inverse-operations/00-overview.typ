#import "../../lib/theme-v2.typ": chapter-nav, chapter-route, side-hack, secref

== 方程：平衡与反向操作 <ch:equation-balance-inverse-operations>

想象一架老式天平：左边放着一个不知道多重的铁块和两个砝码，右边放着五个砝码，天平恰好平衡。你不能直接称那个铁块，但你可以两边同时拿掉同样多的砝码，最后让铁块独自待在一边——解方程的本质就是这件事。

#chapter-nav[
  *难度*：★★★☆☆ \
  *核心问题*：一条“含字母的等式”到底是什么？怎样一步步把那个字母“请出来”？ \
  *需要先会*：#secref("pf02-order-laws")、#secref("pf02-add-subtract-undo")、#secref("cb05-letters-represent-numbers")、#secref("cb02-opposite-and-absolute")。 \
  *本章在全书的位置*：共通桥梁 / 从“代数式”走到“方程”：让字母变成待解的未知量。
]

#chapter-route[

  + 先把方程看成“两边必须等重的天平”，弄清什么叫解方程。
  + 再把“等式两边同加/同减/同乘/同除”总结为等式性质，这是所有变形的地基。
  + 最后用反向操作把 $a x + b = c$（简单系数）一步步解出来。
]

#side-hack[
  *入章自检*——以下几道小题只用前面章节学过的知识。如果卡住，请先回到上面"需要先会"的链接补一补。

  + 下列哪些是*等式*？哪些只是*代数式*？(a) $3a + 7$；(b) $3a + 7 = 10$；(c) $5 = 5$；(d) $x > 2$；(e) $2x - 1$。
  + 已知 $a + 5 = 12$。如果想让 $a$ 单独留在等号一侧，下一步应当做什么？再追问：你做的这一步是"两边一起做"还是"只动一边"？
  + 把这两件事区分清楚：求 $7 + ? = 12$ 里的 $?$，与计算表达式 $12 - 7$。它们的*问法*与*答的对象*有何不同？
]

#include "01-equation-as-balance.typ"
#include "02-equality-properties.typ"
#include "03-solving-linear-one-variable.typ"
