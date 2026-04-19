# Quality Glossary Normalization Queue

**Plan task:** `task-019`  
**Plan source:** `docs/plan/20260419-structure-quality-review/plan.yaml`  
**Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`  
**Audit mode:** review only  
**Stage constraint:** structure stage has passed; this queue assumes the current `typst/main.typ` routing stays frozen.

## 1. Scope and audit method

- Audited the stabilized current book state chapter-by-chapter from `typst/main.typ:33-148`, with emphasis on first-owner lesson files rather than overview/review files.
- Checked three things together: (1) whether a lesson that formally names a concept has local glossary coverage, (2) whether abbreviation-bearing terms satisfy **Chinese term + English full name + abbreviation**, and (3) whether the issue is a real coverage gap versus wording-only polish.
- Rechecked against the live files, not the older structure-baseline snapshot. Example: `GCD / LCM` is **not** re-queued because it is already compliant in `typst/02-fraction-ratio-foundation/02-gcd-lcm.typ:5,46-47`.
- I did **not** queue low-signal wording polish where the concept is locally understandable but does not create a reusable terminology dependency. Example: `§1.5` names “运算顺序” in body text (`typst/01-counting/05-mixed-operations.typ:24-47`), but this is a local phrasing/glossary nicety, not a quality-stage blocker for `task-022/023`.

## 2. Findings table

| Term | Current state | Missing piece | Owning chapter | Severity | Action item |
|---|---|---|---|---|---|
| 平方根记号 / `$sqrt(2)$` | `§4.3` formally introduces the notation and the exact-vs-approx distinction, but has no local `#vocab` (`typst/04-number-line-algebra-bridge/02-real-numbers.typ:67-92`). | A local glossary owner for the new notation surface; this is a glossary-surface gap, not a request to reopen full “实数/无理数” taxonomy. | `04-number-line-algebra-bridge/02-real-numbers.typ` (`§4.3`) | Medium | Add a compact local glossary entry for the square-root notation introduced here and keep later chapter-4 reuse aligned to this owner. |
| 字母表示数 / 代数式 | `§4.4` formally defines both concepts at `55-97`, but the file has no local `#vocab`. | First-owner glossary entries for the two bridge terms that Chapter 4 keeps reusing. | `04-number-line-algebra-bridge/03-variables-and-expressions.typ` (`§4.4`) | High | Add local glossary coverage for “字母表示数 / variable” and “代数式 / algebraic expression” at the owning lesson. |
| 方程 | `§4.5` formally defines 方程 and distinguishes it from 代数式 at `62-113`, but the file has no local `#vocab`. | First-owner glossary entry for “方程 / equation”. | `04-number-line-algebra-bridge/04-equation-intuition.typ` (`§4.5`) | High | Add local glossary coverage for 方程 and keep the “代数式 vs 方程” contrast local to the owner lesson. |
| `SSA` | `§7.1` introduces `SSA` as a warning surface at `83-85,105`, but there is no glossary entry for the abbreviation. | A compliant bilingual abbreviation entry even though the concept is a *non-tool warning*, not a valid congruence criterion. | `07-geometry-deepening/01-congruence-proof-entry.typ` (`§7.1`) | High | Add a local glossary item in the form “两边和一个非夹角（Side-Side-Angle, SSA）— 预警项，不可直接判全等”. |
| `SSS` / `SAS`（全等判定） | `§7.2` has abbreviation-only glossary ownership at `typst/07-geometry-deepening/02-rigidity-criteria-i.typ:5`; body text gives only Chinese names at `47-56`. | English full names are missing from the owner glossary surface. | `07-geometry-deepening/02-rigidity-criteria-i.typ` (`§7.2`) | Critical | Normalize the local glossary to “边边边（Side-Side-Side, SSS）/ 边角边（Side-Angle-Side, SAS）”. |
| `ASA` / `AAS` / `HL`（全等判定） | `§7.3` has abbreviation-only glossary ownership at `typst/07-geometry-deepening/03-rigidity-criteria-ii.typ:5`; body text gives Chinese names at `47-60`. | English full names are missing from the owner glossary surface. | `07-geometry-deepening/03-rigidity-criteria-ii.typ` (`§7.3`) | Critical | Normalize the owner glossary to “角边角（Angle-Side-Angle, ASA）/ 角角边（Angle-Angle-Side, AAS）/ 斜边直角边（Hypotenuse-Leg, HL）”. |
| `AA` / `SAS` / `SSS`（相似判定） | `§7.4` has local `#vocab`, but it only covers umbrella terms (`相似三角形 / 相似比 / 相似判定`) at line 5. The actual criteria are introduced in body text at `50-55`, with English full names present there but not captured in glossary form. | A first-owner glossary entry for the *criterion family itself*, especially `AA`, and disambiguation from the congruence use of `SAS/SSS`. | `07-geometry-deepening/04-similar-triangles.typ` (`§7.4`) | High | Expand the owner glossary so similarity-criterion abbreviations are explicitly owned here, not left buried in body bullets. |
| 平行四边形 / 矩形 / 菱形 / 梯形 | `§7.5` defines the quadrilateral family and uses the terms repeatedly at `47-133`, but the file has no local `#vocab`. | A first-owner glossary surface for the quadrilateral network introduced in this lesson. | `07-geometry-deepening/05-quadrilaterals.typ` (`§7.5`) | High | Add local glossary coverage for the quadrilateral family; this is a missing owner surface, not a request for body rewrites. |
| 三角比 / `sin` / `cos` / `tan` | `§7.9` defines the ratios at `46-87` and uses `sin/cos/tan` throughout, but the file has no local `#vocab` and no expansion of the abbreviations. | Compliant glossary entries for 正弦 / 余弦 / 正切 with English full name + abbreviation, plus the umbrella term 三角比. | `07-geometry-deepening/09-trigonometric-ratios.typ` (`§7.9`) | Critical | Add owner glossary entries such as “正弦（sine, sin）/ 余弦（cosine, cos）/ 正切（tangent, tan）” before relying on abbreviation-only reuse. |
| 函数 / 正比例函数 / 一次函数 | `§8.1` formally defines all three at `73-153`, but the file has no local `#vocab`. | A first-owner glossary surface for the function branch entry concepts. | `08-function-models/01-linear-functions.typ` (`§8.1`) | High | Add local glossary coverage for the three model-entry terms; no structural change is needed. |
| 反比例函数 | `§8.2` formally defines the model at `58-126`, but the file has no local `#vocab`. | A first-owner glossary entry for the branch’s second core model. | `08-function-models/02-inverse-proportion.typ` (`§8.2`) | High | Add local glossary coverage for 反比例函数 and the fixed-product reading used in the lesson. |
| 二次函数 / 顶点 / 对称轴 / 抛物线 | `§8.4` formally defines these terms at `73-133`, but the file has no local `#vocab`. | A first-owner glossary surface for the quadratic-model vocabulary. | `08-function-models/04-quadratic-functions.typ` (`§8.4`) | High | Add local glossary coverage for the quadratic family, especially the graph-reading terms reused later in examples and review. |
| 频数 / 频率 / 条形图 / 折线图 / 扇形图 | `§9.1` formally defines 频数、频率 and chart-selection rules at `61-109`, but the file has no local `#vocab`. | The owner glossary surface for foundational statistics language that later sections depend on. | `09-data-statistics/01-data-collection.typ` (`§9.1`) | High | Add local glossary coverage here and treat later grouped-data sections as dependent reuse, not re-owners. |
| 平均数 / 中位数 / 众数 | `§9.2` formally defines the three representative values at `59-100`, but the file has no local `#vocab`. | A first-owner glossary surface for the central-tendency trio. | `09-data-statistics/02-central-tendency.typ` (`§9.2`) | High | Add local glossary coverage for mean / median / mode at the owner lesson. |
| 极差 / 方差 | `§9.3` formally defines both at `80-117`, but the file has no local `#vocab`. | A first-owner glossary surface for variability measures. | `09-data-statistics/03-variability.typ` (`§9.3`) | High | Add local glossary coverage for range / variance at the owner lesson. |

## 3. Abbreviation compliance (Chinese + English full name + abbreviation)

These are the abbreviation-bearing items that still need explicit normalization before `task-022/023` can close cleanly:

| Owner | Abbreviation set | Current defect | Required normalized form |
|---|---|---|---|
| `§7.1` | `SSA` | Used in body only; no glossary owner entry (`typst/07-geometry-deepening/01-congruence-proof-entry.typ:83-85`) | Chinese warning term + English full name + `SSA` |
| `§7.2` | `SSS`, `SAS` | Local glossary is abbreviation-only (`typst/07-geometry-deepening/02-rigidity-criteria-i.typ:5`) | 边边边（Side-Side-Side, `SSS`）；边角边（Side-Angle-Side, `SAS`） |
| `§7.3` | `ASA`, `AAS`, `HL` | Local glossary is abbreviation-only (`typst/07-geometry-deepening/03-rigidity-criteria-ii.typ:5`) | 角边角（Angle-Side-Angle, `ASA`）；角角边（Angle-Angle-Side, `AAS`）；斜边直角边（Hypotenuse-Leg, `HL`） |
| `§7.4` | `AA`, `SAS`, `SSS` | English full names appear in body bullets (`50-55`) but not in glossary ownership form | Chinese criterion name + English full name + abbreviation in the local `#vocab` |
| `§7.9` | `sin`, `cos`, `tan` | Abbreviations are used throughout (`55-85`) with no bilingual expansion | 正弦（sine, `sin`）；余弦（cosine, `cos`）；正切（tangent, `tan`） |

**Not re-queued:** `GCD / LCM` is already compliant in the stabilized book (`typst/02-fraction-ratio-foundation/02-gcd-lcm.typ:5,46-47`).

**Downstream dependent surfaces that should not become owners:** once the owner lessons above are fixed, later reuse in `typst/07-geometry-deepening/00-overview.typ:27-28`, `typst/07-geometry-deepening/07-foundation-summary.typ:12`, and `typst/07-geometry-deepening/14-review.typ:11-13,48,78` can remain abbreviation-heavy because the owning glossary surface will already exist earlier.

## 4. Acceptance checks for closing each queue item

A queue item is closed only when all applicable checks pass:

1. **Owner-first check:** the owning lesson named in the table has a local glossary surface (`#vocab` or equivalent local terminology block) before downstream review/summary reuse is relied on.
2. **Three-part abbreviation check:** every abbreviation-bearing entry uses **Chinese term + English full name + abbreviation**; abbreviation-only entries do not count as fixed.
3. **No fake-content-fix check:** the resolution only normalizes glossary ownership and wording needed for compliance; it does not reopen chapter structure or invent extra concept load.
4. **Exact-scope check:** the glossary entry matches the concept actually taught in that lesson. Example: `§7.4` must own *similarity* `SAS/SSS`, not silently borrow the *congruence* meaning from `§7.2`.
5. **Dependent-surface check:** overview / summary / review files may keep shorthand only after the owning lesson has been normalized and remains earlier in `typst/main.typ` order.
6. **No stale-baseline carryover check:** already-fixed items (for example `GCD / LCM`) are not reopened unless the current live file regresses.

## 5. Cross-chapter normalization patterns discovered

- **Earliest formal definition should own the glossary entry.** Later overviews, summaries, and review chapters are dependent surfaces, not fallback glossary homes.
- **Same letters can name different criteria families.** `SAS`/`SSS` in congruence (`§7.2`) and in similarity (`§7.4`) must be normalized as separate owner entries because the mathematical condition differs.
- **Abbreviation compliance is now concentrated in geometry.** The highest-priority blocker cluster is Chapter 07: congruence criteria, similarity criteria, and `sin/cos/tan` all still need compliant owner surfaces.
- **Function and statistics gaps are mostly missing-owner problems, not missing explanations.** Chapters 08 and 09 usually explain the idea in body text already; the queue is mainly asking for local glossary ownership at the first formal definition.
- **Gateway notation is supplemental only.** `typst/00-gateway/symbols.typ:1-63` helps readers decode symbols, but it does not replace chapter-local terminology ownership for quality-stage glossary closure.
