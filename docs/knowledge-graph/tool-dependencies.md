# 工具依赖总表(SSOT,独立于源码布局)

> **SSOT 角色说明**：
> - 机器可读 canonical：`docs/knowledge-graph/book-graph.yaml`（被 `make kg-validate-book` 校验）；Typst 交叉引用由 `make validate-secrefs` 单独校验
> - 本文件：人类阅读视图，按工具 slug 前缀展示工具依赖关系,不被校验脚本读取
> - `book-graph.yaml` 的 `prerequisites` 只记录主线必备依赖，不包含 `☞ 高中桥` / `☞ 继续往前` 或挑战题、选做题中出现的延伸工具
> - Typst label 使用 `<tool:pf01-...>` / `<ch:...>` / `<meta:...>`；`book-graph.yaml` node-id 使用不带 `tool:` 的 slug（如 `pf01-...`）。`#secref("pf01-...")` 是兼容简写，会按 `tool:` 解析；新写法优先用显式 `tool:`。
> - 详见 `docs/SSOT-VERSION.md`
>
> **工具 slug 前缀**：
>
> | 前缀 | 含义 | 源码目录 |
> |---|---|---|
> | pf | public foundation | `typst/1-public-foundation/` |
> | cb | common bridges | `typst/2-common-bridges/` |
> | al | algebra & symbols | `typst/3a-algebra-symbols/` |
> | ge | geometry & proof | `typst/3b-geometry-proof/` |
> | fn | functions & change | `typst/3c-functions-change/` |
> | dt | data & uncertainty | `typst/3d-data-uncertainty/` |
>
> **迁移边界**：下方 `a01-...` / `b01-...` 等域字母表格是重排规划用的人类视图，不是当前 Typst label，也不是当前 `book-graph.yaml` node-id。迁移真正落地前，机器校验与正文引用仍以 `pf` / `cb` / `al` / `ge` / `fn` / `dt` slug 为准。

> **目的**:为"完全重新规划章节"提供事实依据。本文件把全书所有知识点摊平成一张表,**完全独立于 typst 源码章节号与文件名**——源码位置列仅用于溯源。
>
> **如何用它重排章节**:
> 1. 以"概念前置"和"例题前置"两列做拓扑排序,得到一个线性的学习顺序
> 2. 在拓扑序中寻找"紧密簇"——相互紧耦合的工具群
> 3. 簇内工具组成一节,相邻簇组成一章
> 4. 章节边界放在"拓扑分水岭"(依赖密度最稀疏处)
>
> **列含义**:
> - **tool-id**:全书唯一 id,格式 `{域字母}{两位节号}-{kebab}`(例如 `a01-natural-number`、`c21-factorization`)。字母段 `a-f` 标识所属域,两位节号是域内拓扑序位置,kebab 部分是跨时稳定锚。**id 与源码文件路径完全解耦**:未来重排源码章节,id 不变。
> - **中文名 + 定义**:一句话概括,使重排者无需回源码就能判断工具语义
> - **概念前置**:该工具依赖的其他工具(按数学逻辑而非教材顺序)
> - **例题前置**:`#tryit`/`#mastery`/`#pitfall` 解答里**额外**用到的工具(已排除概念前置里已列的)。这一列揭示"隐形依赖"——blueprint 未引用但例题离不开
> - **源码位置**:**仅用于反向溯源**到 typst 源码;不驱动 id,也不暗示分类
>
> **总工具数**:207 行(7 个合并/警示型工具,196 个独立工具,3 个规划新增)
>
> **6 个域**:
> - `a-number-sense` — 数感与运算 (ℕ→ℤ→ℚ→ℝ 数系 + 四则 + 位值 + 分数小数比例)
> - `b-shapes` — 图形直观 (点线面 + 形状 + 周长面积体积 + 角与平行 + 坐标入门)
> - `c-symbols` — 符号与方程 (字母式 + 整式 + 幂 + 因式分解 + 方程/不等式/分式)
> - `d-geometry-proof` — 几何推理 (全等/相似/圆/勾股/三角比/变换/视图)
> - `e-functions` — 函数与变化 (一次/反比例/二次 + 增长模型)
> - `f-data` — 数据与不确定性 (描述统计 + 频率分布 + 概率 + 抽样)
>
> **本版变更(v3,2026-04-20)**:一级分类与 tool-id 全面重新规划,**脱钩** typst 源码章节号与文件名。6 域改用 slug `a-f` + 中文标题作为标题;tool-id 格式由旧 `{ch}.{sec}[{sub}]-{kebab}`(如 `6.4-factorization`、`2.2b-simplify`)改为新 `{域字母}{NN}-{kebab}`(如 `c21-factorization`、`a34-simplify`),kebab 部分保留不变。旧的 v2/v2.1/v2.2/v2.3 变更记录已与旧 id 一同退役,可在 git 历史中查阅。
>
> **格式说明**:同一域内按拓扑依赖顺序排列,节号即拓扑序。域字母本身也按学习脉络排序(a→b→c→d→e→f),但读者仍可基于本表自行重排。

---

## a-number-sense — 数感与运算

**56 条工具(a01–a56)**,覆盖 ℕ→ℤ→ℚ→ℝ 数系的完整建构:自然数/位值/四则 → 因数/分数/小数/比例 → 数轴/负数/有理数/无理数。按拓扑序排列:数系元素在前,运算律其次,分数/小数/比例在后,数系扩展(`a49–a56`)收尾。

| tool-id | 中文名 / 定义 | 概念前置 | 例题前置(额外) | 源码位置 |
|---|---|---|---|---|
| `a01-natural-number` | 自然数 — 0,1,2,3,… 表"多少个" | — | — | 1a-number-sense/1-a01-natural-number.typ |
| `a02-zero` | 零(0) — "一个都没有",也是自然数 | `a01-natural-number` | — | 1a-number-sense/1-a01-natural-number.typ |
| `a03-order` | 大小比较(<,>) | `a01-natural-number` | — | 1a-number-sense/1-a01-natural-number.typ |
| `a04-digit` | 数字 — 0-9 十个基础符号 | `a01-natural-number` | — | 1a-number-sense/1-a04-digit.typ |
| `a05-place-value` | 位值 — 同一数字不同位置代表不同量 | `a04-digit` | — | 1a-number-sense/1-a04-digit.typ |
| `a06-decimal-system` | 十进制(满十进一) | `a05-place-value` | — | 1a-number-sense/1-a04-digit.typ |
| `a07-addition` | 加法(+) — 合并运算 | `a01-natural-number` | — | 1a-number-sense/1-a07-addition.typ |
| `a08-subtraction` | 减法(−) — 加法的逆 | `a07-addition` | — | 1a-number-sense/1-a07-addition.typ |
| `a09-carry-borrow` | 进位与退位竖式规则 | `a05-place-value`, `a07-addition`, `a08-subtraction` | — | 1a-number-sense/1-a07-addition.typ |
| `a10-multiplication` | 乘法(×) — 相同加数的简记 | `a07-addition` | — | 1a-number-sense/1-a10-multiplication.typ |
| `a11-division` | 除法(÷) — 等分/包含,乘法的逆 | `a10-multiplication`, `a08-subtraction` | — | 1a-number-sense/1-a10-multiplication.typ |
| `a12-remainder` | 余数 — 除不尽的剩余部分 | `a11-division` | — | 1a-number-sense/1-a10-multiplication.typ |
| `a13-order-of-operations` | 运算顺序(先乘除后加减) | `a07-addition`, `a08-subtraction`, `a09-carry-borrow`, `a10-multiplication`, `a11-division`, `a12-remainder` | — | 1a-number-sense/1-a13-order-of-operations.typ |
| `a14-parentheses` | 括号 — 强制改变运算顺序 | `a13-order-of-operations` | — | 1a-number-sense/1-a13-order-of-operations.typ |
| `a15-add-commutative` | 加法交换律 a+b=b+a | `a07-addition` | — | 1a-number-sense/1-a15-add-commutative.typ |
| `a16-add-associative` | 加法结合律 (a+b)+c=a+(b+c) | `a07-addition` | — | 1a-number-sense/1-a15-add-commutative.typ |
| `a17-mul-commutative` | 乘法交换律 a×b=b×a | `a10-multiplication` | — | 1a-number-sense/1-a17-mul-commutative.typ |
| `a18-mul-associative` | 乘法结合律 (a×b)×c=a×(b×c) | `a10-multiplication` | — | 1a-number-sense/1-a17-mul-commutative.typ |
| `a19-distributive` | 分配律 a(b+c)=ab+ac | `a10-multiplication`, `a07-addition` | `a08-subtraction`(例题含 4×(5-2)) | 1a-number-sense/1-a17-mul-commutative.typ |
| `a20-factor-multiple` | 因数与倍数 — a=b×c 时 b,c 是因数 | `a10-multiplication`, `a11-division` | — | 1a-number-sense/1-a20-factor-multiple.typ |
| `a21-divisibility-cues` | 整除线索 — 2/3/5 的末位或数字和规则 | `a20-factor-multiple`, `a05-place-value` | — | 1a-number-sense/1-a20-factor-multiple.typ |
| `a22-factor-pairing` | 因数配对法 — 从小到大试除 | `a20-factor-multiple`, `a11-division` | — | 1a-number-sense/1-a20-factor-multiple.typ |
| `a23-prime` | 质数 — 大于 1,正因数只有 1 和自身 | `a20-factor-multiple` | — | 1a-number-sense/1-a23-prime.typ |
| `a24-composite` | 合数 — 大于 1,除 1 和自身外还有正因数 | `a20-factor-multiple`, `a23-prime` | — | 1a-number-sense/1-a23-prime.typ |
| `a25-prime-factorization` | 质因数分解 — 写成若干质数相乘 | `a23-prime`, `a24-composite` | — | 1a-number-sense/1-a25-prime-factorization.typ |
| `a26-gcd` | 最大公因数 — 共同质因数的较小次幂相乘 | `a25-prime-factorization` | — | 1a-number-sense/1-a25-prime-factorization.typ |
| `a27-lcm` | 最小公倍数 — 所有质因数的较大次幂相乘 | `a25-prime-factorization` | — | 1a-number-sense/1-a25-prime-factorization.typ |
| `a28-fraction-definition` | 分数 a/b — 整体分 b 取 a,含分子分母 | `a20-factor-multiple`, `a11-division` | `a11-division`(a/b = a÷b) | 1a-number-sense/1-a28-fraction-definition.typ |
| `a29-proper-fraction` | 真分数 — 分子<分母 | `a28-fraction-definition`, `a03-order` | — | 1a-number-sense/1-a28-fraction-definition.typ |
| `a30-improper-fraction` | 假分数 — 分子≥分母 | `a28-fraction-definition`, `a03-order` | — | 1a-number-sense/1-a28-fraction-definition.typ |
| `a31-mixed-number` | 带分数 — 整数加真分数 | `a29-proper-fraction`, `a07-addition` | — | 1a-number-sense/1-a31-mixed-number.typ |
| `a32-convert-improper-mixed` | 假/带互化 | `a31-mixed-number`, `a30-improper-fraction`, `a11-division`, `a12-remainder` | — | 1a-number-sense/1-a31-mixed-number.typ |
| `a33-fraction-property` | 分数基本性质 — 分子分母同乘除非零数值不变 | `a28-fraction-definition`, `a10-multiplication`, `a11-division` | — | 1a-number-sense/1-a31-mixed-number.typ |
| `a34-simplify` | 约分 — 分子分母同除 GCD | `a33-fraction-property`, `a26-gcd` | — | 1a-number-sense/1-a34-simplify.typ |
| `a35-lowest-terms` | 最简分数 — 分子分母互质 | `a34-simplify`, `a26-gcd` | — | 1a-number-sense/1-a34-simplify.typ |
| `a36-common-denominator` | 通分 — 用 LCM 化为共同分母 | `a33-fraction-property`, `a27-lcm` | — | 1a-number-sense/1-a34-simplify.typ |
| `a37-fraction-compare` | 分数比较大小 | `a36-common-denominator`, `a03-order` | — | 1a-number-sense/1-a34-simplify.typ |
| `a38-fraction-add-sub` | 分数加减 — 通分后加减分子 | `a36-common-denominator`, `a07-addition`, `a08-subtraction` | `a15-add-commutative`, `a16-add-associative`, `a17-mul-commutative`, `a18-mul-associative`, `a19-distributive` | 1a-number-sense/1-a38-fraction-add-sub.typ |
| `a39-fraction-mul` | 分数乘法 — 分子乘分子、分母乘分母 | `a28-fraction-definition`, `a10-multiplication` | `a34-simplify`(交叉约分) | 1a-number-sense/1-a38-fraction-add-sub.typ |
| `a40-fraction-div` | 分数除法 — 乘以倒数 | `a39-fraction-mul`, `a11-division` | — | 1a-number-sense/1-a38-fraction-add-sub.typ |
| `a41-decimal` | 小数 — 分母 10/100/... 的分数的简写 | `a28-fraction-definition`, `a05-place-value` | — | 1a-number-sense/1-a41-decimal.typ |
| `a42-decimal-operations` | 小数四则(加减对齐/乘法定点/除法右移) | `a41-decimal`, `a07-addition`, `a08-subtraction`, `a09-carry-borrow`, `a10-multiplication`, `a11-division`, `a12-remainder` | — | 1a-number-sense/1-a41-decimal.typ |
| `a43-frac-decimal-conversion` | 分小数互化 | `a41-decimal`, `a28-fraction-definition`, `a34-simplify`, `a11-division` | — | 1a-number-sense/1-a41-decimal.typ |
| `a44-ratio` | 比与比值 a:b | `a28-fraction-definition`, `a11-division` | — | 1a-number-sense/1-a44-ratio.typ |
| `a45-proportion` | 比例与按比分配 a:b=c:d↔ad=bc | `a44-ratio`, `a10-multiplication` | — | 1a-number-sense/1-a44-ratio.typ |
| `a46-percentage` | 百分数 a% = a/100 | `a44-ratio`, `a41-decimal` | — | 1a-number-sense/1-a44-ratio.typ |
| `a47-decimal-fraction-conversion` | 小数↔分数互化规范 | `a43-frac-decimal-conversion`, `a34-simplify` | — | 1a-number-sense/1-a47-decimal-fraction-conversion.typ |
| `a48-percent-decimal-conversion` | 百分数↔小数↔分数 | `a46-percentage`, `a47-decimal-fraction-conversion` | — | 1a-number-sense/1-a47-decimal-fraction-conversion.typ |
| `a49-number-line` | 数轴 — 数按序排在直线上 | `b03-straight-line`, `b01-point`, `a03-order`, `a02-zero` | — | 1a-number-sense/1-a49-number-line.typ |
| `a50-negative-number` | 负数 — 0 左侧,反方向 | `a49-number-line`, `a02-zero`, `a03-order` | — | 1a-number-sense/1-a49-number-line.typ |
| `a51-rational-number` | 有理数 — 能写成两整数之比 p/q(q≠0) | `a50-negative-number`, `a28-fraction-definition`, `a41-decimal` | — | 1a-number-sense/1-a49-number-line.typ |
| `a52-opposite-number` | 相反数 — 0 两侧等距反向的一对数 | `a49-number-line`, `a50-negative-number` | — | 1a-number-sense/1-a52-opposite-number.typ |
| `a53-absolute-value` | 绝对值 — 到 0 的距离,非负 | `a52-opposite-number`, `a49-number-line` | — | 1a-number-sense/1-a52-opposite-number.typ |
| `a54-rational-arithmetic` | 有理数四则(同号异号规则) | `a51-rational-number`, `a53-absolute-value`, `a52-opposite-number`, `a07-addition`, `a08-subtraction`, `a09-carry-borrow`, `a10-multiplication`, `a11-division`, `a12-remainder`, `a38-fraction-add-sub`, `a39-fraction-mul`, `a40-fraction-div` | — | 1a-number-sense/1-a52-opposite-number.typ |
| `a55-irrational-number` | 无理数 — 不能写成两整数之比的实数 | `a28-fraction-definition`, `b12-circle-circumference`(π,主例), `a51-rational-number` | — | 1a-number-sense/1-a55-irrational-number.typ |
| `a56-real-number` | 实数 — 有理数与无理数的总和 | `a55-irrational-number`, `a51-rational-number` | — | 1a-number-sense/1-a55-irrational-number.typ |

> **说明**:末尾 8 条(`a49-a56`)为数轴/负数/有理数/无理数/实数的数系扩展段,数学上是本域数系建构的自然收尾。跨域依赖仅 2 条(`a49-number-line` → `b03-straight-line`/`b01-point`、`a55-irrational-number` → `b12-circle-circumference` 引 π),表明与图形域仅以"几何表示"为桥。

---

## b-shapes — 图形直观

**38 条工具(b01–b38)**,覆盖点/线/面原子 → 形状 → 度量(周长/面积/体积)→ 角关系 → 平行垂直 → 坐标入门。按拓扑序:点线面在前,形状其次(依赖线段),度量再后,角与平行线闭环,坐标系作为本域出口。

| tool-id | 中文名 / 定义 | 概念前置 | 例题前置(额外) | 源码位置 |
|---|---|---|---|---|
| `b01-point` | 点 — 表位置,无大小 | — | — | 1b-shapes/1-b01-point.typ |
| `b02-line-segment` | 线段 — 两端点,有限长 | `b01-point` | — | 1b-shapes/1-b01-point.typ |
| `b03-straight-line` | 直线 — 无端点,双向无限延伸 | `b01-point` | — | 1b-shapes/1-b01-point.typ |
| `b04-ray` | 射线 — 一端点,单向无限 | `b01-point`, `b03-straight-line` | — | 1b-shapes/1-b04-ray.typ |
| `b05-plane` | 平面 — 二维无限延伸 | `b01-point`, `b03-straight-line` | — | 1b-shapes/1-b04-ray.typ |
| `b06-point-line-relation` | 点与直线的位置关系 | `b01-point`, `b03-straight-line` | — | 1b-shapes/1-b04-ray.typ |
| `b07-triangle` | 三角形 — 3 条线段首尾相接 | `b02-line-segment` | — | 1b-shapes/1-b07-triangle.typ |
| `b08-quadrilateral` | 四边形 — 4 条线段首尾相接 | `b02-line-segment` | — | 1b-shapes/1-b07-triangle.typ |
| `b09-circle` | 圆 — 到中心等距所有点 | `b01-point` | — | 1b-shapes/1-b07-triangle.typ |
| `b10-perimeter` | 周长 — 封闭图形一圈长度 | `b02-line-segment`, `a07-addition` | — | 1b-shapes/1-b10-perimeter.typ |
| `b11-rectangle-perimeter` | 长方形周长 C=2(a+b) | `b10-perimeter`, `b08-quadrilateral`, `a19-distributive` | `a10-multiplication`, `a07-addition` | 1b-shapes/1-b10-perimeter.typ |
| `b12-circle-circumference` | 圆周长 C=2πr | `b10-perimeter`, `b09-circle` | — | 1b-shapes/1-b10-perimeter.typ |
| `b13-area` | 面积 — 能铺多少单位方格 | `b08-quadrilateral`, `a10-multiplication` | — | 1b-shapes/1-b13-area.typ |
| `b14-cut-rearrange-method` | 割补法 — 剪开拼成已知形 | `b13-area` | — | 1b-shapes/1-b13-area.typ |
| `b15-parallelogram-area` | 平行四边形面积 底×高 | `b14-cut-rearrange-method`, `b13-area` | — | 1b-shapes/1-b13-area.typ |
| `b16-triangle-area` | 三角形面积 底×高÷2 | `b15-parallelogram-area`, `b07-triangle`, `a11-division` | — | 1b-shapes/1-b13-area.typ |
| `b17-volume` | 体积 — 立体能放多少单位立方 | `b13-area`, `b05-plane`, `a10-multiplication` | — | 1b-shapes/1-b17-volume.typ |
| `b18-rectangular-solid-volume` | 长方体体积 长×宽×高 | `b17-volume`, `b08-quadrilateral` | — | 1b-shapes/1-b17-volume.typ |
| `b19-cylinder-volume` | 圆柱体积 底面积×高 | `b17-volume`, `b12-circle-circumference`, `b13-area` | — | 1b-shapes/1-b17-volume.typ |
| `b20-angle` | 角 — 两射线同一端点 | `b01-point`, `b04-ray` | — | 1b-shapes/1-b20-angle.typ |
| `b21-right-angle` | 直角 — 90° | `b20-angle` | — | 1b-shapes/1-b20-angle.typ |
| `b22-degree` | 度(°) — 一整圈旋转的 1/360 | `b20-angle`, `a11-division` | — | 1b-shapes/1-b20-angle.typ |
| `b23-acute-angle` | 锐角 0°<∠<90° | `b20-angle`, `b21-right-angle`, `a03-order` | — | 1b-shapes/1-b23-acute-angle.typ |
| `b24-obtuse-angle` | 钝角 90°<∠<180° | `b21-right-angle`, `a03-order` | — | 1b-shapes/1-b23-acute-angle.typ |
| `b25-straight-angle` | 平角 180° | `b20-angle` | — | 1b-shapes/1-b23-acute-angle.typ |
| `b26-complementary` | 互余 — 两角和 90° | `b21-right-angle`, `a07-addition` | `a08-subtraction`(求余角) | 1b-shapes/1-b26-complementary.typ |
| `b27-supplementary` | 互补 — 两角和 180° | `b25-straight-angle`, `a07-addition` | `a08-subtraction` | 1b-shapes/1-b26-complementary.typ |
| `b28-vertical-angles` | 对顶角相等 | `b20-angle`, `b25-straight-angle`, `a08-subtraction` | — | 1b-shapes/1-b26-complementary.typ |
| `b29-parallel-lines` | 平行线 — 同平面不相交 | `b03-straight-line`, `b05-plane` | — | 1b-shapes/1-b29-parallel-lines.typ |
| `b30-corresponding-angles` | 同位角相等 | `b29-parallel-lines`, `b20-angle` | — | 1b-shapes/1-b29-parallel-lines.typ |
| `b31-alternate-interior-angles` | 内错角相等 | `b29-parallel-lines`, `b20-angle`, `b28-vertical-angles` | — | 1b-shapes/1-b29-parallel-lines.typ |
| `b32-co-interior-supplementary` | 同旁内角互补 | `b29-parallel-lines`, `b20-angle`, `b27-supplementary` | — | 1b-shapes/1-b32-co-interior-supplementary.typ |
| `b33-triangle-angle-sum` | 三角形内角和 — 三内角之和 = 180°，由平行线内错角/同位角证明 | `b29-parallel-lines`, `b31-alternate-interior-angles`, `b22-degree`, `a07-addition` | — | **(规划)** 1b-shapes/1-b33-triangle-angle-sum.typ |
| `b34-perpendicular` | 垂直 a⊥b — 相交夹 90° | `b03-straight-line`, `b21-right-angle` | — | 1b-shapes/1-b32-co-interior-supplementary.typ |
| `b35-distance-point-line` | 点到直线距离 — 垂线段长度 | `b34-perpendicular`, `b02-line-segment` | — | 1b-shapes/1-b32-co-interior-supplementary.typ |
| `b36-coordinate-system` | 坐标系 — 平面上两垂直数轴 | `b34-perpendicular`, `b05-plane`, `a49-number-line` | — | 1b-shapes/1-b36-coordinate-system.typ |
| `b37-ordered-pair` | 有序数对 (a,b) | `b36-coordinate-system` | — | 1b-shapes/1-b36-coordinate-system.typ |
| `b38-axis-on-point` | 坐标轴上的点规律 | `b37-ordered-pair`, `a02-zero` | — | 1b-shapes/1-b36-coordinate-system.typ |

> **说明**:行序按**拓扑依赖**排列——点/线/面作为原子(b01–b06)在前,形状(`b07-triangle` 起)依赖线段,度量/角/平行随后。源码物理布局中 `01-plane-shapes.typ` 排在 `02-points-lines.typ` 之前,与本表拓扑方向相反,属遗留,留待未来 typst 源码重排对齐。

---

## c-symbols — 符号与方程

**48 条工具(c01–c48)**,覆盖"字母表示数 → 整式 → 平方与幂 → 因式分解 → 分式 → 方程/方程组/二次/不等式"完整代数链条。按拓扑序:代数符号入口 → 整式运算与公式 → 平方开方 → 幂运算律 → 因式分解 → 分式(表达式/运算/方程)→ 各类方程与不等式。

| tool-id | 中文名 / 定义 | 概念前置 | 例题前置(额外) | 源码位置 |
|---|---|---|---|---|
| `c01-variable` | 字母表示数 | `a01-natural-number` | — | 3a-symbols/1-c01-variable.typ |
| `c02-algebraic-expression` | 代数式 — 数/字母/运算组成的计算模板 | `c01-variable`, `a07-addition`, `a08-subtraction`, `a09-carry-borrow`, `a10-multiplication`, `a11-division`, `a12-remainder`, `a54-rational-arithmetic` | — | 3a-symbols/1-c01-variable.typ |
| `c03-substitution` | 代入求值 | `c02-algebraic-expression`, `a54-rational-arithmetic`, `a13-order-of-operations` | — | 3a-symbols/1-c01-variable.typ |
| `c04-equation` | 方程 — 含等号的式子 | `c02-algebraic-expression` | — | 3a-symbols/1-c04-equation.typ |
| `c05-solution` | 方程的解 — 使方程成立的值 | `c04-equation`, `c03-substitution` | — | 3a-symbols/1-c04-equation.typ |
| `c06-undo-balance` | Undo 与 Balance 两视角解方程 | `c04-equation`, `c05-solution`, `a07-addition`, `a08-subtraction`, `a09-carry-borrow`, `a10-multiplication`, `a11-division`, `a12-remainder` | — | 3a-symbols/1-c04-equation.typ |
| `c07-polynomial` | 整式 — 字母/数/非负整数次幂加减乘组成 | `c02-algebraic-expression`, `c01-variable` | — | 3a-symbols/1-c07-polynomial.typ |
| `c08-combine-like-terms` | 合并同类项 — 字母部分相同的项合系数 | `c07-polynomial`, `a19-distributive` | — | 3a-symbols/1-c07-polynomial.typ |
| `c09-remove-parentheses` | 去括号 — 括号前是减则每项反号 | `c07-polynomial`, `a19-distributive`, `a52-opposite-number` | — | 3a-symbols/1-c07-polynomial.typ |
| `c10-square` | 平方 x² — x²=x·x(具体数/表达式自乘的简记,a^n 的第一例) | `a10-multiplication`, `c01-variable` | — | **(规划)** 3a-symbols/1-c10-square.typ |
| `c11-square-root` | 平方根记号 √n — 使 x²=n 的非负 x(平方的逆) | `c10-square`, `a51-rational-number`, `a10-multiplication` | — | **(规划)** 3a-symbols/1-c11-square-root.typ |
| `c12-polynomial-multiply` | 多项式乘法 — 每项与每项相乘再合并 | `c07-polynomial`, `c08-combine-like-terms`, `a19-distributive` | — | 3a-symbols/1-c12-polynomial-multiply.typ |
| `c13-difference-squares` | 平方差公式 (a+b)(a-b)=a²-b² | `c12-polynomial-multiply`, `c10-square` | — | 3a-symbols/1-c12-polynomial-multiply.typ |
| `c14-perfect-square-formula` | 完全平方公式 (a±b)²=a²±2ab+b² | `c12-polynomial-multiply`, `c10-square` | — | 3a-symbols/1-c12-polynomial-multiply.typ |
| `c15-power-notation` | 幂记号 a^n(把 `c10-square` 的 x² 一般化到指数 n) | `a10-multiplication`, `c10-square` | — | 3a-symbols/1-c15-power-notation.typ |
| `c16-same-base-multiply` | 同底数幂相乘 a^m·a^n=a^(m+n) | `c15-power-notation`, `a07-addition` | — | 3a-symbols/1-c15-power-notation.typ |
| `c17-same-base-divide` | 同底数幂相除 a^m/a^n=a^(m-n) | `c15-power-notation`, `a08-subtraction`, `a11-division` | — | 3a-symbols/1-c15-power-notation.typ |
| `c18-zero-exponent` | 零次幂 a⁰=1(a≠0) | `c17-same-base-divide` | — | 3a-symbols/1-c18-zero-exponent.typ |
| `c19-power-of-power` | 幂的乘方 (a^m)^n=a^(mn) | `c15-power-notation`, `c16-same-base-multiply`, `a10-multiplication` | — | 3a-symbols/1-c18-zero-exponent.typ |
| `c20-power-of-product` | 积的乘方 (ab)^n=a^n b^n | `c15-power-notation`, `a19-distributive` | — | 3a-symbols/1-c18-zero-exponent.typ |
| `c21-factorization` | 因式分解 — 和写成积(乘法展开逆) | `c12-polynomial-multiply` | — | 3a-symbols/1-c21-factorization.typ |
| `c22-common-factor` | 提公因式 — 取各项 GCD 提出 | `c21-factorization`, `a26-gcd`, `a19-distributive` | — | 3a-symbols/1-c21-factorization.typ |
| `c23-formula-factoring` | 公式法 — 平方差/完全平方反用 | `c21-factorization`, `c13-difference-squares`, `c14-perfect-square-formula` | — | 3a-symbols/1-c21-factorization.typ |
| `c24-cross-multiplication` | 十字相乘 x²+bx+c 找两数 | `c21-factorization`, `c12-polynomial-multiply` | — | 3a-symbols/1-c21-factorization.typ |
| `c25-rational-expression` | 分式 — 分母含字母的分数式 | `a28-fraction-definition`, `c07-polynomial` | — | 3a-symbols/1-c25-rational-expression.typ |
| `c26-rational-property` | 分式基本性质 — 同乘除非零式值不变 | `c25-rational-expression`, `a33-fraction-property` | — | 3a-symbols/1-c25-rational-expression.typ |
| `c27-simplify-fraction` | 约分与最简分式 | `c26-rational-property`, `a34-simplify`, `c21-factorization` | `c23-formula-factoring` | 3a-symbols/1-c25-rational-expression.typ |
| `c28-common-denominator` | 通分与最简公分母 | `c26-rational-property`, `a36-common-denominator`, `c21-factorization` | — | 3a-symbols/1-c28-common-denominator.typ |
| `c29-rational-add-sub` | 分式加减 — 通分后加减分子 | `c28-common-denominator`, `a38-fraction-add-sub`, `c09-remove-parentheses` | — | 3a-symbols/1-c28-common-denominator.typ |
| `c30-rational-mul-div` | 分式乘除 — 乘:分子分母分别相乘;除:倒数 | `c25-rational-expression`, `a39-fraction-mul`, `a40-fraction-div`, `c21-factorization` | — | 3a-symbols/1-c28-common-denominator.typ |
| `c31-rational-equation` | 分式方程 — 分母含字母的方程 | `c25-rational-expression`, `c04-equation` | — | 3a-symbols/1-c31-rational-equation.typ |
| `c32-clear-denominators` | 去分母 — 乘 LCD 转整式方程 | `c31-rational-equation`, `c28-common-denominator` | `c36-five-step-solution` | 3a-symbols/1-c31-rational-equation.typ |
| `c33-extraneous-root` | 增根与验根 — 检查是否使分母为零 | `c32-clear-denominators`, `c25-rational-expression` | — | 3a-symbols/1-c31-rational-equation.typ |
| `c34-linear-equation` | 一元一次方程 ax+b=c | `c04-equation`, `c07-polynomial` | — | 3a-symbols/1-c34-linear-equation.typ |
| `c35-equality-properties` | 等式两条性质(加减/乘除) | `c06-undo-balance` | — | 3a-symbols/1-c34-linear-equation.typ |
| `c36-five-step-solution` | 五步解法:去分母/去括号/移项/合并/系数化 1 | `c34-linear-equation`, `c35-equality-properties`, `c09-remove-parentheses`, `c08-combine-like-terms`, `a27-lcm` | `a19-distributive` | 3a-symbols/1-c34-linear-equation.typ |
| `c37-system-of-equations` | 二元一次方程组 | `c34-linear-equation` | — | 3a-symbols/3-c37-system-of-equations.typ |
| `c38-substitution-method` | 代入消元法 | `c37-system-of-equations`, `c36-five-step-solution` | `a19-distributive` | 3a-symbols/3-c37-system-of-equations.typ |
| `c39-elimination-method` | 加减消元法 | `c37-system-of-equations`, `c35-equality-properties` | `c08-combine-like-terms` | 3a-symbols/3-c37-system-of-equations.typ |
| `c40-quadratic-equation` | 一元二次方程 ax²+bx+c=0 | `c15-power-notation`, `c07-polynomial`, `c04-equation` | — | 3a-symbols/3-c40-quadratic-equation.typ |
| `c41-square-root-method` | 直接开方法 (x+m)²=k 两边开根 | `c40-quadratic-equation`, `c11-square-root`, `c06-undo-balance` | — | 3a-symbols/3-c40-quadratic-equation.typ |
| `c42-completing-square` | 配方法 — 加减"半数平方"化顶点式 | `c41-square-root-method`, `c14-perfect-square-formula` | — | 3a-symbols/3-c40-quadratic-equation.typ |
| `c43-quadratic-formula` | 求根公式 x=(-b±√(b²-4ac))/(2a) | `c42-completing-square`, `c11-square-root` | — | 3a-symbols/3-c40-quadratic-equation.typ |
| `c44-factor-method` | 因式分解法 — 零乘积性质 | `c40-quadratic-equation`, `c21-factorization`, `c24-cross-multiplication` | — | 3a-symbols/3-c40-quadratic-equation.typ |
| `c45-inequality` | 不等式与解集 — <,>,≤,≥ 连接 | `a03-order`, `a49-number-line` | — | 3a-symbols/3-c45-inequality.typ |
| `c46-inequality-properties` | 不等式三性质(乘除负数反号) | `c45-inequality`, `a50-negative-number`, `a54-rational-arithmetic` | — | 3a-symbols/3-c45-inequality.typ |
| `c47-linear-inequality` | 一元一次不等式 | `c46-inequality-properties`, `c36-five-step-solution` | — | 3a-symbols/3-c45-inequality.typ |
| `c48-inequality-system` | 不等式组与交集口诀 | `c47-linear-inequality`, `a49-number-line` | — | 3a-symbols/3-c45-inequality.typ |

> **说明**:本域以代数符号入口(`c01-c06`,字母/代数式/代入 + 方程/解/undo-balance)作为门槛,主体是整式/幂/因式分解/分式/方程/不等式(`c07-c48`)。入口 6 条在源码中原属 ch04,但其 90% 的出边流向 ch06 的代数深化,在本图谱归并为同一域。

---

## d-geometry-proof — 几何推理

**38 条工具(d01–d38)**,覆盖全等证明入口 → 判定四件套(SSS/SAS/ASA/AAS/HL)→ 相似 → 四边形与特殊四边形 → 圆(弦心距/圆周角)→ 勾股 → 三角比 → 测量应用 → 刚性变换 → 投影视图。按拓扑序:全等定义打底,判定方法次之,相似与四边形并行深入,圆自成子簇,勾股与三角比构成度量桥。

| tool-id | 中文名 / 定义 | 概念前置 | 例题前置(额外) | 源码位置 |
|---|---|---|---|---|
| `d01-congruence-definition` | 全等记号 △ABC≅△DEF(顶点对应) | `b07-triangle`, `b02-line-segment`, `b20-angle` | `b26-complementary`, `b27-supplementary`, `b28-vertical-angles`, `b29-parallel-lines`, `b30-corresponding-angles`, `b31-alternate-interior-angles` | 3b-geometry-proof/1-d01-congruence-definition.typ |
| `d02-proof-chain` | 三步证明链 已知→桥→结论 | `d01-congruence-definition` | — | 3b-geometry-proof/1-d01-congruence-definition.typ |
| `d03-ssa-warning` | SSA 不是判定(反例警示) | `d01-congruence-definition` | — | 3b-geometry-proof/1-d01-congruence-definition.typ |
| `d04-sss-criterion` | SSS 全等判定 — 三边对应相等 | `d01-congruence-definition`, `d02-proof-chain` | — | 3b-geometry-proof/1-d04-sss-criterion.typ |
| `d05-sas-criterion` | SAS — 两边及夹角对应相等 | `d01-congruence-definition`, `d02-proof-chain`, `b20-angle` | — | 3b-geometry-proof/1-d04-sss-criterion.typ |
| `d06-isosceles-property` | 等腰三角形三线合一 | `d05-sas-criterion` | — | 3b-geometry-proof/1-d04-sss-criterion.typ |
| `d07-asa-criterion` | ASA — 两角及夹边 | `d02-proof-chain` | — | 3b-geometry-proof/1-d07-asa-criterion.typ |
| `d08-aas-criterion` | AAS — 两角及非夹边 | `d07-asa-criterion`, `b33-triangle-angle-sum` | — | 3b-geometry-proof/1-d07-asa-criterion.typ |
| `d09-hl-criterion` | HL(直角斜边+直角边) | `d01-congruence-definition`, `b21-right-angle` | — | 3b-geometry-proof/1-d07-asa-criterion.typ |
| `d10-similar-triangles` | 相似三角形 △∽△(对应角等/边成比例) | `d01-congruence-definition`, `a44-ratio`, `a45-proportion` | — | 3b-geometry-proof/1-d10-similar-triangles.typ |
| `d11-similarity-scaling` | 相似边/周长/面积比 k/k/k² | `d10-similar-triangles`, `c10-square` | — | 3b-geometry-proof/1-d10-similar-triangles.typ |
| `d12-parallel-similarity` | 平行线截三角形相似 | `d10-similar-triangles`, `b29-parallel-lines`, `b30-corresponding-angles` | — | 3b-geometry-proof/1-d10-similar-triangles.typ |
| `d13-midsegment` | 三角形中位线 — 平行第三边且长度一半 | `d12-parallel-similarity` | — | 3b-geometry-proof/1-d10-similar-triangles.typ |
| `d14-quadrilateral-angle-sum` | 四边形内角和 360° | `b08-quadrilateral`, `b22-degree`, `b33-triangle-angle-sum` | — | 3b-geometry-proof/1-d14-quadrilateral-angle-sum.typ |
| `d15-parallelogram-properties` | 平行四边形性质(对边等/对角等/对角线平分) | `d14-quadrilateral-angle-sum`, `b29-parallel-lines`, `d05-sas-criterion` | — | 3b-geometry-proof/1-d14-quadrilateral-angle-sum.typ |
| `d16-parallelogram-criteria` | 平行四边形 5 种判定 | `d15-parallelogram-properties`, `d04-sss-criterion`, `d07-asa-criterion` | — | 3b-geometry-proof/1-d14-quadrilateral-angle-sum.typ |
| `d17-rectangle` | 矩形 — 有一直角的平行四边形 | `d15-parallelogram-properties`, `b21-right-angle`, `d05-sas-criterion` | — | 3b-geometry-proof/1-d17-rectangle.typ |
| `d18-rhombus` | 菱形 — 四边相等平行四边形 | `d15-parallelogram-properties`, `b34-perpendicular`, `d05-sas-criterion` | — | 3b-geometry-proof/1-d17-rectangle.typ |
| `d19-square` | 正方形 = 矩形 ∩ 菱形 | `d17-rectangle`, `d18-rhombus` | — | 3b-geometry-proof/1-d17-rectangle.typ |
| `d20-radius-linking` | 连半径战术 — 圆→等腰/全等 | `b09-circle`, `d05-sas-criterion`, `d06-isosceles-property` | — | 3b-geometry-proof/1-d20-radius-linking.typ |
| `d21-inscribed-angle` | 圆周角定理 = 圆心角一半;半圆圆周角 90° | `d20-radius-linking`, `b20-angle` | — | 3b-geometry-proof/1-d20-radius-linking.typ |
| `d22-perpendicular-chord` | 垂径定理 — 过心垂线平分弦 | `d20-radius-linking`, `b34-perpendicular`, `d05-sas-criterion`, `b02-line-segment` | — | 3b-geometry-proof/1-d20-radius-linking.typ |
| `d23-pythagorean-theorem` | 勾股定理 a²+b²=c² | `b07-triangle`, `b02-line-segment`, `b21-right-angle`, `c10-square`, `b13-area`(面积法证明) | `c11-square-root`(结果) | 3b-geometry-proof/3-d23-pythagorean-theorem.typ |
| `d24-pythagorean-converse` | 勾股逆定理(SSS 判定直角) | `d23-pythagorean-theorem`, `d04-sss-criterion` | — | 3b-geometry-proof/3-d23-pythagorean-theorem.typ |
| `d25-pythagorean-triples` | 勾股数与隐藏直角三角形(矩形对角/菱形半对角/弦心距) | `d23-pythagorean-theorem`, `d17-rectangle`, `d18-rhombus`, `d22-perpendicular-chord` | — | 3b-geometry-proof/3-d23-pythagorean-theorem.typ |
| `d26-trigonometric-ratios` | sin/cos/tan 三角比 | `d10-similar-triangles`, `b21-right-angle`, `a44-ratio` | `d23-pythagorean-theorem`(验算) | 3b-geometry-proof/3-d26-trigonometric-ratios.typ |
| `d27-trig-invariance` | 同角三角比不变 — 由相似保证 | `d26-trigonometric-ratios`, `d11-similarity-scaling` | — | 3b-geometry-proof/3-d26-trigonometric-ratios.typ |
| `d28-special-angles` | 30°/45°/60° 特殊角三角比值 | `d26-trigonometric-ratios`, `d23-pythagorean-theorem` | — | 3b-geometry-proof/3-d26-trigonometric-ratios.typ |
| `d29-elevation-depression` | 仰角与俯角(平行水平线上两角相等) | `b20-angle`, `b29-parallel-lines` | — | 3b-geometry-proof/3-d29-elevation-depression.typ |
| `d30-slope` | 坡度 i = rise/run = tan α | `d26-trigonometric-ratios`, `a44-ratio` | — | 3b-geometry-proof/3-d29-elevation-depression.typ |
| `d31-scene-to-triangle` | 场景→直角三角形标准流程 | `d29-elevation-depression`, `d26-trigonometric-ratios`, `d23-pythagorean-theorem`, `b34-perpendicular` | — | 3b-geometry-proof/3-d29-elevation-depression.typ |
| `d32-rigid-transformations` | 三类刚性变换(平移/翻折/旋转)共同不变量 | `b02-line-segment`, `b20-angle`, `d05-sas-criterion` | — | 3b-geometry-proof/3-d32-rigid-transformations.typ |
| `d33-central-symmetry` | 中心对称 = 旋转 180° | `d32-rigid-transformations` | — | 3b-geometry-proof/3-d32-rigid-transformations.typ |
| `d34-coordinate-transformations` | 坐标下变换记法 (x,-y)/(-x,y)/(-x,-y)/(x+a,y+b) | `d32-rigid-transformations`, `b36-coordinate-system`, `a52-opposite-number` | — | 3b-geometry-proof/3-d32-rigid-transformations.typ |
| `d35-orthographic-projection` | 正投影(非透视) | `b34-perpendicular`, `b05-plane` | — | 3b-geometry-proof/3-d35-orthographic-projection.typ |
| `d36-three-views` | 主/俯/左三视图对齐规则 | `d35-orthographic-projection`, `b18-rectangular-solid-volume` | — | 3b-geometry-proof/3-d35-orthographic-projection.typ |
| `d37-regular-polygon-inscribed` | 圆内接正多边形(中心角 360°/n) | `b09-circle`, `d21-inscribed-angle`, `b22-degree` | — | 3b-geometry-proof/3-d37-regular-polygon-inscribed.typ |
| `d38-circle-position` | 两圆位置关系(外离/切/交/内切/内含) | `b09-circle`, `a03-order` | — | 3b-geometry-proof/3-d37-regular-polygon-inscribed.typ |

---

## e-functions — 函数与变化

**9 条工具(e01–e09)**,覆盖函数概念 → 一次/正比例 → 反比例 → 二次(顶点/抛物线零点)→ 增长模型(加法/乘法)。终端域,出边极少;主入边来自 c-symbols(方程与幂)与 b-shapes(坐标系)。

| tool-id | 中文名 / 定义 | 概念前置 | 例题前置(额外) | 源码位置 |
|---|---|---|---|---|
| `e01-function-concept` | 函数 — 每个 x 对应唯一 y;四种读法 | `c01-variable`, `c02-algebraic-expression`, `b36-coordinate-system` | — | 3c-functions/1-e01-function-concept.typ |
| `e02-direct-proportion` | 正比例函数 y=kx — 过原点 | `e01-function-concept`, `a45-proportion` | — | 3c-functions/1-e01-function-concept.typ |
| `e03-linear-function` | 一次函数 y=kx+b(k:斜率,b:截距) | `e02-direct-proportion`, `c02-algebraic-expression` | `c04-equation`(求参数时), `c34-linear-equation` | 3c-functions/1-e01-function-concept.typ |
| `e04-inverse-proportion` | 反比例函数 y=k/x — xy 恒定 | `e01-function-concept`, `a44-ratio`, `b36-coordinate-system` | `c47-linear-inequality`(例题 600/x≤12) | 3c-functions/1-e04-inverse-proportion.typ |
| `e05-quadratic-function` | 二次函数 y=ax²+bx+c | `e01-function-concept`, `c40-quadratic-equation` | — | 3c-functions/3-e05-quadratic-function.typ |
| `e06-vertex-axis` | 顶点 + 对称轴(顶点式 y=a(x-h)²+k) | `e05-quadratic-function`, `c42-completing-square` | — | 3c-functions/3-e05-quadratic-function.typ |
| `e07-parabola-zeros` | 抛物线与 x 轴交点 = 方程根 | `e05-quadratic-function`, `c43-quadratic-formula`, `c44-factor-method` | — | 3c-functions/3-e05-quadratic-function.typ |
| `e08-additive-growth` | 加法增长 y=a+kn(对应一次函数) | `e03-linear-function` | — | 3c-functions/3-e08-additive-growth.typ |
| `e09-multiplicative-growth` | 乘法增长 y=a(1+r)^n(复利式) | `c15-power-notation`, `c19-power-of-power`, `a46-percentage`, `a48-percent-decimal-conversion` | — | 3c-functions/3-e08-additive-growth.typ |

---

## f-data — 数据与不确定性

**18 条工具(f01–f18)**,覆盖频数/频率/图表选择 → 集中量(均值/中位数/众数)→ 变异量(极差/方差)→ 频率分布表/直方图 → 概率(样本空间/定义/对立事件)→ 实验概率与大数规律 → 抽样估计。终端域,与 a-number-sense 强依赖(频数计算),与 c-symbols 轻度耦合(方差用到平方)。

| tool-id | 中文名 / 定义 | 概念前置 | 例题前置(额外) | 源码位置 |
|---|---|---|---|---|
| `f01-frequency-count` | 频数 — 某类别出现的次数 | `a01-natural-number` | — | 3d-data/1-f01-frequency-count.typ |
| `f02-frequency-rate` | 频率 = 频数/总数 | `f01-frequency-count`, `a46-percentage`, `a48-percent-decimal-conversion` | — | 3d-data/1-f01-frequency-count.typ |
| `f03-chart-selection` | 图表选择(条形/扇形/折线) | `f02-frequency-rate`, `b36-coordinate-system`, `a46-percentage` | — | 3d-data/1-f01-frequency-count.typ |
| `f04-mean` | 平均数 = 总和/个数 | `f01-frequency-count`, `a11-division`, `a07-addition` | — | 3d-data/1-f04-mean.typ |
| `f05-median` | 中位数 — 排序后中间值 | `a03-order`, `f01-frequency-count` | — | 3d-data/1-f04-mean.typ |
| `f06-mode` | 众数 — 出现次数最多 | `f01-frequency-count` | — | 3d-data/1-f04-mean.typ |
| `f07-range` | 极差 = 最大-最小 | `a03-order`, `a08-subtraction` | — | 3d-data/1-f07-range.typ |
| `f08-variance` | 方差 — 偏差平方的平均 $s^2$ | `f04-mean`, `c10-square`, `a08-subtraction` | `a53-absolute-value`(偏差直觉) | 3d-data/1-f07-range.typ |
| `f09-frequency-distribution-table` | 频率分布表 — 连续数据分组 | `f01-frequency-count`, `f02-frequency-rate`, `a03-order` | — | 3d-data/1-f09-frequency-distribution-table.typ |
| `f10-histogram` | 直方图 — 频率/组距为纵轴的连续柱图 | `f09-frequency-distribution-table`, `b36-coordinate-system` | — | 3d-data/1-f09-frequency-distribution-table.typ |
| `f11-sample-space` | 样本空间 — 所有等可能结果列举 | `a01-natural-number` | — | 3d-data/3-f11-sample-space.typ |
| `f12-probability-definition` | 概率 P = 有利数/总数 | `f11-sample-space`, `a28-fraction-definition`, `a44-ratio` | — | 3d-data/3-f11-sample-space.typ |
| `f13-complement-rule` | 对立事件 P(¬A)=1-P(A) | `f12-probability-definition`, `a08-subtraction` | — | 3d-data/3-f11-sample-space.typ |
| `f14-experimental-probability` | 实验概率 — 重复中发生的频率 | `f02-frequency-rate` | — | 3d-data/3-f14-experimental-probability.typ |
| `f15-frequency-to-probability` | 频率稳定于概率(大数规律直觉版) | `f14-experimental-probability`, `f12-probability-definition` | — | 3d-data/3-f14-experimental-probability.typ |
| `f16-population-sample` | 总体/个体/样本/样本容量 | `f01-frequency-count` | — | 3d-data/3-f16-population-sample.typ |
| `f17-random-sampling` | 随机抽样(代表性) | `f16-population-sample`, `f12-probability-definition` | — | 3d-data/3-f16-population-sample.typ |
| `f18-sample-estimation` | 样本均值/频率估计总体 | `f17-random-sampling`, `f04-mean`, `f02-frequency-rate`, `a44-ratio` | — | 3d-data/3-f16-population-sample.typ |

---

## 使用本表的工作流

**Step 1:拓扑排序**

把每个 tool-id 当作图节点,"概念前置"和"例题前置"作为入边,做拓扑排序。任何两个互不依赖的工具可以在同一层平行教。运行 `make kg-validate` 程序化验证 DAG 完整性(无环、无缺失引用、无通配符),运行 `make kg-topo` 生成拓扑序到 `docs/knowledge-graph/topo-order.txt`。

**Step 2:识别紧耦合簇**

在拓扑序中,找出"一批工具彼此高度依赖、与外部依赖稀少"的子图。例如:
- `c21-c24`(因式分解四件套:定义/提公因/公式法/十字相乘)↔ 紧耦合
- `c34-c36`(一元一次方程三件套:方程定义/等式性质/五步解法)↔ 紧耦合
- `c40-c44`(一元二次方程五个解法:定义/直接开方/配方/公式/因式分解)↔ 紧耦合
- `a49-a56`(数系扩展:数轴/负数/有理数/相反数/绝对值/有理数四则/无理数/实数)↔ 紧耦合
- `c01-c06`(代数入口六件套:变量/代数式/代入/方程/解/undo-balance)↔ 紧耦合

每个簇的大小决定一节的最小粒度。

**Step 3:划定章节边界**

章节边界应落在"拓扑分水岭"——依赖密度最稀疏的地方。例如:
- 域 a 内"ℚ→ℝ"过渡(`a55-irrational-number` 前后)依赖稀疏,是一个切分点
- 域 c 内分式(`c25-c33`)前后依赖密,宜与前后段捆绑
- 域 d 内圆(`d20-d22`)自成子簇,可单独成章

**Step 4:落章后给 tool-id 叠加章节号**

本文件的 tool-id 是 SSOT 稳定锚,**不**随章节重排变化。章节落地时,给每个工具额外指派一个"章节坐标"(如 §3.2),但保持本表中的 `{域字母}{NN}-{kebab}` id 不变——两者解耦,章节重排不影响依赖图。

---

## 未覆盖区域

- **例题前置**列基于 agent 对 `#tryit` / `#mastery` / `#pitfall` 的扫描,标注"额外于 blueprint"的引用。如需逐题粒度,可升级。
- **过渡/总结/闸门节**(对应源码 ch05、c-symbols 的 foundation-summary、d-geometry-proof 的 foundation-summary、e-functions 的 foundation-summary、f-data 的 foundation-summary、ch10)不发明新工具,不在表中。
- **难度标签**(基础/应用/挑战)未纳入表格,若重排需按难度分层可补一列。

---

## 一致性扫描结果(v3,2026-04-20)

**表内工具总数**:207 行(196 独立工具 + 7 合并/警示型 + 3 规划新增,v2.x 以来数量不变)
**域数**:6(`a-number-sense` / `b-shapes` / `c-symbols` / `d-geometry-proof` / `e-functions` / `f-data`)

### orphan-dep — 0 条

所有被引用的前置 id 均在表内有定义,`make kg-validate` 可端到端验证。

### 域边分析

| 域 | 工具数 | 出入边特征 |
|---|---|---|
| `a-number-sense` | 56 | 全书入口,出边遍及其他所有域(数与运算几乎被所有工具依赖) |
| `b-shapes` | 38 | 内聚,主要出边到 `d-geometry-proof`(形状/角/平行线是推理基础);少量出边到 `a-number-sense`(π/面积)和 `e-functions`(坐标系) |
| `c-symbols` | 48 | 出边到 `e-functions`(函数定义依赖代数式)与 `f-data`(方差用平方);自身内部高度耦合 |
| `d-geometry-proof` | 38 | 终端性强,少量出边到 `e-functions`(坐标变换)与 `f-data`(正投影与统计图无关,实际出边接近 0) |
| `e-functions` | 9 | 终端域 |
| `f-data` | 18 | 终端域 |

**两条自然的拓扑切分点**(最稀疏依赖处):
- `a-number-sense` → `b-shapes`:图形域几乎不依赖数系扩展,仅数轴(`a49`)对接坐标系(`b36`)
- `d-geometry-proof` → `e-functions`:几何推理与函数模型仅通过坐标变换(`d34`)与函数概念对接

### 仍存待修复项(留给下一轮 fix-iter)

1. **过载合并工具值得拆**:
   - `a54-rational-arithmetic`(有理数四则合一,4 个细分概念):建议拆 add-sub 与 mul-div 两条
   - `a42-decimal-operations`(小数四则合一):同理可拆
2. **源码位置错位**:
   - `b32-co-interior-supplementary` 属于平行线簇,但源码在 `07a-perpendicular-distance.typ`——源码迁移可同步修正
3. **可疑 dead-tool 补显式前置**:
   - `a21-divisibility-cues`、`a22-factor-pairing` 在质合数/GCD 段中以"已习得"身份使用但未列入后续工具的前置
   - `c27-simplify-fraction` / `c29-rational-add-sub` / `c30-rational-mul-div` 被分式方程与反比例函数段隐式使用

### 规划工具(源码尚未落地)

3 条工具已在图谱中占位,但对应 typst 源码待后续 fix-iter 新建:
- `b33-triangle-angle-sum` — 三角形内角和(源码待新建 `03-geometry-foundation/07b-triangle-angle-sum.typ`)
- `c10-square` — 平方 x²(源码待新建 `06-algebra-deepening/01a-square-and-root.typ`)
- `c11-square-root` — 平方根记号 √n(同上)

### 拓扑可行性

207 条工具构成一个**有向无环图(DAG)**,可通过 `make kg-validate` 程序化验证。本表可作拓扑排序,为完全重排章节提供事实基础。
