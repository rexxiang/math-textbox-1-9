// components.typ — 可复用 UI 组件
//
// 供 chapter-kit.typ 统一导出。
// 当前包含：
//   #diagnostic-table(..rows) — 三列"诊断路由"表

// ── 诊断路由表 ─────────────────────────────────────────────────────────────
//
// 用法：在 99-review.typ 螺旋复习段落之后插入。
// 参数：一组内容，每 3 个为一行，顺序固定：
//   [如果你卡在……的描述]  [secref("已有-kp-id")]  [复习提示]
//
// 示例：
//   #diagnostic-table(
//     [卡在通分步骤],   secref("pf04-fraction-arithmetic"),  [先找两个分母的最小公倍数，再扩分],
//     [比较大小搞错],   secref("pf04-fraction-comparison"),  [通分后逐分子比；也可化小数对比],
//   )

#let diagnostic-table(..rows) = {
  let items = rows.pos()
  block(
    width: 100%,
    above: 1.2em,
    below: 1.0em,
    stroke: (left: (thickness: 3pt, paint: rgb("#66BB6A"))),
    inset: (left: 10pt, right: 4pt, top: 7pt, bottom: 8pt),
    fill: none,
  )[
    #text(size: 9pt, weight: "bold", fill: rgb("#2E7D32"))[☞ 卡住了？对症回补]
    #v(5pt)
    #table(
      columns: (1.4fr, 1fr, 1.5fr),
      inset: 6pt,
      stroke: 0.4pt,
      fill: (_, y) => if y == 0 { rgb("#C8E6C9") } else if calc.odd(y) { luma(248) } else { none },
      table.header(
        [*如果你卡在……*], [*该回到的小节*], [*复习提示*],
      ),
      ..items,
    )
  ]
}
