#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

== 回补路径：哪里不稳就回哪里 <tool:pf09-repair-routes>

#blueprint[
  *回补路径表*

  按“上一节里没答对的题”定位到回补点，再决定继续前进或先补稳。

  #table(
    columns: (1fr, 1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*卡在哪一类题*], [*常见原因*], [*忘了可以回到*],
    [小数 / 分数 / 百分数互化乱], [没把它们看成“同一个量的不同写法”], [#secref("pf04-fraction-equivalence")、#secref("pf05-decimals-conversion")],
    [混合运算顺序出错], [忘了先乘除、后加减，或不会用运算律凑整], [#secref("pf02-order-laws")],
    [带单位的题立刻乱], [没先把单位统一再算], [#secref("pf05-units-measurement")],
    [比和比例不分“部分 : 整体 / 部分 : 部分”], [把“占整体 $x%$”和“两部分之比”混为一谈], [#secref("pf04-fraction-comparison")、#secref("pf05-decimals-conversion")],
    [周长 / 面积 / 体积单位出错], [答案单位漏写“平方”“立方”], [#secref("pf07-perimeter-area")、#secref("pf07-volume")],
    [角的大小判断不稳], [没拿“直角 $=90°$、平角 $=180°$”当参照], [#secref("pf07-angles")],
    [横截线图上分不清同位 / 内错 / 同旁内角], [没把“在两线之间”“同侧 / 异侧”两条判据分开记], [#secref("pf08-parallel-transversal")],
    [三角形算角漏了“三角和 = $180°$”], [急着套等腰性质前忘了总和约束], [#secref("pf08-triangles-angle-sum")],
    [坐标读写顺序颠倒], [没坚持“先横后纵”的约定], [#secref("pf08-coordinate-intuition")],
  )
]

#side-hack[
  *只补短板，不重刷全章*

  如果一项不过关，回到对应的那一小节：重读 `#blueprint` 的核心陈述 → 再做那一节的“试一试”→ 最后挑几道“应用”做。不需要把整章从头再过。
]

#blueprint[
  *桥梁层即将登场的新旧对照*

  共通桥梁（Part II）里的 6 座桥梁会反复征用公共基础里的旧工具：

  #table(
    columns: (1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*桥梁主题*], [*被反复征用的旧工具*],
    [比 / 比例 / 百分比], [#secref("pf04-fraction-equivalence")、#secref("pf04-fraction-comparison")、#secref("pf05-decimals-conversion")],
    [数轴与负数], [#secref("pf01-decimal-system")、#secref("pf02-add-subtract-undo")],
    [坐标], [#secref("pf08-coordinate-intuition")、#secref("pf07-angles")],
    [用字母表示数], [#secref("pf02-order-laws")、#secref("pf02-mul-div-structure")],
    [方程 = 平衡], [#secref("pf02-order-laws")、#secref("pf04-fraction-arithmetic")],
    [平方根与无理数入门], [#secref("pf07-perimeter-area")、#secref("pf07-volume")],
  )

  换句话说：本章不是要教新公式，而是让你在进入桥梁前，能随时把这些旧工具调出来。
]

#blueprint[
  *可以继续前进的最终信号*

  - 能说出自己上一节哪些题做错了、各自属于四条主干里的哪一条。
  - 对照“回补路径表”，能立刻指向哪一节回补，而不是重刷整章。
  - 在诊断题里，即便做错，也能在看答案后说清“我当时该调用哪条旧工具”。

  如果这三条你都能做到，你已经准备好进入共通桥梁层。
]
