#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

== 判定深化与证明书写 <ch:advanced-criteria-and-proof-writing>

在法庭上，"看起来是对的"不能当证据。几何也一样：你画的图再漂亮，如果说不清每一步的理由，就不算证明。这一章要做两件事——把判定法家族补全，然后学会把证明写成别人能逐行检查的格式。

#blueprint[
  *难度*：★★★★☆ \
  *核心问题*：SSS 和 SAS 之外还有没有更多判定法？"两角一边"能锁死三角形吗？SSA 又为什么不行？拿到判定法之后，怎么把证明写成别人能一行一行检查的两栏格式？ \
  *需要先会*：#secref("ge01-congruence-correspondence")、#secref("ge01-sss-sas")、#secref("pf08-triangles-angle-sum")。 \
  *本章在全书的位置*：几何分支第 2 章——把第 1 章的两条判定法扩充到 ASA / AAS，划清 SSA 的反例边界，并固化"先凑判定 → 再读对应"的两步证明书写范式。 \
  *忘了可以回到*：若"SSS / SAS 怎么用"不稳，请回 #secref("ge01-sss-sas")；若"对应关系怎么读"忘了，请回 #secref("ge01-congruence-correspondence")。
]

#side-hack[
  *本章路线*

  + 补齐判定法家族：ASA（两角夹边）/ AAS（两角对边）成立，SSA（两边对角）不成立——用一个可以摆出两种三角形的反例说清楚。
  + 固化两步证明模版："先证全等 → 再读对应元素"是初中几何超过一半证明题的通用骨架；把它写成每行"陈述 $|$ 理由"的两栏格式。

  *这章通向哪里*

  - 第 3 章相似：判定法从"全等"松动到"相似"，但"先判定、再读对应"的证明骨架不变。
  - 第 4 章四边形 / 圆：四边形性质、圆内等角的证明几乎都用本章的两步模版。
  - 第 8 章几何总结：两栏证明格式贯穿整个几何分支。
]

#side-hack[
  *入章自检*——以下几道小题只用前面章节学过的知识。如果卡住，请先按上面"忘了可以回到"的指引补一补。

  + 若 $triangle A B C tilde.eq triangle D E F$，且 $A B = D E$、$B C = E F$、$A C = D F$，这用的是哪条判定法？
  + 一个三角形两个角分别是 $40 degree$ 和 $80 degree$，第三个角是多少？
  + $triangle A B C tilde.eq triangle D E F$ 的字母顺序告诉你哪些对应关系？
]

#include "01-asa-aas-ssa-counterexample.typ"
#include "02-two-step-proof-chain.typ"
