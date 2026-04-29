#import "../../lib/theme-v2.typ": chapter-nav, chapter-route, side-hack, secref

== 判定深化与证明书写 <ch:advanced-criteria-and-proof-writing>

在法庭上，"看起来是对的"不能当证据。几何也一样：你画的图再漂亮，如果说不清每一步的理由，就不算证明。这一章要做两件事——把判定法家族补全，然后学会把证明写成别人能逐行检查的格式。

#chapter-nav[
  *难度*：★★★★☆ \
  *核心问题*：SSS 和 SAS 之外还有没有更多判定法？"两角一边"能锁死三角形吗？SSA 又为什么不行？拿到判定法之后，怎么把证明写成别人能一行一行检查的两栏格式？ \
  *需要先会*：#secref("ge01-congruence-correspondence")、#secref("ge01-sss-sas")、#secref("pf08-triangles-angle-sum")。 \
  *本章在全书的位置*：几何分支第 2 章——把第 1 章的两条判定法扩充到 ASA / AAS，划清 SSA 的反例边界，并固化"先凑判定 → 再读对应"的两步证明书写范式。
]

#chapter-route[

  + 补齐判定法家族：ASA（两角夹边）/ AAS（两角对边）成立，SSA（两边对角）不成立——用一个可以摆出两种三角形的反例说清楚。
  + 固化两步证明模版："先证全等 → 再读对应元素"是初中几何超过一半证明题的通用骨架；把它写成每行"陈述 $|$ 理由"的两栏格式。
]

#side-hack[
  *入章自检*——以下几道小题只用前面章节学过的知识。如果卡住，请先回到上面"需要先会"的链接补一补。

  + 已知 $triangle A B C$ 与 $triangle D E F$ 满足 $A B = D E = 5$、$B C = E F = 7$、$angle A = angle D$。能直接由 SAS 判 $triangle A B C tilde.eq triangle D E F$ 吗？为什么？（提示：SAS 里的"夹角"是哪两条边的夹角？）
  + 若两个三角形的三条边分别为 $3, 4, 5$ 和 $3, 4, 5$，它们一定全等吗？是哪条判定法？这条判定法对*所有*三组边都成立吗，还是要再加条件？
  + 一个三角形已知*两个角*分别是 $40 degree$ 和 $80 degree$，但*没给任何边*。这样能确定它的形状（差一个全等关系）吗？能确定它的大小吗？
]

#include "01-asa-aas-ssa-counterexample.typ"
#include "02-two-step-proof-chain.typ"
