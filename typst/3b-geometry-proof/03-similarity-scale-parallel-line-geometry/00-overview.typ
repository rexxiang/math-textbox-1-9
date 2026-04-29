#import "../../lib/theme-v2.typ": chapter-nav, chapter-route, side-hack, secref

== 相似·放缩·平行线几何 <ch:similarity-scale-parallel-line-geometry>

把一张照片放大 200%，形状没变，尺寸翻倍——这种"同形不同大"的关系，日常里随处可见。可是，怎样用数学把"形状一样"精确地写下来？放大后面积是原来的几倍？这一章就从这个问题出发。

#chapter-nav[
  *难度*：★★★★☆ \
  *核心问题*：如果第 1 章的“全等”说的是*完全重合*，那么“同形状、不同大小”该怎么写成证明语言？平行线与相似之间是什么关系？相似比怎么从“边比”推到“面积比、体积比”？ \
  *需要先会*：#secref("pf08-parallel-transversal")、#secref("pf08-triangles-angle-sum")、#secref("cb01-ratio-basics")、#secref("ge01-congruence-correspondence")、#secref("ge01-sss-sas")。 \
  *本章在全书的位置*：几何分支第 3 章——把*刚性（锁死大小）*的全等放松为*相似（只锁形状）*；平行线是最常用的相似发生器。本章与第 1 章构成“锁形 vs 放缩”的双主线，向后通向第 6 章勾股、第 7 章变换与第 3c 域函数中的线性放缩。
]

#chapter-route[

  + 把“平行线 $+$ 截线”的角关系压到三条引理（同位 / 内错 / 同旁内角），把它们练成“证平行 $<=>$ 证等角”的双向桥。
  + 在这之上发明*相似三角形的语言 $+$ AA 判定 $+$ 对应边比 $= k$*，一次把“形一样大小可缩”这件事讲透（SSS / SAS 相似不在本章单独立目，本书只把 AA 当首选判据）。
  + 最后把 $k$ 推到*周长比 $= k$、面积比 $= k^2$、体积比 $= k^3$*，并把这套放缩规律搬到*比例尺*、*影长测高*、*构造相似测距*等实际测量里。
]

#side-hack[
  *入章自检*——以下几道小题只用前面章节学过的知识。如果卡住，请先回到上面"需要先会"的链接补一补。

  + 如果两个三角形全等，它们的对应边有什么关系？
  + 化简比 $12 : 8$。
  + 两条平行线被一条直线所截，一对内错角相等还是互补？
]

#include "01-parallel-lines-and-angle-lemmas.typ"
#include "02-similarity-and-ratio.typ"
#include "03-scale-and-proportion-in-figures.typ"
