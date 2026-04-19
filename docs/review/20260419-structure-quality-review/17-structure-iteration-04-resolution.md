# Structure Iteration 04 — Resolution Note

**Task:** `task-014`  
**Reviewed artifact:** `docs/review/20260419-structure-quality-review/16-structure-iteration-04.md`  
**Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`

## Scope touched

- `typst/03-geometry-foundation/00-overview.typ`
- `typst/03-geometry-foundation/02-perimeter.typ`
- `typst/03-geometry-foundation/02-area-volume.typ`
- `typst/03-geometry-foundation/03-volume.typ` *(new)*
- `typst/03-geometry-foundation/03-angles.typ`
- `typst/03-geometry-foundation/04-parallel-perpendicular.typ`
- `typst/03-geometry-foundation/05-coordinate-entry.typ`
- `typst/03-geometry-foundation/06-angle-relations.typ`
- `typst/03-geometry-foundation/06-review.typ`
- `typst/05-foundation-gate/01-foundation-check.typ`
- `typst/05-foundation-gate/03-review.typ`
- `typst/08-function-models/05-rate-change-models.typ`
- `typst/09-data-statistics/00-overview.typ`
- `typst/09-data-statistics/05-foundation-summary.typ`
- `typst/09-data-statistics/06-probability.typ`
- `typst/09-data-statistics/07-probability-experiments.typ` *(new)*
- `typst/09-data-statistics/07-sampling-estimation.typ`
- `typst/09-data-statistics/08-review.typ`
- `typst/10-capstone/00-overview.typ`
- `typst/10-capstone/invention-tree.typ`
- `typst/10-capstone/review.typ`
- `typst/10-capstone/whats-next.typ`
- `typst/main.typ`
- `typst/smoke/09-data-statistics.typ`
- `typst/smoke/10-capstone.typ`

## De-symbolized vs split

| Surface | Action | Result |
|---|---|---|
| `§3.2` | **de-symbolized** | removed placeholder-form perimeter templates; kept word-first / numeric-first perimeter reading |
| `§3.4` (old area+volume umbrella) | **split + de-symbolized** | `§3.4 面积` now stays on铺方格 / 割补；new `§3.5 体积` carries分层/堆叠 |
| `§3` review surface | **de-symbolized reroute** | review card and exercises now summarize area/volume without symbolic formula-family inventory |
| `§8.5` | **narrowed / de-symbolized** | removed compressed power-form presentation; chapter now stays on fixed-difference vs fixed-ratio comparison |
| `§9.6` | **split** | `§9.6` keeps event / sample space / probability; new `§9.7` carries experimental probability / theoretical probability / fairness |

## Final learner-visible concept-count judgment

Counts below follow the rule-ledger lock: **count fine-grained learner-visible new sub-concepts, not umbrella relabeling**.

| Chapter | Final judgment | Count | Note |
|---|---|---:|---|
| `§3.2 周长` | compliant | 3 | 周长 / 长方形周长 / 圆周长 |
| `§3.4 面积` | compliant | 3 | 面积 / 单位面积 / 割补与拼补 |
| `§3.5 体积` *(new)* | compliant | 3 | 体积 / 容积 / 分层与堆叠 |
| `§8.5 利率与增长率应用比较` | compliant | 3 | 变化率 / 固定差模型 / 固定倍率模型 |
| `§9.6 概率：先把结果列清楚` | compliant | 3 | 事件 / 样本空间 / 概率 |
| `§9.7 概率：用实验看长期趋势` *(new)* | compliant | 3 | 实验概率 / 理论概率 / 公平性 |

## New chapter insertions / renumbering / reroutes

### Chapter 03

- inserted `typst/03-geometry-foundation/03-volume.typ` → `§3.5 体积：再看能装多少东西`
- downstream renumber:
  - old `§3.5` → new `§3.6`
  - old `§3.6` → new `§3.7`
  - old `§3.7` → new `§3.8`
  - old `§3.8` → new `§3.9`
- updated touched routing / reference surfaces accordingly:
  - `typst/main.typ`
  - `typst/03-geometry-foundation/00-overview.typ`
  - `typst/03-geometry-foundation/06-review.typ`
  - `typst/05-foundation-gate/01-foundation-check.typ`
  - `typst/05-foundation-gate/02-branch-entry-recaps.typ`
  - `typst/05-foundation-gate/03-review.typ`
  - `typst/07-geometry-deepening/00-overview.typ`
  - `typst/07-geometry-deepening/11-review.typ`
  - `typst/08-function-models/00-overview.typ`
  - `typst/08-function-models/06-review.typ`
  - `typst/10-capstone/00-overview.typ`
  - `typst/10-capstone/review.typ`
  - `typst/10-capstone/whats-next.typ`

### Chapter 09

- inserted `typst/09-data-statistics/07-probability-experiments.typ` → `§9.7 概率：用实验看长期趋势`
- existing `typst/09-data-statistics/07-sampling-estimation.typ` rerouted from `§9.7` to `§9.8`
- updated touched routing / reference surfaces accordingly:
  - `typst/main.typ`
  - `typst/09-data-statistics/00-overview.typ`
  - `typst/09-data-statistics/05-foundation-summary.typ`
  - `typst/09-data-statistics/08-review.typ`
  - `typst/10-capstone/00-overview.typ`
  - `typst/10-capstone/invention-tree.typ`
  - `typst/10-capstone/review.typ`
  - `typst/10-capstone/whats-next.typ`
  - `typst/smoke/09-data-statistics.typ`
  - `typst/smoke/10-capstone.typ`

## Boundary closures requested by iteration 04 review

- `§8.5` **now stays at comparison level only**. It no longer teaches compressed future-family power form such as `a · r^t`; it keeps recursive / table / verbal comparison between fixed add and fixed multiplier.
- `§5.1` and `§5.3` **no longer use quadrant terminology**. They now describe location with already-supported directional coordinate language (`原点右侧 / x 轴上方 / x 轴下方`) rather than assuming an earlier quadrant root.
- Chapter-03 public-foundation geometry **no longer depends on symbolic formula-family presentation** in `§3.2`, `§3.4`, or the Chapter-03 review surface.

## Closed-surface preservation

- current `§2.5` stayed untouched and was not re-expanded into letter/equation proportion solving
- current `§4.3` stayed untouched and was not re-expanded into a broader real-number taxonomy
- iteration-03 summary nodes (`§6.5`, `§7.5`, `§8.3`, `§9.5`) were preserved as summary/checkpoint nodes
- top-level `00-10` spine remained unchanged

## Tone-rule application

- For learner-facing prose in the chapters actively rewritten during `task-014`, wording was also adjusted toward the newly locked beginner-friendly / conversational tone where relevant.
- In practice, this meant softening some harder-edged instructional phrasing in the rewritten Chapter-03, `§8.5`, and probability split surfaces while leaving strict terminology and formal definitions intact.

## Acceptance-criteria check

| AC | Result | Note |
|---|---|---|
| AC-01 — same-or-earlier tool use in affected chapters | PASS | touched blocker surfaces were rewritten to remove later symbolic / future-family dependence |
| AC-02 — no fake max-3 compliance by umbrella labels | PASS | `§3.4` and `§9.6` were split instead of relabeled upward |
| AC-03 — overload hotspots fixed or honestly narrowed | PASS | `§9.6` split; Chapter-03 geometry split/narrowed; `§8.5` narrowed |
| AC-04 — resolution note includes per-chapter tool-count status | PASS | see concept-count table above |
| AC-05 — work stays inside existing top-level spine | PASS | only second-level chapter surfaces and routing files changed |

## Verification

- focused structural blocker checks for `§8.5`, `§5.1` / `§5.3`, Chapter-03 formula leakage, and `§9.6` split ✅
- `make check` ✅

## Final note

Iteration 04 now closes the review-open blockers honestly under the updated rule ledger. The main structural moves were: (1) de-symbolize public-foundation geometry, (2) split old `§3.4` and old `§9.6` because narrowing alone would still leave too many learner-visible sub-concepts on one chapter surface, (3) keep `§8.5` at comparison level only, and (4) remove premature quadrant terminology from the foundation gate without inventing a new Chapter-05 coordinate family.
