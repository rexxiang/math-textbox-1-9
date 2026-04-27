#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall
#import "../../lib/diagram-packages.typ": cetz

=== 角：两条射线之间的旋转量 <tool:pf07-angles>

#vocab[角 angle][顶点 vertex][度 degree][锐角][直角][钝角][平角]

#crisis[
  两条街道从同一个路口岔开，一条和另一条之间“张得多大”，决定了你走错路的概率。

  长度可以量“边有多长”，面积可以量“里面多大”，体积可以量“能装多少”——但*两条射线之间张开的程度*，还不能用它们里任何一种来表达。

  *形状的第四种度量，要专门一种尺子：角。*
]

#discovery[
  从同一个点 $O$ 出发，画两条射线 $O A$、$O B$。把其中一条看作不动，另一条绕着 $O$ 从它出发旋转——转得越“开”，这两条射线之间的角就越大。

  一圈转回来，我们规定等分成 360 等份，每一份叫做 $1$ 度，记作 $1°$。

  常见的角：

  - 半圈的一半：$90°$，叫*直角*。
  - 比直角小：叫*锐角*（$0° < x < 90°$）。
  - 比直角大但不到平角：叫*钝角*（$90° < x < 180°$）。
  - 正好半圈：$180°$，叫*平角*。

  顶点是 $O$，两条射线叫角的两条*边*。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let green = rgb("#4CAF50")
      let red = rgb("#F44336")

      // Acute angle (45°)
      let a-cx = 2
      line((a-cx, 0), (a-cx + 5, 0), stroke: 1.2pt + blue)
      line((a-cx, 0), (a-cx + 3.5, 3.5), stroke: 1.2pt + blue)
      arc((a-cx + 1.5, 0), start: 0deg, stop: 45deg, radius: 1.5,
          stroke: 1pt + blue, mode: "OPEN")
      content((a-cx + 2.2, 0.7), text(fill: blue, size: 7pt)[$45°$])
      content((a-cx + 2, -1.2), text(weight: "bold", size: 8pt)[锐角], anchor: "north")

      // Right angle (90°)
      let r-cx = 10
      line((r-cx, 0), (r-cx + 5, 0), stroke: 1.2pt + green)
      line((r-cx, 0), (r-cx, 4), stroke: 1.2pt + green)
      // Right angle mark
      rect((r-cx, 0), (r-cx + 0.8, 0.8), stroke: 0.8pt + green)
      content((r-cx + 2, -1.2), text(weight: "bold", size: 8pt)[直角], anchor: "north")

      // Obtuse angle (135°)
      let o-cx = 18
      line((o-cx, 0), (o-cx + 5, 0), stroke: 1.2pt + red)
      line((o-cx, 0), (o-cx - 2.8, 2.8), stroke: 1.2pt + red)
      arc((o-cx + 1.2, 0), start: 0deg, stop: 135deg, radius: 1.2,
          stroke: 1pt + red, mode: "OPEN")
      content((o-cx - 0.5, 1.2), text(fill: red, size: 7pt)[$135°$])
      content((o-cx + 1, -1.2), text(weight: "bold", size: 8pt)[钝角], anchor: "north")
    }),
    caption: [三种角：锐角（$< 90°$）、直角（$= 90°$）、钝角（$> 90°$）],
  )


]

#history-note[
  约公元前 2000 年，巴比伦人使用六十进制（base-60）记数，并把一整圈分成 360 份——可能因为 360 接近一年的天数，又能被 2、3、4、5、6 等许多数整除，分起来方便。中国最早的天文数学文献《周髀算经》（成书约公元前 1 世纪）也用到了"周天三百六十五度又四分度之一"的分法来描述天体运动。今天全世界仍然沿用 360° 制，正是这一古老约定的延续。
]

#side-hack[
  不会判断锐、直、钝？*拿一张纸的角去比*：纸角就是 $90°$。小于它就是锐角，大于它就是钝角。
]

#tryit[
  先自己试试：

  + 画一个顶点在 $P$ 的 $60°$ 角和一个顶点在 $Q$ 的 $120°$ 角。哪一个是锐角，哪一个是钝角？
  + 如果一个角是 $180°$，它的两条边看起来会是什么样？
]

#blueprint[
  - *角*：从同一点出发的两条射线所夹开的图形；这个点叫*顶点*，两条射线叫*边*。
  - *角的大小*：用度（$°$）表示，规定一整圈 $= 360°$。
  - 常见分类：
    - $0° < $ 锐角 $< 90°$
    - 直角 $= 90°$
    - $90° < $ 钝角 $< 180°$
    - 平角 $= 180°$
    - 周角 $= 360°$
  -
  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let orange = rgb("#FF9800")

      // Semicircle as protractor outline
      arc((0, 0), start: 0deg, stop: 180deg, radius: 6,
          stroke: 1.2pt + luma(150), mode: "OPEN")
      line((-6, 0), (6, 0), stroke: 1pt + luma(150))

      // Tick marks every 30°
      line((5.3, 0.0), (6.0, 0.0), stroke: 0.6pt + luma(120))
      content((6.8, 0.0), text(size: 6pt, "0°"), anchor: "center")
      line((4.59, 2.65), (5.2, 3.0), stroke: 0.6pt + luma(120))
      content((5.89, 3.4), text(size: 6pt, "30°"), anchor: "center")
      line((2.65, 4.59), (3.0, 5.2), stroke: 0.6pt + luma(120))
      content((3.4, 5.89), text(size: 6pt, "60°"), anchor: "center")
      line((0.0, 5.3), (0.0, 6.0), stroke: 0.6pt + luma(120))
      content((0.0, 6.8), text(size: 6pt, "90°"), anchor: "center")
      line((-2.65, 4.59), (-3.0, 5.2), stroke: 0.6pt + luma(120))
      content((-3.4, 5.89), text(size: 6pt, "120°"), anchor: "center")
      line((-4.59, 2.65), (-5.2, 3.0), stroke: 0.6pt + luma(120))
      content((-5.89, 3.4), text(size: 6pt, "150°"), anchor: "center")
      line((-5.3, 0.0), (-6.0, 0.0), stroke: 0.6pt + luma(120))
      content((-6.8, 0.0), text(size: 6pt, "180°"), anchor: "center")

      // Vertex
      circle((0, 0), radius: 0.15, fill: blue, stroke: 0.8pt + blue)
      content((-0.5, -0.8), text(fill: blue, size: 8pt)[O], anchor: "north")

      // Angle of 60°
      line((0, 0), (5, 0), stroke: 1.2pt + blue)
      line((0, 0), (2.5, 4.33), stroke: 1.2pt + orange)

      // Arc for 60°
      arc((1.5, 0), start: 0deg, stop: 60deg, radius: 1.5,
          stroke: 1.5pt + orange, mode: "OPEN")
      content((2, 1.2), text(fill: orange, weight: "bold", size: 9pt)[$60°$])
    }),
    caption: [量角器上的 $60°$：从 $0°$ 到 $60°$ 扫过的范围],
  )

  - 角的大小只和“张开多少”有关，和两条边画得多长无关。
]

#pitfall[
  *高频错误*

  ✗ 把两条边画得更长就觉得角变大了
  → ✓ 边的长度不影响角的大小；大小只看两条射线之间张开的程度。

  ✗ 分不清锐角和钝角
  → ✓ 以直角（$90°$）为分界：比直角小是锐角，比直角大（不到平角）是钝角。

  ✗ 把单位 $°$ 漏掉，写成“$30$”而不是“$30°$”
  → ✓ 角是带单位的量，$30$ 和 $30°$ 不是同一回事。
]

#mastery[
  *基础*

  + 判断下列各角是锐角、直角、钝角还是平角：$45°$、$90°$、$135°$、$180°$、$10°$。
  + 画一个 $70°$ 的角；再画一个 $110°$ 的角。
  + 一个角的边画得更长一点，它的度数会变吗？为什么？
  + 判断对错并改正：“一个角是 $200°$，它是钝角。”
  + 把一个直角平均分成两份，每份是多少度？它们各属于什么类型的角？

  *应用*

  + 一个角是 $155°$，它属于哪一类？如果把这个角减去一个 $75°$ 的角，还剩多少度？
  + 钟面 3 点整时，时针与分针之间的角是多少度？
  + 一条直线上取一点 $O$，画一条射线使它和直线的一边成 $40°$ 角。它和另一边成多少度角？

  *挑战 ☞ 选做*

  + 如果把圆分成 6 等份，每一份圆心角是多少度？分成 8 等份呢？
  + “用两条边画得很长，角就一定很大”——这句话错在哪？用“角是旋转量”这个角度反驳。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + 锐角 $45°$、$10°$；直角 $90°$；钝角 $135°$；平角 $180°$。（锐角 $< 90°$，直角 $= 90°$，钝角 $90°$–$180°$ 之间，平角 $= 180°$）
  + 图略；大致张开程度区分开即可。（用量角器或纸角辅助画角）
  + 不会变；角只看两条射线之间张开多大，与边画多长无关。（角是旋转量，不是长度）
  + 错。$200°$ 超过了平角（$180°$），不属于锐角、直角、钝角、平角中的任何一种；它是*优角*（大于 $180°$ 小于 $360°$）。（角的分类以 $90°$、$180°$、$360°$ 为界）
  + $90° div 2 = 45°$，每份 $45°$，属于*锐角*。（$45° < 90°$，所以是锐角）
  + $155°$ 属于钝角（$90° < 155° < 180°$）。减去 $75°$：$155° - 75° = 80°$，结果是锐角。
  + $90°$。推理：时针指向 3，分针指向 12，从 12 到 3 正好扫过圆的 $1/4$，即 $360° div 4 = 90°$。
  + 一条直线上 $O$ 点两侧组成平角 $180°$。已知一侧 $40°$，另一侧 $= 180° - 40° = 140°$。（平角 = $180°$）
  + 6 等份：$360° div 6 = 60°$（正六边形的圆心角）。8 等份：$360° div 8 = 45°$。推理：一整圈 $= 360°$，均分即可。
  + 反驳：角是旋转量，衡量的是两条射线之间的“张开程度”。边画长只是把射线画远了一些，并没有改变旋转量。所以边再长，角的度数不变。
]
