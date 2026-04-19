#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall
#import "../lib/diagram-packages.typ": cetz

== §3.3 角、直角与度量 <sec-3-3>

#vocab[角 angle / 直角 right angle / 度 degree]

#crisis[
  你和朋友一起扇扇子。有人只打开一条缝，有人一下展开很大。

  “张开得多大”不能总靠感觉说，我们需要一套能把“开口大小”量出来的语言。
]

#history-note[
  巴比伦人把整圆分成 360 份，留下了今天仍在使用的“度”这一单位。角度语言让人们终于能把“张开多少”稳定地记录下来。
]

#discovery[
  折弯一根吸管，会出现一个顶点和两条向外张开的边，这就是角的直觉原型。

  #align(center, cetz.canvas(length: 2cm, {
    import cetz.draw: *
    import cetz.angle: angle
    let O = (0, 0)
    let A = (2, 0)
    let B = (1.2, 1.7)
    line(O, A, stroke: 0.7pt)
    line(O, B, stroke: 0.7pt)
    angle(O, A, B, label: $angle A O B$, radius: 0.55, stroke: 0.5pt + blue, direction: "near")
    content(O, $O$, anchor: "north-east", padding: 3pt)
    content(A, $A$, anchor: "west", padding: 3pt)
    content(B, $B$, anchor: "south-west", padding: 3pt)
  }))

  再看门框的拐角：它给了我们一把最重要的尺子——直角。以后别的角，常常都先和它比较。

  把整圆平均分成 360 份，每一份就叫 1 度。这样“开口大小”终于能写成数字，而不只是“差不多”。
]

#tryit[
  先自己判断：

  + $35 degree$、$90 degree$、$127 degree$ 中，哪个正好是门框那样的角？
  + 在 $angle A O B$ 里，哪个字母在顶点位置？
]

#blueprint[
  - *角*：由同一点出发的两条射线组成的图形。
  - *直角*：像门框拐角那样“正好”的角，大小是 $90 degree$。
  - *度*：把整圆平均分成 360 份后，每一份就是 $1 degree$。
  - 角的大小看的是张开程度，不看两条边画得多长。
  - 常见记法：
    - $angle A O B$（顶点字母在中间）
    - 顶点处只有一个角时，也可简记作 $angle O$
]

#side-hack[
  读角时先找中间字母；看角大小时先拿 $90 degree$ 这把尺子去比。
]

#pitfall[
  *陷阱 1*：把边画长一点，就误以为角更大。

  角比的是张开程度，不是边的长度。

  *陷阱 2*：把 $angle A O B$ 里的第一个或最后一个字母当成顶点。

  顶点字母写在中间。
]

#mastery[
  *基础*

  + 在 $angle A O B$ 中，哪个字母表示顶点？
  + 说出直角是多少度。
  + 判断 $30 degree$、$90 degree$、$150 degree$ 哪个是直角。

  *应用*

  + 画一个角，并把它记成 $angle A O B$。
  + 解释为什么同一个角把边画长或画短，角的大小不会变。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + 中间的 $O$ 是顶点。
  + $90 degree$。
  + 只有 $90 degree$ 是直角。
  + 因为角看的是张开程度，不看边长。
]
