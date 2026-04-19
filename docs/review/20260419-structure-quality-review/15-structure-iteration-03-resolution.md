# Structure Iteration 03 — Resolution Note

**Task:** `task-012`  
**Reviewed artifact:** `docs/review/20260419-structure-quality-review/14-structure-iteration-03.md`  
**Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`

## Scope touched

- `typst/main.typ`
- `typst/06-algebra-deepening/*`
- `typst/07-geometry-deepening/*`
- `typst/08-function-models/*`
- `typst/09-data-statistics/*`
- `typst/smoke/06-algebra-deepening.typ`
- `typst/smoke/07-geometry-deepening.typ`
- `typst/smoke/08-function-models.typ`
- `typst/smoke/09-data-statistics.typ`
- `typst/smoke/10-capstone.typ`
- `typst/10-capstone/*`

## Inserted branch-foundation summaries

| Branch | Inserted node | Position |
|---|---|---|
| `06` | `typst/06-algebra-deepening/05-foundation-summary.typ` → `§6.5 代数基础总结：从整式到一元一次方程` | after `§6.4`, before the advanced half |
| `07` | `typst/07-geometry-deepening/05-foundation-summary.typ` → `§7.5 几何基础总结：把证明地基收紧` | after `§7.4`, before the advanced half |
| `08` | `typst/08-function-models/03-foundation-summary.typ` → `§8.3 函数基础总结：先把两类基础模型看稳` | after `§8.2`, before the advanced half |
| `09` | `typst/09-data-statistics/05-foundation-summary.typ` → `§9.5 数据基础总结：先把“整理—描述—分布”这条线收束` | after `§9.4`, before the advanced half |

## Within-branch renumber / reroute record

| Branch | Renumber / reroute |
|---|---|
| `06` | `05-systems-of-equations.typ` → `06-systems-of-equations.typ` (`§6.5` → `§6.6`); `06-quadratic-equations.typ` → `07-quadratic-equations.typ` (`§6.6` → `§6.7`); `07-inequalities.typ` → `08-inequalities.typ` (`§6.7` → `§6.8`); final review `08-review.typ` → `09-review.typ` |
| `07` | `05-pythagorean-theorem.typ` → `06-pythagorean-theorem.typ` (`§7.5` → `§7.6`); `06-trigonometric-measurement.typ` → `07-trigonometric-measurement.typ` (`§7.6` → `§7.7`); `07-transformations.typ` → `08-transformations.typ` (`§7.7` → `§7.8`); `08-projections.typ` → `09-projections.typ` (`§7.8` → `§7.9`); `09-circle-extensions.typ` → `10-circle-extensions.typ` (`§7.9` → `§7.10`); final review `10-review.typ` → `11-review.typ`; updated in-file `#secref("7.5")` calls inside三角比章 to `#secref("7.6")` |
| `08` | `03-quadratic-functions.typ` → `04-quadratic-functions.typ` (`§8.3` → `§8.4`); `04-rate-change-models.typ` → `05-rate-change-models.typ` (`§8.4` → `§8.5`); final review `05-review.typ` → `06-review.typ` |
| `09` | `05-probability.typ` → `06-probability.typ` (`§9.5` → `§9.6`); `06-sampling-estimation.typ` → `07-sampling-estimation.typ` (`§9.6` → `§9.7`); final review `07-review.typ` → `08-review.typ` |

## Routing surfaces updated

- `typst/main.typ` now inserts all four summary nodes and keeps final branch reviews at the tail.
- Branch `00-overview.typ` files now render the required branch arc:
  - `{branch}基础`
  - `基础总结`
  - `{branch}进阶`
  - `{branch}总结`
- Branch smoke files (`06`-`09`) and `typst/smoke/10-capstone.typ` were rerouted to the new include order.
- Affected `#secref(...)` / range text in branch reviews and `typst/10-capstone/*` were updated to the renumbered targets (`6.8`, `7.6-7.10`, `8.4-8.5`, `9.6-9.7` as applicable).

## Watch-item status after insertion

- `§7.9` watch item: **still under watch**. The original `§7.9 圆的拓展（选学）` now reroutes to `§7.10`; it remains inline at the tail of the post-summary advanced half, not moved into a separate side wrapper in this iteration.
- `§9.5` watch item: **still under watch**. The original `§9.5 概率初步` now reroutes to `§9.6`; it remains inline after the new `§9.5` foundation summary, with the side-window/core presentation question intentionally left for the later placement pass.
- `§8.4` boundary watch: **still open, not structurally closed here**. The original `§8.4 利率与增长率应用比较` now reroutes to `§8.5`; it stays in the advanced block, and this iteration does not attempt the deferred boundary rewrite.

## Acceptance-criteria check

| AC | Result | Note |
|---|---|---|
| AC-01 — branch-summary insertion completeness | PASS | `06-09` each now contain an explicit mid-branch foundation summary at the required insertion point. |
| AC-02 — distinct final review preservation | PASS | Existing end-of-branch review nodes were preserved and shifted to the new tail positions; none was repurposed as the summary node. |
| AC-03 — routing coherence | PASS | `main.typ`, branch overviews, branch smoke files, capstone smoke, and touched `#secref(...)` targets all match the new within-branch order. |
| AC-04 — optional / advanced placement discipline | PASS (with watch items still open) | Original `§7.9` and `§9.5` remain on the post-summary side; original `§8.4` remains in the advanced block and is explicitly left under boundary watch. |
| AC-05 — within-branch evidence trail | PASS | Each inserted summary node and each within-branch renumber / reroute is recorded above. |
| AC-06 — spine preservation | PASS | All edits stayed inside the existing `06-09` branch interiors plus routing surfaces; the top-level `00-10` spine was not changed. |

## Verification

- Structural verification script for summary-file presence + routing updates ✅
- `make check` ✅

## Final note

Iteration 03 now closes the branch-summary blocker under R-02 without changing the immutable `00-10` spine. The branch interiors for `06-09` now explicitly read as `{branch}基础 → 基础总结 → {branch}进阶 → {branch}总结`, while the previously flagged watch items (`原 §7.9` / `原 §9.5` placement ambiguity and `原 §8.4` boundary framing) are carried forward honestly rather than being claimed solved by this insertion pass.
