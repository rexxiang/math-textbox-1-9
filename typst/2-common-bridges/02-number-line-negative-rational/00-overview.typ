#import "../../lib/theme-v2.typ": chapter-nav, chapter-route, side-hack, secref

== 数轴、负数与有理数 <ch:number-line-negative-rational>

想象你站在数轴的 $0$ 上，往右走三步是 $3$。那如果往左走三步呢？那个位置叫什么名字？为了给"左边"的数也发一张身份证，我们需要负数。一旦负数搬进数轴，原来"不够减"的问题就有了正式答案。

#chapter-nav[
  *难度*：★★★☆☆ \
  *核心问题*：原点左边那一段空白里装着什么？把“负的量”塞进数轴以后，原来的算术会不会乱掉？ \
  *需要先会*：#secref("pf01-decimal-system")、#secref("pf02-add-subtract-undo")、#secref("pf04-fraction-equivalence")、#secref("pf05-decimals-conversion")。 \
  *本章在全书的位置*：共通桥梁 / 把数轴向左延伸，合并整数与分数 → 有理数集合 $QQ$。
]

#chapter-route[

  + 先让数轴向左延伸出负数，看清楚“负号 $!=$ 减号”。
  + 再用相反数和绝对值，把“方向”和“远近”分开记。
  + 最后把整数与分数合并到数轴上，正式引入有理数 $QQ$。
]

#side-hack[
  *入章自检*——这三道是诊断题，针对进入"负数"前最容易翻车的旧工具。卡住请先回到上面"需要先会"的链接补一补。

  + 在数轴上 $-3$ 和 $-5$ 哪个更靠右？哪个"更大"？（如果你脱口而出"$5$ 比 $3$ 大，所以 $-5$ 比 $-3$ 大"，正是本章 §1 要纠正的高频错。）
  + $2 / 4$ 和 $1 / 2$ 是同一个数吗？$-2 / 4$ 和 $-1 / 2$ 呢？（如果第二问你犹豫了，说明"分数等价"碰到负号还没接稳——本章 §3 重点。）
  + $3 - 5$ 你写得出答案吗？写得出请先答下来；写不出，记下这个疑问——本章 §1 给的就是它的正式解。
]

#include "01-number-line-extends-left.typ"
#include "02-opposite-and-absolute-value.typ"
#include "03-rational-numbers-on-line.typ"
