# Wave 7 Summary

Wave 7 通过两类改造缓解全书长读后的模板疲劳：（1）8 个节做"格式打破"——分别使用模式 A（blueprint 留白）、模式 B（discovery 改对话体）、模式 C（mastery 改为帮 NPC debug）；（2）11 个节的 `#mastery` 块结构变形——3 深题 / 双解法 / 推广反推 三种变形之一。

所有被改造的文件首行都加上了 `// [wave7-format-break: 模式X]` 或 `// [wave7-mastery-variant: 类型]` 标记，便于以后审计与回溯。

## 格式打破节（8 节）

| 文件路径 | 模式 |
|---|---|
| `typst/1-public-foundation/02-four-operations-structure/03-order-and-laws.typ` | 模式 B（discovery 改阿明 / 小雯对话） |
| `typst/1-public-foundation/05-decimals-units-estimation-measurement/03-estimation-and-reasonableness.typ` | 模式 A（blueprint 留白 + side-hack） |
| `typst/2-common-bridges/01-ratio-proportion-percent/03-percent-scale-of-100.typ` | 模式 C（mastery 帮小昊 debug） |
| `typst/2-common-bridges/03-rational-arithmetic/04-laws-revisited.typ` | 模式 B（discovery 改阿明 / 小雯对话） |
| `typst/3a-algebra-symbols/02-distributive-identities-factorization/03-factorization-as-reverse.typ` | 模式 A（blueprint 留白 + side-hack） |
| `typst/3b-geometry-proof/04-quadrilateral-family/01-quadrilateral-family.typ` | 模式 C（mastery 帮晨晨 debug） |
| `typst/3c-functions-change/04-growth-models-function-comparison/02-model-choice.typ` | 模式 B（discovery 改阿明 / 小雯对话） |
| `typst/3d-data-uncertainty/02-frequency-histograms-variance/03-variance.typ` | 模式 C（mastery 帮小颖 debug） |

## mastery 变形节（11 节）

| 文件路径 | 变形类型 |
|---|---|
| `typst/1-public-foundation/01-number-place-value-decimal/03-decimal-system.typ` | 3 深题 |
| `typst/1-public-foundation/03-factors-multiples-prime-factorization/03-gcd-lcm-structure.typ` | 双解法 |
| `typst/1-public-foundation/04-fractions/03-fraction-arithmetic.typ` | 推广反推 |
| `typst/1-public-foundation/08-perimeter-area-volume-angle/01-perimeter-and-area.typ` | 3 深题 |
| `typst/2-common-bridges/02-number-line-negative-rational/02-opposite-and-absolute-value.typ` | 双解法 |
| `typst/2-common-bridges/05-letters-expressions-relationship-templates/03-relationship-templates.typ` | 推广反推 |
| `typst/3a-algebra-symbols/01-polynomials-like-terms-operations/03-like-terms-and-combine.typ` | 3 深题 |
| `typst/3b-geometry-proof/01-congruence-and-basic-criteria/02-sss-sas-criteria.typ` | 双解法 |
| `typst/3c-functions-change/01-function-representations/03-formulas-as-rules.typ` | 推广反推 |
| `typst/3d-data-uncertainty/01-data-displays-descriptive-statistics/02-charts-and-readings.typ` | 双解法 |
| `typst/3d-data-uncertainty/03-sample-space-probability-experimental-frequency/02-probability-language.typ` | 3 深题 |

## SKILL.md 同步更新

`.agents/skills/math-textbook-authoring/SKILL.md` 在"练习层级"段之后、"挑战层'高阶思维'硬规"之前，新增了一段
"### mastery 结构变形（Wave 7 新增）"，正式记入三种变形（3 深题 / 双解法 / 推广反推）的定义与示例。

## 验证

完成所有改动后运行 `make check`，主书 + 8 份部件 smoke + book-graph 校验全部通过。
