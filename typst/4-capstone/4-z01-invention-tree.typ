#import "../lib/theme-v2.typ": history-note, secref
#import "@preview/cetz:0.4.2"

== 完整知识地图

如果把整本书看成一次发明旅程，那么终章最重要的工作，就是把“先学这个、再学那个”的记忆，改写成“这些工具为什么会从同一块共同地基长出来”的理解。

=== 发明路径总览

#table(
  columns: (auto, auto, 1fr),
  inset: 6pt,
  stroke: 0.4pt,
  table.header([*层级*], [*章节位置*], [*这一层真正完成了什么*]),
  [共同地基], [1--4], [把数、分数、比与百分数、图形、坐标、数轴、字母和平衡观连成同一种基础语言。],
  [总结], [5], [在 #secref("5.1") 与 #secref("5.2") 里确认前面学过的知识已经能混合使用，再决定进入哪一条专题深化路线。],
  [专题深化（代数）], [6], [把模板、化简、方程、方程组、二次关系和范围约束打磨成系统工具。],
  [专题深化（几何）], [7], [把读图直觉推进成证明、测量、变换与表达；三角比测量也并入这一支。],
  [专题深化（函数）], [8], [把表格、公式、图象、情境统一成变化模型，并比较不同模型的适用条件。],
  [专题深化（数据）], [9], [把收集、整理、代表值、波动、概率和样本估计接成完整判断链。],
  [重新会合], [10], [回看整棵树如何互相支撑，并把“我是发明者”这件事带向书外。],
)

=== 树不是一条链

#v(0.5em)

#align(center)[
  #cetz.canvas(length: 1cm, {
    import cetz.draw: *

    let node(pos, label, w: 3.2, h: 0.95, fill-color: white, stroke-color: luma(120)) = {
      rect(
        (pos.at(0) - w / 2, pos.at(1) - h / 2),
        (pos.at(0) + w / 2, pos.at(1) + h / 2),
        radius: 4pt,
        fill: fill-color,
        stroke: 0.6pt + stroke-color,
      )
      content(pos, text(size: 7.3pt, label))
    }

    let arrow(from, to, color: luma(140)) = {
      line(from, to, stroke: 0.5pt + color, mark: (end: ">", fill: color))
    }

    let c-trunk = rgb("#E3F2FD")
    let c-gate = rgb("#FFF3E0")
    let c-alg = rgb("#FDEBD0")
    let c-geo = rgb("#F3E5F5")
    let c-func = rgb("#E0F7FA")
    let c-data = rgb("#E8F5E9")
    let c-cap = rgb("#FFF9C4")

    let s-trunk = rgb("#1565C0")
    let s-gate = rgb("#EF6C00")
    let s-alg = rgb("#E65100")
    let s-geo = rgb("#7B1FA2")
    let s-func = rgb("#00838F")
    let s-data = rgb("#2E7D32")
    let s-cap = rgb("#F57F17")

    let t1 = (0, 0)
    let t2 = (0, -1.8)
    let t3 = (0, -3.6)
    let t4 = (0, -5.4)
    let gate = (0, -7.4)
    let b1 = (-6.3, -9.8)
    let b2 = (-2.1, -9.8)
    let b3 = (2.1, -9.8)
    let b4 = (6.3, -9.8)
    let cap = (0, -12.3)

    node(t1, [*1 共同地基* \ 数与运算的底座], fill-color: c-trunk, stroke-color: s-trunk)
    node(t2, [*2 共同地基* \ 分数、比与百分数], fill-color: c-trunk, stroke-color: s-trunk)
    node(t3, [*3 共同地基* \ 图形、角、坐标入口], fill-color: c-trunk, stroke-color: s-trunk)
    node(t4, [*4 共同地基* \ 数轴、字母、平衡], fill-color: c-trunk, stroke-color: s-trunk)
    node(gate, [*5 总结* \ 先连网，再分流], fill-color: c-gate, stroke-color: s-gate)

    node(b1, [*6 代数深化* \ 化简、方程、范围], fill-color: c-alg, stroke-color: s-alg)
    node(b2, [*7 几何深化* \ 证明、测量、变换], fill-color: c-geo, stroke-color: s-geo)
    node(b3, [*8 函数模型* \ 表格·公式·图象], fill-color: c-func, stroke-color: s-func)
    node(b4, [*9 数据统计* \ 整理、判断、估计], fill-color: c-data, stroke-color: s-data)

    node(cap, [*10 重新会合* \ 树形视角与继续生长], w: 3.8, fill-color: c-cap, stroke-color: s-cap)

    arrow((0, -0.5), (0, -1.3), color: s-trunk)
    arrow((0, -2.3), (0, -3.1), color: s-trunk)
    arrow((0, -4.1), (0, -4.9), color: s-trunk)
    arrow((0, -5.9), (0, -6.9), color: s-gate)

    arrow((-0.9, -7.9), (-5.2, -9.2), color: s-alg)
    arrow((-0.3, -7.9), (-1.6, -9.2), color: s-geo)
    arrow((0.3, -7.9), (1.6, -9.2), color: s-func)
    arrow((0.9, -7.9), (5.2, -9.2), color: s-data)

    arrow((-5.0, -10.4), (-0.9, -11.7), color: s-cap)
    arrow((-1.4, -10.4), (-0.3, -11.7), color: s-cap)
    arrow((1.4, -10.4), (0.3, -11.7), color: s-cap)
    arrow((5.0, -10.4), (0.9, -11.7), color: s-cap)
  })
]

#v(0.5em)

#block(inset: (left: 1em), stroke: (left: 2pt + rgb("#F57F17")))[
  #text(size: 9pt)[
    这张图把第五章画成一次“总结”，而不是第五个继续往前排的普通节点：它的任务是把共同地基收束、检查、分流。第六到第九章并排出现，因为它们是*并列的专题深化路线*，不是一条旧式单行道上的连续车站。
  ]
]

=== 每条专题深化路线都在重复同一种发明动作

- *代数深化*：在 #secref("c07-polynomial") 到 #secref("c45-inequality") 里，你不断把“关系写出来再操作”的能力做得更稳，从模板走到求解，从求一个数走到限制一整个范围。
- *几何深化*：在 #secref("d01-congruence-definition") 到 #secref("d37-regular-polygon-inscribed") 里，你把“看起来对”推进成“必须如此”，又把测量问题接到相似、勾股、三角比与场景测量上；这里的三角比在 #secref("d26-trigonometric-ratios")，而仰角、俯角、坡度等应用安放在 #secref("d29-elevation-depression")，一起组成几何测量链的一部分。
- *函数模型*：在 #secref("e01-function-concept") 到 #secref("e08-additive-growth") 里，你不断比较“怎样变化”，把比例、坐标、公式和图象收进同一个模型视角。
- *数据统计*：在 #secref("f01-frequency-count") 到 #secref("f16-population-sample") 里，你面对的不是确定答案，而是如何从不完整的信息里做出更稳的判断。

所以，终章不是说“数学终于讲完了”，而是说：你已经看见这棵树真正的长法。以后再遇到新工具时，你会先问它诞生于什么困境、依赖哪些旧发明、又会长出哪一条新分支。

#history-note[
  人类数学史本来就不是一条只有一个方向的单线：代数、几何、函数、统计都曾在不同问题里各自生长，又不断回头借用彼此的语言。你在这本书里重演的，也正是这种“先分化，再会合，再继续分化”的发明过程。
]
