#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

== 相似·放缩·平行线几何 <ch:similarity-scale-parallel-line-geometry>

#blueprint[
  *难度*：★★★★☆ \
  *核心问题*：如果第 1 章的“全等”说的是*完全重合*，那么“同形状、不同大小”该怎么写成证明语言？平行线与相似之间是什么关系？相似比怎么从“边比”推到“面积比、体积比”？ \
  *需要先会*：#secref("pf08-parallel-transversal")、#secref("pf08-triangles-angle-sum")、#secref("cb01-ratio-basics")、#secref("ge01-congruence-correspondence")、#secref("ge01-sss-sas")。 \
  *本章在全书的位置*：几何分支第 2 章——把*刚性（锁死大小）*的全等放松为*相似（只锁形状）*；平行线是最常用的相似发生器。本章与第 1 章构成“锁形 vs 放缩”的双主线，向后通向第 4 章勾股、第 5 章变换与第 3c 域函数中的线性放缩。 \
  *忘了可以回到*：平行线相关的同位 / 内错 / 同旁内角请回 #secref("pf08-parallel-transversal")；比的化简、反比与合比请回 #secref("cb01-ratio-basics")。
]

#side-hack[
  *本章路线*

  + 把“平行线 $+$ 截线”的角关系压到三条引理（同位 / 内错 / 同旁内角），把它们练成“证平行 $<=>$ 证等角”的双向桥。
  + 在这之上发明*相似三角形的语言 $+$ AA 判定 $+$ 对应边比 $= k$*，一次把“形一样大小可缩”这件事讲透（SSS / SAS 相似不在本章单独立目，本书只把 AA 当首选判据）。
  + 最后把 $k$ 推到*周长比 $= k$、面积比 $= k^2$、体积比 $= k^3$*，并把这套放缩规律搬到*比例尺*、*影长测高*、*构造相似测距*等实际测量里。

  *这章通向哪里*

  - 第 3 章四边形 / 圆：对边平行、相似多边形、圆内比例线段处处用相似。
  - 第 4 章勾股：勾股定理的一种主流证法靠 *“直角三角形被斜边上的高分成两个相似三角形”*。
  - 3c 域函数：*“输入按 $k$ 放缩、输出按 $k$ 放缩”* 就是线性函数 / 正比例函数的几何版。
]

#include "01-parallel-lines-and-angle-lemmas.typ"
#include "02-similarity-and-ratio.typ"
#include "03-scale-and-proportion-in-figures.typ"
