#let textbook(body) = {
  set page(paper: "iso-b5", margin: (x: 18mm, y: 18mm))
  set text(
    font: ("Libertinus Serif"),
    size: 10.5pt,
  )
  set heading(numbering: "1.1")
  set par(justify: true)
  body
}

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
