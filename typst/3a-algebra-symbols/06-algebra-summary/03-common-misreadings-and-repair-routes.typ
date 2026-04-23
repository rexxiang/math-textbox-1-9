#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

== 代数学完后的常见误读与查漏指引 <meta:al-repair-routes>

#blueprint[
  *代数最容易出现的 $10$ 类误读*

  #table(
    columns: (1.3fr, 1.5fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*误读*], [*背后是哪条概念没稳*], [*忘了可以回到*],
    [合并同类项时只看系数，忘了“字母部分必须相同”], [“同类项”的定义], [#secref("al01-terms-like")],
    [去括号时减号后的项忘了变号], [分配律正用里的符号规则], [#secref("al01-add-subtract-polynomials")、#secref("al02-distributive-rewrite")],
    [把乘法展开和因式分解当作两件独立的事], [分配律是一条双向公路], [#secref("al02-distributive-rewrite")、#secref("al02-factorization-as-reverse")],
    [分式约分后忘了保留“分母不为零”的限制], [分式的定义域约束], [#secref("al03-rational-expression-structure")],
    [解分式方程不验根], [“去分母扩大定义域”这件事没内化], [#secref("al03-rational-equations-and-extraneous-roots")],
    [解一次方程时移项不变号 / 系数化 1 漏除一项], [等式性质与五步流程], [#secref("al04-linear-one-variable")、#secref("cb05-equality-properties")],
    [建模时凭直觉套公式，不显式写“设元 + 等量关系”], [建模三步流程没内化], [#secref("al04-modeling-word-problems")],
    [解二次方程时开方漏写 $plus.minus$、或把 $b$ 的负号带错], [求根公式来自配方法 + 开方时的两个方向], [#secref("al05-quadratic-solving")],
    [用韦达定理却不先检查 $Delta >= 0$], [韦达的使用前提], [#secref("al05-vieta")],
    [不等式乘 / 除负数时忘了反转方向], [不等号“方向性”的直观], [#secref("al05-linear-inequalities")],
  )
]

#side-hack[
  *只补短板，不整章重刷*

  - 每错一道题，先问自己：“我在哪一条误读上踩了雷？”——定位到上表一行。
  - 按那行忘了可以回到列标注的章节，*只重读*对应那节的方法总结与常见陷阱，然后做一遍该节的应用两到三道。
  - 做完再回到本章 §2 的综合题试一次；如果还卡，再按新卡点查上表。

  这套循环比“重刷一整本”要快得多，而且更容易暴露真正的问题点。
]

#blueprint[
  *分支过关的信号*

  能同时做到以下五条，这部分就算正式过关：

  + 拿到任意一个*恒等变形题*，能判断它是“乘开”还是“提回”，并选准 #secref("al02-distributive-rewrite") / #secref("al02-factorization-as-reverse") 里的哪个动作。
  + 拿到任意一元一次方程（含分母、含括号、双边未知量），能*不查书*按五步流程解出来，并做代回检验。
  + 拿到任意分式方程，能*主动*意识到“这次的解是否在原方程定义域内”，并把验根写进解题步骤。
  + 拿到任意一元二次方程，能按“开方 → 分解 → 求根公式”的三句自问稳定选路线；用 $Delta$ 判根数目。
  + 拿到任意一元一次不等式，能立即回答“这一步我乘 / 除的是正数还是负数”；懂 $|x|$ 的距离直观。
]

#side-hack[
  *代数与其他部分的衔接*

  - 往几何分支去：*解未知边 / 角* 时列的是前面学过的方程（#secref("al04-linear-one-variable") / #secref("al05-quadratic-solving")）；记得最后*合理性检验*——负长度舍掉。
  - 往函数分支去：$f(x) = c$ 相当于解方程；$f(x) > c$ 相当于解不等式。函数的“定义域”往往由分式与平方根的*非负 / 非零*条件决定，正是前面学的工具。
  - 往数据分支去：样本平均、中位数、概率里的“至少 / 不超过”都会落成一元一次不等式；“可能取值集”是有限情形下不等式的再利用。
]
