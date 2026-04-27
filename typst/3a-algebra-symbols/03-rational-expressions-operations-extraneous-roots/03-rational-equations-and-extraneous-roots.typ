#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 分式方程与增根 <tool:al03-rational-equations-and-extraneous-roots>

#vocab[分式方程 rational equation][去分母 clearing denominators][增根 extraneous root][验根 checking the solution]

#crisis[
  分母里出现未知量的方程，像下面这样：

  $ 2/(x - 1) = (x + 1)/(x - 1) + 1 $

  直觉做法很自然：两边同乘 $(x - 1)$ 把分母去掉，不就变成整式方程了吗？做一下：

  $ 2 = (x + 1) + (x - 1) = 2 x => x = 1 $

  干净利落。可是把 $x = 1$ 代回原式：$2/(1 - 1) = 2/0$——分母变成零，原方程根本无意义。我们好像“没算错”，却得到了一个不能成立的答案。

  这个看似自相矛盾的现象，正是*增根*的诞生。本节的任务：搞清增根是怎么出现的；给出解分式方程的固定步骤；从此*验根*成为分式方程里*不能省略的一步*。
]

#discovery[
  *为什么会冒出增根？*

  原分式方程 $2/(x - 1) = (x + 1)/(x - 1) + 1$ 内含一个限制：$x != 1$。

  你乘上 $(x - 1)$ 之后得到的整式方程 $2 = (x + 1) + (x - 1)$，对*任何* $x$ 都有意义——包括 $x = 1$。原方程不能取的值，新方程并不认识这条禁令。

  所以整式方程可能比原方程“多出”解——那些多出来的、只在整式方程里合法、但在原方程里让某个分母为零的值，就叫*增根*。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#1565C0")
      let red = rgb("#C62828")
      let orange = rgb("#E65100")
      let gray = luma(160)

      // Label: original equation domain
      content((5, 4.5), text(size: 7pt, weight: "bold")[原方程定义域], anchor: "south")

      // Main axis
      line((-4.5, 0), (6.5, 0), stroke: 1pt + gray)

      // Valid domain (blue line with gap at x=1)
      line((-4.5, 0), (0.8, 0), stroke: 2pt + blue)
      line((1.2, 0), (6.5, 0), stroke: 2pt + blue)

      // Arrow tips
      line((-4.5, 0.08), (-4.8, 0), stroke: 1pt + blue)
      line((-4.5, -0.08), (-4.8, 0), stroke: 1pt + blue)
      line((6.5, 0.08), (6.8, 0), stroke: 1pt + blue)
      line((6.5, -0.08), (6.8, 0), stroke: 1pt + blue)

      // Tick marks
      for x in range(-4, 7) {
        line((x, -0.2), (x, 0.2), stroke: 0.5pt + gray)
        if x != 1 {
          content((x, -0.6), text(size: 5pt)[#str(x)], anchor: "north")
        }
      }

      // Excluded point: x = 1 (hollow circle + red X)
      circle((1, 0), radius: 0.25, stroke: 1.8pt + red, fill: white)
      content((1, 1.2), text(size: 8pt, fill: red, weight: "bold")[✗], anchor: "south")
      content((1, -0.6), text(size: 6pt, fill: red, weight: "bold")[$1$], anchor: "north")

      // Label pointing to the excluded point
      content((1, 2.8), text(size: 7pt, fill: orange, weight: "bold")[增根 $x = 1$], anchor: "south")
      line((1, 2.6), (1, 1.8), stroke: 0.8pt + orange, mark: (end: ">", fill: orange))

      // Annotation: integer equation sees x=1
      rect((3.5, 2.0), (8.5, 3.8), fill: rgb("#FFF3E0"), stroke: 0.8pt + orange, radius: 3pt)
      content((6, 2.9), text(size: 6pt, fill: orange)[整式方程"看得见" $x = 1$], anchor: "center")
      content((6, 2.3), text(size: 6pt, fill: orange)[但原方程在此无意义], anchor: "center")
    }),
    caption: [增根示意：$x = 1$ 让原方程分母为零，不在定义域内]
  )

  换句话说：

  - *增根 = 让原方程某个分母为零的“假解”*。
  - 它不是错题，也不是算错——它是*去分母*的副作用。
  - 如果你解出的根里没有这种“让分母为零”的值，就没有增根；但每一题都必须检查一次。

  *解分式方程的标准流程*

  + *去分母*：两边同乘最简公分母（参考 #secref("al03-common-denominator-operations")），把分式方程变成整式方程。
  + *解整式方程*：按 #secref("cb06-solving-linear") 的办法解出 $x$。
  + *验根*：把每一个得到的解代入*原方程的每一个分母*。
    - 若有某个分母为零，该解是*增根*，*舍去*；
    - 若所有分母都不为零，该解就是原方程的解。

  验根只要看分母，不必把解代回整个方程重算——这是增根唯一的来源。

  *三个例子过一遍*

  *例 A*（有合法解）：$3/x = 1/4$ → 两边同乘 $4 x$：$12 = x$。分母 $x = 12 != 0$。✓ 解为 $x = 12$。

  *例 B*（增根导致无解）：开头那道 $2/(x - 1) = (x + 1)/(x - 1) + 1$。同乘 $(x - 1)$：$2 = (x + 1) + (x - 1)$，即 $2 = 2 x$，$x = 1$。代回分母：$x - 1 = 0$，不合法。$x = 1$ 是增根，必须舍去——原方程*无解*。

  *例 C*（需要通分后再解）：$1/x + 1/(x + 2) = 1/2$。最简公分母 $2 x (x + 2)$：
  $ 2(x + 2) + 2 x = x (x + 2) => 4 x + 4 = x^2 + 2 x => x^2 - 2 x - 4 = 0 $
  这个二次方程在本章可先按因式分解处理，若不能分解则到第 5 章再解。注意任一得到的根都还要分别代回分母检查。
]

#side-hack[
  验根有一个省事的捷径：*增根只可能是让某个分母为零的值*。所以解出整式方程的根后，只要把每个根分别代入*每一个*原分母，看是否为零；为零就舍，没有零就是真解。不用把整式方程重新验算一次。
]

#tryit[
  请*按标准流程*做，每一题都主动写验根一步。

  + $3/x = 1/4$
  + $2/(x - 1) = (x + 1)/(x - 1) + 1$
]

#history-note[
  “增根”这个词在中文教材中的含义非常精确：它不是算错造成的，而是*去分母*这个操作扩大了方程的有意义范围之后，整式方程“多出”来的、无法在原分式方程里代入的“解”。19 世纪初，法国数学家柯西（Augustin-Louis Cauchy, 1789–1857）等人在严格化代数解法的过程中，开始系统区分“合法的根”与“操作引入的假根”。英语术语 “extraneous root（外来根）”便由此固定下来，专门指代因变换操作而产生的副产品——正如欧拉（Euler）在 1748 年的《无穷分析引论》里已经注意到：对分式做代数变换时，必须回头检查分母是否为零。
]

#blueprint[
  *工具一：分式方程*

  分母中含有未知数的方程，叫作分式方程。

  *工具二：解分式方程的三步流程*

  + *去分母*：两边同乘最简公分母，得到整式方程。
  + *解整式方程*：按 #secref("cb06-solving-linear") / 第 5 章的方法解出未知量。
  + *验根*：把每个解代入*原方程的所有分母*；让任一分母为零的值是*增根*，舍去。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#1565C0")
      let green = rgb("#2E7D32")
      let orange = rgb("#E65100")
      let red = rgb("#C62828")
      let gray = luma(160)

      // Step 1: 去分母
      rect((0, 14), (14, 16.5), fill: rgb("#E3F2FD"), stroke: 1.2pt + blue, radius: 4pt)
      content((7, 15.25), text(size: 8pt, weight: "bold", fill: blue)[① 去分母 → 整式方程])

      // Arrow 1→2
      line((7, 14), (7, 13), stroke: 1.2pt + gray, mark: (end: ">", fill: gray))

      // Step 2: 解整式方程
      rect((0, 10.5), (14, 13), fill: rgb("#E8F5E9"), stroke: 1.2pt + green, radius: 4pt)
      content((7, 11.75), text(size: 8pt, weight: "bold", fill: green)[② 解整式方程 → 得到 $x = ?$])

      // Arrow 2→3
      line((7, 10.5), (7, 9.5), stroke: 1.2pt + gray, mark: (end: ">", fill: gray))

      // Step 3: 验根
      rect((0, 7), (14, 9.5), fill: rgb("#FFF3E0"), stroke: 1.2pt + orange, radius: 4pt)
      content((7, 8.25), text(size: 8pt, weight: "bold", fill: orange)[③ 验根：代入各分母])

      // Branch arrows
      line((3.5, 7), (3.5, 6), stroke: 1.2pt + red, mark: (end: ">", fill: red))
      line((10.5, 7), (10.5, 6), stroke: 1.2pt + green, mark: (end: ">", fill: green))

      // Branch left: extraneous root
      rect((-2, 3.5), (9, 6), fill: rgb("#FFEBEE"), stroke: 1.2pt + red, radius: 4pt)
      content((3.5, 5.2), text(size: 7pt, weight: "bold", fill: red)[分母 = 0], anchor: "south")
      content((3.5, 4.2), text(size: 7pt, fill: red)[→ 增根，舍去])

      // Branch right: valid solution
      rect((10, 3.5), (21, 6), fill: rgb("#E8F5E9"), stroke: 1.2pt + green, radius: 4pt)
      content((15.5, 5.2), text(size: 7pt, weight: "bold", fill: green)[≠ 0], anchor: "south")
      content((15.5, 4.2), text(size: 7pt, fill: green)[→ 真解 ✓])
    }),
    caption: [解分式方程的三步流程与验根分支]
  )

  *例 1*：解 $3/x = 1/4$。\
  乘 $4 x$：$12 = x$。代回：$x = 12 != 0$。✓ 解为 $x = 12$。

  *例 2*：解 $2/(x - 1) = (x + 1)/(x - 1) + 1$。\
  乘 $(x - 1)$：$2 = (x + 1) + (x - 1)$，即 $2 = 2 x$，$x = 1$。验根：$x - 1 = 0$。$x = 1$ 是增根。*原方程无解*。

  *例 3*：解 $1/x - 1/(x + 1) = 1/6$。\
  最简公分母 $6 x(x + 1)$：$6(x + 1) - 6 x = x(x + 1)$，化简 $6 = x^2 + x$，得 $x^2 + x - 6 = 0$，因式分解 $(x + 3)(x - 2) = 0$，得 $x = -3$ 或 $x = 2$。验根：$x = -3$ 时 $x != 0, x + 1 = -2 != 0$ ✓；$x = 2$ 时 $x != 0, x + 1 = 3 != 0$ ✓。两根都是真解。

  *工具三：增根*

  - 定义：去分母后得到的“解”中，使*原分式方程某个分母为零*的那一类，称作增根。
  - 来源：去分母把方程的定义域*扩大了*，整式方程“多出来”的解就是增根。
  - 处理：解完整式方程，逐个把解代入原分母，*为零者一律舍去*。
]

#pitfall[
  *高频错误*

  ✗ 不验根就下结论
  → ✓ 分式方程的最后一步必须是验根——即使看起来算得很顺。

  ✗ 去分母时漏乘某一项
  → ✓ 两边每一项都要乘以最简公分母，包括单独写着的常数 $1$；别只乘分式那几项。

  ✗ 把“使分母为零”的值当成分式方程的合法解
  → ✓ 那是增根，要舍去；不是“方程有解但题干未说明”。

  ✗ 验根时把解代入整个方程重算
  → ✓ 不必——只要把解代入每个分母看是否为零；增根的唯一来源就是让分母为零。
]

#mastery[
  *基础*

  + 解下列分式方程并验根：
    - $4/x = 1/3$
    - $5/(x + 2) = 2/(x - 1)$
    - $(x)/(x - 4) = 2$

  *应用*

  + 一件工作，甲独做 $12$ 天完成，乙独做 $8$ 天完成。两人合做几天能完成？（设合做 $d$ 天，列出分式方程后解并验根。）
  + 某顺水行船的速度比静水速度快 $3$ 千米/时，逆水比静水慢 $3$ 千米/时。若顺水行 $30$ 千米与逆水行 $18$ 千米用时相等，求船在静水中的速度。（设静水速为 $v$ 千米/时，列方程并验根。）
  + 解方程 $1/(x - 2) + 3 = (x - 1)/(x - 2)$，并写出“是否有增根”这一步。

  *挑战 ☞ 选做*

  + 解方程 $1/(x - 3) + (x)/(x + 3) = 6/(x^2 - 9)$。
  + 若关于 $x$ 的方程 $m/(x - 2) = 3/(x - 2) - 1$ 无解，求 $m$ 的值，并说明这是因为得到增根还是得到矛盾方程。
  + 解释：为什么“$(x - 1)/(x - 1) = 1$” 在 $x = 1$ 时不成立？它和分式方程里“增根”的来源是不是同一件事？

  #answer-cut[

  *基础*
  + $4/x = 1/3$ → $12 = x$，代回 $x = 12 != 0$ ✓。$x = 12$。（去分母法）
  + $5/(x + 2) = 2/(x - 1)$ → $5(x - 1) = 2(x + 2)$，即 $3 x = 9$，$x = 3$。代回：$x + 2 = 5 != 0$、$x - 1 = 2 != 0$ ✓。（去分母法）
  + $x/(x - 4) = 2$ → $x = 2(x - 4) = 2 x - 8$，即 $x = 8$。代回：$x - 4 = 4 != 0$ ✓。（去分母法）

  *应用*
  + 设合做 $d$ 天：$d/12 + d/8 = 1$。公分母 $24$，$2 d + 3 d = 24$，$d = 24/5 = 4.8$ 天。代回分母 $12, 8$ 均非零 ✓。
  + 顺水速 $v + 3$，逆水速 $v - 3$。$30/(v + 3) = 18/(v - 3)$。交叉相乘 $30(v - 3) = 18(v + 3)$，$30 v - 90 = 18 v + 54$，$12 v = 144$，$v = 12$。代回 $v plus.minus 3$ 均非零 ✓。
  + 乘 $(x - 2)$：$1 + 3(x - 2) = x - 1$，即 $3 x - 5 = x - 1$，$2 x = 4$，$x = 2$。代回分母 $x - 2 = 0$，为*增根*，舍去。*原方程无解*。

  *挑战 ☞ 选做*
  + 最简公分母 $(x - 3)(x + 3)$。两边同乘 $(x - 3)(x + 3)$：$(x + 3) + x(x - 3) = 6$，即 $x + 3 + x^2 - 3 x = 6$，$x^2 - 2 x - 3 = 0$，$(x - 3)(x + 1) = 0$，$x = 3$ 或 $x = -1$。代回：$x = 3$ 时 $x - 3 = 0$，增根，舍；$x = -1$ 时分母 $-4$ 与 $2$ 都非零 ✓。原方程解为 $x = -1$。
  + 乘 $(x - 2)$：$m = 3 - (x - 2)$，即 $x = 5 - m$。“方程无解”对应“这唯一的解是增根”，即 $5 - m = 2$，$m = 3$。说明：$m = 3$ 时整式方程仍有唯一解 $x = 2$，但它让原方程分母为零，*是增根*；所以原分式方程无解。
  + 分式 $(x - 1)/(x - 1)$ 在 $x = 1$ 时分子分母同为 $0$，分式本身无意义。约分看似得到常数 $1$，但“约分后的式子”扩大了原式的定义域——与分式方程里“去分母扩大定义域 → 得到增根”是*完全同源*的现象。
  ]
]
