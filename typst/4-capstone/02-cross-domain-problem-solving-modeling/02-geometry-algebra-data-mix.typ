#import "../../lib/theme-v2.typ": blueprint, side-hack, tryit, secref

== 跨领域已解案例：几何·代数·函数·数据 <tool:cp04-cross-domain-mix>

本节给 4 道*已解案例*，每道题标出“使用哪些分支工具”以及“为何该用它们”。

#blueprint[
  *案例 A：几何 $+$ 代数 —— 三角比结合方程*

  题目：直角三角形中，一锐角 $theta$ 满足 $tan theta = 3 / 4$，斜边 $25$。求两条直角边。

  *为何该用*：“$tan theta = 3 / 4$”意味着对边与邻边的*比*固定为 $3 : 4$（#secref("ge04-special-right-triangles")）。给比就该设字母（#secref("cb04-letters-represent-numbers")）而不是直接求角度。

  *解*：设对边 $= 3 k$、邻边 $= 4 k$（$k > 0$）。由勾股（#secref("ge04-pythagorean")）：
  $ (3 k)^2 + (4 k)^2 = 25^2 => 9 k^2 + 16 k^2 = 625 => 25 k^2 = 625 => k^2 = 25 => k = 5. $

  对边 $= 15$、邻边 $= 20$。*回检*：$15^2 + 20^2 = 225 + 400 = 625 = 25^2$ ✓；$15 / 20 = 3 / 4 = tan theta$ ✓。

  *使用工具链*：#secref("ge04-special-right-triangles") $->$ #secref("ge04-pythagorean") $->$ #secref("al05-quadratic-solving")（仅开方一步）$->$ #secref("cb06-square-and-square-root")。
]

#blueprint[
  *案例 B：函数 $+$ 数据 —— 模型选择与比较*

  题目：两家打车平台的价格如下（$x$ 为公里数，$y$ 为价格，元）：

  #table(
    columns: (auto, auto, auto, auto, auto, auto),
    inset: 5pt,
    align: center,
    [$x$（km）], [$1$], [$2$], [$3$], [$4$], [$5$],
    [甲 $y_A$], [$12$], [$14.4$], [$16.8$], [$19.2$], [$21.6$],
    [乙 $y_B$], [$10$], [$13$], [$16$], [$19$], [$22$],
  )

  (a) 每家是什么函数族？(b) 多少公里后乙比甲贵？

  *为何该用*：两列 $(x, y)$ 表 $=>$ 模型选择流程（#secref("fn11-model-choice")）。比较两条直线交点 $=>$ 方程（#secref("al04-linear-one-variable")）。

  *解*：
  - 甲：$Delta y_A = 2.4$ 恒 $=>$ 线性。$y_A = 2.4 x + 9.6$。（$x = 1, y = 12$ 推 $b = 9.6$。）
  - 乙：$Delta y_B = 3$ 恒 $=>$ 线性。$y_B = 3 x + 7$。

  乙贵 $<=> y_B > y_A <=> 3 x + 7 > 2.4 x + 9.6 <=> 0.6 x > 2.6 <=> x > 13 / 3 approx 4.33$。

  故 *从 $4.33$ km 起，乙比甲贵*。（正好打平的那一点在 $x = 13 / 3$ km。）

  *回检*：$x = 5$：$y_A = 21.6, y_B = 22 =>$ 乙贵 $0.4$ 元 ✓；$x = 4$：$y_A = 19.2, y_B = 19 =>$ 甲贵 $0.2$ 元 ✓。

  *使用工具链*：#secref("fn11-model-choice") $->$ #secref("fn05-linear-function") $->$ #secref("al05-linear-inequalities") $->$ #secref("dt02-charts-and-readings")。
]

#blueprint[
  *案例 C：数据 $+$ 概率 —— 频率估计 $+$ 事件组合*

  题目：抛一枚图钉 $400$ 次，有 $240$ 次钉尖朝上。用实验频率估计：连续抛两次、*两次都*钉尖朝上的概率。

  *为何该用*：单次概率无法理论推（图钉不是均匀硬币），只能用*实验频率做估计*（#secref("dt09-experimental-frequency")）。两次独立事件相乘属于古典概率语言（#secref("dt08-probability-language")）。

  *解*：单次钉尖朝上的频率
  $ hat(p) = 240 / 400 = 0.6. $
  两次独立抛（假设之间独立）：
  $ P("两次都朝上") approx hat(p) times hat(p) = 0.6 times 0.6 = 0.36. $

  *回检*：$0 <= 0.36 <= 1$ ✓（#secref("dt08-probability-language") 要求概率在 $[0, 1]$）。注意这是*估计*，不是精确值——样本越大，估计越稳。

  *使用工具链*：#secref("dt09-experimental-frequency") $->$ #secref("dt08-probability-language") $->$ #secref("pf04-fraction-arithmetic")。
]

#blueprint[
  *案例 D：代数 $+$ 函数 —— 方程与函数的视角互换*

  题目：方程 $x^2 - 4 x + 3 = 0$ 的解是什么？从函数 $y = x^2 - 4 x + 3$ 的图像上看，它们对应什么？

  *为何该用*：同一个表达式，*代数视角*是“求未知数”，*函数视角*是“求图像与 $x$ 轴的交点”。两种视角互译是本书反复使用的心智模型。

  *解（代数视角）*：分解（#secref("al02-factorization-as-reverse")）：$x^2 - 4 x + 3 = (x - 1)(x - 3)$，故 $x = 1, 3$。

  *解（函数视角）*：$y = x^2 - 4 x + 3$ 是抛物线（#secref("fn08-quadratic-function")）。令 $y = 0$ 即求图像与 $x$ 轴交点，坐标为 $(1, 0), (3, 0)$。

  配方：$y = (x - 2)^2 - 1$，顶点 $(2, -1)$；对称轴 $x = 2$；最小值 $-1$。两根 $x = 1, 3$ 关于对称轴对称（$|1 - 2| = |3 - 2| = 1$）✓。

  *回检*：$1^2 - 4 + 3 = 0$ ✓；$9 - 12 + 3 = 0$ ✓。

  *使用工具链*：#secref("al05-quadratic-solving") $=$ #secref("fn08-quadratic-function")（方程 $<->$ 函数零点）；#secref("al02-factorization-as-reverse")；#secref("cb05-equation-as-balance")。
]

#side-hack[
  *一句话总览*

  - “比 / 倍 / 比例”给你 $=>$ 设 $k$。
  - “表 + 预测”给你 $=>$ 先走模型选择流程。
  - “多次实验 + 估计”给你 $=>$ 用频率当概率估计。
  - “方程 $<->$ 函数零点”——两视角总是可以互换。
]
