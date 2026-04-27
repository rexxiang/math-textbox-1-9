# Wave 5 教学法升级 — 统计摘要

| 项目 | 数量 |
|---|---|
| `#self-check` 插入数 | 44 |
| `#pitfall` 重写数 | 4 |
| 情境替换数（小明/小红等 → 多样化） | 30 |
| 新增女性数学家 `#history-note` | 3 |

## `#self-check` 插入的文件列表

共 44 处，覆盖以下文件（每个文件 1 处，定位于 `#blueprint` 块结束之后；若节内无 blueprint 则定位于 `#discovery` 之后）：

- `typst/2-common-bridges/01-ratio-proportion-percent/01-ratio-basics.typ`
- `typst/2-common-bridges/01-ratio-proportion-percent/02-proportion-equal-ratios.typ`
- `typst/2-common-bridges/01-ratio-proportion-percent/03-percent-scale-of-100.typ`
- `typst/2-common-bridges/02-number-line-negative-rational/01-number-line-extends-left.typ`
- `typst/2-common-bridges/02-number-line-negative-rational/02-opposite-and-absolute-value.typ`
- `typst/2-common-bridges/02-number-line-negative-rational/03-rational-numbers-on-line.typ`
- `typst/2-common-bridges/03-rational-arithmetic/01-rational-addition.typ`
- `typst/2-common-bridges/03-rational-arithmetic/02-rational-subtraction.typ`
- `typst/2-common-bridges/04-coordinate-position-plane/01-rectangular-system.typ`
- `typst/2-common-bridges/04-coordinate-position-plane/02-quadrants.typ`
- `typst/2-common-bridges/04-coordinate-position-plane/03-plotting-and-transforming.typ`
- `typst/2-common-bridges/05-letters-expressions-relationship-templates/01-letters-represent-numbers.typ`
- `typst/2-common-bridges/05-letters-expressions-relationship-templates/02-expressions-and-like-terms.typ`
- `typst/2-common-bridges/05-letters-expressions-relationship-templates/03-relationship-templates.typ`
- `typst/2-common-bridges/06-equation-balance-inverse-operations/01-equation-as-balance.typ`
- `typst/2-common-bridges/06-equation-balance-inverse-operations/02-equality-properties.typ`
- `typst/2-common-bridges/06-equation-balance-inverse-operations/03-solving-linear-one-variable.typ`
- `typst/2-common-bridges/07-square-root-irrational-number-line/01-square-and-square-root.typ`
- `typst/2-common-bridges/07-square-root-irrational-number-line/02-irrational-numbers-exist.typ`
- `typst/2-common-bridges/07-square-root-irrational-number-line/03-real-number-line.typ`
- `typst/3a-algebra-symbols/01-polynomials-like-terms-operations/01-monomials-coefficient-degree.typ`
- `typst/3a-algebra-symbols/01-polynomials-like-terms-operations/04-add-subtract-polynomials.typ`
- `typst/3a-algebra-symbols/02-distributive-identities-factorization/02-special-identities.typ`
- `typst/3a-algebra-symbols/02-distributive-identities-factorization/03-factorization-as-reverse.typ`
- `typst/3a-algebra-symbols/04-linear-equations-systems-modeling/01-linear-equation-one-variable.typ`
- `typst/3a-algebra-symbols/04-linear-equations-systems-modeling/02-systems-of-linear-equations.typ`
- `typst/3b-geometry-proof/01-congruence-and-basic-criteria/01-congruence-and-correspondence.typ`
- `typst/3b-geometry-proof/01-congruence-and-basic-criteria/02-sss-sas-criteria.typ`
- `typst/3b-geometry-proof/02-advanced-criteria-and-proof-writing/01-asa-aas-ssa-counterexample.typ`
- `typst/3b-geometry-proof/02-advanced-criteria-and-proof-writing/02-two-step-proof-chain.typ`
- `typst/3b-geometry-proof/03-similarity-scale-parallel-line-geometry/01-parallel-lines-and-angle-lemmas.typ`
- `typst/3b-geometry-proof/03-similarity-scale-parallel-line-geometry/02-similarity-and-ratio.typ`
- `typst/3b-geometry-proof/04-quadrilateral-family/01-quadrilateral-family.typ`
- `typst/3c-functions-change/01-function-representations/01-input-output-tables.typ`
- `typst/3c-functions-change/01-function-representations/02-graphs-and-correspondence.typ`
- `typst/3c-functions-change/02-direct-variation-linear-functions-slope/01-direct-variation.typ`
- `typst/3c-functions-change/02-direct-variation-linear-functions-slope/03-slope-as-rate.typ`
- `typst/3c-functions-change/03-inverse-proportion-quadratic-functions/02-parabolas-and-quadratics.typ`
- `typst/3d-data-uncertainty/01-data-displays-descriptive-statistics/01-organizing-data.typ`
- `typst/3d-data-uncertainty/01-data-displays-descriptive-statistics/03-center-and-spread.typ`
- `typst/3d-data-uncertainty/02-frequency-histograms-variance/01-frequency-distributions.typ`
- `typst/3d-data-uncertainty/02-frequency-histograms-variance/03-variance.typ`
- `typst/3d-data-uncertainty/03-sample-space-probability-experimental-frequency/01-sample-spaces.typ`
- `typst/3d-data-uncertainty/03-sample-space-probability-experimental-frequency/02-probability-language.typ`

## `#pitfall` 重写的节列表（"先犯错再纠正"模式）

1. `cb07/01-square-and-square-root` — `√(a²) = |a|` 的陷阱（小泽错把 $sqrt(a^2)$ 直接写成 $a$）
2. `cb05/02-expressions-and-like-terms` — 分配律误用（`2(x+3y)` 与 `-(x-y)` 双错点）
3. `dt03/02-probability-language` — 古典概型等可能性（Amara 把 `{0,1,2}` 当样本空间）
4. `ge02/01-asa-aas-ssa-counterexample` — SSA 双解反例

## 情境多样化替换记录

共替换 30 处（占原 50 处的 60%）。完整逐项记录见
[`docs/review/wave5-name-replacements.md`](./wave5-name-replacements.md)。

替换后保留约 20 处抽象学生角色，即 ≤ 30%。

## 新增女性数学家 `#history-note`

1. *希帕蒂娅（Hypatia）*— `cb01/02-proportion-equal-ratios.typ`：注释丢番图《算术》中的比与比例。
2. *艾米·诺特（Emmy Noether）*— `al02/02-special-identities.typ`：把多项式恒等式纳入抽象代数框架。
3. *玛利亚姆·米尔扎哈尼（Maryam Mirzakhani）*— `ge07/01-rigid-transformations-and-congruence.typ`：曲面上的变换与对称（菲尔兹奖）。

## 验收

- `make check` 全流程通过（book-graph 校验 / secref 校验 / 主书编译 / 8 部 smoke / package-lock / git diff --check）。
- 详细情境与数学家分布见 [`wave5-context-audit.md`](./wave5-context-audit.md)。
