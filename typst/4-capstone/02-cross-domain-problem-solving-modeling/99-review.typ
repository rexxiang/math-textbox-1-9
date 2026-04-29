#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

== 本章回顾：示范题答案与过关信号 <meta:cross-domain-problem-solving-modeling-review>

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
  - 地基：#secref("cb05-letters-represent-numbers")、#secref("cb06-equation-as-balance")、#secref("cb07-square-and-square-root")、#secref("pf07-perimeter-area")、#secref("pf04-fraction-arithmetic")。
]

#blueprint[
  *跨领域综合加练*

  // 跨章回顾
  + 一个等腰三角形的底边长 $10$ cm，腰长 $13$ cm。
    - (a) 求底边上的高（#secref("ge04-pythagorean")）。
    - (b) 求三角形面积（#secref("pf07-perimeter-area")）。
    - (c) 以底边中点为原点、底边所在直线为 $x$ 轴建立坐标系，写出三个顶点的坐标（#secref("cb04-rectangular-system")）。
    - (d) 用两点距离公式验证两腰确实相等。

  // 跨章回顾
  + 某工厂计划每天生产 $x$ 个零件，$20$ 天完成。实际每天多生产 $10$ 个，结果提前 $4$ 天完成。
    - (a) 列方程求 $x$（#secref("al04-modeling-word-problems")）。
    - (b) 实际总产量不变，但质检发现次品率为 $5%$。从成品中随机抽取 $1$ 个，求它是合格品的概率（#secref("dt08-probability-language")）。
    - (c) 若合格品单价 $y$（元）与日产量 $n$ 的关系为 $y = -0.2n + 100$，求实际日产量下每天的合格品收入（#secref("fn05-linear-function")）。

  // 开放建模题
  + *开放建模*：某学校决定在一面靠墙的空地上围出一块长方形花圃（靠墙一侧不用围栏）。学校共有 $24$ 米围栏材料。
    - (a) 设垂直于墙的边长为 $x$ 米，写出花圃面积 $S$ 关于 $x$ 的函数表达式，并指出 $x$ 的取值范围。
    - (b) $S$ 最大时，$x$ 取何值？最大面积是多少？（#secref("fn08-quadratic-function")）
    - (c) 如果学校要求花圃面积*至少* $70$ m#super[2]，$x$ 的范围是什么？（#secref("al05-linear-inequalities")）
    - (d) 如果你是设计者，你会选择 (b) 的最优方案还是 (c) 中某个整数方案？给出你的理由（可以考虑美观、实用等因素）。
]

==== 参考答案

+ (a) 底边上的高把等腰三角形分成两个全等直角三角形，半底 $= 5$ cm，腰 $= 13$ cm。$h = sqrt(13^2 - 5^2) = sqrt(169 - 25) = sqrt(144) = 12$ cm。
  (b) 面积 $= 10 times 12 / 2 = 60$ cm#super[2]。
  (c) 底边中点为原点，底边沿 $x$ 轴。三顶点：$A(-5, 0)$、$B(5, 0)$、$C(0, 12)$。
  (d) $|A C| = sqrt(25 + 144) = sqrt(169) = 13$，$|B C| = sqrt(25 + 144) = 13$ ✓，两腰相等。

+ (a) 总量 $= 20x$。实际每天 $(x + 10)$ 个，用 $16$ 天完成：$16(x + 10) = 20x$，$16x + 160 = 20x$，$4x = 160$，$x = 40$。每天原计划 $40$ 个，总量 $800$ 个。
  (b) 次品率 $5%$，合格率 $= 1 - 0.05 = 0.95$。随机抽 $1$ 个为合格品的概率 $= 0.95$。
  (c) 实际日产量 $n = 50$，单价 $y = -0.2 times 50 + 100 = 90$ 元。每天合格品 $= 50 times 0.95 = 47.5$ 个，日收入 $= 47.5 times 90 = 4275$ 元。

+ (a) 靠墙一侧长 $= 24 - 2x$ 米。$S = x(24 - 2x) = 24x - 2x^2$，其中 $0 < x < 12$。
  (b) $S = -2x^2 + 24x = -2(x^2 - 12x) = -2(x - 6)^2 + 72$。当 $x = 6$ 时 $S$ 最大 $= 72$ m#super[2]。
  (c) $24x - 2x^2 >= 70$，即 $2x^2 - 24x + 70 <= 0$，$x^2 - 12x + 35 <= 0$，$(x - 5)(x - 7) <= 0$。故 $5 <= x <= 7$。
  (d) 开放题，言之有理即可。例：选 $x = 6$（面积最大且形状接近正方形，视觉协调）；或选 $x = 5$（靠墙边更长，适合沿墙摆放花架）。

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
