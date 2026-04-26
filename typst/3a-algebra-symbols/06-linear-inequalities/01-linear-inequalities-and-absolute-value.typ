#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref
#import "../../lib/diagram-packages.typ": cetz

=== 一元一次不等式与 $|x|$ 直觉 <tool:al05-linear-inequalities>

#vocab[不等式 inequality][解集 solution set][不等式组 system of inequalities][绝对值 absolute value]

#crisis[
  你手头最多有 $100$ 元。想买 $3$ 本价格相同的书，买完*至少要留 $10$ 元*坐车回家。每本书最多多少钱？

  设每本书 $x$ 元。“买完至少剩 $10$ 元”不是“$100 - 3 x = 10$”这种等式，而是

  $ 100 - 3 x >= 10. $

  这不是方程——左右之间允许“大于等于”。“等式性质”大体都能搬过来，但*一个细节要特别小心*：等号是“对称”的（$a = b$ iff $b = a$），而不等号是有“方向”的。这条方向会不会在某些操作里被*翻转*？我们要搞清楚。

  顺手说一句：$|x|$ 作为“$x$ 到 $0$ 的距离”在几何里非常直观，下文会用它把“离 $0$ 不太远”这类条件转译成不等式。
]

#history-note[
  $<$ 与 $>$ 这两个符号最早由英国数学家哈里奥特（Thomas Harriot）在 1631 年出版的遗著中使用；$<=$ 与 $>=$ 的现代印刷形式则稍晚才普及。
]

#discovery[
  *把等式性质搬过来，只有一条会坏*

  #table(
    columns: (0.7fr, 1.4fr, 1.2fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*动作*], [*不等式上的效果*], [*例子*],
    [两边*同加*或*同减*一个数 / 式], [方向*不变*], [$3 < 5 => 3 + 4 < 5 + 4$],
    [两边*同乘*或*同除*一个*正*数], [方向*不变*], [$3 < 5 => 6 < 10$],
    [两边*同乘*或*同除*一个*负*数], [*方向反转*（$<$ 变 $>$，$<=$ 变 $>=$）], [$3 < 5 => - 3 > - 5$],
  )

  看懂那条反转规则最直观的方式：在数轴上，正数向右越来越大，乘以 $-1$ 把*整条数轴翻转*，“大的在右边”变成“大的在左边”。

  *解一元一次不等式的流程*

  几乎和方程的五步一模一样。只要有“乘 / 除负数”的动作，*在那一步反转不等号*即可。

  $ 100 - 3 x >= 10 => - 3 x >= - 90 => x <= 30 quad ("除以负数，方向反转"). $

  又如 $2 x - 3 > 5 x + 6$：移项合并 $- 3 x > 9$，除 $- 3$：$x < - 3$。

  *解集与数轴*

  不等式的解通常不是“一个数”，而是“一段区间”，称作*解集*。在数轴上按下面惯例画：

  - $x > 3$：空心圆（不含 $3$），向右；
  - $x >= 3$：实心圆（含 $3$），向右；
  - $x < - 2$：空心圆，向左。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let s = 1.4
      let gap = 3.0

      // --- Top: x > 3 ---
      let y1 = 2 * gap
      line((0, y1), (7 * s + 0.8, y1), stroke: 0.5pt + rgb("#666"), mark: (end: ">"))
      for i in range(0, 8) {
        let tx = float(i) * s
        line((tx, y1 - 0.15), (tx, y1 + 0.15), stroke: 0.3pt + rgb("#aaa"))
        content((tx, y1 - 0.55), text(size: 6pt)[#str(i)])
      }
      let pt1 = 3 * s
      // Blue ray going right
      line((pt1 + 0.25, y1), (7 * s + 0.3, y1), stroke: 1.5pt + rgb("#2563eb"))
      // Hollow circle at 3
      circle((pt1, y1), radius: 0.18, fill: white, stroke: 0.7pt + rgb("#2563eb"))
      content((-1.8, y1), text(size: 8pt)[$x > 3$])

      // --- Middle: x ≥ 3 ---
      let y2 = gap
      line((0, y2), (7 * s + 0.8, y2), stroke: 0.5pt + rgb("#666"), mark: (end: ">"))
      for i in range(0, 8) {
        let tx = float(i) * s
        line((tx, y2 - 0.15), (tx, y2 + 0.15), stroke: 0.3pt + rgb("#aaa"))
        content((tx, y2 - 0.55), text(size: 6pt)[#str(i)])
      }
      let pt2 = 3 * s
      // Blue ray going right
      line((pt2 + 0.25, y2), (7 * s + 0.3, y2), stroke: 1.5pt + rgb("#2563eb"))
      // Filled circle at 3
      circle((pt2, y2), radius: 0.18, fill: rgb("#2563eb"), stroke: 0.7pt + rgb("#2563eb"))
      content((-1.8, y2), text(size: 8pt)[$x >= 3$])

      // --- Bottom: x < -2 ---
      let y3 = 0
      let lo = -5
      let hi = 2
      let n = hi - lo
      line((0, y3), (float(n) * s + 0.8, y3), stroke: 0.5pt + rgb("#666"), mark: (end: ">"))
      for i in range(lo, hi + 1) {
        let tx = float(i - lo) * s
        line((tx, y3 - 0.15), (tx, y3 + 0.15), stroke: 0.3pt + rgb("#aaa"))
        content((tx, y3 - 0.55), text(size: 6pt)[#str(i)])
      }
      let pt3 = float(-2 - lo) * s
      // Blue ray going left
      line((pt3 - 0.25, y3), (0.3, y3), stroke: 1.5pt + rgb("#2563eb"))
      // Hollow circle at -2
      circle((pt3, y3), radius: 0.18, fill: white, stroke: 0.7pt + rgb("#2563eb"))
      content((-1.8, y3), text(size: 8pt)[$x < -2$])
    }),
    caption: [数轴上表示不等式解集：空心圆表示不含端点，实心圆表示包含端点]
  )

  *不等式组：取交集*

  同时满足两条不等式的 $x$，是两个解集的*公共部分*。常用口诀：

  - *同大取大*：$x > a$ 且 $x > b$（$a < b$）→ $x > b$。
  - *同小取小*：$x < a$ 且 $x < b$（$a < b$）→ $x < a$。
  - *大小小大取中间*：$x > a$ 且 $x < b$（$a < b$）→ $a < x < b$。
  - *大大小小无解*：$x > b$ 且 $x < a$（$a < b$）→ 没有交集。

  *绝对值的几何直观*

  $|x|$ 读作“$x$ 的绝对值”，意为“数轴上 $x$ 到 $0$ 的距离”。距离不可能是负数，所以 $|x| >= 0$ 恒成立。推广：$|x - c|$ 意为“$x$ 到 $c$ 的距离”。

  这个几何解释让三类不等式一眼可读：

  - $|x| < r$（$r > 0$）→ “$x$ 离 $0$ 不超过 $r$” → $- r < x < r$。
  - $|x| > r$（$r > 0$）→ “$x$ 离 $0$ 比 $r$ 还远” → $x < - r$ 或 $x > r$。
  - $|x - c| < r$ → “$x$ 离 $c$ 不超过 $r$” → $c - r < x < c + r$。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let s = 1.6
      let cx = 6 * s
      let rv = 2.5 * s

      // Number line axis
      line((0, 0), (12 * s, 0), stroke: 0.5pt + rgb("#666"), mark: (end: ">"))

      // Shaded interval (drawn before circles so circles sit on top)
      rect((cx - rv, -0.15), (cx + rv, 0.15), fill: rgb("#bfdbfe"), stroke: none)

      // Tick marks at key positions
      line((cx - rv, -0.25), (cx - rv, 0.25), stroke: 0.5pt + rgb("#333"))
      content((cx - rv, -0.8), text(size: 7pt)[$c - r$])

      line((cx, -0.25), (cx, 0.25), stroke: 0.5pt + rgb("#333"))
      content((cx, -0.8), text(size: 7pt)[$c$])

      line((cx + rv, -0.25), (cx + rv, 0.25), stroke: 0.5pt + rgb("#333"))
      content((cx + rv, -0.8), text(size: 7pt)[$c + r$])

      // Hollow circles at endpoints
      circle((cx - rv, 0), radius: 0.18, fill: white, stroke: 0.7pt + rgb("#2563eb"))
      circle((cx + rv, 0), radius: 0.18, fill: white, stroke: 0.7pt + rgb("#2563eb"))

      // Center dot at c
      circle((cx, 0), radius: 0.1, fill: rgb("#333"), stroke: none)

      // Arrow from c to c+r labeled "r"
      line((cx, 1.0), (cx + rv, 1.0), stroke: 0.7pt + rgb("#dc2626"), mark: (end: ">"))
      content((cx + rv / 2, 1.5), text(size: 8pt, fill: rgb("#dc2626"))[$r$])

      // 解集 label
      content((cx, -1.5), text(size: 8pt, fill: rgb("#2563eb"))[解集])
    }),
    caption: [$|x - c| < r$ 的几何含义：$x$ 到 $c$ 的距离不超过 $r$，解集为 $c - r < x < c + r$]
  )

  这里 $r$ 必须 $> 0$，否则 $|x| < r$ 本身就无解（$r = 0$ 仅允许 $x = 0$；$r < 0$ 永远不成立）。
]

#side-hack[
  每次动“乘 / 除”之前先问：*现在两边乘或除的是正数还是负数？* 若是负数，不等号方向立刻反转。把这一步动作当成“捆绑操作”，就不会漏。
]

#tryit[
  先不看下面的方法总结，自己动手：

  + 解不等式 $-2 x + 1 >= 5$（先移项再除负数，注意反转）。
  + 解不等式组 $cases(x + 2 > 5, 2 x - 3 < 7)$。
]

#blueprint[
  *工具一：解一元一次不等式*

  按 #secref("al04-linear-one-variable") 的流程做，但*一旦乘 / 除负数*——那一步同时反转不等号。
  - $>$ 变 $<$；$<$ 变 $>$；$>=$ 变 $<=$；$<=$ 变 $>=$。
  - 乘 / 除*正数*与*加 / 减任意数* → 方向*不变*。

  *例 1*：$3 x - 5 > 7 => 3 x > 12 => x > 4$。
  *例 2*：$-2 x + 1 >= 5 => -2 x >= 4 => x <= -2$（除以 $-2$，方向反转）。

  *工具二：不等式组 = 取交集*

  每条不等式的解集分别画在同一条数轴上，*重叠部分*就是不等式组的解。四个口诀：同大取大、同小取小、大小小大取中间、大大小小无解。

  *例 3*：$cases(2 x - 1 > 3, x + 4 <= 10) => cases(x > 2, x <= 6) => 2 < x <= 6$。

  *工具三：$|x|$ 的数轴直观与三条转译*

  - $|x| < r$（$r > 0$）⟺ $- r < x < r$。
  - $|x| > r$（$r > 0$）⟺ $x < - r$ 或 $x > r$。
  - $|x - c| < r$（$r > 0$）⟺ $c - r < x < c + r$。

  *例 4*：$|x - 1| < 3$ ⟺ $-3 < x - 1 < 3$ ⟺ $-2 < x < 4$。
  *例 5*：$|x + 2| >= 5$ ⟺ $x + 2 <= -5$ 或 $x + 2 >= 5$ ⟺ $x <= -7$ 或 $x >= 3$。
]

#pitfall[
  *高频错误*

  ✗ 乘 / 除负数时忘了反转不等号
  → ✓ $-3 x >= 9$ 除以 $-3$ 得 $x <= -3$，不是 $x >= -3$。

  ✗ 把 $|x| < r$ 拆成 $x < r$
  → ✓ 正确是 $- r < x < r$；少一半就丢掉了 $x$ 可以是负数那一段。

  ✗ 把 $|x| > r$ 拆成 $x > r$ 或 $x > - r$
  → ✓ 正确是 $x < - r$ 或 $x > r$——两段合在一起，*不是交集*。

  ✗ 用不等式组时只看自己一式，忘记取交集
  → ✓ 解完每一条写出各自解集后，必须回到数轴重叠部分；两条解集“没有重叠”意味着*无解*，而不是“原题出错”。
]

#mastery[
  *基础*

  + 解不等式，并在数轴上表示：
    - $4 x + 5 < 21$
    - $-3 (x + 1) >= 12$
    - $frac(x - 2, 3) > frac(x + 1, 2)$
  + 解不等式组：
    - $cases(2 x - 5 > -3, 3 x + 2 <= 17)$
    - $cases(3 x - 1 >= 8, 4 x + 3 <= 19)$

  *应用*

  + 解 $|2 x - 1| < 5$。
  + 解 $|x + 3| >= 4$。
  + 小王四次数学测验分别考了 $85, 90, 78, 92$。第 $5$ 次至少考多少分，才能使 $5$ 次平均分不低于 $85$？

  *挑战 ☞ 选做*

  + 若不等式 $a x > b$ 的解集恰好为 $x < b / a$，$a$ 满足什么条件？
  + 不等式组 $cases(2 x - 1 >= 3, x < a)$ 恰有 $3$ 个整数解，求 $a$ 的取值范围。
  + 把 $|x - 2| + |x + 1| < 5$ 用数轴直观解出来（提示：$|x - 2|$ 是到 $2$ 的距离，$|x + 1|$ 是到 $- 1$ 的距离；两者之和的最小值是这两点之间的距离 $3$）。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + $x < 4$（不等式性质）；$-3 x - 3 >= 12 => -3 x >= 15 => x <= -5$（乘负数反转不等号）；两边乘 $6$：$2 (x - 2) > 3 (x + 1) => -x > 7 => x < -7$（去分母 + 乘负数反转）。
  + 第一组：$2 x > 2 => x > 1$，$3 x <= 15 => x <= 5$，取交得 $1 < x <= 5$（取交集）；第二组：$x >= 3$ 且 $x <= 4$ → $3 <= x <= 4$（取交集）。

  *应用*
  + $-5 < 2 x - 1 < 5 => -4 < 2 x < 6 => -2 < x < 3$。
  + $x + 3 <= -4$ 或 $x + 3 >= 4$ → $x <= -7$ 或 $x >= 1$。
  + 设第 $5$ 次 $x$ 分：$(85 + 90 + 78 + 92 + x) / 5 >= 85 => x >= 80$。至少 $80$ 分。

  *挑战 ☞ 选做*
  + 解集从 $a x > b$ 得到“$x < b / a$”意味着*除以 $a$ 时不等号反转*，因此 $a < 0$。
  + 第一式 $x >= 2$；合并得 $2 <= x < a$。要恰有 $3$ 个整数解即 $x in {2, 3, 4}$：需要 $x = 4$ 符合（$a > 4$），$x = 5$ 不符合（$a <= 5$）。所以 $4 < a <= 5$。
  + $|x - 2| + |x + 1|$ 等于 $x$ 到 $2$ 与到 $- 1$ 的距离之和。分段求解：当 $x <= -1$ 时和为 $(2 - x) + (-1 - x) = 1 - 2 x < 5 => x > -2$，得 $-2 < x <= -1$；当 $-1 < x < 2$ 时和恒为 $3 < 5$，整段成立；当 $x >= 2$ 时和为 $(x - 2) + (x + 1) = 2 x - 1 < 5 => x < 3$，得 $2 <= x < 3$。合并：$-2 < x < 3$。
]
