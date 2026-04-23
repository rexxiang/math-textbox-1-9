#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

= 全等·对应·证明链 <ch:congruence-correspondence-proof-chains>

#blueprint[
  *难度*：★★★★☆ \
  *核心问题*：当我们说两个三角形“一样”时，到底在说什么？怎样把这种“一样”写成可以一步步验证、可以传递使用的证明？ \
  *需要先会*：#secref("pf06-polygons-and-circle")、#secref("pf07-angles")、#secref("pf08-parallel-transversal")、#secref("pf08-triangles-angle-sum")。 \
  *本章在全书的位置*：几何分支第一章——把小学的“图形认识”正式升级为可以写出来的*证明*。本章与后续相似（#secref("ch:similarity-scale-parallel-line-geometry")）构成“锁形 vs 放缩”的两条主线。 \
  *忘了可以回到*：若“平行线被截线产生什么角关系”还不稳，请回 #secref("pf08-parallel-transversal")；若“三角形内角和”忘了，请回 #secref("pf08-triangles-angle-sum")。
]

#side-hack[
  *本章路线*

  + 先把“全等”从“看起来一样”压成*对应边、对应角一一相等*这套可写下来的语言，并明确字母顺序决定对应表。
  + 再发明*判定法家族*：上一节给 SSS / SAS 两位主将（#secref("ge01-sss-sas")），下一节补齐 ASA / AAS 两位副将并公开除名 SSA（#secref("ge01-asa-aas-ssa")）。
  + 最后固化两步证明模版：*先证全等 → 再读对应元素* 是初中几何超过一半证明题的通用骨架。

  *这章通向哪里*

  - 第 2 章相似：把“完全重合”松动为“同形不同大”，同一套证明链继续用。
  - 第 3 章四边形 / 圆：所有对边相等、对角线平分、圆内等角都靠本章的全等 + 对应打底。
  - 第 4 章勾股、第 5 章变换：证明链的写法不再重新发明，本章已经定型。
]

#include "01-congruence-and-correspondence.typ"
#include "02-sss-sas-criteria.typ"
#include "03-asa-aas-ssa-counterexample.typ"
#include "04-two-step-proof-chain.typ"
