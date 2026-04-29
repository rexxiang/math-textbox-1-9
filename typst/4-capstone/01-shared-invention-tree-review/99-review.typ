#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

== 本章回顾 <meta:shared-invention-tree-review>

#blueprint[
  *跨分支速查卡*

  #table(
    columns: (auto, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    align: left,
    [*遇到的症状*], [*先回哪一节*],
    [列不出方程 / 设元卡壳], [#secref("cb05-relationship-templates")、#secref("al04-modeling-word-problems")],
    [方程能列但解不出], [#secref("cb06-equality-properties")、#secref("al05-quadratic-solving")],
    [不等式反向或取等点错], [#secref("al05-linear-inequalities")、#secref("cb07-real-number-line")],
    [相似 / 全等的字母对不上], [#secref("ge01-congruence-correspondence")、#secref("ge02-similarity-aa-ratio")],
    [直角三角形求边卡], [#secref("ge04-pythagorean")、#secref("cb07-square-and-square-root")],
    [看表写不出函数式], [#secref("fn11-model-choice")、#secref("fn01-table-as-function-view")],
    [读直方图 / 频率分布出错], [#secref("dt04-frequency-distributions")、#secref("dt05-histograms")],
    [概率 / 频率概念混了], [#secref("dt08-probability-language")、#secref("dt09-experimental-frequency")],
  )
]

#blueprint[
  *跨分支综合练习*

  // 跨章回顾
  + 一个长方形水池，长为 $2x$ 米、宽为 $(x + 1)$ 米，面积恰好是 $60$ m#super[2]。
    - (a) 列出方程并求解 $x$（#secref("al04-modeling-word-problems")）。
    - (b) 求水池的周长（#secref("pf07-perimeter-area")）。
    - (c) 若沿水池四周铺 $1$ 米宽的防滑道，防滑道面积是多少？

  // 跨章回顾
  + 某班连续 $5$ 天记录气温 $x$（°C）与冷饮销量 $y$（杯）如下表：

    #table(
      columns: (auto, auto, auto, auto, auto, auto),
      inset: 6pt,
      stroke: 0.4pt,
      [*气温*], [$20$], [$24$], [$28$], [$32$], [$36$],
      [*销量*], [$40$], [$60$], [$80$], [$100$], [$120$],
    )

    - (a) 销量与气温之间是否呈一次函数关系？说明理由（#secref("fn05-linear-function")）。
    - (b) 写出 $y$ 关于 $x$ 的函数表达式。
    - (c) 这 $5$ 天销量的平均数是多少？用 (b) 的函数在 $x = 28$ 处的值验证（#secref("dt03-center-and-spread")）。

  // 多解法对比
  + *多解法对比*：一个长方形的周长是 $28$ cm，面积是 $48$ cm#super[2]。求它的长和宽。请分别用以下三种方法求解，并比较哪种最快、哪种最具推广性。
    - *方法 A（方程组）*：设长 $l$、宽 $w$，列出 $l + w = 14$ 与 $l w = 48$，转化为一元二次方程求解（#secref("al05-quadratic-solving")）。
    - *方法 B（函数视角）*：令宽 $w = 14 - l$，则面积 $= l(14 - l)$，画出二次函数找到 $= 48$ 的点（#secref("fn08-quadratic-function")）。
    - *方法 C（因数枚举）*：列出 $48$ 的所有正整数因数对，逐个检验哪对之和等于 $14$（#secref("pf03-gcd-lcm")）。
]

==== 参考答案

+ (a) $2x(x + 1) = 60$，展开得 $2x^2 + 2x - 60 = 0$，即 $x^2 + x - 30 = 0$，因式分解 $(x + 6)(x - 5) = 0$。因 $x > 0$，取 $x = 5$。长 $= 10$ m，宽 $= 6$ m。
  (b) 周长 $= 2(10 + 6) = 32$ m。
  (c) 铺道后外围长 $= 10 + 2 = 12$ m，外围宽 $= 6 + 2 = 8$ m。防滑道面积 $= 12 times 8 - 10 times 6 = 96 - 60 = 36$ m#super[2]。

+ (a) 气温每增加 $4$°C，销量增加 $20$ 杯，增量恒定，故呈一次函数关系。
  (b) 斜率 $k = 20 / 4 = 5$；代入 $(20, 40)$：$40 = 5 times 20 + b$，$b = -60$。故 $y = 5x - 60$。
  (c) 平均数 $= (40 + 60 + 80 + 100 + 120) / 5 = 80$。函数值 $y(28) = 5 times 28 - 60 = 80$ ✓，吻合。

+ *方法 A*：由 $l + w = 14$ 得 $w = 14 - l$，代入 $l w = 48$：$l(14 - l) = 48$，即 $l^2 - 14l + 48 = 0$，$(l - 6)(l - 8) = 0$。$l = 8$，$w = 6$（或反之）。
  *方法 B*：面积函数 $A(l) = l(14 - l) = -l^2 + 14l$。令 $A(l) = 48$，与方法 A 同一方程。
  *方法 C*：$48$ 的因数对：$1 times 48$、$2 times 24$、$3 times 16$、$4 times 12$、$6 times 8$。其中 $6 + 8 = 14$ ✓。
  *对比*：方法 C 对整数情形最快；方法 A 最具推广性（适用于非整数情形）；方法 B 可借助图象直观判断解的存在性。

#blueprint[
  *过关信号*

  能做到以下三条，本章即可收工：

  ☞ 拿到任何知识点，能立刻说出它*最近一层*依赖哪一节，并指向对应章节。 \
  ☞ 拿到任何题目，能在*动笔前*口头说出“这道题可能使用哪些分支的哪些工具”。 \
  ☞ 卡住时*不再慌*——因为你知道卡住等价于“哪一条知识链断了”，补缺一层再接。
]

#side-hack[
  本章给了一张工具地图。真正的训练场是第 2 章的跨领域建模，那里你要*同时*使用两条乃至三条知识链去攻一道完整的题。
]
