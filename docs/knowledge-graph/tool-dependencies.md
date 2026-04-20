# 工具依赖总表(SSOT,章节无关)

> **目的**:为"完全重新规划章节"提供事实依据。本文件把全书所有知识点摊平成一张表,**不按现有章节组织**——源码位置列仅用于溯源。
>
> **如何用它重排章节**:
> 1. 以"概念前置"和"例题前置"两列做拓扑排序,得到一个线性的学习顺序
> 2. 在拓扑序中寻找"紧密簇"——相互紧耦合的工具群
> 3. 簇内工具组成一节,相邻簇组成一章
> 4. 章节边界放在"拓扑分水岭"(依赖密度最稀疏处)
>
> **列含义**:
> - **tool-id**:全书唯一 id,后续章节重排后 id 不变(只是所在章节变)。kebab 部分是稳定 id,数字前缀保留来源以便溯源。
> - **中文名 + 定义**:一句话概括,使重排者无需回源码就能判断工具语义
> - **概念前置**:该工具依赖的其他工具(按数学逻辑而非教材顺序)。第 v2 版已补入"三角形依赖线段/圆依赖点/角依赖点"等基础漏洞。
> - **例题前置**:`#tryit`/`#mastery`/`#pitfall` 解答里**额外**用到的工具(已排除概念前置里已列的)。这一列揭示"隐形依赖"——blueprint 未引用但例题离不开
> - **源码位置**:当前所在的 .typ 文件(只作溯源,**不是**分类)
>
> **总工具数**:207 行(7 个合并/警示型工具,196 个独立工具,3 个 v2.x 规划新增)
>
> **本版变更(v2,2026-04-20)**:
> 1. 基于独立 agent 对抗性审查,补入 6 条严重依赖漏洞 + 10 条中等漏洞(`3.1-*` 三形状依赖线段/点、`3.2a-*`/`3.6-angle` 依赖点等)
> 2. 按拓扑紧耦合分析,**域数从 7 合并为 6**:原"第 3 域 数轴与代数桥"是双峰结构(数系扩展簇与域 1 紧耦合;代数符号簇是域 4 前置),无内聚性,拆分并入——
>    - `4.1-*` + `4.2-*`(数系扩展 9 个工具)→ 并入**第 1 域**,作为数系 ℕ→ℤ→ℚ→ℝ 的自然收尾
>    - `4.3-*` + `4.4-*`(代数符号与方程雏形 6 个工具)→ 并入**第 3 域(代数)**,作为 ch06 深化的入口前置
>
> **本版变更(v2.1,2026-04-20 续)**:
> 1. 规划新增 **§6.1A 平方与开方** 节(在 §6.1 与 §6.2 之间),发明 `6.1a-square`(x²)+ `6.1a-square-root`(√n)——幂-根对偶的逻辑起点
> 2. `4.2-square-root-notation` 迁出 §4.2,合并到新 §6.1A 的 `6.1a-square-root`;§4.2 无理数以 π 为主例(√2 等代数型例子留给 §6.1A 之后)
> 3. 修掉两条倒置依赖:§6.2 完全平方公式/平方差公式 不再隐式借 §6.3 的 x² 记号(现显式前置 `6.1a-square`);§6.3 幂记号改为由 `6.1a-square` 一般化而来,反转了 v2 中"幂依赖完全平方"的倒置边
> 4. **§6.1A 为规划性新节,源码未建**——图谱先行作为 fix-iter-02 的蓝本,源码层面待新建 `typst/06-algebra-deepening/01a-square-and-root.typ`
>
> **本版变更(v2.2,2026-04-20 续)**:独立 agent 复查后再修 7 条依赖,**仅为 DAG 图表调整,不涉及源码**:
> 1. `3.7a-perpendicular` 删除 `3.7-parallel-lines` 前置,改为 `3.2-straight-line` + `3.6-right-angle`——垂直定义只需"两线相交夹 90°",与平行并列而非依赖
> 2. `3.6-degree` 删除 `3.1-circle` 前置,改为 `3.6-angle` + `1.4-division`——"度"是角旋转的 1/360,不依赖圆图形
> 3. `3.6b-vertical-angles` 前置从 `3.6b-supplementary` 降为 `3.6a-straight-angle` + `1.3-subtraction`——定义层级
> 4. `3.7-alternate-interior-angles` / `3.7a-co-interior-supplementary` 不再依赖 `3.7-corresponding-angles`,三者与 `3.7-parallel-lines` 并列
> 5. `7.4-similarity-scaling` / `9.3-variance` 的 `6.3-power-notation` 前置降级为 `6.1a-square`(只需平方记号,不需通用幂)
>
> **本版变更(v2.3,2026-04-20 续)**:程序化 DAG 验证支持：
> 1. 7 处通配符前置全部展开为显式 id（`1.3-*`/`1.4-*`/`1.6-*`/`1.7-*`/`2.2c-*`/`3.6b-*`/`3.7-*`）
> 2. 新增 `3.7a-triangle-angle-sum`（规划工具），修复唯一 orphan-dep
> 3. 现可通过 `make kg-validate` 运行程序化 DAG 验证（无环、无缺失引用、无通配符）
>
> **格式说明**:为便于浏览,同一域内按拓扑依赖顺序排列。**域数字(1-6)不构成未来章节顺序**——读者可基于本表自行重排。

---

## 第 1 域:数与运算(含数系扩展)

来源:ch01 全部 + ch02 全部 + ch04 数系段(`4.1-*` + `4.2-*`)。这个域覆盖 ℕ→ℤ→ℚ→ℝ 数系的完整建构。

| tool-id | 中文名 / 定义 | 概念前置 | 例题前置(额外) | 源码位置 |
|---|---|---|---|---|
| `1.1-natural-number` | 自然数 — 0,1,2,3,… 表"多少个" | — | — | 01-counting/01-natural-numbers.typ |
| `1.1-zero` | 零(0) — "一个都没有",也是自然数 | `1.1-natural-number` | — | 01-counting/01-natural-numbers.typ |
| `1.1-order` | 大小比较(<,>) | `1.1-natural-number` | — | 01-counting/01-natural-numbers.typ |
| `1.2-digit` | 数字 — 0-9 十个基础符号 | `1.1-natural-number` | — | 01-counting/02-place-value.typ |
| `1.2-place-value` | 位值 — 同一数字不同位置代表不同量 | `1.2-digit` | — | 01-counting/02-place-value.typ |
| `1.2-decimal-system` | 十进制(满十进一) | `1.2-place-value` | — | 01-counting/02-place-value.typ |
| `1.3-addition` | 加法(+) — 合并运算 | `1.1-natural-number` | — | 01-counting/03-addition-subtraction.typ |
| `1.3-subtraction` | 减法(−) — 加法的逆 | `1.3-addition` | — | 01-counting/03-addition-subtraction.typ |
| `1.3-carry-borrow` | 进位与退位竖式规则 | `1.2-place-value`, `1.3-addition`, `1.3-subtraction` | — | 01-counting/03-addition-subtraction.typ |
| `1.4-multiplication` | 乘法(×) — 相同加数的简记 | `1.3-addition` | — | 01-counting/04-multiplication-division.typ |
| `1.4-division` | 除法(÷) — 等分/包含,乘法的逆 | `1.4-multiplication`, `1.3-subtraction` | — | 01-counting/04-multiplication-division.typ |
| `1.4-remainder` | 余数 — 除不尽的剩余部分 | `1.4-division` | — | 01-counting/04-multiplication-division.typ |
| `1.5-order-of-operations` | 运算顺序(先乘除后加减) | `1.3-addition`, `1.3-subtraction`, `1.3-carry-borrow`, `1.4-multiplication`, `1.4-division`, `1.4-remainder` | — | 01-counting/05-mixed-operations.typ |
| `1.5-parentheses` | 括号 — 强制改变运算顺序 | `1.5-order-of-operations` | — | 01-counting/05-mixed-operations.typ |
| `1.6-add-commutative` | 加法交换律 a+b=b+a | `1.3-addition` | — | 01-counting/06-operation-laws.typ |
| `1.6-add-associative` | 加法结合律 (a+b)+c=a+(b+c) | `1.3-addition` | — | 01-counting/06-operation-laws.typ |
| `1.7-mul-commutative` | 乘法交换律 a×b=b×a | `1.4-multiplication` | — | 01-counting/07-multiplication-laws.typ |
| `1.7-mul-associative` | 乘法结合律 (a×b)×c=a×(b×c) | `1.4-multiplication` | — | 01-counting/07-multiplication-laws.typ |
| `1.7-distributive` | 分配律 a(b+c)=ab+ac | `1.4-multiplication`, `1.3-addition` | `1.3-subtraction`(例题含 4×(5-2)) | 01-counting/07-multiplication-laws.typ |
| `2.1-factor-multiple` | 因数与倍数 — a=b×c 时 b,c 是因数 | `1.4-multiplication`, `1.4-division` | — | 02-fraction-ratio/01-factors-multiples.typ |
| `2.1-divisibility-cues` | 整除线索 — 2/3/5 的末位或数字和规则 | `2.1-factor-multiple`, `1.2-place-value` | — | 02-fraction-ratio/01-factors-multiples.typ |
| `2.1-factor-pairing` | 因数配对法 — 从小到大试除 | `2.1-factor-multiple`, `1.4-division` | — | 02-fraction-ratio/01-factors-multiples.typ |
| `2.1a-prime` | 质数 — 大于 1,正因数只有 1 和自身 | `2.1-factor-multiple` | — | 02-fraction-ratio/01a-primes-composites.typ |
| `2.1a-composite` | 合数 — 大于 1,除 1 和自身外还有正因数 | `2.1-factor-multiple`, `2.1a-prime` | — | 02-fraction-ratio/01a-primes-composites.typ |
| `2.1b-prime-factorization` | 质因数分解 — 写成若干质数相乘 | `2.1a-prime`, `2.1a-composite` | — | 02-fraction-ratio/01b-gcd-lcm.typ |
| `2.1b-gcd` | 最大公因数 — 共同质因数的较小次幂相乘 | `2.1b-prime-factorization` | — | 02-fraction-ratio/01b-gcd-lcm.typ |
| `2.1b-lcm` | 最小公倍数 — 所有质因数的较大次幂相乘 | `2.1b-prime-factorization` | — | 02-fraction-ratio/01b-gcd-lcm.typ |
| `2.2-fraction-definition` | 分数 a/b — 整体分 b 取 a,含分子分母 | `2.1-factor-multiple`, `1.4-division` | `1.4-division`(a/b = a÷b) | 02-fraction-ratio/02-fractions-meaning.typ |
| `2.2-proper-fraction` | 真分数 — 分子<分母 | `2.2-fraction-definition`, `1.1-order` | — | 02-fraction-ratio/02-fractions-meaning.typ |
| `2.2-improper-fraction` | 假分数 — 分子≥分母 | `2.2-fraction-definition`, `1.1-order` | — | 02-fraction-ratio/02-fractions-meaning.typ |
| `2.2a-mixed-number` | 带分数 — 整数加真分数 | `2.2-proper-fraction`, `1.3-addition` | — | 02-fraction-ratio/02a-mixed-fraction-property.typ |
| `2.2a-convert-improper-mixed` | 假/带互化 | `2.2a-mixed-number`, `2.2-improper-fraction`, `1.4-division`, `1.4-remainder` | — | 02-fraction-ratio/02a-mixed-fraction-property.typ |
| `2.2a-fraction-property` | 分数基本性质 — 分子分母同乘除非零数值不变 | `2.2-fraction-definition`, `1.4-multiplication`, `1.4-division` | — | 02-fraction-ratio/02a-mixed-fraction-property.typ |
| `2.2b-simplify` | 约分 — 分子分母同除 GCD | `2.2a-fraction-property`, `2.1b-gcd` | — | 02-fraction-ratio/02b-fraction-simplify-compare.typ |
| `2.2b-lowest-terms` | 最简分数 — 分子分母互质 | `2.2b-simplify`, `2.1b-gcd` | — | 02-fraction-ratio/02b-fraction-simplify-compare.typ |
| `2.2b-common-denominator` | 通分 — 用 LCM 化为共同分母 | `2.2a-fraction-property`, `2.1b-lcm` | — | 02-fraction-ratio/02b-fraction-simplify-compare.typ |
| `2.2b-fraction-compare` | 分数比较大小 | `2.2b-common-denominator`, `1.1-order` | — | 02-fraction-ratio/02b-fraction-simplify-compare.typ |
| `2.2c-fraction-add-sub` | 分数加减 — 通分后加减分子 | `2.2b-common-denominator`, `1.3-addition`, `1.3-subtraction` | `1.6-add-commutative`, `1.6-add-associative`, `1.7-mul-commutative`, `1.7-mul-associative`, `1.7-distributive` | 02-fraction-ratio/02c-fraction-operations.typ |
| `2.2c-fraction-mul` | 分数乘法 — 分子乘分子、分母乘分母 | `2.2-fraction-definition`, `1.4-multiplication` | `2.2b-simplify`(交叉约分) | 02-fraction-ratio/02c-fraction-operations.typ |
| `2.2c-fraction-div` | 分数除法 — 乘以倒数 | `2.2c-fraction-mul`, `1.4-division` | — | 02-fraction-ratio/02c-fraction-operations.typ |
| `2.3-decimal` | 小数 — 分母 10/100/... 的分数的简写 | `2.2-fraction-definition`, `1.2-place-value` | — | 02-fraction-ratio/03-decimals.typ |
| `2.3-decimal-operations` | 小数四则(加减对齐/乘法定点/除法右移) | `2.3-decimal`, `1.3-addition`, `1.3-subtraction`, `1.3-carry-borrow`, `1.4-multiplication`, `1.4-division`, `1.4-remainder` | — | 02-fraction-ratio/03-decimals.typ |
| `2.3-frac-decimal-conversion` | 分小数互化 | `2.3-decimal`, `2.2-fraction-definition`, `2.2b-simplify`, `1.4-division` | — | 02-fraction-ratio/03-decimals.typ |
| `2.4-ratio` | 比与比值 a:b | `2.2-fraction-definition`, `1.4-division` | — | 02-fraction-ratio/04-ratios-percentages.typ |
| `2.4-proportion` | 比例与按比分配 a:b=c:d↔ad=bc | `2.4-ratio`, `1.4-multiplication` | — | 02-fraction-ratio/04-ratios-percentages.typ |
| `2.4-percentage` | 百分数 a% = a/100 | `2.4-ratio`, `2.3-decimal` | — | 02-fraction-ratio/04-ratios-percentages.typ |
| `2.5-decimal-fraction-conversion` | 小数↔分数互化规范 | `2.3-frac-decimal-conversion`, `2.2b-simplify` | — | 02-fraction-ratio/05-conversions-and-comparisons.typ |
| `2.5-percent-decimal-conversion` | 百分数↔小数↔分数 | `2.4-percentage`, `2.5-decimal-fraction-conversion` | — | 02-fraction-ratio/05-conversions-and-comparisons.typ |
| `4.1-number-line` | 数轴 — 数按序排在直线上 | `3.2-straight-line`, `3.2-point`, `1.1-order`, `1.1-zero` | — | 04-number-line-algebra-bridge/01-rational-numbers.typ |
| `4.1-negative-number` | 负数 — 0 左侧,反方向 | `4.1-number-line`, `1.1-zero`, `1.1-order` | — | 04-number-line-algebra-bridge/01-rational-numbers.typ |
| `4.1-rational-number` | 有理数 — 能写成两整数之比 p/q(q≠0) | `4.1-negative-number`, `2.2-fraction-definition`, `2.3-decimal` | — | 04-number-line-algebra-bridge/01-rational-numbers.typ |
| `4.1a-opposite-number` | 相反数 — 0 两侧等距反向的一对数 | `4.1-number-line`, `4.1-negative-number` | — | 04-number-line-algebra-bridge/01a-opposites-absolute-operations.typ |
| `4.1a-absolute-value` | 绝对值 — 到 0 的距离,非负 | `4.1a-opposite-number`, `4.1-number-line` | — | 04-number-line-algebra-bridge/01a-opposites-absolute-operations.typ |
| `4.1a-rational-arithmetic` | 有理数四则(同号异号规则) | `4.1-rational-number`, `4.1a-absolute-value`, `4.1a-opposite-number`, `1.3-addition`, `1.3-subtraction`, `1.3-carry-borrow`, `1.4-multiplication`, `1.4-division`, `1.4-remainder`, `2.2c-fraction-add-sub`, `2.2c-fraction-mul`, `2.2c-fraction-div` | — | 04-number-line-algebra-bridge/01a-opposites-absolute-operations.typ |
| `4.2-irrational-number` | 无理数 — 不能写成两整数之比的实数 | `2.2-fraction-definition`, `3.3-circle-circumference`(π,主例), `4.1-rational-number` | — | 04-number-line-algebra-bridge/02-real-numbers.typ |
| `4.2-real-number` | 实数 — 有理数与无理数的总和 | `4.2-irrational-number`, `4.1-rational-number` | — | 04-number-line-algebra-bridge/02-real-numbers.typ |

> **说明**:本域末尾 9 条(`4.1-*` + `4.2-*`)来自 ch04 源码的数系段,数学上是域 1 数系建构的自然收尾。跨域依赖仅 2 条(`4.1-number-line` → `3.2-straight-line`/`3.2-point`、`4.2-irrational-number` → `3.3-circle-circumference` 引 π),表明与几何基础域仅以"几何表示"为桥。

---

## 第 2 域:几何基础(源自 ch03)

| tool-id | 中文名 / 定义 | 概念前置 | 例题前置(额外) | 源码位置 |
|---|---|---|---|---|
| `3.2-point` | 点 — 表位置,无大小 | — | — | 03-geometry-foundation/02-points-lines.typ |
| `3.2-line-segment` | 线段 — 两端点,有限长 | `3.2-point` | — | 03-geometry-foundation/02-points-lines.typ |
| `3.2-straight-line` | 直线 — 无端点,双向无限延伸 | `3.2-point` | — | 03-geometry-foundation/02-points-lines.typ |
| `3.2a-ray` | 射线 — 一端点,单向无限 | `3.2-point`, `3.2-straight-line` | — | 03-geometry-foundation/02a-rays-planes.typ |
| `3.2a-plane` | 平面 — 二维无限延伸 | `3.2-point`, `3.2-straight-line` | — | 03-geometry-foundation/02a-rays-planes.typ |
| `3.2a-point-line-relation` | 点与直线的位置关系 | `3.2-point`, `3.2-straight-line` | — | 03-geometry-foundation/02a-rays-planes.typ |
| `3.1-triangle` | 三角形 — 3 条线段首尾相接 | `3.2-line-segment` | — | 03-geometry-foundation/01-plane-shapes.typ |
| `3.1-quadrilateral` | 四边形 — 4 条线段首尾相接 | `3.2-line-segment` | — | 03-geometry-foundation/01-plane-shapes.typ |
| `3.1-circle` | 圆 — 到中心等距所有点 | `3.2-point` | — | 03-geometry-foundation/01-plane-shapes.typ |
| `3.3-perimeter` | 周长 — 封闭图形一圈长度 | `3.2-line-segment`, `1.3-addition` | — | 03-geometry-foundation/03-perimeter.typ |
| `3.3-rectangle-perimeter` | 长方形周长 C=2(a+b) | `3.3-perimeter`, `3.1-quadrilateral`, `1.7-distributive` | `1.4-multiplication`, `1.3-addition` | 03-geometry-foundation/03-perimeter.typ |
| `3.3-circle-circumference` | 圆周长 C=2πr | `3.3-perimeter`, `3.1-circle` | — | 03-geometry-foundation/03-perimeter.typ |
| `3.4-area` | 面积 — 能铺多少单位方格 | `3.1-quadrilateral`, `1.4-multiplication` | — | 03-geometry-foundation/04-area.typ |
| `3.4-cut-rearrange-method` | 割补法 — 剪开拼成已知形 | `3.4-area` | — | 03-geometry-foundation/04-area.typ |
| `3.4-parallelogram-area` | 平行四边形面积 底×高 | `3.4-cut-rearrange-method`, `3.4-area` | — | 03-geometry-foundation/04-area.typ |
| `3.4-triangle-area` | 三角形面积 底×高÷2 | `3.4-parallelogram-area`, `3.1-triangle`, `1.4-division` | — | 03-geometry-foundation/04-area.typ |
| `3.5-volume` | 体积 — 立体能放多少单位立方 | `3.4-area`, `3.2a-plane`, `1.4-multiplication` | — | 03-geometry-foundation/05-volume.typ |
| `3.5-rectangular-solid-volume` | 长方体体积 长×宽×高 | `3.5-volume`, `3.1-quadrilateral` | — | 03-geometry-foundation/05-volume.typ |
| `3.5-cylinder-volume` | 圆柱体积 底面积×高 | `3.5-volume`, `3.3-circle-circumference`, `3.4-area` | — | 03-geometry-foundation/05-volume.typ |
| `3.6-angle` | 角 — 两射线同一端点 | `3.2-point`, `3.2a-ray` | — | 03-geometry-foundation/06-angles.typ |
| `3.6-right-angle` | 直角 — 90° | `3.6-angle` | — | 03-geometry-foundation/06-angles.typ |
| `3.6-degree` | 度(°) — 一整圈旋转的 1/360 | `3.6-angle`, `1.4-division` | — | 03-geometry-foundation/06-angles.typ |
| `3.6a-acute-angle` | 锐角 0°<∠<90° | `3.6-angle`, `3.6-right-angle`, `1.1-order` | — | 03-geometry-foundation/06a-angle-types.typ |
| `3.6a-obtuse-angle` | 钝角 90°<∠<180° | `3.6-right-angle`, `1.1-order` | — | 03-geometry-foundation/06a-angle-types.typ |
| `3.6a-straight-angle` | 平角 180° | `3.6-angle` | — | 03-geometry-foundation/06a-angle-types.typ |
| `3.6b-complementary` | 互余 — 两角和 90° | `3.6-right-angle`, `1.3-addition` | `1.3-subtraction`(求余角) | 03-geometry-foundation/06b-angle-relations.typ |
| `3.6b-supplementary` | 互补 — 两角和 180° | `3.6a-straight-angle`, `1.3-addition` | `1.3-subtraction` | 03-geometry-foundation/06b-angle-relations.typ |
| `3.6b-vertical-angles` | 对顶角相等 | `3.6-angle`, `3.6a-straight-angle`, `1.3-subtraction` | — | 03-geometry-foundation/06b-angle-relations.typ |
| `3.7-parallel-lines` | 平行线 — 同平面不相交 | `3.2-straight-line`, `3.2a-plane` | — | 03-geometry-foundation/07-parallel-lines.typ |
| `3.7-corresponding-angles` | 同位角相等 | `3.7-parallel-lines`, `3.6-angle` | — | 03-geometry-foundation/07-parallel-lines.typ |
| `3.7-alternate-interior-angles` | 内错角相等 | `3.7-parallel-lines`, `3.6-angle`, `3.6b-vertical-angles` | — | 03-geometry-foundation/07-parallel-lines.typ |
| `3.7a-co-interior-supplementary` | 同旁内角互补 | `3.7-parallel-lines`, `3.6-angle`, `3.6b-supplementary` | — | 03-geometry-foundation/07a-perpendicular-distance.typ |
| `3.7a-triangle-angle-sum` | 三角形内角和 — 三内角之和 = 180°，由平行线内错角/同位角证明 | `3.7-parallel-lines`, `3.7-alternate-interior-angles`, `3.6-degree`, `1.3-addition` | — | **(规划)** 03-geometry-foundation/07b-triangle-angle-sum.typ |
| `3.7a-perpendicular` | 垂直 a⊥b — 相交夹 90° | `3.2-straight-line`, `3.6-right-angle` | — | 03-geometry-foundation/07a-perpendicular-distance.typ |
| `3.7a-distance-point-line` | 点到直线距离 — 垂线段长度 | `3.7a-perpendicular`, `3.2-line-segment` | — | 03-geometry-foundation/07a-perpendicular-distance.typ |
| `3.8-coordinate-system` | 坐标系 — 平面上两垂直数轴 | `3.7a-perpendicular`, `3.2a-plane`, `4.1-number-line` | — | 03-geometry-foundation/08-coordinate-plane.typ |
| `3.8-ordered-pair` | 有序数对 (a,b) | `3.8-coordinate-system` | — | 03-geometry-foundation/08-coordinate-plane.typ |
| `3.8-axis-on-point` | 坐标轴上的点规律 | `3.8-ordered-pair`, `1.1-zero` | — | 03-geometry-foundation/08-coordinate-plane.typ |

> **说明**:本域行序已按**拓扑依赖**调整——点/线/面作为原子在前,形状(`3.1-*`)依赖线段和点,以此类推。源码中 `01-plane-shapes.typ` 物理上排在 `02-points-lines.typ` 之前,但数学依赖方向相反,下一轮 fix-iter 考虑调整源码顺序。

---

## 第 3 域:代数(原 ch04 符号段 + ch06 全部)

来源:ch04 `4.3-*` + `4.4-*`(代数符号入口)+ ch06 全部(代数深化)。这个域覆盖"字母表示数 → 整式 → 方程/不等式 → 二次 → 分式"完整代数链条。

| tool-id | 中文名 / 定义 | 概念前置 | 例题前置(额外) | 源码位置 |
|---|---|---|---|---|
| `4.3-variable` | 字母表示数 | `1.1-natural-number` | — | 04-number-line-algebra-bridge/03-variables-and-expressions.typ |
| `4.3-algebraic-expression` | 代数式 — 数/字母/运算组成的计算模板 | `4.3-variable`, `1.3-addition`, `1.3-subtraction`, `1.3-carry-borrow`, `1.4-multiplication`, `1.4-division`, `1.4-remainder`, `4.1a-rational-arithmetic` | — | 04-number-line-algebra-bridge/03-variables-and-expressions.typ |
| `4.3-substitution` | 代入求值 | `4.3-algebraic-expression`, `4.1a-rational-arithmetic`, `1.5-order-of-operations` | — | 04-number-line-algebra-bridge/03-variables-and-expressions.typ |
| `4.4-equation` | 方程 — 含等号的式子 | `4.3-algebraic-expression` | — | 04-number-line-algebra-bridge/04-equation-intuition.typ |
| `4.4-solution` | 方程的解 — 使方程成立的值 | `4.4-equation`, `4.3-substitution` | — | 04-number-line-algebra-bridge/04-equation-intuition.typ |
| `4.4-undo-balance` | Undo 与 Balance 两视角解方程 | `4.4-equation`, `4.4-solution`, `1.3-addition`, `1.3-subtraction`, `1.3-carry-borrow`, `1.4-multiplication`, `1.4-division`, `1.4-remainder` | — | 04-number-line-algebra-bridge/04-equation-intuition.typ |
| `6.1-polynomial` | 整式 — 字母/数/非负整数次幂加减乘组成 | `4.3-algebraic-expression`, `4.3-variable` | — | 06-algebra-deepening/01-algebraic-expressions.typ |
| `6.1-combine-like-terms` | 合并同类项 — 字母部分相同的项合系数 | `6.1-polynomial`, `1.7-distributive` | — | 06-algebra-deepening/01-algebraic-expressions.typ |
| `6.1-remove-parentheses` | 去括号 — 括号前是减则每项反号 | `6.1-polynomial`, `1.7-distributive`, `4.1a-opposite-number` | — | 06-algebra-deepening/01-algebraic-expressions.typ |
| `6.1a-square` | 平方 x² — x²=x·x(具体数/表达式自乘的简记,a^n 的第一例) | `1.4-multiplication`, `4.3-variable` | — | **(规划)** 06-algebra-deepening/01a-square-and-root.typ |
| `6.1a-square-root` | 平方根记号 √n — 使 x²=n 的非负 x(平方的逆) | `6.1a-square`, `4.1-rational-number`, `1.4-multiplication` | — | **(规划)** 06-algebra-deepening/01a-square-and-root.typ |
| `6.2-polynomial-multiply` | 多项式乘法 — 每项与每项相乘再合并 | `6.1-polynomial`, `6.1-combine-like-terms`, `1.7-distributive` | — | 06-algebra-deepening/02-polynomial-multiplication.typ |
| `6.2-difference-squares` | 平方差公式 (a+b)(a-b)=a²-b² | `6.2-polynomial-multiply`, `6.1a-square` | — | 06-algebra-deepening/02-polynomial-multiplication.typ |
| `6.2-perfect-square-formula` | 完全平方公式 (a±b)²=a²±2ab+b² | `6.2-polynomial-multiply`, `6.1a-square` | — | 06-algebra-deepening/02-polynomial-multiplication.typ |
| `6.3-power-notation` | 幂记号 a^n(把 `6.1a-square` 的 x² 一般化到指数 n) | `1.4-multiplication`, `6.1a-square` | — | 06-algebra-deepening/03-power-notation.typ |
| `6.3-same-base-multiply` | 同底数幂相乘 a^m·a^n=a^(m+n) | `6.3-power-notation`, `1.3-addition` | — | 06-algebra-deepening/03-power-notation.typ |
| `6.3-same-base-divide` | 同底数幂相除 a^m/a^n=a^(m-n) | `6.3-power-notation`, `1.3-subtraction`, `1.4-division` | — | 06-algebra-deepening/03-power-notation.typ |
| `6.3a-zero-exponent` | 零次幂 a⁰=1(a≠0) | `6.3-same-base-divide` | — | 06-algebra-deepening/03a-power-rules.typ |
| `6.3a-power-of-power` | 幂的乘方 (a^m)^n=a^(mn) | `6.3-power-notation`, `6.3-same-base-multiply`, `1.4-multiplication` | — | 06-algebra-deepening/03a-power-rules.typ |
| `6.3a-power-of-product` | 积的乘方 (ab)^n=a^n b^n | `6.3-power-notation`, `1.7-distributive` | — | 06-algebra-deepening/03a-power-rules.typ |
| `6.4-factorization` | 因式分解 — 和写成积(乘法展开逆) | `6.2-polynomial-multiply` | — | 06-algebra-deepening/04-factorization.typ |
| `6.4-common-factor` | 提公因式 — 取各项 GCD 提出 | `6.4-factorization`, `2.1b-gcd`, `1.7-distributive` | — | 06-algebra-deepening/04-factorization.typ |
| `6.4-formula-factoring` | 公式法 — 平方差/完全平方反用 | `6.4-factorization`, `6.2-difference-squares`, `6.2-perfect-square-formula` | — | 06-algebra-deepening/04-factorization.typ |
| `6.4-cross-multiplication` | 十字相乘 x²+bx+c 找两数 | `6.4-factorization`, `6.2-polynomial-multiply` | — | 06-algebra-deepening/04-factorization.typ |
| `6.5-rational-expression` | 分式 — 分母含字母的分数式 | `2.2-fraction-definition`, `6.1-polynomial` | — | 06-algebra-deepening/05-rational-expressions.typ |
| `6.5-rational-property` | 分式基本性质 — 同乘除非零式值不变 | `6.5-rational-expression`, `2.2a-fraction-property` | — | 06-algebra-deepening/05-rational-expressions.typ |
| `6.5-simplify-fraction` | 约分与最简分式 | `6.5-rational-property`, `2.2b-simplify`, `6.4-factorization` | `6.4-formula-factoring` | 06-algebra-deepening/05-rational-expressions.typ |
| `6.5a-common-denominator` | 通分与最简公分母 | `6.5-rational-property`, `2.2b-common-denominator`, `6.4-factorization` | — | 06-algebra-deepening/05a-rational-operations.typ |
| `6.5a-rational-add-sub` | 分式加减 — 通分后加减分子 | `6.5a-common-denominator`, `2.2c-fraction-add-sub`, `6.1-remove-parentheses` | — | 06-algebra-deepening/05a-rational-operations.typ |
| `6.5a-rational-mul-div` | 分式乘除 — 乘:分子分母分别相乘;除:倒数 | `6.5-rational-expression`, `2.2c-fraction-mul`, `2.2c-fraction-div`, `6.4-factorization` | — | 06-algebra-deepening/05a-rational-operations.typ |
| `6.5b-rational-equation` | 分式方程 — 分母含字母的方程 | `6.5-rational-expression`, `4.4-equation` | — | 06-algebra-deepening/05b-rational-equations.typ |
| `6.5b-clear-denominators` | 去分母 — 乘 LCD 转整式方程 | `6.5b-rational-equation`, `6.5a-common-denominator` | `6.6-five-step-solution` | 06-algebra-deepening/05b-rational-equations.typ |
| `6.5b-extraneous-root` | 增根与验根 — 检查是否使分母为零 | `6.5b-clear-denominators`, `6.5-rational-expression` | — | 06-algebra-deepening/05b-rational-equations.typ |
| `6.6-linear-equation` | 一元一次方程 ax+b=c | `4.4-equation`, `6.1-polynomial` | — | 06-algebra-deepening/06-linear-equations.typ |
| `6.6-equality-properties` | 等式两条性质(加减/乘除) | `4.4-undo-balance` | — | 06-algebra-deepening/06-linear-equations.typ |
| `6.6-five-step-solution` | 五步解法:去分母/去括号/移项/合并/系数化 1 | `6.6-linear-equation`, `6.6-equality-properties`, `6.1-remove-parentheses`, `6.1-combine-like-terms`, `2.1b-lcm` | `1.7-distributive` | 06-algebra-deepening/06-linear-equations.typ |
| `6.8-system-of-equations` | 二元一次方程组 | `6.6-linear-equation` | — | 06-algebra-deepening/08-systems-of-equations.typ |
| `6.8-substitution-method` | 代入消元法 | `6.8-system-of-equations`, `6.6-five-step-solution` | `1.7-distributive` | 06-algebra-deepening/08-systems-of-equations.typ |
| `6.8-elimination-method` | 加减消元法 | `6.8-system-of-equations`, `6.6-equality-properties` | `6.1-combine-like-terms` | 06-algebra-deepening/08-systems-of-equations.typ |
| `6.9-quadratic-equation` | 一元二次方程 ax²+bx+c=0 | `6.3-power-notation`, `6.1-polynomial`, `4.4-equation` | — | 06-algebra-deepening/09-quadratic-equations.typ |
| `6.9-square-root-method` | 直接开方法 (x+m)²=k 两边开根 | `6.9-quadratic-equation`, `6.1a-square-root`, `4.4-undo-balance` | — | 06-algebra-deepening/09-quadratic-equations.typ |
| `6.9-completing-square` | 配方法 — 加减"半数平方"化顶点式 | `6.9-square-root-method`, `6.2-perfect-square-formula` | — | 06-algebra-deepening/09-quadratic-equations.typ |
| `6.9-quadratic-formula` | 求根公式 x=(-b±√(b²-4ac))/(2a) | `6.9-completing-square`, `6.1a-square-root` | — | 06-algebra-deepening/09-quadratic-equations.typ |
| `6.9-factor-method` | 因式分解法 — 零乘积性质 | `6.9-quadratic-equation`, `6.4-factorization`, `6.4-cross-multiplication` | — | 06-algebra-deepening/09-quadratic-equations.typ |
| `6.10-inequality` | 不等式与解集 — <,>,≤,≥ 连接 | `1.1-order`, `4.1-number-line` | — | 06-algebra-deepening/10-inequalities.typ |
| `6.10-inequality-properties` | 不等式三性质(乘除负数反号) | `6.10-inequality`, `4.1-negative-number`, `4.1a-rational-arithmetic` | — | 06-algebra-deepening/10-inequalities.typ |
| `6.10-linear-inequality` | 一元一次不等式 | `6.10-inequality-properties`, `6.6-five-step-solution` | — | 06-algebra-deepening/10-inequalities.typ |
| `6.10-inequality-system` | 不等式组与交集口诀 | `6.10-linear-inequality`, `4.1-number-line` | — | 06-algebra-deepening/10-inequalities.typ |

> **说明**:本域以 `4.3-*`/`4.4-*` 作为入口(6 工具),主体是 ch06 的 40 工具。`4.3-*`/`4.4-*` 从原第 3 域迁入——它们 90% 的出边流向 ch06,属紧耦合簇而非独立桥段。

---

## 第 4 域:几何深化(源自 ch07)

| tool-id | 中文名 / 定义 | 概念前置 | 例题前置(额外) | 源码位置 |
|---|---|---|---|---|
| `7.1-congruence-definition` | 全等记号 △ABC≅△DEF(顶点对应) | `3.1-triangle`, `3.2-line-segment`, `3.6-angle` | `3.6b-complementary`, `3.6b-supplementary`, `3.6b-vertical-angles`, `3.7-parallel-lines`, `3.7-corresponding-angles`, `3.7-alternate-interior-angles` | 07-geometry-deepening/01-congruence-proof-entry.typ |
| `7.1-proof-chain` | 三步证明链 已知→桥→结论 | `7.1-congruence-definition` | — | 07-geometry-deepening/01-congruence-proof-entry.typ |
| `7.1-ssa-warning` | SSA 不是判定(反例警示) | `7.1-congruence-definition` | — | 07-geometry-deepening/01-congruence-proof-entry.typ |
| `7.2-sss-criterion` | SSS 全等判定 — 三边对应相等 | `7.1-congruence-definition`, `7.1-proof-chain` | — | 07-geometry-deepening/02-rigidity-criteria-i.typ |
| `7.2-sas-criterion` | SAS — 两边及夹角对应相等 | `7.1-congruence-definition`, `7.1-proof-chain`, `3.6-angle` | — | 07-geometry-deepening/02-rigidity-criteria-i.typ |
| `7.2-isosceles-property` | 等腰三角形三线合一 | `7.2-sas-criterion` | — | 07-geometry-deepening/02-rigidity-criteria-i.typ |
| `7.3-asa-criterion` | ASA — 两角及夹边 | `7.1-proof-chain` | — | 07-geometry-deepening/03-rigidity-criteria-ii.typ |
| `7.3-aas-criterion` | AAS — 两角及非夹边 | `7.3-asa-criterion`, `3.7a-triangle-angle-sum` | — | 07-geometry-deepening/03-rigidity-criteria-ii.typ |
| `7.3-hl-criterion` | HL(直角斜边+直角边) | `7.1-congruence-definition`, `3.6-right-angle` | — | 07-geometry-deepening/03-rigidity-criteria-ii.typ |
| `7.4-similar-triangles` | 相似三角形 △∽△(对应角等/边成比例) | `7.1-congruence-definition`, `2.4-ratio`, `2.4-proportion` | — | 07-geometry-deepening/04-similar-triangles.typ |
| `7.4-similarity-scaling` | 相似边/周长/面积比 k/k/k² | `7.4-similar-triangles`, `6.1a-square` | — | 07-geometry-deepening/04-similar-triangles.typ |
| `7.4-parallel-similarity` | 平行线截三角形相似 | `7.4-similar-triangles`, `3.7-parallel-lines`, `3.7-corresponding-angles` | — | 07-geometry-deepening/04-similar-triangles.typ |
| `7.4-midsegment` | 三角形中位线 — 平行第三边且长度一半 | `7.4-parallel-similarity` | — | 07-geometry-deepening/04-similar-triangles.typ |
| `7.5-quadrilateral-angle-sum` | 四边形内角和 360° | `3.1-quadrilateral`, `3.6-degree`, `3.7a-triangle-angle-sum` | — | 07-geometry-deepening/05-quadrilaterals.typ |
| `7.5-parallelogram-properties` | 平行四边形性质(对边等/对角等/对角线平分) | `7.5-quadrilateral-angle-sum`, `3.7-parallel-lines`, `7.2-sas-criterion` | — | 07-geometry-deepening/05-quadrilaterals.typ |
| `7.5-parallelogram-criteria` | 平行四边形 5 种判定 | `7.5-parallelogram-properties`, `7.2-sss-criterion`, `7.3-asa-criterion` | — | 07-geometry-deepening/05-quadrilaterals.typ |
| `7.5a-rectangle` | 矩形 — 有一直角的平行四边形 | `7.5-parallelogram-properties`, `3.6-right-angle`, `7.2-sas-criterion` | — | 07-geometry-deepening/05a-special-quadrilaterals.typ |
| `7.5a-rhombus` | 菱形 — 四边相等平行四边形 | `7.5-parallelogram-properties`, `3.7a-perpendicular`, `7.2-sas-criterion` | — | 07-geometry-deepening/05a-special-quadrilaterals.typ |
| `7.5a-square` | 正方形 = 矩形 ∩ 菱形 | `7.5a-rectangle`, `7.5a-rhombus` | — | 07-geometry-deepening/05a-special-quadrilaterals.typ |
| `7.6-radius-linking` | 连半径战术 — 圆→等腰/全等 | `3.1-circle`, `7.2-sas-criterion`, `7.2-isosceles-property` | — | 07-geometry-deepening/06-circles.typ |
| `7.6-inscribed-angle` | 圆周角定理 = 圆心角一半;半圆圆周角 90° | `7.6-radius-linking`, `3.6-angle` | — | 07-geometry-deepening/06-circles.typ |
| `7.6-perpendicular-chord` | 垂径定理 — 过心垂线平分弦 | `7.6-radius-linking`, `3.7a-perpendicular`, `7.2-sas-criterion`, `3.2-line-segment` | — | 07-geometry-deepening/06-circles.typ |
| `7.8-pythagorean-theorem` | 勾股定理 a²+b²=c² | `3.1-triangle`, `3.2-line-segment`, `3.6-right-angle`, `6.1a-square`, `3.4-area`(面积法证明) | `6.1a-square-root`(结果) | 07-geometry-deepening/08-pythagorean-theorem.typ |
| `7.8-pythagorean-converse` | 勾股逆定理(SSS 判定直角) | `7.8-pythagorean-theorem`, `7.2-sss-criterion` | — | 07-geometry-deepening/08-pythagorean-theorem.typ |
| `7.8-pythagorean-triples` | 勾股数与隐藏直角三角形(矩形对角/菱形半对角/弦心距) | `7.8-pythagorean-theorem`, `7.5a-rectangle`, `7.5a-rhombus`, `7.6-perpendicular-chord` | — | 07-geometry-deepening/08-pythagorean-theorem.typ |
| `7.9-trigonometric-ratios` | sin/cos/tan 三角比 | `7.4-similar-triangles`, `3.6-right-angle`, `2.4-ratio` | `7.8-pythagorean-theorem`(验算) | 07-geometry-deepening/09-trigonometric-ratios.typ |
| `7.9-trig-invariance` | 同角三角比不变 — 由相似保证 | `7.9-trigonometric-ratios`, `7.4-similarity-scaling` | — | 07-geometry-deepening/09-trigonometric-ratios.typ |
| `7.9-special-angles` | 30°/45°/60° 特殊角三角比值 | `7.9-trigonometric-ratios`, `7.8-pythagorean-theorem` | — | 07-geometry-deepening/09-trigonometric-ratios.typ |
| `7.10-elevation-depression` | 仰角与俯角(平行水平线上两角相等) | `3.6-angle`, `3.7-parallel-lines` | — | 07-geometry-deepening/10-angle-measurement-and-slope.typ |
| `7.10-slope` | 坡度 i = rise/run = tan α | `7.9-trigonometric-ratios`, `2.4-ratio` | — | 07-geometry-deepening/10-angle-measurement-and-slope.typ |
| `7.10-scene-to-triangle` | 场景→直角三角形标准流程 | `7.10-elevation-depression`, `7.9-trigonometric-ratios`, `7.8-pythagorean-theorem`, `3.7a-perpendicular` | — | 07-geometry-deepening/10-angle-measurement-and-slope.typ |
| `7.11-rigid-transformations` | 三类刚性变换(平移/翻折/旋转)共同不变量 | `3.2-line-segment`, `3.6-angle`, `7.2-sas-criterion` | — | 07-geometry-deepening/11-transformations.typ |
| `7.11-central-symmetry` | 中心对称 = 旋转 180° | `7.11-rigid-transformations` | — | 07-geometry-deepening/11-transformations.typ |
| `7.11-coordinate-transformations` | 坐标下变换记法 (x,-y)/(-x,y)/(-x,-y)/(x+a,y+b) | `7.11-rigid-transformations`, `3.8-coordinate-system`, `4.1a-opposite-number` | — | 07-geometry-deepening/11-transformations.typ |
| `7.12-orthographic-projection` | 正投影(非透视) | `3.7a-perpendicular`, `3.2a-plane` | — | 07-geometry-deepening/12-projections.typ |
| `7.12-three-views` | 主/俯/左三视图对齐规则 | `7.12-orthographic-projection`, `3.5-rectangular-solid-volume` | — | 07-geometry-deepening/12-projections.typ |
| `7.13-regular-polygon-inscribed` | 圆内接正多边形(中心角 360°/n) | `3.1-circle`, `7.6-inscribed-angle`, `3.6-degree` | — | 07-geometry-deepening/13-circle-extensions.typ |
| `7.13-circle-position` | 两圆位置关系(外离/切/交/内切/内含) | `3.1-circle`, `1.1-order` | — | 07-geometry-deepening/13-circle-extensions.typ |

---

## 第 5 域:函数模型(源自 ch08)

| tool-id | 中文名 / 定义 | 概念前置 | 例题前置(额外) | 源码位置 |
|---|---|---|---|---|
| `8.1-function-concept` | 函数 — 每个 x 对应唯一 y;四种读法 | `4.3-variable`, `4.3-algebraic-expression`, `3.8-coordinate-system` | — | 08-function-models/01-linear-functions.typ |
| `8.1-direct-proportion` | 正比例函数 y=kx — 过原点 | `8.1-function-concept`, `2.4-proportion` | — | 08-function-models/01-linear-functions.typ |
| `8.1-linear-function` | 一次函数 y=kx+b(k:斜率,b:截距) | `8.1-direct-proportion`, `4.3-algebraic-expression` | `4.4-equation`(求参数时), `6.6-linear-equation` | 08-function-models/01-linear-functions.typ |
| `8.2-inverse-proportion` | 反比例函数 y=k/x — xy 恒定 | `8.1-function-concept`, `2.4-ratio`, `3.8-coordinate-system` | `6.10-linear-inequality`(例题 600/x≤12) | 08-function-models/02-inverse-proportion.typ |
| `8.4-quadratic-function` | 二次函数 y=ax²+bx+c | `8.1-function-concept`, `6.9-quadratic-equation` | — | 08-function-models/04-quadratic-functions.typ |
| `8.4-vertex-axis` | 顶点 + 对称轴(顶点式 y=a(x-h)²+k) | `8.4-quadratic-function`, `6.9-completing-square` | — | 08-function-models/04-quadratic-functions.typ |
| `8.4-parabola-zeros` | 抛物线与 x 轴交点 = 方程根 | `8.4-quadratic-function`, `6.9-quadratic-formula`, `6.9-factor-method` | — | 08-function-models/04-quadratic-functions.typ |
| `8.5-additive-growth` | 加法增长 y=a+kn(对应一次函数) | `8.1-linear-function` | — | 08-function-models/05-rate-change-models.typ |
| `8.5-multiplicative-growth` | 乘法增长 y=a(1+r)^n(复利式) | `6.3-power-notation`, `6.3a-power-of-power`, `2.4-percentage`, `2.5-percent-decimal-conversion` | — | 08-function-models/05-rate-change-models.typ |

---

## 第 6 域:数据与概率(源自 ch09)

| tool-id | 中文名 / 定义 | 概念前置 | 例题前置(额外) | 源码位置 |
|---|---|---|---|---|
| `9.1-frequency-count` | 频数 — 某类别出现的次数 | `1.1-natural-number` | — | 09-data-statistics/01-data-collection.typ |
| `9.1-frequency-rate` | 频率 = 频数/总数 | `9.1-frequency-count`, `2.4-percentage`, `2.5-percent-decimal-conversion` | — | 09-data-statistics/01-data-collection.typ |
| `9.1-chart-selection` | 图表选择(条形/扇形/折线) | `9.1-frequency-rate`, `3.8-coordinate-system`, `2.4-percentage` | — | 09-data-statistics/01-data-collection.typ |
| `9.2-mean` | 平均数 = 总和/个数 | `9.1-frequency-count`, `1.4-division`, `1.3-addition` | — | 09-data-statistics/02-central-tendency.typ |
| `9.2-median` | 中位数 — 排序后中间值 | `1.1-order`, `9.1-frequency-count` | — | 09-data-statistics/02-central-tendency.typ |
| `9.2-mode` | 众数 — 出现次数最多 | `9.1-frequency-count` | — | 09-data-statistics/02-central-tendency.typ |
| `9.3-range` | 极差 = 最大-最小 | `1.1-order`, `1.3-subtraction` | — | 09-data-statistics/03-variability.typ |
| `9.3-variance` | 方差 — 偏差平方的平均 $s^2$ | `9.2-mean`, `6.1a-square`, `1.3-subtraction` | `4.1a-absolute-value`(偏差直觉) | 09-data-statistics/03-variability.typ |
| `9.4-frequency-distribution-table` | 频率分布表 — 连续数据分组 | `9.1-frequency-count`, `9.1-frequency-rate`, `1.1-order` | — | 09-data-statistics/04-frequency-distribution.typ |
| `9.4-histogram` | 直方图 — 频率/组距为纵轴的连续柱图 | `9.4-frequency-distribution-table`, `3.8-coordinate-system` | — | 09-data-statistics/04-frequency-distribution.typ |
| `9.6-sample-space` | 样本空间 — 所有等可能结果列举 | `1.1-natural-number` | — | 09-data-statistics/06-probability.typ |
| `9.6-probability-definition` | 概率 P = 有利数/总数 | `9.6-sample-space`, `2.2-fraction-definition`, `2.4-ratio` | — | 09-data-statistics/06-probability.typ |
| `9.6-complement-rule` | 对立事件 P(¬A)=1-P(A) | `9.6-probability-definition`, `1.3-subtraction` | — | 09-data-statistics/06-probability.typ |
| `9.7-experimental-probability` | 实验概率 — 重复中发生的频率 | `9.1-frequency-rate` | — | 09-data-statistics/07-probability-experiments.typ |
| `9.7-frequency-to-probability` | 频率稳定于概率(大数规律直觉版) | `9.7-experimental-probability`, `9.6-probability-definition` | — | 09-data-statistics/07-probability-experiments.typ |
| `9.8-population-sample` | 总体/个体/样本/样本容量 | `9.1-frequency-count` | — | 09-data-statistics/08-sampling-estimation.typ |
| `9.8-random-sampling` | 随机抽样(代表性) | `9.8-population-sample`, `9.6-probability-definition` | — | 09-data-statistics/08-sampling-estimation.typ |
| `9.8-sample-estimation` | 样本均值/频率估计总体 | `9.8-random-sampling`, `9.2-mean`, `9.1-frequency-rate`, `2.4-ratio` | — | 09-data-statistics/08-sampling-estimation.typ |

---

## 使用本表的工作流

**Step 1:拓扑排序**

把每个 tool-id 当作图节点,"概念前置"和"例题前置"作为入边,做拓扑排序。任何两个互不依赖的工具可以在同一层平行教。

> **注**:通配符前置已在 v2.3 全部展开为显式 id。本表可直接进行拓扑排序，可运行 `make kg-validate` 程序化验证 DAG 完整性。

**Step 2:识别紧耦合簇**

在拓扑序中,找出"一批工具彼此高度依赖、与外部依赖稀少"的子图。例如:
- `6.4-*` 四个因式分解工具 ↔ 紧耦合
- `6.6-*` 一元一次方程三件套 ↔ 紧耦合
- `6.9-*` 一元二次方程五个解法 ↔ 紧耦合
- `4.1-*` + `4.2-*` 数系扩展九件套 ↔ 紧耦合(本版已并入第 1 域)
- `4.3-*` + `4.4-*` 代数入口六件套 ↔ 紧耦合(本版已并入第 3 域)

每个簇的大小决定一节的最小粒度。

**Step 3:划定章节边界**

章节边界应落在"拓扑分水岭"——依赖密度最稀疏的地方。例如:
- 域 1 内"ℚ→ℝ"过渡处(`4.2-irrational-number` 前后)依赖稀疏,可作章节切分点(注:v2.1 后 √ 记号已迁至 §6.1A,ℝ 引入端只剩无理数概念与 π 例子)
- 域 3 内 §6.5(分式)前后依赖密,考虑与前后段捆绑
- 域 4 内 §7.6(圆)是一个自然子簇,可单独成章

**Step 4:重命名与重编号**

章节结构定下后,tool-id 的**数字前缀**可以重命名(例如 `6.4-factorization` → `3.2-factorization`),**工具本体的 kebab 部分不变**,以保持历史可追溯。

---

## 暂未填入的空白

- **例题前置**列目前主要基于 3 个并行 agent 的扫描,对 `#tryit` / `#mastery` 的引用做了"额外于 blueprint"的标注。如需逐题粒度(ii),后续可升级
- **ch05 / §6.7 / §7.7 / §8.3 / §9.5 / ch10** 不发明新工具,因此没有行,仅在各自按章文件中记录
- **语气/难度标签**(基础/应用/挑战)尚未纳入表格,若重排章节时需要按难度分层,可补充一列

---

## 一致性扫描结果(v2.2,2026-04-20 第四轮)

**表内工具总数**:206 行(v2.1 保持不变,本版仅调整依赖关系)
**域数**:v1 的 7 → v2 的 6(第 3 域拆分合并,保持)

### orphan-dep — 0 条（已修：`3.7a-triangle-angle-sum` 已补入表中）

已修复：`3.7a-triangle-angle-sum` 已作为规划新增工具补入第 2 域（`3.7a-co-interior-supplementary` 之后、`3.7a-perpendicular` 之前），源码待 fix-iter-03 新建 `03-geometry-foundation/07b-triangle-angle-sum.typ`。

### v1 → v2 变更摘要

**新增概念依赖 16 条**(修复 agent 对抗性审查发现的漏洞):

严重 6 条(基础几何构成元素):
- `3.1-triangle` / `3.1-quadrilateral` → `3.2-line-segment`
- `3.1-circle` → `3.2-point`
- `3.2a-ray` / `3.2a-plane` → `3.2-point`(补)
- `3.6-angle` → `3.2-point`(补)

中等 10 条(扩充关键前置):
- `3.5-volume` → `3.2a-plane`
- `3.5-rectangular-solid-volume` → `3.1-quadrilateral`
- `3.6-degree` → `3.1-circle`
- `3.7-parallel-lines` → `3.2a-plane`
- `3.8-coordinate-system` → `3.2a-plane`
- `4.1-number-line` → `3.2-point`, `1.1-zero`
- `4.1-negative-number` → `1.1-order`
- `4.2-irrational-number` → `2.2-fraction-definition`
- `7.1-congruence-definition` → `3.2-line-segment`, `3.6-angle`
- `7.8-pythagorean-theorem` → `3.1-triangle`, `3.2-line-segment`
- `7.6-perpendicular-chord` → `3.2-line-segment`
- `6.10-inequality-properties` → `4.1-negative-number`
- `7.5-quadrilateral-angle-sum` 显式化 `3.7a-triangle-angle-sum`(原仅注释)

**域重组**:
- 原第 3 域"数轴与代数桥"(15 工具)拆分:
  - `4.1-*` + `4.2-*`(9 工具)并入新第 1 域(作为数系 ℕ→ℤ→ℚ→ℝ 收尾)
  - `4.3-*` + `4.4-*`(6 工具)并入新第 3 域(作为代数入口)
- 原域 5→域 4,域 6→域 5,域 7→域 6

**定义措辞优化**:
- `4.1-rational-number` "能在数轴上定位的数" → "能写成两整数之比 p/q(q≠0)"(避免与实数混淆)
- `4.2-irrational-number` "不能写成分数的确定数" → "不能写成两整数之比的实数"
- `3.6-degree` "整圆 360 等分" → "一整圈旋转的 1/360"(说清等分对象)
- `3.8-coordinate-system` 补"平面上"两字

### v2.1 → v2.2 依赖调整摘要

**2 条明确倒置修复**:
- `3.7a-perpendicular`:前置 `3.7-parallel-lines` → `3.2-straight-line`(垂直不依赖平行)
- `3.6-degree`:前置 `3.1-circle` → `1.4-division`(度是旋转等分,非圆图形)

**2 条弱耦合层级优化**:
- `3.6b-vertical-angles`:前置 `3.6b-supplementary` → `3.6a-straight-angle` + `1.3-subtraction`
- `3.7-alternate-interior-angles` / `3.7a-co-interior-supplementary`:前置 `3.7-corresponding-angles` → `3.7-parallel-lines` + `3.6-angle`(三者并列)

**2 条前置降级**(从 `6.3-power-notation` 降为更基础的 `6.1a-square`):
- `7.4-similarity-scaling`(面积比 k²)
- `9.3-variance`(偏差平方)

### 仍存待修复项(留给下一轮 fix-iter)

**1. 通配符前置**：已在 v2.3 全部展开（7 处 `1.3-*` / `1.4-*` / `1.6-*` / `1.7-*` / `2.2c-*` / `3.6b-*` / `3.7-*` → 显式枚举）。表格已可直接进行拓扑排序。

**2. 可疑过度依赖**。
- ~~`6.3-power-notation` → `6.2-perfect-square-formula`(引 x²)倒置依赖~~ → **已通过 v2.1 规划 §6.1A 平方与开方解决**:x² 记号由 `6.1a-square` 独立发明,`6.2-*` 公式与 `6.3-power-notation` 均改为依赖 `6.1a-square`,逻辑链一致。源码侧待 fix-iter-02 新建 `typst/06-algebra-deepening/01a-square-and-root.typ`。

**3. 过载合并工具值得拆**。
- `4.1a-rational-arithmetic`(有理数四则合一,4 个细分概念):建议拆 `4.1a-rational-add-sub` + `4.1a-rational-mul-div`
- `2.3-decimal-operations`(小数加减乘除合一):同理可拆

**4. 源码位置错位**。
- `3.7a-co-interior-supplementary` 属于 §3.7 平行线,但源码在 `07a-perpendicular-distance.typ` 文件里——建议 fix-iter 把这一段迁回 §3.7 源文件或在 §3.7 新增独立文件

**5. 可疑 dead-tool 补显式前置**(同 v1 清单,未变化):
- `2.1-divisibility-cues`、`2.1-factor-pairing` 在 §2.1a/§2.1b 中以"已习得"身份使用但未列前置
- `6.5-simplify-fraction` / `6.5a-rational-add-sub` / `6.5a-rational-mul-div` 被 §6.5b / §8.2 隐式使用

### 拓扑可行性

除 1 条 orphan(`3.7a-triangle-angle-sum`)与若干通配符需展开外,其余 205 条 tool 的"概念前置"与"例题前置"均在表内有定义,构成**有向无环图(DAG)**。本表**可作拓扑排序**,为完全重排章节提供事实基础。

**新版域边分析**(v2.1,第 3 域合并 + §6.1A 规划新增后):
- 域 1(数与运算,含数系扩展):55 工具(v2 的 56 − 迁出 `4.2-square-root-notation`),为全书入口,出边遍及所有其他域
- 域 2(几何基础):37 工具,主要出边指向域 4(几何深化)
- 域 3(代数):48 工具(v2 的 46 + 新增 `6.1a-square` / `6.1a-square-root`),主要出边指向域 5(函数模型)与域 6(数据统计的方差)
- 域 4(几何深化):38 工具,终端性强,少量出边到域 5(坐标变换支撑函数图象)
- 域 5(函数模型):9 工具,终端域
- 域 6(数据与概率):18 工具,终端域

紧耦合程度最高的两个域是 1 和 3,拓扑分水岭最清晰的两条边是:
- 域 1 → 域 2(几何基础几乎不依赖数系扩展,仅坐标系需数轴)
- 域 4 → 域 5(几何深化 → 函数模型仅通过坐标变换与变量概念)

这两条边是未来划分章节的天然切分点。
