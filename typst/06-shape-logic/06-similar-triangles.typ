#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, secref, tryit, pitfall
#import "../lib/diagram-packages.typ": cetz

== §6.6 三角形：相似、比例与中位线 <sec-6-6>

#vocab[相似 similar / 相似比 scale factor / 对应边 corresponding sides / 中位线 midsegment]

#crisis[
  你想知道校门口旗杆有多高，但既爬不上去，也没法把旗杆放倒来量。

  同一时刻，你在地上竖起一根 $1.5$ 米长的小木杆，它的影子长 $2$ 米；旗杆的影子长 $12$ 米。

  旗杆和木杆显然*不是同样大小*，所以用“全等”已经不够了。可是它们和太阳光形成的三角形，看起来又像是同一种形状。

  *怎样把“形状相同，大小不同”这件事变成可以计算的数学工具？*
]

#history-note[
  *泰勒斯测金字塔*：传说泰勒斯到埃及后，用木棍和影子测出了金字塔的高度。秘诀不是“碰巧比例差不多”，而是：在同一束太阳光下形成的三角形，角相同，形状也相同。这是相似三角形最早的经典应用之一。
]

#discovery[
  *第一步：全等解决“完全一样”，但现实里常常只有“同样形状”。*

  比如边长分别为 $3, 4, 5$ 和 $6, 8, 10$ 的两个直角三角形：一个明显比另一个大一倍，但角看起来完全一样。

  这类图形不是全等，却有一种更宽松的“相同”：*形状相同，只是被放大或缩小了。*

  *第二步：角相同以后，边会按同一个倍数一起变化。*

  在上面的例子里：

  $frac(6, 3) = frac(8, 4) = frac(10, 5) = 2$

  三组对应边都乘了同一个倍数 $2$。这就是*相似比*。

  *第三步：比例不只发生在整幅图上，也会发生在图中的“局部复制”里。*

  在 $triangle A B C$ 中，如果在两边上分别取点 $M$、$N$，并且连线 $M N parallel B C$，那么小三角形 $triangle A M N$ 和大三角形 $triangle A B C$ 的对应角就会相等，于是它们会相似。

  *第四步：中点会带来最干净的比例。*

  如果 $M$、$N$ 恰好是两边中点，那么

  $frac(A M, A B) = frac(A N, A C) = frac(1, 2)$

  于是小三角形正好是大三角形的“半尺寸版本”。这就是中位线定理背后的原因。
]

#tryit[
  先自己算一算，再看蓝图：

  已知两个三角形的边长分别为 $3, 4, 5$ 和 $6, 8, 10$。

  + 它们是全等还是相似？
  + 相似比是多少？
  + 如果较小三角形面积是 $12$，较大三角形面积会是多少？
]

#side-hack[
  *相似比 $k$ 管三件事：*

  - 对应边之比 $= k$
  - 对应周长之比 $= k$
  - 对应面积之比 $= k^2$

  长度跟着 $k$ 走，面积跟着 $k^2$ 走——面积总是“慢一拍地平方放大”。
]

#blueprint[
  *一、相似三角形的定义*

  两个三角形如果*对应角分别相等*、*对应边成比例*，就叫*相似三角形*，记作

  $triangle A B C tilde triangle D E F$

  设相似比为 $k$，则

  $frac(A B, D E) = frac(B C, E F) = frac(C A, F D) = frac(1, k)$

  *二、相似三角形的判定*

  #table(
    columns: (auto, 1fr),
    align: left,
    [*AA*], [两组角分别相等],
    [*SAS*], [两组对应边成比例，且夹角相等],
    [*SSS*], [三组对应边成比例],
  )

  *三、相似三角形的性质*

  - 对应角相等
  - 对应边之比等于相似比 $k$
  - 对应周长之比也等于 $k$
  - 对应面积之比等于 $k^2$

  *四、平行线制造相似三角形*

  在 $triangle A B C$ 中，若点 $D$ 在 $A B$ 上，点 $E$ 在 $A C$ 上，且 $D E parallel B C$，则

  $triangle A D E tilde triangle A B C$

  原因很直接：由平行线性质，$angle A D E = angle A B C$，$angle A E D = angle A C B$，而 $angle A$ 公共，所以两三角形满足 AA 判定。

  *五、中位线定理为什么成立？*

  在 $triangle A B C$ 中，若 $M$、$N$ 分别是 $A B$、$A C$ 的中点，那么

  $frac(A M, A B) = frac(1, 2), quad frac(A N, A C) = frac(1, 2)$

  且 $angle M A N = angle B A C$，所以

  $triangle A M N tilde triangle A B C$

  于是：

  - $frac(M N, B C) = frac(1, 2)$，即 $M N = frac(1, 2) B C$
  - $angle A M N = angle A B C$，所以 $M N parallel B C$

  这就是*中位线平行于第三边，且等于第三边的一半*。

#figure(
  cetz.canvas(length: 2.2cm, {
    import cetz.draw: *
    let A = (2, 3)
    let B = (0, 0)
    let C = (4.5, 0)
    let M = ((A.at(0)+B.at(0))/2, (A.at(1)+B.at(1))/2)
    let N = ((A.at(0)+C.at(0))/2, (A.at(1)+C.at(1))/2)
    line(A, B, stroke: 0.7pt)
    line(A, C, stroke: 0.7pt)
    line(B, C, stroke: 0.7pt)
    line(M, N, stroke: (paint: red, thickness: 0.8pt))
    circle(M, radius: 0.06, fill: red, stroke: none)
    circle(N, radius: 0.06, fill: red, stroke: none)
    content(A, $A$, anchor: "south", padding: 4pt)
    content(B, $B$, anchor: "north-east", padding: 3pt)
    content(C, $C$, anchor: "north-west", padding: 3pt)
    content(M, $M$, anchor: "east", padding: 5pt)
    content(N, $N$, anchor: "west", padding: 5pt)
    content(((B.at(0)+C.at(0))/2, -0.3), $B C$)
    content(((M.at(0)+N.at(0))/2, (M.at(1)+N.at(1))/2 + 0.3),
            text(8pt, fill: red)[$M N = frac(1, 2) B C$])
  }),
  caption: [$M$、$N$ 是中点时，$triangle A M N$ 是 $triangle A B C$ 的半尺寸版本]
)

  *例 1*：已知 $triangle A B C tilde triangle D E F$，且 $A B = 6$，$D E = 9$，$B C = 8$，求 $E F$。

  解：相似比 $= frac(D E, A B) = frac(9, 6) = frac(3, 2)$，所以 $E F = 8 times frac(3, 2) = 12$。

  *例 2*：一根 $1.5$ 米木杆影长 $2$ 米，旗杆影长 $12$ 米。求旗杆高。

  解：同一时刻太阳光形成的两个直角三角形相似，所以

  $frac(h, 1.5) = frac(12, 2) = 6$

  因而 $h = 1.5 times 6 = 9$（米）。

  *例 3*：若两个相似三角形的边长比为 $2 : 3$，求面积比。

  解：面积比 $= 2^2 : 3^2 = 4 : 9$。
]

#pitfall[
  *陷阱 1：相似不等于全等。*

  全等要求“形状一样、大小也一样”；相似只要求“形状一样”，允许整体放大或缩小。

  *陷阱 2：面积比不是边长比。*

  若相似比 $k = 3$，那么面积不是扩大到 $3$ 倍，而是扩大到 $9$ 倍。
]

#mastery[
  *基础*

  + 边长分别为 $3, 4, 5$ 和 $6, 8, 10$ 的两个三角形是全等还是相似？相似比是多少？

  + 已知两个相似三角形的相似比是 $2 : 5$，较小三角形周长为 $18$。求较大三角形周长。

  + 已知两个相似三角形的相似比是 $3 : 4$，较小三角形面积为 $27$。求较大三角形面积。

  *应用*

  + 在 $triangle A B C$ 中，点 $D$ 在 $A B$ 上，点 $E$ 在 $A C$ 上，且 $D E parallel B C$。若 $A D = 4$，$A B = 10$，$B C = 15$，求 $D E$。

  + 在 $triangle A B C$ 中，$M$、$N$ 分别是 $A B$、$A C$ 的中点。若 $B C = 18$，求 $M N$。

  + 一面墙的影子长 $8$ 米；同时，一根 $1.2$ 米高的标杆影长 $1.5$ 米。求墙高。

  *挑战*

  + 证明：如果一个三角形的一条线段平行于第三边，那么截出的较小三角形与原三角形相似。

  + 已知 $triangle A B C tilde triangle D E F$，相似比为 $k$。证明它们的面积比是 $k^2$。

  + 在 $triangle A B C$ 中，$M$、$N$ 分别是 $A B$、$A C$ 的中点。若 $A B = 8$，$A C = 10$，$B C = 12$，求 $triangle A M N$ 的周长。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*

  + 它们相似，不是全等；相似比为 $2$。

  + 周长之比也为 $2 : 5$，所以较大三角形周长 $= 18 times frac(5, 2) = 45$。

  + 面积比 $= 3^2 : 4^2 = 9 : 16$，所以较大三角形面积 $= 27 times frac(16, 9) = 48$。

  *应用*

  + 因为 $D E parallel B C$，所以 $triangle A D E tilde triangle A B C$。$frac(D E, B C) = frac(A D, A B) = frac(4, 10)$，故 $D E = 15 times frac(4, 10) = 6$。

  + 中位线定理给出 $M N = frac(1, 2) B C = 9$。

  + 由相似得 $frac(h, 1.2) = frac(8, 1.5)$，所以 $h = 1.2 times frac(8, 1.5) = 6.4$（米）。

  *挑战*

  + 因为 $D E parallel B C$，所以 $angle A D E = angle A B C$，$angle A E D = angle A C B$，再加上 $angle A$ 公共，因此 $triangle A D E tilde triangle A B C$（AA）。

  + 设对应边长之比为 $k$。把较小三角形的一条边看作底，对应高也按同样比例缩放为 $k$，所以面积按 $k times k = k^2$ 缩放。

  + 由中点得 $A M = 4$，$A N = 5$，且 $M N = frac(1, 2) B C = 6$。故周长为 $4 + 5 + 6 = 15$。
]
