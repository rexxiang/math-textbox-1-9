#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 分式的结构与化简 <tool:al03-rational-expression-structure>

#vocab[分式 rational expression][分式有意义 domain of a rational expression][最简分式 irreducible rational expression][约分 simplification]

#crisis[
  在 #secref("pf04-fraction-equivalence") 里，你已经很熟悉 $3/4$、$5/12$ 这种“分母是具体数字”的分数。现在问题变了：

  - 工程 A 一天完成整项工程的 $1/a$、工程 B 一天完成 $1/b$——这里的分母是字母，$1/a$ 算什么？
  - 一架天平两端的质量比写成 $(x + 1)/(x - 2)$，它什么时候有意义？
  - $(x^2 - 9)/(x^2 - 6 x + 9)$ 能不能像 $6/9$ 那样“约掉”公因式？

  这一节回答三件事：分式到底是什么？*什么时候有意义*？怎么化简到最简分式？
]

#tryit[
  + 写出 $(3 x - 6)/(x^2 - 4)$ 有意义的条件。
]

#discovery[
  *分式的正式定义 + 分母的隐含条件*

  一般地，$A / B$ 里 $A, B$ 都是整式，且 $B$ 里*含有字母*，这样的式子叫*分式*。

  为什么必须"含字母"？$3 / 4$ 形式上也是"整式 / 整式"，但分母 $4$ 是常数、永远不会等于 $0$——它就是一个具体的数。

  而 $1 / x$ 不一样：$x$ 取不同值时，分母可能变成 $0$（这时式子无意义）。这种"分母随字母变化、可能突然失效"的特征是分式的核心区别。所以定义里要"含字母"——只有这样才会出现"定义域"问题。

  因为分母不能为零，所以分式身上永远贴着一个隐含条件：

  $ A / B " 有意义" quad <==> quad B != 0 $

  - $1/x$：要求 $x != 0$；
  - $(x + 1)/(x - 2)$：要求 $x - 2 != 0$，也就是 $x != 2$；
  - $1/((x - 1)(x + 3))$：要求 $x != 1$ 且 $x != -3$。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#1565C0")
      let red = rgb("#C62828")
      let gray = luma(160)

      // Title
      content((5, 3.2), text(size: 8pt, weight: "bold")[分式有意义的范围], anchor: "south")

      // Main axis
      line((-5.5, 0), (5.5, 0), stroke: 1pt + gray)

      // Valid domain segments (blue)
      line((-5.5, 0), (-3.15, 0), stroke: 2pt + blue)
      line((-2.85, 0), (0.85, 0), stroke: 2pt + blue)
      line((1.15, 0), (5.5, 0), stroke: 2pt + blue)

      // Tick marks and labels
      for x in range(-5, 6) {
        line((x, -0.2), (x, 0.2), stroke: 0.6pt + gray)
        if x != -3 and x != 1 {
          content((x, -0.7), text(size: 6pt)[#str(x)], anchor: "north")
        }
      }

      // Excluded point: x = -3
      circle((-3, 0), radius: 0.2, stroke: 1.5pt + red, fill: white)
      content((-3.3, 1.0), text(size: 7pt, fill: red)[✗], anchor: "south")
      content((-3, -0.7), text(size: 6pt, fill: red, weight: "bold")[$-3$], anchor: "north")

      // Excluded point: x = 1
      circle((1, 0), radius: 0.2, stroke: 1.5pt + red, fill: white)
      content((0.7, 1.0), text(size: 7pt, fill: red)[✗], anchor: "south")
      content((1, -0.7), text(size: 6pt, fill: red, weight: "bold")[$1$], anchor: "north")

      // Arrow tips
      line((-5.5, 0.08), (-5.8, 0), stroke: 1pt + blue)
      line((-5.5, -0.08), (-5.8, 0), stroke: 1pt + blue)
      line((5.5, 0.08), (5.8, 0), stroke: 1pt + blue)
      line((5.5, -0.08), (5.8, 0), stroke: 1pt + blue)
    }),
    caption: [分式 $1 slash ((x - 1)(x + 3))$ 的定义域：$x = -3$ 与 $x = 1$ 处被排除]
  )

  这个“有意义的条件”不是装饰——它规定了分式在哪些值下才有意义。下一节通分和第 3 节解方程都要靠它。

  *分式基本性质 = 分数基本性质的升级*

  在 #secref("pf04-fraction-equivalence") 里你已经接受：$3/4 = (3 times 2)/(4 times 2) = 6/8$，理由是“分子分母同乘同一个非零数，值不变”。把数字换成整式，这条性质完全保留：

  $ A / B = (A dot C)/(B dot C) = (A div C)/(B div C) quad (C != 0) $

  唯一的新注意：那个 $C$ 是整式，必须保证它自己不等于 $0$。

  *约分 = 把公因式除掉，到最简分式*

  既然基本性质允许“同乘同除”，我们就可以反过来把分子分母共同的*因式*约掉：

  $ (6 x^2 y)/(9 x y^2) = (3 x y dot 2 x)/(3 x y dot 3 y) = (2 x)/(3 y) $

  重要的是：*先因式分解，再约分*。比如

  $ (x^2 - 9)/(x^2 - 6 x + 9) = ((x + 3)(x - 3))/((x - 3)^2) = (x + 3)/(x - 3) $

  约到分子分母再无公因式（除了常数 $1$），就叫*最简分式*。

  注意约分*只能约掉因式*，不能约掉“项”。$(x + 3)/(x + 5)$ 不能约掉 $x$——那会把加法当成乘法处理，是一个经典错误。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let green = rgb("#2E7D32")
      let red = rgb("#C62828")
      let gray = luma(120)

      // === Left box: correct factor cancellation ===
      rect((0, 0), (14, 7), fill: rgb("#E8F5E9"), stroke: 1.2pt + green, radius: 4pt)
      content((7, 6.3), text(size: 8pt, weight: "bold", fill: green)[因式可约 ✓], anchor: "south")

      // Before simplification
      content((7, 4.2), text(size: 9pt)[
        $frac(cancel((x + 3)) dot (x - 1), cancel((x + 3)) dot (x + 2))$
      ])

      // Arrow
      content((7, 2.6), text(size: 10pt, fill: green)[↓])

      // After simplification
      content((7, 1.5), text(size: 9pt, weight: "bold")[
        $frac(x - 1, x + 2)$
      ])

      // === Right box: incorrect term cancellation ===
      rect((16, 0), (30, 7), fill: rgb("#FFEBEE"), stroke: 1.2pt + red, radius: 4pt)
      content((23, 6.3), text(size: 8pt, weight: "bold", fill: red)[项不可约 ✗], anchor: "south")

      // The incorrect attempt
      content((23, 4.2), text(size: 9pt)[
        $frac(x + 3, x + 5)$
      ])

      // Diagonal strike-through with X
      content((23, 2.6), text(size: 10pt, fill: red)[✗ 不能约 $x$])

      // The wrong result
      content((23, 1.2), text(size: 7pt, fill: gray)[
        $frac(3, 5)$ ← 错误！
      ])
    }),
    caption: [约分只能约掉公因式（左），不能约掉加法中的项（右）]
  )

  约分之后的分式仍然带着原来的“有意义条件”。例如上例里 $x - 3$ 被约掉了，但 $x != 3$ 这个限制必须保留，否则分式的有意义范围会被悄悄扩大。
]

#side-hack[
  辨别“能不能约”的捷径：看分子分母是不是*乘*在一起。如果是加减连着的一整块（例如 $x + 3$），它必须先作为一个整体出现在“乘积”里，才有资格被约掉。
]

#tryit[
  动手做，做完再看下面的方法总结。

  + 化简 $(x^2 + 4 x + 4)/(x^2 - 4)$。
]

#history-note[
  $1748$ 年，瑞士数学家欧拉（Leonhard Euler）在写《无穷分析引论》（_Introductio in Analysin Infinitorum_）时碰到一个写法上的难题：分数的分母如果不再是数，而是能随 $x$ 变动的整式（比如 $1/(x-1)$），还能不能像分数那样去化简、展开、做加减乘除？他的回答是给这种对象一套独立的代数语言，从此"有理式"成为可以和分数平起平坐的运算对象——既然分母是"能变的整式"，名字就从小学的"分数"扩成了"分式"。两者的"有理"（_rational_）共享同一个拉丁词根 _ratio_（"比"），呼应它们都能写成两个整式之比这件事。
]

#blueprint[
  *工具一：分式及其“有意义条件”*

  - 形如 $A / B$ 且 $B$ 含字母，称作分式。
  - *分式有意义 $<==>$ 分母 $B != 0$*，这是分式的合法定义域。
  - 给出分式时，要么事先假定 $B != 0$，要么在题目里明确写出限制。

  *例 1*：$(x + 1)/((x + 2)(x - 3))$ 有意义的条件是 $x != -2$ 且 $x != 3$。

  *工具二：分式基本性质*

  $ A / B = (A dot C)/(B dot C) = (A div C)/(B div C) quad (C != 0) $

  *例 2*：$(2 a)/b = (2 a dot 3)/(b dot 3) = (6 a)/(3 b)$。

  *工具三：化简到最简分式（约分）*

  + 分子、分母各自*因式分解*；
  + 把共同因式整体约掉；
  + 保留原式有意义的条件（被约掉的因式也要补上“$!= 0$”的限制）。

  *例 3*：化简 $(6 x^2 y)/(9 x y^2) = (2 x)/(3 y) quad (x != 0, y != 0)$。

  *例 4*：化简 $(x^2 - 9)/(x^2 - 6 x + 9) = ((x + 3)(x - 3))/((x - 3)^2) = (x + 3)/(x - 3) quad (x != 3)$。
]

#pitfall[
  *高频错误*

  ✗ 忘了写“分母不为零”的条件
  → ✓ 分式永远带定义域。哪怕化简后形状更简单，原来的限制也要原封不动留着。

  ✗ 把“项”当成“因式”约掉
  → ✓ $(x + 3)/(x + 5)$ 不能把 $x$ 约掉——$x$ 不是“乘”在分子里的。只有像 $((x + 3)(x - 1))/((x + 3)(x + 2))$ 这样*以整体出现的因式*才能约。

  ✗ 约完就忘了被约掉的因式所带的限制
  → ✓ $(x^2 - 9)/(x^2 - 6 x + 9)$ 约掉 $(x - 3)$ 之后，$x != 3$ 仍然存在；不是说“约完了，$x = 3$ 就能代进去”。
]

#mastery[
  *基础*

  + 写出下列分式有意义的条件：
    - $5 / y$
    - $(3 a + 1)/(a - 4)$
    - $1/((x + 2)(x - 1))$
  + 化简：
    - $(15 m n)/(9 m^2)$
    - $(2 p - 2 q)/(4 p - 4 q)$
  + 化简：
    - $(a^2 + a)/(a^2 - 1)$
    - $(x^2 - 6 x + 9)/(x^2 - 9)$

  *应用*

  + 一项工作，甲独做 $a$ 小时完成，乙独做 $b$ 小时完成。
    - 写出甲每小时完成的比例；写出乙每小时完成的比例；
    - 两人合做每小时完成的比例（无需化简）。
    对上面的字母写出各自的合理限制。
  + 把下列分式化到最简并写出定义域限制：
    - $(2 x^2 - 8)/(x^2 + 4 x + 4)$
    - $(x^3 - x)/(x^2 + x)$
  + 某分式在 $x = 4$ 时无意义，但在 $x = 1$ 时有意义；写出一个分母满足这种限制的分式例子。

  *挑战*

  + 若分式 $(x^2 - 1)/(x^2 - k)$ 化简后是 $(x + 1)/(x - 1)$，求 $k$ 的值，并写出定义域限制。
  + 判断：$(a^2 + b^2)/(a + b)$ 能不能约分？请说明理由。
  + 一对正整数 $m, n$ 满足 $m + n = 12$。把 $1/m + 1/n$ 合并成一个最简分式（先不代入具体数值）；再代入 $m = 5, n = 7$，验证结果。
  + *[反直觉]* 判断："$x = 0$ 一定不能代入分式 $(x^2 - 3 x)/(x)$。" 化简后的式子 $x - 3$ 在 $x = 0$ 时显然有意义，那原分式在 $x = 0$ 处到底有没有定义？为什么"化简前后定义域可能不同"？
  + *[跨知识点]* 把 $(x^2 - 5 x + 6)/(x^2 - 4)$ 化到最简，并写出定义域。提示：分子分母都先用 #secref("tool:al02-factorization-as-reverse") 因式分解；约分后还要保留*原分母*的所有限制。
  + *[构造题]* 构造一个分式，使它在 $x = 2$ 和 $x = -3$ 处都没有意义，但在 $x = 0$ 处有意义。再构造一个分式：化简后是 $1/(x - 1)$，但原分式在 $x = -2$ 处也无意义。验证。
  + *[找 Bug]* 小宁化简 $(x^2 - 9)/(x - 3) = x + 3$，又说"所以这个分式对一切实数都有意义"。她错在哪？请同时给出"化简结果"和"原分式定义域"的正确答案。

  #answer-cut[

  *基础*
  + $y != 0$；$a != 4$；$x != -2$ 且 $x != 1$。（分母 $!= 0$）
  + $(15 m n)/(9 m^2) = (5 n)/(3 m) quad (m != 0)$；$(2(p - q))/(4(p - q)) = 1/2 quad (p != q)$。（分式基本性质：约分）
  + $(a(a + 1))/((a - 1)(a + 1)) = a/(a - 1) quad (a != plus.minus 1)$；$((x - 3)^2)/((x + 3)(x - 3)) = (x - 3)/(x + 3) quad (x != plus.minus 3)$。（因式分解 + 约分）

  *应用*
  + $1/a$（要求 $a != 0$）；$1/b$（要求 $b != 0$）；$1/a + 1/b$（要求 $a, b != 0$）。
  + $(2(x - 2)(x + 2))/((x + 2)^2) = (2(x - 2))/(x + 2) quad (x != -2)$；$(x (x - 1)(x + 1))/(x(x + 1)) = x - 1 quad (x != 0, x != -1)$。
  + 例如 $1/(x - 4)$——在 $x = 4$ 时分母为零，其他值都合法；取 $x = 1$ 时分母 $= -3 != 0$，有意义。

  *挑战*
  + $(x - 1)(x + 1)/(x^2 - k) = (x + 1)/(x - 1)$ 要求 $x^2 - k = (x - 1)^2$，展开对比得 $k = 2 x - 1$——这不是常数，无法使等式对所有 $x$ 成立。*所以答案是：不存在常数 $k$ 满足这个化简。* 若题意改为 $(x^2 - 1)/(x^2 - 2 x + 1)$ 可以化简为 $(x + 1)/(x - 1) quad (x != 1)$。
  + 不能。$a^2 + b^2$ 不能因式分解为含有 $(a + b)$ 的乘积（可验证 $(a + b)^2 = a^2 + 2 a b + b^2 != a^2 + b^2$），因此分子分母没有公因式。
  + $1/m + 1/n = (n + m)/(m n) = 12/(m n)$。代入 $m = 5, n = 7$：$1/5 + 1/7 = 12/35$，与公式一致。
  + 原分式 $(x^2 - 3 x)/x$ 在 $x = 0$ 时分母为 $0$，*没有定义*；但化简后 $x - 3$ 在 $x = 0$ 时值是 $-3$，看似"有意义"。这正说明：化简（约分）会扩大定义域——约掉的因子原本带来限制，约掉后限制消失。所以*以原分式的定义域为准*，化简结果只在原定义域内才与原式恒等（约分会改变定义域）。
  + 因式分解：分子 $x^2 - 5 x + 6 = (x - 2)(x - 3)$，分母 $x^2 - 4 = (x - 2)(x + 2)$（呼应 #secref("tool:al02-factorization-as-reverse")）。原分母 $!= 0$ 要求 $x != ±2$，所以定义域 $x != 2$ 且 $x != -2$；约去 $(x - 2)$ 得 $(x - 3)/(x + 2)$。注意：约分后 $x = 2$ 仍要排除（保留*原分母*的全部限制）。
  + 例 1：$1/((x - 2)(x + 3))$。代入 $x = 2$ 或 $x = -3$ 分母为 $0$，无意义；$x = 0$ 时分母 $= -6 != 0$，有意义。例 2：$(x + 2)/((x - 1)(x + 2))$，约分后 $= 1/(x - 1)$，但原分母 $!= 0$ 要求 $x != 1$ 且 $x != -2$，$x = -2$ 处原式也无意义。
  + 错。$(x^2 - 9)/(x - 3) = ((x - 3)(x + 3))/(x - 3) = x + 3$ 仅在 $x != 3$ 时成立；原分式在 $x = 3$ 处分母为 $0$，*无意义*。化简结果 $= x + 3$，但定义域 $x != 3$。她忘了化简会改变定义域，必须以原式的定义域为准（约分扩大定义域）。
  ]
]
