#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, secref, tryit, pitfall
#import "../lib/diagram-packages.typ": cetz

== §6.5 三角形：刚性、内角和与全等 <sec-6-5>

#vocab[刚性 rigidity / 三角形不等式 triangle inequality / 全等 congruent / 等腰三角形 isosceles triangle / 等边三角形 equilateral triangle]

#crisis[
  观察桥梁、塔吊和自行车车架，你会发现工程师特别偏爱三角形。

  原因很朴素：四边形框架轻轻一推就可能歪掉，而三角形框架往往能稳稳撑住。

  *为什么三角形这么“倔强”？又怎样判断两个三角形其实是同一个形状？*
]

#history-note[
  古埃及的拉绳工很早就知道：如果把绳子拉成三角形，框架会比四边形稳定得多。后来，欧几里得把这种经验变成了证明——三角形从此成了几何学里最重要的“基本零件”。
]

#discovery[
  *第一步：三条边一旦定下，三角形就不肯乱动。*

  用三根吸管和图钉做一个三角形框架，再做一个四边形框架。推一推：四边形会变形，三角形几乎不会。

  这说明：*三角形的三条边长度一旦确定，形状就被锁定了。* 这就是三角形的*刚性*。

  *第二步：但不是任意三条线段都能围成三角形。*

  长度为 $2$、$3$、$6$ 的三根小棒围不起来，因为前两根加起来还是不够长，碰不到第三根的另一端。

  于是我们得到第一个门槛：*任意两边之和必须大于第三边。*

  *第三步：三个角为什么总和是 $180 degree$？*

  把三角形的三个角撕下来拼一拼，看起来刚好是一条直线。但“看起来像”还不够，我们还要证明它。

  过顶点 $A$ 作一条与 $B C$ 平行的直线，用 #secref("6.4") 学过的内错角性质，就能把 $angle B$ 和 $angle C$ 搬到 $A$ 点旁边。三个角刚好拼成一个平角，于是：

#figure(
  cetz.canvas(length: 2cm, {
    import cetz.draw: *
    import cetz.angle: angle
    let A = (1.5, 2.5)
    let B = (0, 0)
    let C = (4, 0)
    let D = (-0.5, 2.5)
    let E = (4.5, 2.5)
    line(A, B, stroke: 0.7pt)
    line(A, C, stroke: 0.7pt)
    line(B, C, stroke: 0.7pt)
    line(D, E, stroke: (paint: blue, thickness: 0.6pt, dash: "dashed"))
    content(D, $D$, anchor: "east", padding: 2pt)
    content(E, $E$, anchor: "west", padding: 2pt)
    angle(B, C, A, label: $angle B$, radius: 0.5, stroke: 0.5pt + red, direction: "near")
    angle(C, A, B, label: $angle C$, radius: 0.5, stroke: 0.5pt + orange, direction: "near")
    angle(A, D, B, radius: 0.4, stroke: 0.5pt + red, direction: "near")
    angle(A, B, C, label: $angle A$, radius: 0.6, stroke: 0.5pt + blue, direction: "near")
    angle(A, C, E, radius: 0.4, stroke: 0.5pt + orange, direction: "near")
    content(A, $A$, anchor: "south", padding: 4pt)
    content(B, $B$, anchor: "north-east", padding: 3pt)
    content(C, $C$, anchor: "north-west", padding: 3pt)
  }),
  caption: [过 $A$ 作 $D E parallel B C$，把 $angle B$ 和 $angle C$ 搬到 $A$ 附近，三个角拼成一个平角]
)

  *第四步：怎样证明“这两个三角形其实完全一样”？*

  光说“看起来一样”不行。我们需要一套可靠的判定规则：哪些数据一旦相同，就能保证两个三角形完全重合？
]

#tryit[
  先自己想一想，再看下面的蓝图：

  + 长度为 $2$、$3$、$6$ 的三条线段能组成三角形吗？为什么？
  + 在 $triangle A B C$ 中，$angle A = 50 degree$，$angle B = 70 degree$，求 $angle C$。
  + 若 $triangle A B C$ 是等腰三角形，且 $A B = A C$、$angle A = 40 degree$，你猜 $angle B$ 和 $angle C$ 会是多少？
]

#side-hack[
  *SSA 不能判定全等。*

  已知两边和一个*非夹角*时，往往还能摆出不止一种三角形。记忆口诀：

  - 边边边：可以
  - 边角边：可以
  - 角边角 / 角角边：可以
  - 边边角：通常不行
]

#blueprint[
  *一、三角形存在的条件*

  若三边长为 $a, b, c$，则三角形存在当且仅当

  $a + b > c, quad a + c > b, quad b + c > a$

  常合写成：$abs(a - b) < c < a + b$。

  *二、三角形内角和定理*

  $angle A + angle B + angle C = 180 degree$

  直接推论：

  - 一个外角等于与它不相邻的两个内角之和
  - 一个外角大于任意一个与它不相邻的内角
  - 直角三角形的两个锐角互余

  *三、全等三角形*

  如果两个三角形的形状和大小完全相同，可以完全重合，就叫*全等*，记作

  $triangle A B C tilde.eq triangle D E F$

  常用判定：

  #table(
    columns: (auto, 1fr),
    align: left,
    [*SSS*], [三边分别相等],
    [*SAS*], [两边和夹角分别相等],
    [*ASA*], [两角和夹边分别相等],
    [*AAS*], [两角和其中一角的对边分别相等],
    [*HL*], [直角三角形中，斜边和一条直角边分别相等],
  )

  一旦全等，对应边相等、对应角相等。

  *四、用全等证明等腰三角形的底角相等*

  设 $triangle A B C$ 中 $A B = A C$。作顶角 $angle A$ 的平分线 $A D$，交底边 $B C$ 于点 $D$。

  在 $triangle A B D$ 和 $triangle A C D$ 中：

  - $A B = A C$（已知）
  - $angle B A D = angle D A C$（角平分线定义）
  - $A D = A D$（公共边）

  所以 $triangle A B D tilde.eq triangle A C D$（SAS）。

  因而：

  - $angle B = angle C$（等腰三角形底角相等）
  - $B D = D C$（$A D$ 同时是中线）
  - $angle A D B = angle C D A$

  由于 $B, D, C$ 三点共线，$angle A D B + angle C D A = 180 degree$，又两角相等，所以各为 $90 degree$。这说明 $A D perp B C$。

  于是我们得到著名结论：在等腰三角形中，顶角的角平分线、底边上的中线、底边上的高重合，这叫*三线合一*。

  *五、等边三角形*

  - 三边都相等的三角形叫*等边三角形*
  - 等边三角形的三个内角都等于 $60 degree$
  - 反过来，若三角形三个角都等于 $60 degree$，则它是等边三角形

  *例 1*：在 $triangle A B C$ 中，$angle A = 50 degree$，$angle B = 70 degree$，求 $angle C$。

  解：$angle C = 180 degree - 50 degree - 70 degree = 60 degree$。

  *例 2*：已知 $triangle A B C$ 与 $triangle D E F$ 满足 $A B = D E$，$A C = D F$，$angle A = angle D$。说明这两个三角形为什么全等，并求对应边 $B C$ 与 $E F$ 的关系。

  解：两边和夹角分别相等，所以 $triangle A B C tilde.eq triangle D E F$（SAS）。因此 $B C = E F$。
]

#pitfall[
  *陷阱 1：只看“最长两边之和”是不够严谨的。*

  实际做题时，若已经按从小到大排好，只需检查“较小两边之和是否大于最长边”；但在原始数据没排序时，别偷懒，要先看清谁最长。

  *陷阱 2：边边角不是全等判定。*

  #grid(columns: (1fr, 1fr), gutter: 8pt,
    block[*能判定*：\ SSS、SAS、ASA、AAS、HL],
    block[*不能直接判定*：\ SSA（两边和一个非夹角）]
  )
]

#mastery[
  *基础*

  + 下列三组线段能否组成三角形？说明理由。
    - $3, 4, 8$
    - $5, 7, 11$
    - $6, 6, 6$

  + 在 $triangle A B C$ 中，$angle A = 36 degree$，$angle B = 72 degree$。求 $angle C$，并判断这个三角形是否是等腰三角形。

  + 已知 $triangle A B C$ 与 $triangle D E F$ 中，$A B = D E$，$A C = D F$，$angle A = angle D$。这两个三角形用了哪个全等判定？

  *应用*

  + 等腰 $triangle A B C$ 中，$A B = A C$，$angle A = 40 degree$。求 $angle B$ 和 $angle C$。

  + 已知等腰 $triangle A B C$ 中，$A B = A C$，$A D$ 平分 $angle A$，点 $D$ 在 $B C$ 上。证明：$B D = D C$。

  + 已知 $triangle A B C$ 中，$angle C = 90 degree$，$angle A = 35 degree$。求 $angle B$。

  *挑战*

  + 已知 $triangle A B C$ 中，$A B = A C$。证明：从顶点 $A$ 向底边 $B C$ 作的角平分线，既是中线，又是高。

  + 若 $triangle A B C$ 中 $angle B = angle C$，证明 $A B = A C$。

  + 在 $triangle A B C$ 中，$angle A = 2 angle B$，$angle C = 3 angle B$。求三个角的度数。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*

  + $3 + 4 = 7 < 8$，不能组成三角形。$5 + 7 = 12 > 11$，且另外两组和也都大于第三边，能组成三角形。$6, 6, 6$ 能组成等边三角形。

  + $angle C = 180 degree - 36 degree - 72 degree = 72 degree$。因为 $angle B = angle C$，所以它是等腰三角形。

  + 两边和夹角分别相等，所以用 *SAS* 判定。

  *应用*

  + $angle B = angle C = frac(180 degree - 40 degree, 2) = 70 degree$。

  + 在 $triangle A B D$ 和 $triangle A C D$ 中，$A B = A C$，$A D = A D$，$angle B A D = angle D A C$，所以两三角形全等（SAS），于是 $B D = D C$。

  + $angle B = 180 degree - 90 degree - 35 degree = 55 degree$。

  *挑战*

  + 作 $A D$ 平分 $angle A$ 交 $B C$ 于 $D$。由 $A B = A C$、$A D$ 公共、$angle B A D = angle D A C$，得 $triangle A B D tilde.eq triangle A C D$。故 $B D = D C$，且 $angle A D B = angle C D A$。又两角互补，所以各为 $90 degree$。因此 $A D$ 同时是中线与高。

  + 设 $A D$ 平分 $angle A$。由上题思路，若 $angle B = angle C$，则 $angle B A D = angle D A C$，结合 $A D$ 公共、$angle B = angle C$，可得 $triangle A B D tilde.eq triangle A C D$（AAS），从而 $A B = A C$。

  + 设 $angle B = x$，则 $angle A = 2x$，$angle C = 3x$。由内角和得 $2x + x + 3x = 180 degree$，所以 $x = 30 degree$。因此 $angle A = 60 degree$，$angle B = 30 degree$，$angle C = 90 degree$。
]
