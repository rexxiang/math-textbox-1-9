// V2 主题：四段发明链 + 侧边栏注释系统
// 页面布局：ISO B5，右边距留出 margin notes 区域

#let textbook-v2(body) = {
  set page(
    paper: "iso-b5",
    margin: (left: 10mm, right: 50mm, top: 18mm, bottom: 18mm),
    header: context {
      let elems = query(heading.where(level: 1).before(here()))
      if elems.len() > 0 {
        let current = elems.last()
        let num = counter(heading).at(current.location()).first()
        emph[第 #num 章 #h(0.3em) #current.body]
        line(length: 100%, stroke: 0.4pt)
      }
    },
    footer: context {
      align(right, counter(page).display())
    },
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

// ── 交叉引用（沿用 V1）──────────────────────────────────────────

#let secref(id) = link(label("sec-" + id.replace(".", "-")), [§#id])
#let secrange(from, to) = [#secref(from)--#secref(to)]

// ── 四段发明链函数 ──────────────────────────────────────────────

#let invention-box(title, fill, stroke-color, body) = {
  block(
    width: 100%,
    inset: 10pt,
    outset: 4pt,
    radius: 4pt,
    fill: fill,
    stroke: (paint: stroke-color, thickness: 0.8pt),
  )[
    #text(weight: "bold", fill: stroke-color)[#title]
    #v(0.4em)
    #body
  ]
}

#let crisis(body) = invention-box(
  [现代困境],
  rgb("#FFEBEE"), rgb("#C62828"),
  body,
)

#let discovery(body) = invention-box(
  [探索发现],
  rgb("#FFF3E0"), rgb("#EF6C00"),
  body,
)

#let blueprint(body) = invention-box(
  [工具蓝图],
  rgb("#E3F2FD"), rgb("#1565C0"),
  body,
)

#let mastery(body) = invention-box(
  [工具磨砺],
  rgb("#E8F5E9"), rgb("#2E7D32"),
  body,
)

// ── 侧边栏函数（margin notes）──────────────────────────────────

#let margin-note(icon, body) = {
  place(
    right,
    dx: 14mm,
    block(
      width: 36mm,
      inset: 6pt,
      radius: 3pt,
      fill: luma(248),
      stroke: 0.3pt + luma(200),
      text(size: 9pt)[#icon #body],
    ),
  )
}

#let history-note(body) = margin-note([📜], body)
#let side-hack(body) = margin-note([🧠], body)
#let vocab(body) = margin-note([🔤], body)
