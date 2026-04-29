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
  *入章自检*——以下几道小题只用前面章节学过的知识。如果卡住，请先回到上面"需要先会"的链接补一补。

  + 在数轴上，$3$ 和 $5$ 哪个更靠右？
  + $2 slash 4$ 和 $1 slash 2$ 是同一个数吗？
  + $3 - 5$，你觉得结果应该是多少？（如果觉得"减不了"也没关系，记下这个疑问。）
]

#include "01-number-line-extends-left.typ"
#include "02-opposite-and-absolute-value.typ"
#include "03-rational-numbers-on-line.typ"
