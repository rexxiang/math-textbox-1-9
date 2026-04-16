
#import "@preview/cetz:0.4.2"

== 发明树总览

下面这棵「发明树」展示了全书知识点之间的依赖关系。每一条分支都是一条独立的发明链——你可以从树根开始，也可以选择任何一条你感兴趣的分支。

#v(0.5em)

#align(center)[
  #cetz.canvas(length: 1cm, {
    import cetz.draw: *

    // ─── helpers ──────────────────────────────────────
    let node(pos, label, w: 2.8, h: 0.7, fill-color: white, stroke-color: luma(120)) = {
      rect(
        (pos.at(0) - w / 2, pos.at(1) - h / 2),
        (pos.at(0) + w / 2, pos.at(1) + h / 2),
        radius: 4pt,
        fill: fill-color,
        stroke: 0.6pt + stroke-color,
      )
      content(pos, text(size: 8pt, label))
    }

    let arrow(from, to) = {
      line(from, to, stroke: 0.5pt + luma(140), mark: (end: ">", fill: luma(140)))
    }

    // ─── Colors ───────────────────────────────────────
    let c-primary = rgb("#E3F2FD")   // blue — primary school
    let c-middle  = rgb("#FFF3E0")   // orange — middle school
    let c-cap     = rgb("#E8F5E9")   // green — capstone
    let s-primary = rgb("#1565C0")
    let s-middle  = rgb("#EF6C00")
    let s-cap     = rgb("#2E7D32")

    // ─── Layout ───────────────────────────────────────
    // Row 0: root
    let root = (0, 0)
    // Row 1: primary school (3 nodes, y = -1.6)
    let ch1 = (-4, -1.8)
    let ch2 = (0, -1.8)
    let ch3 = (4, -1.8)
    // Row 2: middle school (5 nodes, y = -3.6)
    let ch4 = (-5.5, -3.8)
    let ch5 = (-2.5, -3.8)
    let ch6 = (0.5, -3.8)
    let ch7 = (3.5, -3.8)
    let ch8 = (6.5, -3.8)
    // Row 3: capstone
    let ch9 = (0, -5.6)

    // ─── Root node ────────────────────────────────────
    node(root, [*数学发明者手册*], w: 3.6, h: 0.8, fill-color: rgb("#F3E5F5"), stroke-color: rgb("#7B1FA2"))

    // ─── Primary school row ───────────────────────────
    node(ch1, [第 1 章 数的萌芽], fill-color: c-primary, stroke-color: s-primary)
    node(ch2, [第 2 章 分与合], fill-color: c-primary, stroke-color: s-primary)
    node(ch3, [第 3 章 比例世界], fill-color: c-primary, stroke-color: s-primary)

    // ─── Middle school row ────────────────────────────
    node(ch4, [第 4 章 负数的发明], w: 3.2, fill-color: c-middle, stroke-color: s-middle)
    node(ch5, [第 5 章 方程], fill-color: c-middle, stroke-color: s-middle)
    node(ch6, [第 6 章 形的逻辑], fill-color: c-middle, stroke-color: s-middle)
    node(ch7, [第 7 章 函数], fill-color: c-middle, stroke-color: s-middle)
    node(ch8, [第 8 章 数据侦探], fill-color: c-middle, stroke-color: s-middle)

    // ─── Capstone ─────────────────────────────────────
    node(ch9, [第 9 章 终章], fill-color: c-cap, stroke-color: s-cap)

    // ─── Arrows: root → primary ───────────────────────
    arrow((0, -0.4), (ch1.at(0), -1.8 + 0.35))
    arrow((0, -0.4), (ch2.at(0), -1.8 + 0.35))
    arrow((0, -0.4), (ch3.at(0), -1.8 + 0.35))

    // ─── Arrows: primary chain ────────────────────────
    arrow((ch1.at(0) + 1.4, ch1.at(1)), (ch2.at(0) - 1.4, ch2.at(1)))
    arrow((ch2.at(0) + 1.4, ch2.at(1)), (ch3.at(0) - 1.4, ch3.at(1)))

    // ─── Arrows: primary → middle school ──────────────
    arrow((ch1.at(0), -1.8 - 0.35), (ch4.at(0), -3.8 + 0.35))
    arrow((ch1.at(0), -1.8 - 0.35), (ch5.at(0), -3.8 + 0.35))
    arrow((ch2.at(0), -1.8 - 0.35), (ch5.at(0), -3.8 + 0.35))
    arrow((ch3.at(0), -1.8 - 0.35), (ch6.at(0), -3.8 + 0.35))
    arrow((ch3.at(0), -1.8 - 0.35), (ch7.at(0), -3.8 + 0.35))
    arrow((ch3.at(0), -1.8 - 0.35), (ch8.at(0), -3.8 + 0.35))

    // ─── Arrows: middle school chain ──────────────────
    arrow((ch4.at(0) + 1.6, ch4.at(1)), (ch5.at(0) - 1.4, ch5.at(1)))
    arrow((ch5.at(0) + 1.4, ch5.at(1)), (ch6.at(0) - 1.4, ch6.at(1)))
    arrow((ch6.at(0) + 1.4, ch6.at(1)), (ch7.at(0) - 1.4, ch7.at(1)))
    arrow((ch7.at(0) + 1.4, ch7.at(1)), (ch8.at(0) - 1.4, ch8.at(1)))

    // ─── Arrows: all → capstone ───────────────────────
    arrow((ch6.at(0), -3.8 - 0.35), (ch9.at(0), -5.6 + 0.35))

    // ─── Labels ───────────────────────────────────────
    content((-6.2, -1.8), text(size: 7pt, fill: s-primary)[*小学篇* \ 1-6 年级])
    content((-7.8, -3.8), text(size: 7pt, fill: s-middle)[*初中发明链* \ 7-9 年级])
  })
]

#v(0.5em)

#block(inset: (left: 1em), stroke: (left: 2pt + rgb("#1565C0")))[
  #text(size: 9pt)[
    #text(fill: rgb("#1565C0"), weight: "bold")[蓝色] = 小学篇（按年级渐进） #h(2em)
    #text(fill: rgb("#EF6C00"), weight: "bold")[橙色] = 初中发明链（按工具诞生逻辑） #h(2em)
    #text(fill: rgb("#2E7D32"), weight: "bold")[绿色] = 终章
  ]
]

你现在不需要理解所有分支——随着阅读推进，这棵树会在你脑海中一点点长出来。在本书的最后一章，我们会重新画出完整的发明树，届时你会发现：原来这些知识点之间有着如此紧密的联系！
