# Quality Iteration 01 — Glossary completeness and abbreviation compliance review

- **Task ID:** `quality-iteration-01`
- **Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`
- **Scope:** glossary completeness and abbreviation compliance across the stabilized book, with confirmed owner/dependent surfaces in Chapter 04, 07, 08, 09
- **Review status:** `continue`
- **Confidence score:** `51%`
- **Stop-rule status:** `not triggered`
- **Structure-freeze status:** `held`

## Decision summary / scope

- Reviewed `40-quality-rubric.md`, `41-quality-glossary-queue.md`, `typst/main.typ`, and the implicated owner/dependent surfaces in Chapter 04, 07, 08, 09.
- Decision: glossary quality is **not yet fix-ready for closure**. The main blocker is Chapter 07 abbreviation compliance; Chapter 04/08/09 are mostly owner-surface completeness gaps rather than structural or wording-only issues.
- No structural reopen signal is confirmed. These are quality-stage glossary defects, not spine/routing defects.
- Wording-only polish was intentionally **not** escalated unless it created a real glossary recovery problem for self-study readers.

## Findings table

| ID | Severity | Type | Location | Evidence | Learner impact | Required action | Owner |
|---|---|---|---|---|---|---|---|
| F-01 | High | `abbreviation-gap` | `07-geometry-deepening/01-congruence-proof-entry.typ`, `02-rigidity-criteria-i.typ`, `03-rigidity-criteria-ii.typ`, `04-similar-triangles.typ`, `09-trigonometric-ratios.typ`; dependent reuse in `00-overview.typ`, `07-foundation-summary.typ`, `14-review.typ` | `§7.1` uses `SSA` in body (`83-85`, `105-107`) but `#vocab` has no entry; `§7.2`/`§7.3` glossary lines are abbreviation-only (`line 5` in each file); `§7.4` glossary owns only umbrella terms while `AA / SAS / SSS` live in body (`52-55`); `§7.9` defines `sin / cos / tan` (`55-59`) with no local `#vocab`; overview/summary/review surfaces reuse shorthand (`07-geometry-deepening/00-overview.typ:27-35`, `07-foundation-summary.typ:10-14`, `14-review.typ:48,78,88`) | Self-study readers can meet geometry shorthand on recap/review surfaces without a reliable earlier glossary home that gives **中文术语 + English full name + abbreviation**. This harms glossary recoverability and abbreviation trust. | Normalize owner lessons first: add compliant bilingual glossary entries for `SSA`, `SSS`, `SAS`, `ASA`, `AAS`, `HL`, `AA`, `sin`, `cos`, `tan`; keep downstream overview/summary/review surfaces as dependent reuse only after owner normalization. | Chapter 07 owner lessons (`§7.1`, `§7.2`, `§7.3`, `§7.4`, `§7.9`) |
| F-02 | Medium | `glossary-gap` | `04-number-line-algebra-bridge/02-real-numbers.typ`, `03-variables-and-expressions.typ`, `04-equation-intuition.typ`; downstream check in `05-review.typ` | `§4.3` introduces `$sqrt(2)$` and exact-vs-approx language (`74-90`) without local `#vocab`; `§4.4` formally defines 字母表示数 / 代数式 (`55-95`) without local `#vocab`; `§4.5` defines 方程 (`63-86`) without local `#vocab`; Chapter 04 review already depends on these concepts (`05-review.typ:18-40`) | The chapter teaches the ideas, but the bridge terms lack clear owner glossary surfaces. Readers can still follow locally, yet glossary recovery and chapter review consistency are weaker than the rubric requires. | Add compact owner glossary entries in `§4.3`, `§4.4`, `§4.5`; keep Chapter 04 review wording aligned to those owner entries rather than acting as fallback ownership. | Chapter 04 owner lessons (`§4.3`, `§4.4`, `§4.5`) |
| F-03 | Medium | `glossary-gap` | `07-geometry-deepening/05-quadrilaterals.typ`; dependent reuse in `07-foundation-summary.typ`, `14-review.typ` | `§7.5` has no `#vocab`, yet formally defines and contrasts 平行四边形 / 矩形 / 菱形 / 梯形 across `47-98`; Chapter 07 summary already compresses this family (`07-foundation-summary.typ:16-19`) | The quadrilateral network is reusable branch vocabulary, but it has no clear owner glossary home. Readers can infer from body text, yet summary/review recall becomes less stable. | Add a concise local glossary owner surface in `§7.5` for the quadrilateral family; do not shift ownership to summary/review files. | Chapter 07 `§7.5` |
| F-04 | Medium | `glossary-gap` | `08-function-models/01-linear-functions.typ`, `02-inverse-proportion.typ`, `04-quadratic-functions.typ` | `§8.1` defines 函数 / 正比例函数 / 一次函数 (`73-123`) without local `#vocab`; `§8.2` defines 反比例函数 (`58-126`) without local `#vocab`; `§8.4` defines 二次函数 / 顶点 / 对称轴 / 抛物线 (`73-105`) without local `#vocab` | These lessons are mostly understandable in-body, so this is not an abbreviation blocker. But first-owner terminology is missing for the branch’s core reusable models, weakening glossary completeness. | Add local owner glossary entries at the first formal definition sites in `§8.1`, `§8.2`, `§8.4`. | Chapter 08 owner lessons (`§8.1`, `§8.2`, `§8.4`) |
| F-05 | Medium | `glossary-gap` | `09-data-statistics/01-data-collection.typ`, `02-central-tendency.typ`, `03-variability.typ` | `§9.1` defines 频数 / 频率 and chart-selection language (`61-109`) without `#vocab`; `§9.2` defines 平均数 / 中位数 / 众数 (`59-100`) without `#vocab`; `§9.3` defines 极差 / 方差 (`80-116`) without `#vocab` | Statistics explanations are locally understandable, but the branch lacks owner glossary anchors for its core terms. That weakens self-study recall and later review integrity. | Add owner glossary entries in `§9.1`, `§9.2`, `§9.3`, while keeping later statistics sections dependent on those earlier owners. | Chapter 09 owner lessons (`§9.1`, `§9.2`, `§9.3`) |

## Action items

1. **Fix Chapter 07 first.** Resolve all abbreviation-bearing owner entries so every geometry shorthand used later can be decoded from an earlier local glossary surface.
2. **Backfill Chapter 04 owner surfaces.** Add compact local glossary ownership for `$sqrt(2)$`, 字母表示数, 代数式, 方程.
3. **Backfill branch-entry owner surfaces in Chapter 08.** Add glossary ownership at the first formal definition sites for the function family.
4. **Backfill branch-entry owner surfaces in Chapter 09.** Add glossary ownership at the first formal definition sites for the statistics family.
5. **Keep summaries/reviews dependent.** Do not solve owner gaps by moving glossary burden into overview, foundation-summary, or review files.

## Acceptance criteria for the fix phase

- Every abbreviation-bearing glossary item in the affected owner lessons uses **Chinese term + English full name + abbreviation**.
- `SSA`, congruence criteria, similarity criteria, and `sin / cos / tan` each have a clear owner lesson earlier than any downstream summary/review shorthand reuse.
- Chapter 04 owner lessons (`§4.3`–`§4.5`) each expose the newly introduced bridge terms in a local glossary surface rather than leaving ownership implicit in body prose.
- Chapter 08 owner lessons (`§8.1`, `§8.2`, `§8.4`) and Chapter 09 owner lessons (`§9.1`, `§9.2`, `§9.3`) each provide first-owner glossary coverage for their formally introduced core terms.
- Similarity `SAS / SSS` ownership remains distinct from congruence `SAS / SSS` ownership; no silent borrowing across concept families.
- Downstream overview/summary/review surfaces may keep shorthand only after earlier owner surfaces are normalized and remain earlier in `typst/main.typ` order.
- The fix remains glossary/terminology-only; no structural rerouting, chapter splitting, or scope expansion is introduced.

## Confidence score

| Item | Value |
|---|---|
| Start score | `100%` |
| Deductions | `High x1 = -20%`; `Medium x4 = -32%` |
| Bonuses | `closure hold x1 = +3%` (`02-gcd-lcm.typ` still shows compliant bilingual abbreviation ownership for GCD/LCM) |
| Final score | `51%` |
| Band | `50-69%` |
| Stop rule | `not triggered` |
| Next-step judgment | `continue with a sharply narrowed fix scope; Chapter 07 abbreviation normalization should go first` |

### Confidence rationale

- Confidence stays above the stop threshold because the problem cluster is broad but still **quality-stage bounded**: these are owner-surface and abbreviation-compliance defects, not structure failures.
- Confidence is held down by the concentration of unresolved glossary ownership gaps across multiple chapters, especially the Chapter 07 abbreviation cluster.
- No structural issue is currently confirmed. **Structure freeze still holds.**

## Structural note

No issue currently warrants a `structure-reopen-signal`. The defects found here are glossary ownership and abbreviation compliance problems inside the frozen structure, not evidence that the stabilized routing itself has failed.
