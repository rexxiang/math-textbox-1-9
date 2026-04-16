#let textbook(body) = {
  set page(
    paper: "iso-b5",
    margin: (x: 18mm, y: 18mm),
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
    size: 11pt,
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
  // 二三级标题：前 2em 后 1em
  show heading.where(level: 2): set block(above: 2em, below: 1em)
  show heading.where(level: 3): set block(above: 2em, below: 1em)
  body
}

#let secref(id) = link(label("sec-" + id.replace(".", "-")), [§#id])
#let secrange(from, to) = [#secref(from)--#secref(to)]

#let lesson-box(title, fill, stroke, body) = {
  box(
    inset: 10pt,
    outset: 4pt,
    radius: 4pt,
    fill: fill,
    stroke: (paint: stroke, thickness: 0.8pt),
  )[
    #text(weight: "bold")[#title]
    #v(0.4em)
    #body
  ]
}

#let explore(body) = lesson-box([引入情境], rgb("#FFF3E0"), rgb("#EF6C00"), body)
#let understand(body) = lesson-box([概念建立], rgb("#E8F1FF"), rgb("#1E66D0"), body)
#let workedexamples(body) = lesson-box([典型例题], rgb("#F3F4F6"), rgb("#616161"), body)
#let keytakeaway(body) = lesson-box([关键总结], rgb("#E9F8EF"), rgb("#2E7D32"), body)
#let practice(body) = lesson-box([练一练], rgb("#F3E8FF"), rgb("#7E57C2"), body)
#let answer(body) = lesson-box([参考答案], rgb("#F7F7F7"), rgb("#9E9E9E"), body)
