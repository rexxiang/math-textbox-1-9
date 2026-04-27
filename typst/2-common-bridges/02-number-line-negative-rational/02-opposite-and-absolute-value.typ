#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref
#import "../../lib/diagram-packages.typ": cetz

=== 相反数与绝对值：方向与远近分开记 <tool:cb02-opposite-and-absolute>

#vocab[相反数 opposite][绝对值 absolute value][距离 distance]

#crisis[
  $+7$ 和 $-7$，一个正一个负，看似截然不同——但它们到原点的距离竟然一模一样。这说明每个有符号的数同时携带两条信息：“往哪边”和“走多远”。

  如果一直靠语言解释，很快就乱。*我们要用两个独立的工具，把“方向”和“远近”分开写。*
]

#history-note[
  $1806$ 年，法国数学家阿尔让（Jean-Robert Argand）在一篇小册子里首次把复数画在平面上，每个数既有"大小"又有"方向"。这个思路后来被高斯（Gauss）发展壮大，最终催生了向量的概念——代数、几何、物理从此有了统一的表述语言。在实数轴上，"绝对值就是去掉方向只留大小"正是这条思路最简单的起点。
]

#discovery[
  只改方向、不改远近，就得到一对*相反数*：

  - $3$ 的相反数是 $-3$；$-3$ 的相反数是 $3$。
  - $0$ 的相反数还是 $0$。
  - 一句话：相反数在数轴上关于原点对称，且它们之和为 $0$（$3 + (-3) = 0$）。

  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *
      let ox = 10
      let s = 2.0
      // Axis
      line((ox - 5 * s, 0), (ox + 5.3 * s, 0), stroke: 1.5pt + rgb("#333"), mark: (end: ">"))
      for i in range(-4, 5) {
        let tx = ox + i * s
        line((tx, -0.3), (tx, 0.3), stroke: 0.8pt + rgb("#555"))
        content((tx, -0.8), text(size: 6pt)[#str(i)], anchor: "north")
      }
      // Origin
      circle((ox, 0), radius: 0.25, fill: rgb("#333"), stroke: 1pt + rgb("#333"))
      content((ox, 0.8), text(size: 7pt, weight: "bold")[O], anchor: "south")
      // Pair: +3 and -3
      let p3 = ox + 3 * s
      let m3 = ox - 3 * s
      circle((p3, 0), radius: 0.25, fill: rgb("#1565C0"), stroke: 1pt + rgb("#0D47A1"))
      circle((m3, 0), radius: 0.25, fill: rgb("#C62828"), stroke: 1pt + rgb("#B71C1C"))
      content((p3, 1.5), text(size: 8pt, weight: "bold", fill: rgb("#1565C0"))[$+3$], anchor: "south")
      content((m3, 1.5), text(size: 8pt, weight: "bold", fill: rgb("#C62828"))[$-3$], anchor: "south")
      // Symmetry arrows
      let arc-h = 2.5
      bezier((m3, 1.0), (ox, arc-h + 0.5), ((m3 + ox) / 2, arc-h + 1.0),
             stroke: (dash: "dashed", paint: rgb("#888"), thickness: 0.8pt))
      bezier((p3, 1.0), (ox, arc-h + 0.5), ((p3 + ox) / 2, arc-h + 1.0),
             stroke: (dash: "dashed", paint: rgb("#888"), thickness: 0.8pt))
      content((ox, arc-h + 1.5), text(size: 7pt, fill: rgb("#555"))[关于原点对称], anchor: "south")
    }),
    caption: [$+3$ 与 $-3$ 是一对相反数，关于原点对称],
  )

  只看远近、不看方向，就得到*绝对值*：

  $ |a| = cases(a\, a >= 0, -a\, a < 0) $

  几何意义：$|a|$ 就是 $a$ 到原点的距离。于是 $|-4| = 4$，$|4| = 4$，$|0| = 0$。

  两点 $a$、$b$ 在数轴上的距离也可以用绝对值表达：$|a - b|$。

  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *
      let ox = 10
      let s = 2.0
      // Axis
      line((ox - 5 * s, 0), (ox + 5.3 * s, 0), stroke: 1.5pt + rgb("#333"), mark: (end: ">"))
      for i in range(-4, 5) {
        let tx = ox + i * s
        line((tx, -0.3), (tx, 0.3), stroke: 0.8pt + rgb("#555"))
        content((tx, -0.8), text(size: 6pt)[#str(i)], anchor: "north")
      }
      circle((ox, 0), radius: 0.2, fill: rgb("#333"), stroke: 1pt + rgb("#333"))
      // Point at -4: show |−4| = 4
      let pt = ox - 4 * s
      circle((pt, 0), radius: 0.25, fill: rgb("#E65100"), stroke: 1pt + rgb("#BF360C"))
      content((pt, 1.2), text(size: 8pt, weight: "bold", fill: rgb("#E65100"))[$-4$], anchor: "south")
      // Distance brace
      line((pt, -1.5), (ox, -1.5), stroke: 1.2pt + rgb("#E65100"),
           mark: (start: "|", end: "|"))
      content(((pt + ox) / 2, -2.2),
        text(size: 8pt, weight: "bold", fill: rgb("#E65100"))[$|{-4}| = 4$], anchor: "north")
    }),
    caption: [绝对值 $|-4| = 4$：$-4$ 到原点的距离是 $4$],
  )
]

#side-hack[
  看到表达式 $-(-3)$ 不必紧张：它是“再取一次相反数”，结果就是 $3$。“负负得正”的直觉，本质就是方向转两次又转回来。
]

#tryit[
  + 写出下列数的相反数：$6$、$-2/3$、$0$、$-1.4$。
  + 数轴上 $A = -3$、$B = 4$。求 $A B$ 的距离。
]

#blueprint[
  - *相反数*：$a$ 的相反数是 $-a$；它们满足 $a + (-a) = 0$，在数轴上关于原点对称；$0$ 的相反数是自己。
  - *绝对值*：$|a|$ 是 $a$ 到原点的距离；$|a| >= 0$，且 $|a| = 0$ 当且仅当 $a = 0$。
  - *两点距离*：数轴上两点 $a$、$b$ 之间的距离为 $|a - b|$。
]

#pitfall[
  *高频错误*

  ✗ 以为 $|a| = a$ 对所有 $a$ 都成立
  → ✓ 若 $a < 0$，则 $|a| = -a$（读作“去掉那个负号”，得到的是正数）。

  ✗ 看到 $-a$ 就写成“负数”
  → ✓ $-a$ 是 $a$ 的相反数；若 $a$ 本身是负数，$-a$ 就是正数。

  ✗ 把相反数和倒数混淆
  → ✓ 相反数满足 $a + (-a) = 0$；倒数满足 $a times 1/a = 1$，两者不一样。
]

#mastery[
  *基础*

  + 写出 $-11$、$5.5$、$-3/8$、$0$ 的相反数。
  + 计算：$|-12|$、$|3.6|$、$|-1/5|$、$-|−9|$。
  + 判断：$|a|$ 可能等于 $-2$ 吗？为什么？
  + 如果 $a$ 和 $b$ 互为相反数，那么 $a + b = ?$。
  + 在数轴上，$|-6|$ 和 $|6|$ 都等于几？它们到原点的距离相同吗？

  *应用*

  + 数轴上 $A = -7$、$B = -1$、$C = 5$，求 $A B$、$B C$、$A C$。
  + 已知 $|x| = 4$，写出 $x$ 的所有可能值。
  + 甲、乙两辆车分别从同一停车位出发，甲向东开 $6$ 千米、乙向西开 $4$ 千米。用相反数描述两人的位移；两人的距离是多少？

  *挑战 ☞ 选做*

  + 若 $a < 0$，化简 $|a| + a$。
  + 已知 $|x - 3| = 5$，求 $x$ 的所有可能值。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + $11$、$-5.5$、$3/8$、$0$（相反数 $=$ 符号取反，$0$ 的相反数仍是 $0$）。
  + $12$、$3.6$、$1/5$、$-9$（绝对值定义：负数去负号，非负数不变；$-|{-9}| = -9$）。
  + 不可能（绝对值定义：$|a| >= 0$，永远非负）。
  + $a + b = 0$（相反数定义：和为零）。
  + 都等于 $6$；相同（绝对值只看距离，不看方向）。
  + $A B = |-7 - (-1)| = 6$，$B C = |-1 - 5| = 6$，$A C = |-7 - 5| = 12$（两点距离公式 $|a - b|$）。
  + $x = 4$ 或 $x = -4$（$|x| = 4$ 意味着 $x$ 到原点距离为 $4$，分正负两种情况）。
  + 甲 $+6$ 千米、乙 $-4$ 千米（以出发点为原点、东为正）；距离 $= |6 - (-4)| = 10$ 千米。
  + $0$（当 $a < 0$ 时 $|a| = -a$，所以 $|a| + a = -a + a = 0$，绝对值分类讨论）。
  + $x = 8$ 或 $x = -2$（$|x - 3| = 5$ 表示 $x$ 到 $3$ 的距离为 $5$：$x - 3 = 5$ 得 $x = 8$；$x - 3 = -5$ 得 $x = -2$）。
]

#side-hack[
  *☞ 这会在后面哪里再出现*

  - 代数分支处理方程 $|2x - 1| = 5$、不等式 $|x| < 3$ 时，直接用本节定义分类讨论。
  - 几何分支描述数轴上的距离、坐标平面上的距离公式，都以绝对值为原型。
  - 数据分支计算绝对偏差时也会用到 $|x_i - bar(x)|$。
]
