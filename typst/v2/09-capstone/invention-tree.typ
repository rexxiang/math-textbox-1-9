#import "../../lib/theme-v2.typ": history-note, vocab
#import "@preview/cetz:0.4.2"

== 完整发明树

恭喜你走到了这里！让我们回顾整个旅程，看看你发明了哪些数学工具。

=== 数的进化

#table(
  columns: (auto, auto, auto, auto),
  inset: 6pt,
  stroke: 0.4pt,
  table.header([*阶段*], [*数的类型*], [*解决的问题*], [*章节*]),
  [萌芽], [自然数 $NN$], [数数、计量], [第 1 章],
  [分割], [分数、小数], [等分、精确度量], [第 2 章],
  [比较], [百分数、比], [比较、缩放], [第 3 章],
  [延伸], [负数 → 有理数 $QQ$], [方向、欠债], [第 4 章],
  [填满], [无理数 → 实数 $RR$], [不可公度量], [第 4 章],
)

=== 工具的进化

#table(
  columns: (auto, auto, auto, auto),
  inset: 6pt,
  stroke: 0.4pt,
  table.header([*工具*], [*功能*], [*核心突破*], [*章节*]),
  [四则运算], [对数的基本操作], [运算律加速计算], [第 1 章],
  [代数式], [用字母代替具体数], [从算术到代数], [第 5 章],
  [方程], [捕获未知量], [让未知参与运算], [第 5 章],
  [几何证明], [逻辑推理], [从直觉到严谨], [第 6 章],
  [坐标系], [统一代数与几何], [用图象看变化], [第 7 章],
  [函数], [描述变化规律], [从静态到动态], [第 7 章],
  [统计与概率], [驯服不确定性], [用数据做决策], [第 8 章],
)

=== 发明链全景

#v(0.5em)

#align(center)[
  #cetz.canvas(length: 1cm, {
    import cetz.draw: *

    // ─── helpers ──────────────────────────────────────
    let node(pos, label, w: 2.8, h: 0.9, fill-color: white, stroke-color: luma(120)) = {
      rect(
        (pos.at(0) - w / 2, pos.at(1) - h / 2),
        (pos.at(0) + w / 2, pos.at(1) + h / 2),
        radius: 4pt,
        fill: fill-color,
        stroke: 0.6pt + stroke-color,
      )
      content(pos, text(size: 7.5pt, label))
    }

    let arrow(from, to) = {
      line(from, to, stroke: 0.5pt + luma(140), mark: (end: ">", fill: luma(140)))
    }

    // ─── Colors ───────────────────────────────────────
    let c-num   = rgb("#E3F2FD")
    let c-alg   = rgb("#FFF3E0")
    let c-geo   = rgb("#F3E5F5")
    let c-func  = rgb("#E0F7FA")
    let c-data  = rgb("#E8F5E9")
    let s-num   = rgb("#1565C0")
    let s-alg   = rgb("#EF6C00")
    let s-geo   = rgb("#7B1FA2")
    let s-func  = rgb("#00838F")
    let s-data  = rgb("#2E7D32")

    // ─── Row 0: origin ────────────────────────────────
    let origin = (0, 0)
    node(origin, [*数学发明者手册* \ 1--9 年级全旅程], w: 3.8, h: 1.0, fill-color: rgb("#FFF9C4"), stroke-color: rgb("#F57F17"))

    // ─── Row 1: number system branch (y = -2) ────────
    let n1 = (-5, -2.2)
    let n2 = (-1.5, -2.2)
    let n3 = (2, -2.2)
    let n4 = (5.5, -2.2)

    node(n1, [*自然数* $NN$ \ 第 1 章 数的萌芽], w: 3, fill-color: c-num, stroke-color: s-num)
    node(n2, [*分数·小数* \ 第 2 章 分与合], w: 2.8, fill-color: c-num, stroke-color: s-num)
    node(n3, [*百分数·比* \ 第 3 章 比例世界], w: 2.8, fill-color: c-num, stroke-color: s-num)
    node(n4, [*有理数·实数* $RR$ \ 第 4 章 负数的发明], w: 3.2, fill-color: c-num, stroke-color: s-num)

    arrow((origin.at(0), -0.5), (n1.at(0), -2.2 + 0.45))
    arrow((n1.at(0) + 1.5, n1.at(1)), (n2.at(0) - 1.4, n2.at(1)))
    arrow((n2.at(0) + 1.4, n2.at(1)), (n3.at(0) - 1.4, n3.at(1)))
    arrow((n3.at(0) + 1.4, n3.at(1)), (n4.at(0) - 1.6, n4.at(1)))

    content((-7.5, -2.2), text(size: 7pt, fill: s-num, weight: "bold")[数的\ 进化])

    // ─── Row 2: algebra branch (y = -4.2) ─────────────
    let a1 = (-3.5, -4.4)
    let a2 = (0.5, -4.4)
    let a3 = (4.5, -4.4)

    node(a1, [*代数式·因式分解* \ 第 5 章 §5.1--§5.3], w: 3.4, fill-color: c-alg, stroke-color: s-alg)
    node(a2, [*方程·不等式* \ 第 5 章 §5.4--§5.7], w: 3, fill-color: c-alg, stroke-color: s-alg)
    node(a3, [*函数·坐标·三角* \ 第 7 章], w: 3.2, fill-color: c-func, stroke-color: s-func)

    arrow((n4.at(0), -2.2 - 0.45), (a1.at(0), -4.4 + 0.45))
    arrow((a1.at(0) + 1.7, a1.at(1)), (a2.at(0) - 1.5, a2.at(1)))
    arrow((a2.at(0) + 1.5, a2.at(1)), (a3.at(0) - 1.6, a3.at(1)))

    content((-7.5, -4.4), text(size: 7pt, fill: s-alg, weight: "bold")[代数\ 工具])

    // ─── Row 3: geometry branch (y = -6.4) ────────────
    let g1 = (-3.5, -6.6)
    let g2 = (0.5, -6.6)
    let g3 = (4.5, -6.6)

    node(g1, [*角·平行·垂直* \ 第 6 章 §6.1--§6.2], w: 3.2, fill-color: c-geo, stroke-color: s-geo)
    node(g2, [*三角形·四边形·圆* \ 第 6 章 §6.3--§6.5], w: 3.4, fill-color: c-geo, stroke-color: s-geo)
    node(g3, [*勾股定理·变换* \ 第 6 章 §6.6--§6.7], w: 3.2, fill-color: c-geo, stroke-color: s-geo)

    arrow((n3.at(0), -2.2 - 0.45), (g1.at(0), -6.6 + 0.45))
    arrow((g1.at(0) + 1.6, g1.at(1)), (g2.at(0) - 1.7, g2.at(1)))
    arrow((g2.at(0) + 1.7, g2.at(1)), (g3.at(0) - 1.6, g3.at(1)))

    // cross-link: geometry → function (coordinate geometry)
    arrow((g3.at(0), -6.6 + 0.45), (a3.at(0), -4.4 - 0.45))

    content((-7.5, -6.6), text(size: 7pt, fill: s-geo, weight: "bold")[几何\ 推理])

    // ─── Row 4: data branch (y = -8.6) ────────────────
    let d1 = (-2, -8.8)
    let d2 = (2.5, -8.8)

    node(d1, [*统计·频率分布* \ 第 8 章 §8.1--§8.2], w: 3.2, fill-color: c-data, stroke-color: s-data)
    node(d2, [*概率·抽样* \ 第 8 章 §8.3--§8.4], w: 3, fill-color: c-data, stroke-color: s-data)

    arrow((n3.at(0), -2.2 - 0.45), (d1.at(0), -8.8 + 0.45))
    arrow((d1.at(0) + 1.6, d1.at(1)), (d2.at(0) - 1.5, d2.at(1)))

    content((-7.5, -8.8), text(size: 7pt, fill: s-data, weight: "bold")[数据\ 思维])

    // ─── Cross-links (dashed) ─────────────────────────
    // algebra ↔ geometry (equations in geometry proofs)
    line(
      (a2.at(0), -4.4 - 0.45), (g2.at(0), -6.6 + 0.45),
      stroke: (paint: luma(180), thickness: 0.4pt, dash: "dashed"),
      mark: (end: ">", fill: luma(180)),
    )
  })
]

#v(0.5em)

#block(inset: (left: 1em), stroke: (left: 2pt + rgb("#F57F17")))[
  #text(size: 9pt)[
    实线箭头 = 前置依赖（必须先学） #h(2em)
    虚线箭头 = 互相支撑（可以交叉学习）
  ]
]

每一个工具都不是凭空出现的——它们都诞生于真实的困境，由你亲手推导而来。

#history-note[
  从公元前 3000 年的古埃及计数，到 17 世纪笛卡尔的坐标系，人类花了近 5000 年才走完你这本书里的数学旅程。而你，用了不到一年的时间。
]
