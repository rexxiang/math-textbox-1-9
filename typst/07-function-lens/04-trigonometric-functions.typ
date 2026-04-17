#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, secref, tryit, pitfall
#import "../lib/diagram-packages.typ": cetz

== §7.4 锐角三角函数 <sec-7-4>

#vocab[正弦 sine / 余弦 cosine / 正切 tangent / 仰角 angle of elevation / 俯角 angle of depression]

#crisis[
  你站在河的这一岸，对面山顶上有一座信号塔。你需要知道山有多高，但你不可能飞过去量。

  你有一个测角仪和一把卷尺。你测出从你站的位置到山脚的水平距离是 $200$ 米，抬头看山顶的仰角是 $35 degree$。

  *只知道一个角度和一条边，就能算出山的高度吗？*
]

#history-note[
  三角学起源于古代天文和航海。公元前 2 世纪，古希腊天文学家*喜帕恰斯*（Hipparchus）编制了最早的「弦表」——三角函数表的前身。阿拉伯学者在 9-10 世纪引入了正弦和正切的概念。大航海时代，水手们用三角函数测量船的位置和航向，三角学因此成为「航海的数学」。
]

#discovery[
  *第一步*：从直角三角形开始。

  画一个直角三角形，直角在 $C$。在锐角 $A$ 的视角下，三条边各有一个名字：
  - $A$ 的*对边* $a$（$A$ 对面的边，即 $B C$）
  - $A$ 的*邻边* $b$（$A$ 旁边的直角边，即 $A C$）
  - *斜边* $c$（最长的边，即 $A B$）

  #figure(
    cetz.canvas(length: 2.2cm, {
      import cetz.draw: *
      import cetz.angle: angle, right-angle
      let A = (0, 2.5)
      let B = (2.5, 0)
      let C = (0, 0)
      // Triangle sides
      line(A, B, stroke: (paint: green, thickness: 0.8pt))  // hypotenuse c (AB)
      line(A, C, stroke: (paint: blue, thickness: 0.8pt))   // adjacent b (AC)
      line(B, C, stroke: (paint: red, thickness: 0.8pt))    // opposite a (BC)
      // Right angle at C
      right-angle(C, A, B, stroke: 0.5pt)
      // Angle mark at A
      angle(A, C, B, label: $angle A$, radius: 0.5, stroke: 0.5pt, direction: "near")
      // Vertex labels
      content(A, $A$, anchor: "east", padding: 4pt)
      content(B, $B$, anchor: "north-west", padding: 4pt)
      content(C, $C$, anchor: "north-east", padding: 4pt)
      // Side labels
      content(((B.at(0)+C.at(0))/2, -0.28), text(9pt, fill: red)[对边 $a$])
      content((-0.5, (A.at(1)+C.at(1))/2), text(9pt, fill: blue)[邻边 $b$])
      content(((A.at(0)+B.at(0))/2 + 0.35, (A.at(1)+B.at(1))/2 + 0.2),
              text(9pt, fill: green)[斜边 $c$])
    }),
    caption: [直角三角形 $A B C$（$angle C = 90 degree$）：对边 $a = B C$，邻边 $b = A C$，斜边 $c = A B$]
  )

  *第二步*：计算比值。

  画几个大小不同但角度相同的直角三角形（例如都有一个 $30 degree$ 角）。你会发现：虽然边长不同，但「对边/斜边」的比值*总是相同*的！

  这就是因为这些三角形*相似*（#secref("6.6")）。

  *第三步*：定义三个比值。

  对于锐角 $A$：
  $ sin A = frac("对边", "斜边") = frac(a, c), quad cos A = frac("邻边", "斜边") = frac(b, c), quad tan A = frac("对边", "邻边") = frac(a, b) $

  *关键发现*：角度确定了，这三个比值就确定了——和三角形的大小无关！
]

#side-hack[
  英文助记口诀 *SOH-CAH-TOA*：
  - SOH: Sine = Opposite / Hypotenuse（正弦 = 对边/斜边）
  - CAH: Cosine = Adjacent / Hypotenuse（余弦 = 邻边/斜边）
  - TOA: Tangent = Opposite / Adjacent（正切 = 对边/邻边）
]

#tryit[
  在直角三角形中，$angle C = 90 degree$，$a = 3$，$c = 5$。先不查书，用 SOH-CAH-TOA 口诀，写出 $sin A$、$cos A$、$tan A$ 的值。

  提示：先用勾股定理求出邻边 $b$，然后对号入座。
]

#pitfall[
  *三角函数最容易搞混的：对边和邻边是相对于哪个角而言的！*

  同一个三角形，对角 $A$ 和对角 $B$ 的「对边」是不同的边。

  #grid(columns: (1fr, 1fr), gutter: 8pt,
    block[
      *对于角 $A$*：

      对边 $= B C = a$，邻边 $= A C = b$

      $sin A = a/c$，$cos A = b/c$
    ],
    block[
      *对于角 $B$*：

      对边 $= A C = b$，邻边 $= B C = a$

      $sin B = b/c$，$cos B = a/c$
    ]
  )

  *互余关系*：$sin A = cos B$（因为 $A + B = 90 degree$），所以 $sin A = cos(90 degree - A)$。
]

#blueprint[
  === 三角函数的定义

  在直角三角形 $A B C$ 中（$angle C = 90 degree$），对于锐角 $A$：

  $ sin A = frac("对边", "斜边"), quad cos A = frac("邻边", "斜边"), quad tan A = frac("对边", "邻边") $

  === 特殊角的三角函数值

  #align(center, table(
    columns: 5,
    align: center,
    [角度], [$30 degree$], [$45 degree$], [$60 degree$], [记忆技巧],
    [$sin$], [$frac(1, 2)$], [$frac(sqrt(2), 2)$], [$frac(sqrt(3), 2)$], [$frac(sqrt(1), 2), frac(sqrt(2), 2), frac(sqrt(3), 2)$],
    [$cos$], [$frac(sqrt(3), 2)$], [$frac(sqrt(2), 2)$], [$frac(1, 2)$], [与 $sin$ 反序],
    [$tan$], [$frac(sqrt(3), 3)$], [$1$], [$sqrt(3)$], [$frac(1, sqrt(3)), 1, sqrt(3)$],
  ))

  *记忆方法*：$sin 30 degree, sin 45 degree, sin 60 degree$ 分别是 $frac(sqrt(1), 2), frac(sqrt(2), 2), frac(sqrt(3), 2)$，根号下依次为 $1, 2, 3$。$cos$ 的值反过来。

  === 三角函数间的关系

  - $tan A = frac(sin A, cos A)$
  - $sin^2 A + cos^2 A = 1$（由勾股定理直接得出）
  - 互余关系：$sin A = cos(90 degree - A)$，$cos A = sin(90 degree - A)$

  *当角度不是 $30 degree$、$45 degree$、$60 degree$ 这类特殊角时*，通常用计算器或函数表查近似值。例如：

  - 用计算器可得 $tan 35 degree approx 0.7002$
  - 用计算器可得 $tan 40 degree approx 0.839$

  === 解直角三角形

  在直角三角形中，除直角外，再已知两个元素（其中至少一个是边），就能求出其余所有未知元素。

  #figure(
    cetz.canvas(length: 2cm, {
      import cetz.draw: *
      import cetz.angle: angle, right-angle
      // Ground line
      line((0, 0), (5, 0), stroke: 0.7pt)
      // Mountain peak
      let peak = (4.5, 2.5)
      let foot = (4.5, 0)   // foot of mountain (on ground)
      let observer = (0.5, 0)  // observer position
      // Mountain outline (vertical line = height h)
      line(foot, peak, stroke: 0.7pt)
      right-angle(foot, observer, peak, stroke: 0.4pt)
      // Line of sight from observer to peak
      line(observer, peak, stroke: (paint: red, thickness: 0.7pt))
      // Horizontal from observer (dotted)
      line(observer, (4.5, 0), stroke: (paint: luma(180), thickness: 0.5pt, dash: "dotted"))
      // Elevation angle mark at observer
      angle(observer, foot, peak, label: text(8pt)[$35degree$],
            radius: 0.7, stroke: 0.5pt + blue, direction: "near")
      // Height label
      content((peak.at(0)+0.3, (foot.at(1)+peak.at(1))/2), text(9pt)[$h$])
      // Horizontal distance label
      content(((observer.at(0)+foot.at(0))/2, -0.3), text(9pt)[$200 "m"$])
      // Labels
      circle(observer, radius: 0.06, fill: black, stroke: none)
      circle(peak, radius: 0.06, fill: black, stroke: none)
      content(observer, text(8pt)[观测者], anchor: "north", padding: 5pt)
      content(peak, text(8pt)[山顶], anchor: "south-west", padding: 3pt)
    }),
    caption: [仰角 $35degree$，水平距离 $200$ 米，$h = 200 tan 35degree approx 140$ 米]
  )

  *解题步骤*：
  + 标出已知元素和要求的元素
  + 选择包含已知和未知的三角函数
  + 列方程求解

  *例题 1*（回到测山高）：水平距离 $200$ 米，仰角 $35 degree$，求山高。

  解：设山高为 $h$。用计算器求得 $tan 35 degree approx 0.7002$。
  所以 $tan 35 degree = frac(h, 200)$，$h = 200 tan 35 degree approx 200 times 0.7002 approx 140$（米）。

  *例题 2*：梯子长 $5$ 米，与地面成 $60 degree$ 角，梯子顶端离地面多高？底端离墙多远？

  解：设高为 $h$，底端到墙距离为 $d$。
  $ sin 60 degree = frac(h, 5), quad h = 5 sin 60 degree = 5 times frac(sqrt(3), 2) = frac(5sqrt(3), 2) approx 4.33 "(米)" $
  $ cos 60 degree = frac(d, 5), quad d = 5 cos 60 degree = 5 times frac(1, 2) = 2.5 "(米)" $

  *例题 3*：从楼顶 $A$ 观测地面上的目标 $B$，俯角为 $45 degree$，楼高 $30$ 米。求 $A B$ 的水平距离。

  解：俯角 $45 degree$ 意味着 $tan 45 degree = frac(30, d) = 1$，所以 $d = 30$（米）。

  === 坡度与仰角俯角

  *坡度*（坡比）$= frac("升高", "水平距离") = tan alpha$，其中 $alpha$ 为坡角。

  例如：坡度 $1 : 2$ 意味着水平前进 $2$ 米，升高 $1$ 米，坡角 $alpha$ 满足 $tan alpha = frac(1, 2)$。

  *仰角*：视线在水平线*上方*与水平线的夹角。

  *俯角*：视线在水平线*下方*与水平线的夹角。
]

#mastery[
  *基础*

  + 在直角三角形中，$angle C = 90 degree$，$a = 3$，$c = 5$，求 $sin A$、$cos A$、$tan A$。
  + 不查表，直接写出 $sin 60 degree$、$cos 45 degree$、$tan 30 degree$ 的值。
  + 已知 $sin A = frac(5, 13)$（$A$ 为锐角），求 $cos A$ 和 $tan A$。

  *应用*

  + 一条公路的坡度为 $1 : 5$。从山脚到山顶的水平距离是 $500$ 米，求山的高度和公路的长度。
  + 小明站在离一棵树 $15$ 米的地方，测得树顶的仰角为 $40 degree$。小明的眼睛离地面 $1.6$ 米。求树的高度。（用计算器可得 $tan 40 degree approx 0.839$）

  *挑战*

  + 在一条笔直的公路上，观测点 $A$ 与 $B$ 相距 $40$ 米，且 $B$ 比 $A$ 更靠近塔底 $C$。从 $A$ 看塔顶 $D$ 的仰角为 $30 degree$，从 $B$ 看塔顶 $D$ 的仰角为 $60 degree$。求塔高 $C D$ 和 $B C$ 的长度。
  + 在 $triangle A B C$ 中，$angle C = 90 degree$，$angle A = alpha$。证明：$sin^2 alpha + cos^2 alpha = 1$。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + 由勾股定理 $b = sqrt(25 - 9) = 4$。$sin A = frac(3, 5)$，$cos A = frac(4, 5)$，$tan A = frac(3, 4)$。
  + $sin 60 degree = frac(sqrt(3), 2)$，$cos 45 degree = frac(sqrt(2), 2)$，$tan 30 degree = frac(sqrt(3), 3)$。
  + $sin^2 A + cos^2 A = 1$，$cos^2 A = 1 - frac(25, 169) = frac(144, 169)$，$cos A = frac(12, 13)$。$tan A = frac(sin A, cos A) = frac(5, 12)$。

  *应用*
  + 坡度 $1 : 5$，$tan alpha = frac(1, 5)$。山高 $= frac(500, 5) = 100$（米）。公路长 $= sqrt(500^2 + 100^2) = sqrt(260000) = 100sqrt(26) approx 510$（米）。
  + 设树高为 $h$。$tan 40 degree = frac(h - 1.6, 15)$，$h - 1.6 = 15 times 0.839 = 12.585$，$h approx 14.2$（米）。

  *挑战*
  + 设 $B C = x$ 米，塔高 $C D = h$ 米。
    由 $tan 60 degree = frac(h, x)$，得 $h = x sqrt(3)$。
    又由 $tan 30 degree = frac(h, x + 40) = frac(sqrt(3), 3)$，得 $h = frac(sqrt(3), 3)(x + 40)$。
    两式相等：$x sqrt(3) = frac(sqrt(3), 3)(x + 40)$。
    两边同乘 $sqrt(3)$，得 $3 x = x + 40$，所以 $x = 20$。
    因而 $h = 20 sqrt(3)$。
    所以 $B C = 20$ 米，$C D = 20 sqrt(3)$ 米。
  + 设 $B C = a$，$A C = b$，$A B = c$。$sin alpha = frac(a, c)$，$cos alpha = frac(b, c)$。$sin^2 alpha + cos^2 alpha = frac(a^2, c^2) + frac(b^2, c^2) = frac(a^2 + b^2, c^2) = frac(c^2, c^2) = 1$（由勾股定理 $a^2 + b^2 = c^2$）。
]

=== 课外一瞥：三角形面积的三角函数形式

#side-hack[
  *高中预告*：公式 $S = frac(1, 2) a b sin C$ 会在高中系统学习，这里只做认识，不作为本册要求。

  在 $triangle A B C$ 中，已知两边 $a$、$b$ 和它们的夹角 $C$。如何求面积？

  从 $A$ 向 $B C$ 作高 $h$，则 $h = b sin C$。代入三角形面积公式：
  $ S = frac(1, 2) a h = frac(1, 2) a b sin C $

  类似地：$S = frac(1, 2) b c sin A = frac(1, 2) a c sin B$。

  *意义*：只要知道两边和夹角，不需要先求高就能直接算面积。
]
