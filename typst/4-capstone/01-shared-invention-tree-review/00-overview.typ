#import "../../lib/theme-v2.typ": chapter-nav, chapter-route, side-hack, secref

== 共同知识地图回顾 <meta:shared-invention-tree-review>

还记得你发明的第一个工具吗？——数数。从那一刻起，工具树一路生长：加减乘除、分数、方程、函数、证明……现在回头看，这棵树已经长得相当茂盛了。这一章的任务，是帮你站在高处把整棵树看清楚。

#chapter-nav[
  *难度*：★★★☆☆ \
  *核心问题*：学到这里，全书的工具（公共基础 + 共通桥梁 + 四大分支）已经全部就位。如果把它们画在一张大图上，哪些是*多个分支反复用到*的、哪些只属于某一支？ \
  *需要先会*：公共基础全部（如 #secref("pf02-order-laws")、#secref("pf04-fraction-arithmetic")、#secref("pf07-perimeter-area")、#secref("pf08-coordinate-intuition")）、共通桥梁全部（如 #secref("cb01-ratio-basics")、#secref("cb04-rectangular-system")、#secref("cb05-letters-represent-numbers")、#secref("cb06-equality-properties")、#secref("cb07-real-number-line")）、四大分支的学习流程（代数、几何、函数、数据）。 \
  *本章在全书的位置*：全书综合入口——本章*不发明*任何新工具，只负责把四支工具*连成网*，方便你在任何一题前先确认“我手里该有哪些工具”。
]

#chapter-route[

  + §1 *公共基础与共通桥梁的跨分支复用*：一张“谁在哪里用到了我”的大表，让你看见像“字母代替数”这种工具是如何渗透进四个分支的。
  + §2 *四支分支的发明树并排回看*：把代数 / 几何 / 函数 / 数据四支总结里的发明树在更高抽象层串联，看见它们共用着同一组动作（命名 → 选规则 → 验证 → 推广）。
  + §3 *跨分支同源工具对照*：相似 ↔ 一次函数 ↔ 比例、勾股 ↔ 距离公式 ↔ 方差结构、方程 ↔ 函数零点 ↔ 概率事件——五组同源工具一次摆清。
]

#side-hack[
  *☞ 4 分支总结的综合题入口*

  如果你想在进入终章前把每个分支的工具系统地复习一遍，先做下面 4 套综合题：

  - 代数：#secref("meta:al-synthesis-problems")
  - 几何：#secref("meta:ge-synthesis-problems")
  - 函数：#secref("meta:fn-synthesis-problems")
  - 数据：#secref("meta:dt-synthesis-problems")
]

#include "01-shared-tools-and-bridges.typ"
#include "02-four-branch-invention-trees.typ"
#include "03-cross-branch-bridges.typ"
