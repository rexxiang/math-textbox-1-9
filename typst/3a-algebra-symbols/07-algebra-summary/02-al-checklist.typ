#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

=== 代数能力清单 <meta:al-checklist>

#blueprint[
  *逐条勾选——能不查书独立做到的才算 ✓*

  这是代数分支整段学完后的*能力清单*。每条对应一个具体动作，括号里给出的章节是该能力的归属——勾不上某条，就回那一节复看。

  - ☐ 能把任意一个单项式写出*系数 + 字母部分 + 次数*三件套。（#secref("al01-monomials-coefficient-degree")）
  - ☐ 能正确读出符号——例如指出 $-3 x^2 y$ 的系数是 $-3$ 而不是 $3$。（#secref("al01-monomials-coefficient-degree")）
  - ☐ 能合并任意一组同类项，并*主动判断*“这两项是不是同类项”——而不是凭字母外形。（#secref("al01-like-terms-and-combine")）
  - ☐ 能用分配律把 $a (b + c)$ 乘开，反过来也能从 $a b + a c$ 里*提回*公因式 $a$，并清楚两步是同一律的两个方向。（#secref("al02-distributive-rewrite")、#secref("al02-factorization-as-reverse")）
  - ☐ 看到 $a^2 - b^2$ 立刻想起平方差，看到 $a^2 plus.minus 2 a b + b^2$ 立刻想起完全平方——*不需要查表*。（#secref("al02-special-identities")）
  - ☐ 会用因式分解解形如 $x^2 + p x + q = 0$ 的二次方程；当分解失败时，懂得切换到求根公式。（#secref("al02-factorization-as-reverse")、#secref("al05-quadratic-solving")）
  - ☐ 能化简任意分式——先因式分解分子分母，再约去公因式。（#secref("al03-rational-expression-structure")）
  - ☐ 能在通分时主动写出最简公分母。（#secref("al03-common-denominator-operations")）
  - ☐ 在分式方程上*主动*写"验根"步骤，并能解释什么是增根、为什么会出现。（#secref("al03-rational-equations-and-extraneous-roots")）
  - ☐ 能按*移项→合并→系数化*三步解任意一元一次方程，并代回检验。（#secref("al04-linear-one-variable")）
  - ☐ 能把一道二元一次方程组用代入法*或*加减法解出来，并主动选择"哪种更省力"。（#secref("al04-systems-linear")）
  - ☐ 能把一段文字应用题翻译成*设元 → 列方程 → 解 → 检验*的标准四步，并写得出"为什么这个未知数代表那个量"。（#secref("al04-modeling-word-problems")）
  - ☐ 在一元二次方程上能用 $Delta = b^2 - 4 a c$ 判断根的数目。（#secref("al05-quadratic-solving")）
  - ☐ 能用韦达定理验证二次方程的解。（#secref("al05-vieta")）
  - ☐ 能解一元一次不等式，并清楚“两边乘 / 除以负数要变号”不是规则而是*距离的几何意义*。（#secref("al05-linear-inequalities")）

  #line(length: 100%, stroke: 0.3pt + luma(200))

  *打勾不到 $11$ 条*：先停下，回到打不上勾的那一节重读。 \
  *打勾 $12$ 到 $14$ 条*：可以做 #secref("meta:al-self-test") 的混合自测，再针对失分点回看。 \
  *$15$ 条全部打勾*：恭喜，代数分支正式过关——可以转到任一其他分支，或继续读 #secref("meta:al-repair-routes") 把易错点再过一遍。
]

#side-hack[
  *清单怎么用最有效*

  + 不要一口气连勾——每勾一条都*现场举一个例子*验证自己是不是真的能做。
  + 卡住不要硬过——记下卡点，去对应章节的*基础题*重做 $3$ 题，再回来勾。
  + 隔一周再来勾一次。代数能力会随做题量自动巩固，但也会因长期不用而生疏。
]
