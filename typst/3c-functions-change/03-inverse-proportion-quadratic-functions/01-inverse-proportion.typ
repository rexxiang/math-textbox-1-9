#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 反比例函数：$y = k / x$ <tool:fn07-inverse-proportion>

#vocab[反比例函数 inverse proportion][双曲线 hyperbola][常积关系 constant-product relation]

#crisis[
  $12$ 个苹果要分给一群人，每人拿到的数目 $y$ 取决于总人数 $x$：$1$ 人拿 $12$、$2$ 人每人拿 $6$、$3$ 人每人拿 $4$、$4$ 人每人拿 $3$、$6$ 人每人拿 $2$…… 写成表：

  #align(center, table(
    columns: 7,
    align: center,
    stroke: 0.4pt,
    [$x$], [$1$], [$2$], [$3$], [$4$], [$6$], [$12$],
    [$y$], [$12$], [$6$], [$4$], [$3$], [$2$], [$1$],
  ))

  这里 $x$ 增加时 $y$ 反而减少，和正比例 / 一次函数完全相反。细看也有一条铁律：*$x times y = 12$，永远不变*——苹果总数不变。

  *这一类“两量乘积不变”的关系，该写成怎样的函数公式？图像长什么样？哪些日常情景属于它？*
]

#tryit[
  某工厂每天生产 $y$ 件产品，共生产 $x$ 天，总产量 $120$ 件。写出 $y$ 关于 $x$ 的函数，是反比例吗？
]

#discovery[
  分苹果：$x$ 人分 $12$ 个，每人拿 $y$ 个。$x$ 增大时 $y$ 减小，正比例肯定不行。也许是"$y$ 减去某个常数"？试 $y = C - x$：当 $x = 1$ 时 $y = 12$，得 $C = 13$；当 $x = 2$ 时预测 $13 - 2 = 11$——实际是 $6$，差了 $5$。

  试着推下去——

  再试 $y = C - 2x$：$x = 1$ 时 $C = 14$；$x = 3$ 时预测 $8$，实际 $4$，差 $4$；$x = 4$ 时预测 $6$，实际 $3$，差 $3$；$x = 6$ 时预测 $2$，实际 $2$——刚好。但不同数据点要求不同的 $C$ 或斜率，没有一个线性公式能同时拟合所有点。

  加法增长无法描述"$x$ 翻倍时 $y$ 减半"的节奏——数据里隐藏的规律是乘积 $x y = 12$ 恒定，不是差恒定，硬套一次函数怎么调系数都对不上。

  *从“乘积不变”到公式*

  $x y = 12$ 表示“分苹果”情境里 $x$ 与 $y$ 的约束关系。解出 $y$：

  $ y = 12 / x. $

  一般地，若两个变量的乘积恒为一个非零常数 $k$，则 $y = k / x$——*反比例函数*。

  *反比例函数*

  形如

  $ y = k / x quad (k != 0) $

  的函数叫反比例函数。$k$ 叫*比例常数*（与正比例的 $k$ 同名但意义不同——这里是*乘积*常量）。

  *定义域*（回顾 #secref("fn03-formula-as-function-view")）：$x != 0$（分母不能为 $0$），即 ${x | x != 0}$。注意这里定义域*不是整条实数轴*，$x = 0$ 被强制挖掉。

  *三张面孔*

  *表*（以 $k = 12$ 为例，$x$ 取正负）：

  #align(center, table(
    columns: 9,
    align: center,
    stroke: 0.4pt,
    [$x$], [$-12$], [$-6$], [$-3$], [$-1$], [$1$], [$3$], [$6$], [$12$],
    [$y$], [$-1$], [$-2$], [$-4$], [$-12$], [$12$], [$4$], [$2$], [$1$],
  ))

  观察：
  - $x$ 正时 $y$ 正；$x$ 负时 $y$ 负（$k > 0$ 情形），两个象限一正一负。
  - $x$ 越接近 $0$，$|y|$ 越大（趋于无穷）；$|x|$ 越大，$|y|$ 越接近 $0$。
  - $x$ 与 $y$ 每行乘起来都是 $12$——这是反比例的*本质*。

  *图*（以 $y = 1 / x$ 为例，$k > 0$）：

  #figure(
    cetz.canvas(length: 0.5cm, {
      import cetz.draw: *
      line((-5, 0), (5, 0), stroke: (paint: rgb("#555"), thickness: 0.55pt, dash: "dashed"), mark: (end: ">"))
      line((0, -5), (0, 5), stroke: (paint: rgb("#555"), thickness: 0.55pt, dash: "dashed"), mark: (end: ">"))
      content((5.2, 0), $x$, anchor: "west")
      content((0, 5.3), $y$, anchor: "south")
      content((3.4, -0.5), text(size: 6pt, fill: rgb("#555"))[渐近线 $y = 0$], anchor: "north")
      content((0.35, 4.2), text(size: 6pt, fill: rgb("#555"))[渐近线 $x = 0$], anchor: "west")
      content((0.35, -4.3), text(size: 6pt, fill: rgb("#C62828"))[$x = 0$ 不能取], anchor: "west")
      // branch I: y = 1/x for x in [0.25, 5]
      let samples1 = range(0, 96).map(i => {
        let x = 0.25 + 0.05 * i
        (x, 1.0 / x)
      })
      for i in range(0, samples1.len() - 1) {
        line(samples1.at(i), samples1.at(i + 1), stroke: 0.7pt + rgb("#1976D2"))
      }
      // branch III: y = 1/x for x in [-5, -0.25]
      let samples2 = range(0, 96).map(i => {
        let x = -5 + 0.05 * i
        (x, 1.0 / x)
      })
      for i in range(0, samples2.len() - 1) {
        line(samples2.at(i), samples2.at(i + 1), stroke: 0.7pt + rgb("#1976D2"))
      }
      for pt in ((1, 1), (2, 0.5), (0.5, 2), (-1, -1), (-2, -0.5), (-0.5, -2)) {
        circle(pt, radius: 0.11, fill: rgb("#C62828"), stroke: 0.5pt + rgb("#7F0000"))
      }
      content((1.1, 1.25), text(size: 6pt, fill: rgb("#C62828"))[$(1,1)$], anchor: "south-west")
      content((2.1, 0.8), text(size: 6pt, fill: rgb("#C62828"))[$(2,1/2)$], anchor: "south-west")
      content((-1.1, -1.25), text(size: 6pt, fill: rgb("#C62828"))[$(-1,-1)$], anchor: "north-east")
      content((-2.1, -0.8), text(size: 6pt, fill: rgb("#C62828"))[$(-2,-1/2)$], anchor: "north-east")
      content((3.0, 2.0), text(7pt)[$y = 1 / x$], anchor: "west")
    }),
    caption: [$y = 1 / x$ 的图像：两支双曲线在第一、第三象限；坐标轴是渐近线，点会越来越靠近它们，但不会经过 $x = 0$。]
  )

  图像有*两支*，分别位于第一、三象限（$k > 0$）或第二、四象限（$k < 0$）。每支都靠近 $x$ 轴和 $y$ 轴但*永不相交*——这两条轴叫*渐近线*；特别是 $x = 0$ 会让分母为 $0$，所以图像不能穿过 $y$ 轴。

  #figure(
    cetz.canvas(length: 0.5cm, {
      import cetz.draw: *
      line((-5, 0), (5, 0), stroke: 0.4pt, mark: (end: ">"))
      line((0, -5), (0, 5), stroke: 0.4pt, mark: (end: ">"))
      content((5.2, 0), $x$, anchor: "west")
      content((0, 5.3), $y$, anchor: "south")
      // branch II: y = -2/x for x in [-5, -0.5]
      let samples1 = range(0, 45).map(i => {
        let x = -5 + 0.1 * i
        (x, -2.0 / x)
      })
      for i in range(0, samples1.len() - 1) {
        line(samples1.at(i), samples1.at(i + 1), stroke: 0.7pt + rgb("#B71C1C"))
      }
      // branch IV: y = -2/x for x in [0.5, 5]
      let samples2 = range(0, 45).map(i => {
        let x = 0.5 + 0.1 * i
        (x, -2.0 / x)
      })
      for i in range(0, samples2.len() - 1) {
        line(samples2.at(i), samples2.at(i + 1), stroke: 0.7pt + rgb("#B71C1C"))
      }
      content((-3.5, -1.3), text(7pt)[$y = k / x$, $k < 0$])
    }),
    caption: [反比例函数（$k < 0$）的图像：两支双曲线分别位于第二、第四象限。]
  )

  *与正比例的本质区别*

  #align(center, table(
    columns: (auto, 1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [], [*正比例* $y = k x$], [*反比例* $y = k / x$],
    [定义域], [$RR$], [${x | x != 0}$],
    [图像], [过原点的直线], [两支双曲线，不过原点],
    [数据特征], [$y / x = k$（商恒定）], [$y x = k$（积恒定）],
    [$x$ 增大], [$y$ 按正比例增], [$|y|$ 按反比例减],
  ))
]

#tryit[
  + 下表是不是反比例？若是，求 $k$：
    #align(center, table(
      columns: 5,
      align: center,
      stroke: 0.4pt,
      [$x$], [$2$], [$3$], [$6$], [$8$],
      [$y$], [$12$], [$8$], [$4$], [$3$],
    ))
]

#history-note[
  反比例关系在古希腊就已现身：约公元前 $250$ 年阿基米德（Archimedes）在《论平面图形的平衡》中写下杠杆律——杠杆两端"力 $times$ 力臂"相等，即 $F_1 L_1 = F_2 L_2$ 时杠杆才平衡。当一侧负载 $F_1 L_1$ 固定时，另一侧的力 $F_2$ 与力臂 $L_2$ 就*成反比例*：力臂越长，所需的力越小。注意"反比例"是杠杆律在"一侧固定"条件下导出的关系，并不是杠杆律本身。$1662$ 年波义耳（Robert Boyle）发表气体实验结果：恒温下气体压强与体积成反比，$P V = "常数"$——这就是波义耳定律，化学和物理课本里至今必学。两个时隔近两千年的发现共享同一个数学模板："两量乘积不变"。
]

#blueprint[
  *工具：反比例函数 $y = k / x$*

  *定义*：形如 $y = k / x$（$k != 0$）的函数。等价于 $x y = k$（两量乘积恒为非零常数 $k$）。

  *定义域*：${x | x != 0}$。

  *图像*：两支*双曲线*。
  - $k > 0$：图像在第一、三象限。
  - $k < 0$：图像在第二、四象限。
  - 两条坐标轴是*渐近线*：图像无限靠近但不相交、不穿过原点。

  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *
      line((-6, 0), (6, 0), stroke: 0.4pt, mark: (end: ">"))
      line((0, -5), (0, 5), stroke: 0.4pt, mark: (end: ">"))
      content((6.2, 0), $x$, anchor: "west")
      content((0, 5.3), $y$, anchor: "south")
      // y = 2x (linear, dashed blue)
      line((-2, -4), (2, 4), stroke: (paint: rgb("#1976D2"), thickness: 0.6pt, dash: "dashed"))
      content((1.8, 4.2), text(7pt)[$y = 2 x$], anchor: "west")
      // y = 2/x (hyperbola, solid red)
      let s1 = range(0, 45).map(i => {
        let x = 0.5 + 0.1 * i
        (x, 2.0 / x)
      })
      for i in range(0, s1.len() - 1) {
        line(s1.at(i), s1.at(i + 1), stroke: 0.7pt + rgb("#B71C1C"))
      }
      let s2 = range(0, 45).map(i => {
        let x = -5 + 0.1 * i
        (x, 2.0 / x)
      })
      for i in range(0, s2.len() - 1) {
        line(s2.at(i), s2.at(i + 1), stroke: 0.7pt + rgb("#B71C1C"))
      }
      content((3.5, 1.2), text(7pt)[$y = 2 / x$])
      circle((0, 0), radius: 0.1, fill: black)
      content((0.4, -0.4), text(6pt)[$O$])
    }),
    caption: [正比例 $y = 2 x$（直线，过原点）与反比例 $y = 2 / x$（双曲线，不过原点）的图像对照。]
  )

  *识别法（任一成立）*

  + 公式形如 $y = k / x$（$k != 0$）。
  + 所有数据 $(x, y)$ 满足 $x y = k$（同一个非零常数）。
  + 图像是双曲线两支。

  *综合例*：$y$ 与 $x$ 成反比例，$x = 4$ 时 $y = -3$。

  - 求 $k$：$k = x y = 4 times (-3) = -12$，故 $y = -12 / x$。
  - $x = 6$ 时 $y = ?$：$y = -12 / 6 = -2$。
  - $y = 4$ 时 $x = ?$：$4 = -12 / x => x = -3$。
]

#pitfall[
  *高频错误*

  ✗ 把 $y = k / x$ 的定义域写成 $RR$
  → ✓ $x = 0$ 分母为零，必须挖掉。

  ✗ 把 $y = -2 / x + 3$ 误认为反比例
  → ✓ 多出 $+ 3$ 的常数项——不再是 $y = k / x$ 的模板，只是“反比例图像上移 $3$”。它不算反比例函数（虽然高中会称“分式函数”）。

  ✗ 把 $y = 2 / x^2$ 当成反比例
  → ✓ 分母是 $x^2$ 不是 $x$，不符模板。它在数据上不满足 $x y = k$，而是 $x^2 y = 2$。
  看到 $x$ 在分母就直接判“反比例”，没去对一下模板长什么样。

  ✗ 在画双曲线时把两支连起来、甚至穿过原点
  → ✓ 两支是分离的，中间隔着 $x = 0$ 这条铅垂线（渐近线）。永远不能连过原点。

  ✗ 说反比例函数“恒单调递减”
  → ✓ 只有在*同一支*里才单调。$k > 0$ 时第一象限那支随 $x$ 增而 $y$ 减；但从第三象限那支跨到第一象限时，会从负无穷跳到正无穷——两支之间没有大小可比。
]

#mastery[
  *基础*

  + 下列哪些是反比例？若是，给出 $k$。
    - (a) $y = 5 / x$
    - (b) $y = -7 / x$
    - (c) $y = 2 / (x - 1)$
    - (d) $y = 3 / x + 1$
    - (e) $x y = -8$
  + 列出 $y = 6 / x$ 在 $x = -3, -1, -0.5, 0.5, 1, 3$ 处的输出。它的图像在哪两个象限？
  + 设 $y$ 与 $x$ 成反比例，$x = -2$ 时 $y = 10$。求 $k$ 并写 $y = k / x$。

  *应用*

  + 某段直线公路 $120$ 公里，汽车以 $v$（公里 / 小时）匀速行驶，用时 $t$ 小时。$t$ 与 $v$ 是什么关系？写出 $t = f(v)$ 并给出定义域。
  + 体积 $V$ 固定为 $1 "L"$ 的气体，压强 $P$（atm）与体积 $V_0$（升）满足 $P V_0 = 1$。若让 $P$ 变、体积也变且乘积始终为 $1$，这是什么函数？
  + 同一工作总量 $W = 48$ 单位。若每人每天做 $y$ 单位，共 $x$ 人，$1$ 天做完，则 $x y = 48$。$4$ 人每天做多少？$6$ 人呢？$8$ 人呢？写出 $y = f(x)$。

  *挑战*

  + 反比例函数 $y = k / x$ 的图像过点 $(-3, 8)$。求 $k$、$y = 2$ 时的 $x$、$y = -4$ 时的 $x$。
  + 在直角坐标系中，反比例图像 $y = 6 / x$ 与直线 $y = x$ 有几个交点？坐标是什么？
  + 下表是否符合反比例？若是，求 $k$ 与 $y = f(x)$：
    #align(center, table(
      columns: 5,
      align: center,
      stroke: 0.4pt,
      [$x$], [$-4$], [$-2$], [$3$], [$5$],
      [$y$], [$6$], [$12$], [$-8$], [$-4.8$],
    ))
  + *[反直觉]* 判断："反比例函数 $y = k / x$ 一定是减函数（$x$ 增大 $y$ 减小）。" 给反例并解释：单调性在哪个范围内是真的、哪个范围会被打破？
  + *[跨知识点]* 反比例 $y = 6 / x$ 的图像与正比例 $y = -x$（呼应 #secref("tool:fn04-direct-variation")）的图像在坐标平面上是否相交？若相交，求出所有交点；若不相交，说明理由。
  + *[构造题]* 构造一个反比例函数 $y = k / x$，使它的图像同时通过 $(2, ?)$ 和 $(-3, ?)$，且两个 $?$ 之差恰为 $5$。请算出 $k$、两个 $?$ 的具体值，并验证。

  #answer-cut[

  *基础*
  + (a) ✓ $k = 5$；(b) ✓ $k = -7$（反比例定义：$y = k / x$）；(c) ✗（分母是 $x - 1$ 不是 $x$）；(d) ✗（多了 $+ 1$）；(e) $y = -8 / x$ ✓ $k = -8$（反比例定义：$y = k / x$）。
  + 表：$(-3, -2), (-1, -6), (-0.5, -12), (0.5, 12), (1, 6), (3, 2)$。$k = 6 > 0 =>$ 图像在第一、三象限（$k > 0$ 象限判定）。
  + $k = x y = -2 times 10 = -20$（$k = x y$），$y = -20 / x$。

  *应用*
  + $t = 120 / v$（反比例定义：$y = k / x$）。定义域 ${v | v > 0}$（定义域：$x != 0$，且速度为正）。
  + *反比例函数* $P = 1 / V_0$，$k = 1$（$P V_0 = k$ 恒定 → 反比例）。
  + $x y = 48 => y = 48 / x$（$k = x y$）。$4$ 人：$12$；$6$ 人：$8$；$8$ 人：$6$。

  *挑战*
  + 先求 $k = -3 times 8 = -24$（$k = x y$），$y = -24 / x$。$y = 2$：$x = -24 / 2 = -12$；$y = -4$：$x = -24 / (-4) = 6$（代入反比例公式求 $x$）。
  + 联立 $x = 6 / x => x^2 = 6 => x = plus.minus sqrt(6)$，对应 $y = plus.minus sqrt(6)$。两个交点 $(sqrt(6), sqrt(6))$ 与 $(-sqrt(6), -sqrt(6))$（联立方程法求交点）。
  + 检查乘积：$(-4)(6) = -24$、$(-2)(12) = -24$、$(3)(-8) = -24$、$(5)(-4.8) = -24$——全 $= -24$（$k = x y$ 恒定 → 反比例）。$k = -24$，$y = -24 / x$。
  + 不对。反比例 $y = k/x$ 在*每一支*上单调，但整体不能说"减函数"——它有 $x = 0$ 这个间断。当 $k > 0$ 时，$y$ 在 $(0, +infinity)$ 上递减、在 $(-infinity, 0)$ 上也递减，但跨过 $x = 0$ 时 $y$ 从 $-infinity$ 跳到 $+infinity$，整体不是单调；当 $k < 0$ 时，$y$ 在每一支上*递增*。例：$y = -1/x$，$x = 1$ 时 $y = -1$，$x = 2$ 时 $y = -0.5$，$y$ 反而增大。所以"$y = k/x$ 一定减"在 $k < 0$ 时整支都不成立（单调性按支讨论，且方向看 $k$ 的符号）。
  + 联立 $-x = 6/x ⇒ -x^2 = 6 ⇒ x^2 = -6$，无实数解，所以两图像*不相交*。几何解释：$y = 6/x$（$k = 6 > 0$）的双曲线落在第一、三象限；$y = -x$（呼应 #secref("tool:fn04-direct-variation")）落在第二、四象限——它们所在的象限不重叠，自然不相交。
  + 设 $(2, a)$ 与 $(-3, b)$ 都在 $y = k/x$ 上：$2 a = k$ 与 $-3 b = k$，所以 $2 a = -3 b$，即 $a = -3 b slash 2$。又 $a - b = 5$：$(-3 b slash 2) - b = -5 b slash 2 = 5 ⇒ b = -2$，$a = 3$，$k = 2 times 3 = 6$。验证：$y = 6/x$ 上的 $(2, 3)$ 与 $(-3, -2)$ ✓，$3 - (-2) = 5$ ✓。
  ]
]
