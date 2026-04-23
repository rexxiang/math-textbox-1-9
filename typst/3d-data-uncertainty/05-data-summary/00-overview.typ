#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

== 数据分支总结 <ch:data-summary>

#blueprint[
  *难度*：★★★★☆ \
  *核心问题*：从“*一张杂乱的数字表*”到“*从部分估计整体*”——这条数据分支学习流程的骨架是什么？拿到任意一个“面对一堆数据该怎么办”的问题，你心里应该立刻浮现哪几种工具、哪一套流程？如果中途某处卡住，该回哪一章？ \
  *需要先会*：#secref("ch:data-displays-descriptive-statistics")、#secref("ch:frequency-histograms-variance")、#secref("ch:sample-space-probability-experimental-frequency")、#secref("ch:population-samples-estimation")。 \
  *本章在全书的位置*：数据分支*总结*——它不发明新工具，而是把全支的 $12$ 个工具串起来看清“*描述 $->$ 压缩 $->$ 不确定 $->$ 推断*”这条主线。 \
  *忘了可以回到*：本章 §2 会给出一组混合自测，显式注明每题用到了哪些知识链。
]

#side-hack[
  *本章路线*

  + §1 *数据分支速查卡*：$12$ 个工具按“描述 / 压缩 / 不确定 / 推断”四层集中复核。
  + §2 *混合自测*——每题都显式注明它用到了哪些知识链。答案与讲解放在本章回顾。

  *这章通向哪里*

  - 代数分支：样本均值、频率、比例的所有运算都是代数分支工具的再利用。
  - 函数分支：抽样误差与 $n$ 的关系是一个“$n -> infinity$ 时误差 $-> 0$”的函数现象。
  - 终章综合：把数据工具和代数、几何、函数工具一起使用解真实世界问题。
  - 高中：抽样分布、正态分布、置信区间、假设检验、相关与回归——都是这部分的延续。
]

#include "01-data-checklist.typ"
#include "02-data-mixed-self-test.typ"
#include "99-review.typ"
