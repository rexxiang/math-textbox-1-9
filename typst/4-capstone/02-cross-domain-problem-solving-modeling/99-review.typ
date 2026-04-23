#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

= 本章回顾：示范题答案与过关信号 <meta:cross-domain-problem-solving-modeling-review>

#blueprint[
  *§1 “你来试”参考答案*

  *第 1 题*：
  - (a) $5^2 + 12^2 = 25 + 144 = 169 = 13^2$ ✓，*是*直角三角形（#secref("ge04-pythagorean") 的逆用）。直角边为 $5$ 与 $12$。
  - (b) 面积 $= 5 times 12 / 2 = 30$ m#super[2]（#secref("pf07-perimeter-area")）。

  *第 2 题*：
  - (a) 相邻差 $Delta y: 50, 75, 113, 168, 254$，*不恒定*。
  - (b) 相邻比 $150/100 = 1.5$；$225/150 = 1.5$；$338/225 approx 1.502$；$506/338 approx 1.497$；$760/506 approx 1.502$。约为 $1.5$ 恒定（末位四舍五入解释了微小偏差）。
  - (c) *乘法增长*（#secref("fn10-additive-vs-multiplicative-growth")），每周倍率约 $r = 1.5$。
    核对：$100 times 1.5^5 = 100 times 7.59375 = 759.375 approx 760$ ✓。

  *第 3 题*：样本空间（#secref("dt07-sample-spaces")）$= 8 times 7 = 56$ 个有序对；两次都红 $= 3 times 2 = 6$ 个。概率
  $ P = 6 / 56 = 3 / 28. $
]

#blueprint[
  *巩固复习：本章使用过的工具回看*

  - 代数：#secref("al04-modeling-word-problems")、#secref("al04-linear-one-variable")、#secref("al04-systems-linear")、#secref("al05-quadratic-solving")、#secref("al05-linear-inequalities")、#secref("al02-factorization-as-reverse")。
  - 几何：#secref("ge04-pythagorean")、#secref("ge04-special-right-triangles")。
  - 函数：#secref("fn05-linear-function")、#secref("fn06-slope-as-rate")、#secref("fn08-quadratic-function")、#secref("fn11-model-choice")。
  - 数据 / 概率：#secref("dt04-frequency-distributions")、#secref("dt07-sample-spaces")、#secref("dt08-probability-language")、#secref("dt09-experimental-frequency")。
  - 地基：#secref("cb04-letters-represent-numbers")、#secref("cb05-equation-as-balance")、#secref("cb06-square-and-square-root")、#secref("pf07-perimeter-area")、#secref("pf04-fraction-arithmetic")。
]

#blueprint[
  *过关信号*

  ☞ 看到一道应用题，*动笔前*能口述“本题可能使用 × × × 三支工具”。 \
  ☞ 写答卷时自觉分“草稿 / 正式 / 回检”三栏。 \
  ☞ 看到“图 + 表 + 文字”混合的题，能识别哪一部分信息要求哪一支工具（图 $->$ 几何 / 函数；表 $->$ 数据 / 函数；文字 $->$ 代数建模）。 \
  ☞ 解完每题都主动问：*数值合理吗？概率在 $[0, 1]$ 吗？长度为正吗？族判定与预测相容吗？*
]

#side-hack[
  本章是全书工具的合奏演出。*跨领域建模*是数学真正的用武之地——现实里没有纯代数题，也没有纯几何题。下一章我们把目光投向终点之外：初中结束之后，高中等待着哪些*延续*？
]
