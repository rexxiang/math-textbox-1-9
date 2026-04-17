#import "@preview/cetz:0.4.2"

== 全书结构地图

下面这张图不是目录页的逐项翻版，而是一张*结构导航图*：你可以用它来理解整本书先怎样搭共同主干，再怎样经过基础总闸门，接着向不同专题深化，最后在终章综合里重新会合。

#v(0.5em)

#align(center)[
  #cetz.canvas(length: 1cm, {
    import cetz.draw: *

    let node(pos, label, w: 2.7, h: 0.9, fill-color: white, stroke-color: luma(120)) = {
      rect(
        (pos.at(0) - w / 2, pos.at(1) - h / 2),
        (pos.at(0) + w / 2, pos.at(1) + h / 2),
        radius: 4pt,
        fill: fill-color,
        stroke: 0.6pt + stroke-color,
      )
      content(pos, text(size: 7.5pt, label))
    }

    let arrow(from, to, stroke-color: luma(140)) = {
      line(from, to, stroke: 0.5pt + stroke-color, mark: (end: ">", fill: stroke-color))
    }

    let c-root   = rgb("#FFF9C4")
    let c-trunk  = rgb("#E3F2FD")
    let c-gate   = rgb("#F3E5F5")
    let c-branch = rgb("#E8F5E9")
    let c-end    = rgb("#FFF3E0")

    let s-root   = rgb("#F57F17")
    let s-trunk  = rgb("#1565C0")
    let s-gate   = rgb("#7B1FA2")
    let s-branch = rgb("#2E7D32")
    let s-end    = rgb("#EF6C00")

    let root = (0, 0)

    let t1 = (-6, -2.1)
    let t2 = (-2, -2.1)
    let t3 = (2, -2.1)
    let t4 = (6, -2.1)

    let gate = (0, -4.4)

    let b1 = (-6, -6.8)
    let b2 = (-2, -6.8)
    let b3 = (2, -6.8)
    let b4 = (6, -6.8)

    let end = (0, -9.1)

    node(root, [*数学发明者手册* \ 全书结构图], w: 3.8, h: 1.0, fill-color: c-root, stroke-color: s-root)

    node(t1, [*数的萌芽*], fill-color: c-trunk, stroke-color: s-trunk)
    node(t2, [*分数、比与百分数基础*], w: 3.5, fill-color: c-trunk, stroke-color: s-trunk)
    node(t3, [*几何基础*], fill-color: c-trunk, stroke-color: s-trunk)
    node(t4, [*数轴与代数桥*], w: 3.1, fill-color: c-trunk, stroke-color: s-trunk)

    node(gate, [*基础总闸门* \ 把共同主干重新连成网], w: 4.0, h: 1.0, fill-color: c-gate, stroke-color: s-gate)

    node(b1, [*代数深化*], fill-color: c-branch, stroke-color: s-branch)
    node(b2, [*几何深化*], fill-color: c-branch, stroke-color: s-branch)
    node(b3, [*函数模型*], fill-color: c-branch, stroke-color: s-branch)
    node(b4, [*数据统计*], fill-color: c-branch, stroke-color: s-branch)

    node(end, [*终章综合* \ 把分支重新连回一张网], w: 3.6, h: 1.0, fill-color: c-end, stroke-color: s-end)

    arrow((0, -0.5), (t1.at(0), -2.1 + 0.45), stroke-color: s-root)
    arrow((t1.at(0) + 1.35, t1.at(1)), (t2.at(0) - 1.55, t2.at(1)), stroke-color: s-trunk)
    arrow((t2.at(0) + 1.55, t2.at(1)), (t3.at(0) - 1.35, t3.at(1)), stroke-color: s-trunk)
    arrow((t3.at(0) + 1.35, t3.at(1)), (t4.at(0) - 1.55, t4.at(1)), stroke-color: s-trunk)
    arrow((t4.at(0), -2.1 - 0.45), (gate.at(0), -4.4 + 0.5), stroke-color: s-gate)

    arrow((gate.at(0) - 1.5, -4.4 - 0.5), (b1.at(0), -6.8 + 0.45), stroke-color: s-branch)
    arrow((gate.at(0) - 0.5, -4.4 - 0.5), (b2.at(0), -6.8 + 0.45), stroke-color: s-branch)
    arrow((gate.at(0) + 0.5, -4.4 - 0.5), (b3.at(0), -6.8 + 0.45), stroke-color: s-branch)
    arrow((gate.at(0) + 1.5, -4.4 - 0.5), (b4.at(0), -6.8 + 0.45), stroke-color: s-branch)

    arrow((b1.at(0), -6.8 - 0.45), (end.at(0) - 1.4, -9.1 + 0.5), stroke-color: s-end)
    arrow((b2.at(0), -6.8 - 0.45), (end.at(0) - 0.5, -9.1 + 0.5), stroke-color: s-end)
    arrow((b3.at(0), -6.8 - 0.45), (end.at(0) + 0.5, -9.1 + 0.5), stroke-color: s-end)
    arrow((b4.at(0), -6.8 - 0.45), (end.at(0) + 1.4, -9.1 + 0.5), stroke-color: s-end)

    content((-8.2, -2.1), text(size: 7pt, fill: s-trunk, weight: "bold")[共同\ 主干])
    content((-8.2, -4.4), text(size: 7pt, fill: s-gate, weight: "bold")[基础总\ 闸门])
    content((-8.2, -6.8), text(size: 7pt, fill: s-branch, weight: "bold")[深化\ 分支])
    content((-8.2, -9.1), text(size: 7pt, fill: s-end, weight: "bold")[终章\ 综合])
  })
]

#v(0.6em)

#block(inset: (left: 1em), stroke: (left: 2pt + rgb("#1565C0")))[
  #text(size: 9pt)[
    *怎么看这张图？* 先把基础读稳；觉得工具已经够多却连不起来时，先停下来做总回看；决定专题深入后，再把相关章节连续读成一条线，最后回头看全图。
  ]
]

你不需要一开始就理解整张图。现在只要知道：目录已经按这张结构地图展开；阅读时，把它当成识别“我现在在哪一段、下一步该往哪里走”的导航图就够了。
