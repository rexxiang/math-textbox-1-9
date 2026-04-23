// V2 主题：六段式知识点节 + 平铺内联注记
// 页面布局：ISO B5，正文边距（x: 18mm, y: 18mm）

#let textbook-v2(body) = {
  set page(
    paper: "iso-b5",
    margin: (x: 18mm, y: 18mm),
  )
  set text(
    font: "Noto Sans CJK SC",
    size: 10.5pt,
    lang: "zh",
    region: "cn",
  )
  show math.equation: set text(font: "New Computer Modern Math")
  // 只给 Part（1 级）和 Chapter（2 级）编号；Section 及以下不编号
  set heading(numbering: (..nums) => {
    let n = nums.pos()
    if n.len() <= 2 { numbering("1.1", ..n) }
  })
  set par(justify: true, leading: 0.85em, spacing: 1.5em)
  // Part（一级）：强制分页 + 大标题
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    block(above: 0em, below: 1.5em, it)
  }
  // Chapter（二级）：强制分页
  show heading.where(level: 2): it => {
    pagebreak(weak: true)
    block(above: 0em, below: 1em, it)
  }
  // Section（三级）和 Subsection（四级）：仅留间距
  show heading.where(level: 3): set block(above: 2em, below: 1em)
  show heading.where(level: 4): set block(above: 1.5em, below: 0.8em)
  body
}

#let main-page-header = context {
  // Part = level 1, Chapter = level 2
  let part-headings = query(heading.where(level: 1).before(here()))
  let current-page = counter(page).get().first()
  // 不在 Part/Chapter 起始页显示 header
  let part-on-page = query(heading.where(level: 1)).filter(h => counter(page).at(h.location()).first() == current-page)
  let ch-on-page = query(heading.where(level: 2)).filter(h => counter(page).at(h.location()).first() == current-page)

  if part-headings.len() > 0 and part-on-page.len() == 0 and ch-on-page.len() == 0 {
    let part = part-headings.last()
    let part-num = counter(heading).at(part.location()).first()
    let ch-headings = query(heading.where(level: 2).before(here())).filter(h => counter(heading).at(h.location()).first() == part-num)

    emph[
      #part.body
      #if ch-headings.len() > 0 {
        let ch = ch-headings.last()
        let ch-nums = counter(heading).at(ch.location())
        [#h(0.5em)•#h(0.5em) #numbering("1.1", ..ch-nums.slice(0, 2)) #h(0.3em) #ch.body]
      }
    ]
    line(length: 100%, stroke: 0.4pt)
  }
}

#let main-page-footer = context {
  align(right, counter(page).display())
}

#let frontmatter-page-footer = context {
  align(right, counter(page).display("i"))
}

#let use-frontmatter-page-style() = {
  set page(numbering: "i", header: none, footer: frontmatter-page-footer)
}

#let use-main-page-style() = {
  set page(numbering: "1", header: main-page-header, footer: main-page-footer)
}

// ── 交叉引用 ──────────────────────────────────────────────────

// id 形式:
//   tool-id:  "a01-natural-number" → label("tool:a01-natural-number")
//   meta 节号: "5.1" → label("meta:...") 由使用方保证存在
// 两类均动态取 Typst 自动章节号，显示如 §1.3
#let _meta-label = (
  "5.1": "meta:foundation-check",
  "5.2": "meta:branch-entry-recaps",
  "6.7": "meta:c-foundation-summary",
  "7.7": "meta:d-foundation-summary",
  "8.3": "meta:e-foundation-summary",
  "9.5": "meta:f-foundation-summary",
)
#let secref(id) = context {
  let lbl = if id in _meta-label {
    label(_meta-label.at(id))
  } else if id.starts-with("ch:") or id.starts-with("meta:") or id.starts-with("tool:") {
    label(id)
  } else {
    label("tool:" + id)
  }
  let elems = query(lbl)
  if elems.len() > 0 {
    let loc = elems.first().location()
    let nums = counter(heading).at(loc)
    link(loc, "§" + numbering("1.1", ..nums))
  } else {
    [§?]
  }
}
#let secrange(from, to) = [#secref(from)--#secref(to)]

// ── 四段学习流程函数（对话框式：边框 + 标题栏浅色背景，正文白底）────

#let invention-box(title, border-color, head-bg, head-fg, body) = {
  block(
    width: 100%,
    radius: 4pt,
    clip: true,
    stroke: (paint: border-color, thickness: 1pt),
    inset: 0pt,
    above: 0.8em,
    below: 0.8em,
  )[
    #grid(
      columns: (1fr,),
      row-gutter: 0pt,
      block(
        width: 100%,
        fill: head-bg,
        inset: (x: 10pt, y: 5pt),
      )[#text(weight: "bold", fill: head-fg, size: 10pt)[#title]],
      block(
        width: 100%,
        fill: white,
        inset: (x: 10pt, y: 9pt),
      )[#body],
    )
  ]
}

#let crisis(body) = invention-box(
  [遇到的问题],
  rgb("#C62828"), rgb("#FFCDD2"), rgb("#B71C1C"),
  body,
)

#let discovery(body) = invention-box(
  [想一想],
  rgb("#EF6C00"), rgb("#FFE0B2"), rgb("#E65100"),
  body,
)

#let blueprint(body) = invention-box(
  [划重点],
  rgb("#1565C0"), rgb("#BBDEFB"), rgb("#0D47A1"),
  body,
)

#let mastery(body) = invention-box(
  [练一练],
  rgb("#2E7D32"), rgb("#C8E6C9"), rgb("#1B5E20"),
  body,
)

// ── 注记函数（引用条式：彩色左边框 + 标签行，无底色，无 emoji）────

#let side-note(label-text, border-color, label-color, body) = {
  block(
    width: 100%,
    above: 4pt,
    below: 8pt,
    stroke: (left: (thickness: 3pt, paint: border-color)),
    inset: (left: 10pt, right: 0pt, top: 4pt, bottom: 4pt),
    fill: none,
  )[
    #text(size: 9pt, weight: "bold", fill: label-color)[#label-text]
    #linebreak()
    #text(size: 9.5pt, fill: luma(80))[#body]
  ]
}

#let history-note(body) = side-note([小历史], rgb("#FFA726"), rgb("#E65100"), body)
#let side-hack(body)    = side-note([小提示], rgb("#66BB6A"), rgb("#2E7D32"), body)
#let vocab(..terms)     = side-note([术语], rgb("#78909C"), rgb("#546E7A"), terms.pos().join[ · ])

// ── 试一试（例题前的主动尝试提示，虚线蓝框）────────────────────────

#let tryit(body) = {
  block(
    width: 100%,
    radius: 3pt,
    clip: true,
    stroke: (paint: rgb("#1565C0"), thickness: 1pt, dash: "dashed"),
    inset: 0pt,
    above: 0.8em,
    below: 0.5em,
  )[
    #block(
      width: 100%,
      fill: rgb("#E3F2FD"),
      inset: (x: 10pt, y: 5pt),
    )[#text(weight: "bold", fill: rgb("#0D47A1"), size: 10pt)[先试一下]]
    #block(
      width: 100%,
      fill: rgb("#F8FBFF"),
      inset: (x: 10pt, y: 9pt),
    )[#body]
  ]
}

// ── 常见陷阱（blueprint 后的高频错误专栏，红黄警示色）──────────────

#let pitfall(body) = {
  block(
    width: 100%,
    radius: 3pt,
    clip: true,
    stroke: (paint: rgb("#C62828"), thickness: 1.5pt),
    inset: 0pt,
    above: 0.8em,
    below: 0.8em,
  )[
    #block(
      width: 100%,
      fill: rgb("#FFECB3"),
      inset: (x: 10pt, y: 5pt),
    )[#text(weight: "bold", fill: rgb("#B71C1C"), size: 10pt)[常见陷阱]]
    #block(
      width: 100%,
      fill: rgb("#FFFDE7"),
      inset: (x: 10pt, y: 9pt),
    )[#body]
  ]
}

// ── 动手试试（动手探究活动，紫色边框）────────────────────────────

#let lab(body) = {
  block(
    width: 100%,
    radius: 3pt,
    clip: true,
    stroke: (paint: rgb("#6A1B9A"), thickness: 1pt),
    inset: 0pt,
    above: 0.8em,
    below: 0.8em,
  )[
    #block(
      width: 100%,
      fill: rgb("#EDE7F6"),
      inset: (x: 10pt, y: 5pt),
    )[#text(weight: "bold", fill: rgb("#4A148C"), size: 10pt)[动手试试]]
    #block(
      width: 100%,
      fill: rgb("#F9F5FF"),
      inset: (x: 10pt, y: 9pt),
    )[#body]
  ]
}
