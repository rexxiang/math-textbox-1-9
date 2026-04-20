#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, secref, tryit, pitfall
#import "../lib/diagram-packages.typ": cetz

== §d26 三角比：让角度先变成稳定比例 <tool:d26-trigonometric-ratios>

#vocab[三角比 trigonometric ratios / 正弦 sine (sin) / 余弦 cosine (cos) / 正切 tangent (tan)]

#crisis[
  你已经会用 #secref("d23-pythagorean-theorem") 在直角三角形里处理三条边的关系。可要是现在只给你一个锐角，再给你一条边，另两条边之间有没有一条更直接的“比例密码”？

  *角度信息，能不能先被翻译成稳定的边长比例？*
]

#history-note[
  三角比最初并不是为了讲函数图象，而是为了把角度和长度接起来。只要人们反复遇到“同一个角，配上不同大小的直角三角形”这种情形，就会自然追问：这些边的比值会不会一直稳定？
]

#discovery[
  *第一步：角相同的直角三角形，其实只是彼此放大或缩小。*

  回看 #secref("d10-similar-triangles")：若两个直角三角形有同一个锐角，那么它们彼此相似。所以虽然大小不同，但对应边会按同一个倍数变化。

  *第二步：一旦大小一起变，边的比值就会稳住。*

  这意味着：对着同一个锐角去看，“对边 / 斜边”“邻边 / 斜边”“对边 / 邻边”都会保持不变。

  *第三步：于是角度就能先被翻译成比例。*

  这正是三角比的出发点。先把角度变成比例，后面才谈得上把比例接回长度。
]

#tryit[
  在直角三角形中，设一个锐角为 $A$，对边长 $3$，斜边长 $5$。

  + 把“对边和斜边的比”写出来。
  + 若先用 #secref("d23-pythagorean-theorem") 求出邻边，再把“邻边和斜边的比”“对边和邻边的比”写出来。
]

#side-hack[
  *先认清是哪两条边，再选合适的比*：

  - 想把高度和斜边连起来，就看“对边和斜边”
  - 想把水平距离和斜边连起来，就看“邻边和斜边”
  - 想把高度和水平距离连起来，就看“对边和邻边”

  先认清“相对于哪个角”的对边和邻边，再去决定该用哪一种三角比。
]

#blueprint[
  *一、为什么三角比只由角决定*

  若两个直角三角形都含有锐角 $A$，那么它们彼此相似（回看 #secref("d10-similar-triangles")）。所以相对于角 $A$ 的对应边会按同一个倍数一起变，边的比值就不会变。

  *二、三角比的定义*

#figure(
  cetz.canvas(length: 1.5cm, {
    import cetz.draw: *
    // Right triangle: angle A at origin, right angle at B
    let A = (0, 0)
    let B = (3, 0)
    let C = (3, 2.2)
    line(A, B, stroke: 0.8pt)
    line(B, C, stroke: 0.8pt)
    line(C, A, stroke: 0.8pt)
    // right angle at B
    line((2.75, 0), (2.75, 0.25), stroke: 0.5pt)
    line((2.75, 0.25), (3, 0.25), stroke: 0.5pt)
    // angle arc at A
    cetz.draw.arc(A, start: 0deg, stop: 35deg, radius: 0.6, stroke: 0.5pt)
    content((0.75, 0.25), text(8pt)[$A$])
    // vertex labels
    content(A, $A$, anchor: "north-east", padding: 3pt)
    content(B, $B$, anchor: "north-west", padding: 3pt)
    content(C, $C$, anchor: "south-west", padding: 3pt)
    // side labels
    content((1.5, -0.3), text(8pt, fill: blue)[邻边])   // AB = adjacent
    content((3.3, 1.1), text(8pt, fill: eastern)[对边])  // BC = opposite
    content((1.2, 1.3), text(8pt, fill: red)[斜边])      // AC = hypotenuse
  }),
  caption: [角 $A$ 的对边 $= BC$，邻边 $= AB$，斜边 $= AC$（斜边是直角三角形最长的边，在直角的对面）]
)

  在直角三角形中，对于锐角 $A$：

  $ sin A = frac("对边", "斜边") $

  $ cos A = frac("邻边", "斜边") $

  $ tan A = frac("对边", "邻边") $

  *三、在直角三角形里怎样直接求边*

  *例 1*：一个直角三角形中，锐角为 $30 degree$，斜边长 $10$。求这个角所对的直角边。

  解：相对于这个角，未知边是对边，已知边是斜边，所以

  $ sin 30 degree = frac(h, 10) $

  因而

  $ h = 10 times frac(1, 2) = 5 $

  *例 2*：一个直角三角形中，锐角为 $45 degree$，邻边长 $6$。求这个角所对的直角边。

  解：已知的是邻边，未知的是对边，所以

  $ tan 45 degree = frac(h, 6) = 1 $

  因而 $h = 6$。

  *四、特殊角的常用值*

  - $sin 30 degree = frac(1, 2)$，$cos 30 degree = frac(sqrt(3), 2)$，$tan 30 degree = frac(sqrt(3), 3)$
  - $sin 45 degree = frac(sqrt(2), 2)$，$cos 45 degree = frac(sqrt(2), 2)$，$tan 45 degree = 1$
  - $sin 60 degree = frac(sqrt(3), 2)$，$cos 60 degree = frac(1, 2)$，$tan 60 degree = sqrt(3)$

  这些值的作用，是让你在直角三角形里更快地把比例换成长度；仰角、俯角、坡度这些场景词，下一节再单独安放。
]

#pitfall[
  *陷阱 1：对边和邻边是“相对于所选角”而言的。*

  同一个三角形，换一个角观察，对边和邻边都会交换。

  *陷阱 2：计算器要看清角度模式。*

  本章默认用*度*，不是弧度。

  *陷阱 3：别把三角比当成函数章节里的图象概念。*

  在这里，它首先是右三角形里的稳定比例工具。
]

#mastery[
  *基础*

  + 在直角三角形中，若一个锐角的对边为 $3$，斜边为 $5$，求该角的 $sin$、$cos$、$tan$。

  + 直接写出 $sin 60 degree$、$cos 45 degree$、$tan 30 degree$。

  + 已知 $sin A = frac(5, 13)$（$A$ 为锐角），求 $cos A$ 和 $tan A$。

  *应用*

  + 一个直角三角形里，锐角为 $60 degree$，斜边长 $8$。求对边长。

  + 一个直角三角形里，锐角为 $30 degree$，斜边长 $10$。求邻边长。

  + 一个直角三角形里，锐角为 $45 degree$，邻边长 $9$。求对边长。

  *挑战*

  + *挑战*：两个直角三角形都有一个 $30°$ 的角，但大小不同：
    - 小三角形：斜边长 $2$，请求出对边（短直角边）和邻边（长直角边）
    - 大三角形：斜边长 $10$，请求出对边和邻边
    - 计算两个三角形的 $sin 30°$，看看结果是否相同
    - 用一句话解释：为什么不同大小的三角形，只要角度相同，三角比就一定相同？（提示：联系相似三角形的性质）

  + 已知 $sin A = frac(5, 13)$（$A$ 为锐角），请说明为什么还能继续求出 $cos A$ 和 $tan A$。

  + 若一个直角三角形里 $tan A = frac(3, 4)$，请你自己补出一组相容的三边比。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*

  + 邻边为 $4$，所以 $sin A = frac(3, 5)$，$cos A = frac(4, 5)$，$tan A = frac(3, 4)$。

  + $frac(sqrt(3), 2)$，$frac(sqrt(2), 2)$，$frac(sqrt(3), 3)$。

  + 这是 $5, 12, 13$ 直角三角形，所以 $cos A = frac(12, 13)$，$tan A = frac(5, 12)$。

  *应用*

  + $sin 60 degree = frac(h, 8) = frac(sqrt(3), 2)$，所以 $h = 4 sqrt(3)$。

  + $cos 30 degree = frac(x, 10) = frac(sqrt(3), 2)$，所以 $x = 5 sqrt(3)$。

  + $tan 45 degree = frac(h, 9) = 1$，所以 $h = 9$。

  *挑战*

  + 挑战答案：对于 $30°$ 角，$sin 30° = 1/2$（记忆值）。小三角形对边 $= 2 times (1/2) = 1$，邻边 $= 2 times (sqrt(3)/2) = sqrt(3)$；大三角形对边 $= 10 times (1/2) = 5$，邻边 $= 10 times (sqrt(3)/2) = 5sqrt(3)$。两个三角形 $sin 30°$ 都是 $1/2$，因为相似三角形对应边成比例，比值（即三角比）不变。

  + 因为直角三角形里还有 $5, 12, 13$ 这一组边比，所以 $cos A = frac(12, 13)$，$tan A = frac(5, 12)$。

  + 可取一组边比为对边 : 邻边 : 斜边 $= 3 : 4 : 5$。
]
