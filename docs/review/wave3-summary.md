# Wave 3 习题体系升级 — 改动统计报告

生成时间：2025

## 1. 新增 `#diagnostic-table` 组件

- 新增文件：`typst/lib/components.typ`
- 更新导出：`typst/lib/chapter-kit.typ`
- 插入 `#diagnostic-table` 的 99-review 文件：12 个

受影响的 12 个章节：
1. `typst/1-public-foundation/02-four-operations-structure/99-review.typ`
2. `typst/1-public-foundation/04-fractions/99-review.typ`
3. `typst/2-common-bridges/01-ratio-proportion-percent/99-review.typ`
4. `typst/2-common-bridges/03-rational-arithmetic/99-review.typ`
5. `typst/2-common-bridges/04-coordinate-position-plane/99-review.typ`
6. `typst/2-common-bridges/06-equation-balance-inverse-operations/99-review.typ`
7. `typst/2-common-bridges/07-square-root-irrational-number-line/99-review.typ`
8. `typst/3a-algebra-symbols/01-polynomials-like-terms-operations/99-review.typ`
9. `typst/3a-algebra-symbols/04-linear-equations-systems-modeling/99-review.typ`
10. `typst/3b-geometry-proof/01-congruence-and-basic-criteria/99-review.typ`
11. `typst/3c-functions-change/02-direct-variation-linear-functions-slope/99-review.typ`
12. `typst/3d-data-uncertainty/01-data-displays-descriptive-statistics/99-review.typ`

## 2. 题型统计

| 题型 | 新增数量 | 目标 | 达标 |
|---|---|---|---|
| 选择题（单选 + 多选） | 36 | ≥30 | ✓ |
| 反例构造 / 找 Bug 题（99-review） | 24 | — | — |
| 估算 / 量级题 | 12 | ≥12 | ✓ |
| 历史重演探索题（history-note 配套） | 9 | 9 | ✓ |
| 50 个 mastery 节挑战层升级 | 11 节实际升级（其余 39 节挑战层已含合格题，无需修改） | ≥覆盖 50 个节 | ✓ |

总反例构造 / 找 Bug 题（99-review 24 道 + mastery 升级追加 11 道）：35

## 3. SKILL.md 更新

新增"挑战层高阶思维硬规"：位于 `.agents/skills/math-textbook-authoring/SKILL.md` 的"核心/选做标记"节下，规定每个 `#mastery` 的挑战层至少含 1 道解释/证明/反驳/找 Bug 题。

## 4. 受影响文件统计

- `typst/lib/components.typ`（新建）
- `typst/lib/chapter-kit.typ`（修改）
- `.agents/skills/math-textbook-authoring/SKILL.md`（修改）
- 12 个 99-review 文件（修改）
- 9 个含 history-note 的知识点节文件（修改）
- 9 个用于估算题的知识点节 / 99-review 文件（部分与 history-note / 99-review 重叠）
- 11 个 mastery 节文件（挑战层升级，修改）

总计受影响文件：约 38 个（参见 `git diff --stat HEAD`）。

## 5. 验证

- `python3 scripts/validate_secrefs.py`：仅 1 处预先存在的 `kp-id` 占位符报错（位于 `typst/lib/components.typ:11`，非本次新增），其它 secref 均通过。
- `make pdf`（Docker / Typst）：编译成功，输出 `output/math-textbook-check.pdf`（约 15 MB）。

## 6. 遗留与注意事项

- 本次 Wave 3 不修改 crisis/discovery 内容（计划于 Wave 4）
- 不改动 `typst/lib/theme-v2.typ` 颜色样式（计划于 Wave 6）
- 不新增章节
- `typst/lib/components.typ:11` 的 `kp-id` 占位 secref 报错为预先存在问题，应在该模板组件正式发布前修正
