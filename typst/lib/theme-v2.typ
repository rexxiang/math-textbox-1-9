// V2 主题：四段发明链 + 平铺内联注记
// 页面布局：ISO B5，正常边距（x: 18mm, y: 18mm）

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
  set heading(numbering: "1.1")
  set par(justify: true, leading: 0.85em, spacing: 1.5em)
  // 一级标题前强制分页
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    block(above: 0em, below: 1.5em, it)
  }
  // 二三级标题间距
  show heading.where(level: 2): set block(above: 2em, below: 1em)
  show heading.where(level: 3): set block(above: 2em, below: 1em)
  body
}

#let main-page-header = context {
  let chapter-headings = query(heading.where(level: 1).before(here()))
  let current-page = counter(page).get().first()
  let chapter-on-page = query(heading.where(level: 1)).filter(h => counter(page).at(h.location()).first() == current-page)

  if chapter-headings.len() > 0 and chapter-on-page.len() == 0 {
    let chapter = chapter-headings.last()
    let chapter-num = counter(heading).at(chapter.location()).first()
    let section-headings = query(heading.where(level: 2).before(here())).filter(h => counter(heading).at(h.location()).first() == chapter-num)

    emph[
      第 #chapter-num 章 #h(0.3em) #chapter.body
      #if section-headings.len() > 0 [#h(0.5em)•#h(0.5em) #section-headings.last().body]
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

// ── 交叉引用（沿用 V1）──────────────────────────────────────────

#let secref(id) = link(label("sec-" + id.replace(".", "-")), [§#id])
#let secrange(from, to) = [#secref(from)--#secref(to)]

// ── 四段发明链函数（对话框式：边框 + 标题栏浅色背景，正文白底）────

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
  [现代困境],
  rgb("#C62828"), rgb("#FFCDD2"), rgb("#B71C1C"),
  body,
)

#let discovery(body) = invention-box(
  [探索发现],
  rgb("#EF6C00"), rgb("#FFE0B2"), rgb("#E65100"),
  body,
)

#let blueprint(body) = invention-box(
  [工具蓝图],
  rgb("#1565C0"), rgb("#BBDEFB"), rgb("#0D47A1"),
  body,
)

#let mastery(body) = invention-box(
  [工具磨砺],
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

#let history-note(body) = side-note([历史注脚], rgb("#FFA726"), rgb("#E65100"), body)
#let side-hack(body)    = side-note([认知捷径], rgb("#66BB6A"), rgb("#2E7D32"), body)
#let vocab(body)        = side-note([术语],     rgb("#78909C"), rgb("#546E7A"), body)

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
    )[#text(weight: "bold", fill: rgb("#0D47A1"), size: 10pt)[✏ 试一试]]
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
    )[#text(weight: "bold", fill: rgb("#B71C1C"), size: 10pt)[⚠ 常见陷阱]]
    #block(
      width: 100%,
      fill: rgb("#FFFDE7"),
      inset: (x: 10pt, y: 9pt),
    )[#body]
  ]
}

// ── 数学实验室（动手探究活动，紫色边框）────────────────────────────

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
    )[#text(weight: "bold", fill: rgb("#4A148C"), size: 10pt)[🔬 数学实验室]]
    #block(
      width: 100%,
      fill: rgb("#F9F5FF"),
      inset: (x: 10pt, y: 9pt),
    )[#body]
  ]
}
