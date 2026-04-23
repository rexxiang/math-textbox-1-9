#import "../../lib/theme-v2.typ": blueprint, side-hack, tryit, secref

== 跨章综合练习 <meta:al-synthesis-problems>

#blueprint[
  *怎样用这一节*

  下面 $5$ 道题每一题都明确标注了它所用到的*工具链*——即从本支的哪些章节出发。做每题之前，请先把标出的 `#secref` 过一遍，想一下“这里具体会用到那章的哪个动作”，再动笔。

  做完后对照 #secref("meta:algebra-summary-review") 里的参考答案。如果某题卡住，到 #secref("meta:al-repair-routes") 查“查漏指引”。
]

#tryit[
  *综合题 1*（工具链：#secref("al02-factorization-as-reverse") + #secref("al05-quadratic-solving")）

  解方程 $x^4 - 5 x^2 + 4 = 0$。

  提示：先把 $x^2$ 当作新变量 $t$，做一次因式分解式的“中间项匹配”，再回到 $x$。

  ---

  *综合题 2*（工具链：#secref("al03-rational-equations-and-extraneous-roots") + #secref("al05-quadratic-solving")）

  解方程 $frac(1, x - 3) + frac(x, x + 3) = frac(6, x^2 - 9)$。

  提示：去分母后会得到二次方程；解完还要验根。

  ---

  *综合题 3*（工具链：#secref("al04-modeling-word-problems") + #secref("al04-systems-linear") + #secref("al05-linear-inequalities")）

  某工厂一次生产 $A$、$B$ 两种产品。每件 $A$ 的利润 $50$ 元、每件 $B$ 的利润 $30$ 元。因原料限制，每天最多生产 $80$ 件；因工时限制，每天 $A$ 的产量最多是 $B$ 的 $2$ 倍。设每天生产 $A$ 种 $x$ 件、$B$ 种 $y$ 件。

  + 写出 $x, y$ 满足的所有约束（方程 / 不等式）。
  + 若当天实际生产 $x = 40, y = 20$，判断是否满足全部约束。
  + 若要求利润至少 $3200$ 元，补一条相应的不等式。

  ---

  *综合题 4*（工具链：#secref("al02-special-identities") + #secref("al05-vieta")）

  已知方程 $2 x^2 - 5 x + 3 = 0$ 的两根为 $x_1, x_2$。求
  - $x_1 + x_2$、$x_1 x_2$；
  - $(x_1 - x_2)^2$；
  - $x_1^3 + x_2^3$。

  （直接用韦达定理，不要先把根解出来。）

  ---

  *综合题 5*（工具链：#secref("al02-factorization-as-reverse") + #secref("al03-common-denominator-operations") + #secref("al04-linear-one-variable")）

  化简 $frac(1, x - 1) - frac(2, x^2 - 1) + frac(3, x + 1)$（$x != plus.minus 1$）；并解方程

  $ frac(1, x - 1) - frac(2, x^2 - 1) + frac(3, x + 1) = 2. $
]

#side-hack[
  综合题的难点通常不是“某一个动作”，而是：*在纸上同时记得哪两个工具要串起来*。写解时主动把“这一步用的是哪一章的哪个动作”在空白处标一下，会显著减少漏步。
]
