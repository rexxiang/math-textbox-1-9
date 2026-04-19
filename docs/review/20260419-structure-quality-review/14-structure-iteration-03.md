# Structure Iteration 03 — Branch-Summary Gap Re-Review

**Task:** `task-011`  
**Paired resolution task:** `task-012`  
**Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`

## Anchors used

- `docs/review/20260419-structure-quality-review/01-rule-ledger.md`
- `docs/review/20260419-structure-quality-review/05-structure-baseline-boundaries.md`
- `docs/review/20260419-structure-quality-review/06-structure-remediation-queue.md`
- `docs/review/20260419-structure-quality-review/13-structure-iteration-02-resolution.md`

## Scope re-reviewed directly in repo

- `typst/main.typ`
- `typst/06-algebra-deepening/00-overview.typ`
- `typst/07-geometry-deepening/00-overview.typ`
- `typst/08-function-models/00-overview.typ`
- `typst/09-data-statistics/00-overview.typ`
- `typst/07-geometry-deepening/09-circle-extensions.typ`
- `typst/08-function-models/04-rate-change-models.typ`
- `typst/09-data-statistics/05-probability.typ`
- branch review / smoke routing files for `06-09`

## Reviewer conclusion

- **Review status:** fail
- **Open blocker type:** R-02 branch-spine noncompliance remains open in all four branch interiors `06-09`.
- **Task-012 constraint:** fixes must insert explicit mid-branch foundation summaries **inside existing branch interiors only** and **must not make any top-level `00-10` spine change**.

## Findings

### F01 — critical — branch `06` still has no explicit `{branch}基础 → 基础总结 → {branch}进阶 → {branch}总结` arc

- **Rule hit:** R-02
- **Evidence:**
  - `typst/main.typ:85-95` compiles `06.1` through `06.7` and then jumps straight to `08-review.typ`; there is no dedicated mid-branch synthesis node between `§6.4` and `§6.5`.
  - `typst/06-algebra-deepening/00-overview.typ:19-28` presents one continuous list from `§6.1` to `§6.7`, then only a final “本章回顾”.
  - The current content split naturally forms a foundation block at `§6.1-§6.4` (整式、因式分解、分式、一元一次方程) and an advanced block at `§6.5-§6.7` (方程组、二次方程、不等式).
- **Judgment:** branch `06` is structurally stable enough after iteration 02 to insert a real foundation-summary node **after `§6.4`**, before the branch advances into multi-unknown / quadratic / inequality solving.

### F02 — critical — branch `07` still lacks the mid-branch summary after `§7.4`, so proof-foundation and later measurement / expression work are not structurally separated

- **Rule hit:** R-02
- **Evidence:**
  - `typst/main.typ:97-109` compiles `§7.1` through `§7.9` and then only the final `10-review.typ`; there is no summary node between `§7.4` and `§7.5`.
  - `typst/07-geometry-deepening/00-overview.typ:24-35` lists `§7.1-§7.4` as the proof backbone, then `§7.5-§7.8` as later measurement / representation topics, with `§7.9` explicitly marked “选学”.
  - `typst/07-geometry-deepening/09-circle-extensions.typ:3-15` already frames `§7.9` as a light optional side hall, not as part of the branch foundation.
- **Judgment:** branch `07` needs an explicit foundation summary **after `§7.4`**. `§7.9` does not need a structural move in this iteration, but it must remain **after** the new summary and advanced core, not inside the foundation block.

### F03 — critical — branch `08` still moves directly from foundation topics into advanced models without a foundation-summary checkpoint

- **Rule hit:** R-02
- **Evidence:**
  - `typst/main.typ:111-118` compiles `§8.1-§8.4` and then only `05-review.typ`; there is no explicit summary node after `§8.2`.
  - `typst/08-function-models/00-overview.typ:21-27` lists `§8.1` 一次函数 and `§8.2` 反比例函数 before turning to `§8.3` 二次函数 and `§8.4` 应用比较.
  - `typst/08-function-models/04-rate-change-models.typ:3-18` is already an advanced comparison / application chapter, not a foundation recap surface.
- **Judgment:** branch `08` must insert a real foundation summary **after `§8.2`**. `§8.3-§8.4` should remain the advanced block; `§8.4` stays boundary-sensitive for iteration 05, but that does not waive the missing summary here.

### F04 — critical — branch `09` still lacks a summary after `§9.4`, so its data-foundation block never closes before probability / sampling

- **Rule hit:** R-02
- **Evidence:**
  - `typst/main.typ:120-129` compiles `§9.1-§9.6` and then only `07-review.typ`; there is no dedicated mid-branch summary after `§9.4`.
  - `typst/09-data-statistics/00-overview.typ:19-27` presents `§9.1-§9.4` as the “整理 → 代表值 → 波动 → 分布” data line, then describes `§9.5` as a probability side window and `§9.6` as returning to data-based estimation.
  - `typst/09-data-statistics/05-probability.typ:3-15` is a standalone probability lesson, not a branch-foundation summary.
- **Judgment:** branch `09` needs a real foundation summary **after `§9.4`**. Once inserted, `§9.5` and `§9.6` can remain the post-summary advanced block for now; whether `§9.5` should render more explicitly as a side window stays an iteration-05 placement question, not a reason to skip the summary insertion.

### F05 — high — `§8.4` is still boundary-open after iteration 02, even though it should stay in the advanced half for iteration-03 insertion

- **Rules hit:** R-04, boundary watch from the baseline queue
- **Evidence:**
  - `typst/08-function-models/00-overview.typ:26` says `§8.4` should stay at comparison-level modeling and should not expand into a new formula family.
  - `typst/08-function-models/04-rate-change-models.typ:107-115` still teaches the compressed power-form expression `$y = 1000 times 1.05^t$` in the blueprint path.
  - `docs/review/20260419-structure-quality-review/05-structure-baseline-boundaries.md` already marked `§8.4` as a boundary-sensitive watch item.
- **Judgment:** `§8.4` is still not structurally correct on boundary framing, but that is **not** a reason to delay the missing `08.2 -> 基础总结 -> 08.3` insertion. Task-012 should keep `§8.4` in the advanced half and leave the boundary cleanup itself to the later boundary-focused pass.

### F06 — medium — iteration-03 can be solved by branch-local insertion and routing updates; no new split / merge is required before inserting summaries

- **Rules hit:** R-02, queue scope discipline
- **Evidence:**
  - `typst/smoke/06-algebra-deepening.typ:37-45`, `typst/smoke/07-geometry-deepening.typ:37-47`, `typst/smoke/08-function-models.typ:37-42`, and `typst/smoke/09-data-statistics.typ:37-44` mirror the same direct “overview → numbered chapters → final review” structure now present in `typst/main.typ`.
  - `typst/06-algebra-deepening/08-review.typ`, `typst/07-geometry-deepening/10-review.typ`, `typst/08-function-models/05-review.typ`, and `typst/09-data-statistics/07-review.typ` are all still acting as final branch reviews rather than mid-branch summaries.
- **Judgment:** task-012 should insert **new** branch-local foundation-summary files at the four queue-defined insertion points and then rewire `main.typ`, overviews, smoke files, and affected `#secref(...)` targets. It should **not** try to satisfy R-02 by renaming the existing final review files.

## Exact insertion recommendations for `task-012`

| Branch | Foundation block ends at | Insert new summary immediately after | Advanced block begins at | Structural note |
|---|---|---|---|---|
| `06` | `§6.4` | `typst/06-algebra-deepening/04-linear-equations.typ` | current `§6.5` 方程组 | new file should synthesize `6.1-6.4`, then leave the existing final review for the end of the branch |
| `07` | `§7.4` | `typst/07-geometry-deepening/04-circles.typ` | current `§7.5` 勾股定理 | `§7.9` may stay at the tail of the advanced block, but must not sit before the new summary |
| `08` | `§8.2` | `typst/08-function-models/02-inverse-proportion.typ` | current `§8.3` 二次函数 | `§8.4` remains in the advanced block; do not turn it into the summary node |
| `09` | `§9.4` | `typst/09-data-statistics/04-frequency-distribution.typ` | current `§9.5` 概率初步 | `§9.5` stays post-summary for now; side-window presentation can be tightened later |

## Action items for `task-012`

1. **Insert four explicit mid-branch foundation summaries** inside `06-09`, at the queue-defined insertion points after `§6.4`, `§7.4`, `§8.2`, and `§9.4`.
2. **Keep the final branch reviews distinct**:
   - do not rename the current final review files into foundation summaries;
   - leave each branch with both a mid-branch synthesis node and a final end-of-branch review.
3. **Update routing surfaces coherently**:
   - `typst/main.typ`
   - branch `00-overview.typ` files
   - branch smoke files
   - any affected `#secref(...)` references caused by insertion-time renumbering
4. **Keep the existing branch-entry recap discipline unchanged**:
   - preserve `#history-note`
   - preserve `#side-hack`
   - preserve the current `本章的主线是` overview pattern
5. **Preserve branch-local optional / advanced placement discipline**:
   - `§7.9` stays after the new `07` foundation summary, not before it;
   - `§9.5` stays after the new `09` foundation summary, even if its side-window presentation is refined later; if it remains inline, the resolution note must say that the side-window/core ambiguity is still under watch;
   - `§8.4` remains in the advanced block, not as a disguised summary, and must not be claimed structurally closed by task-012.
6. **Make no top-level `00-10` spine change**:
   - no top-level add / remove / rename / reorder / collapse,
   - all work stays inside branch interiors.

## Acceptance criteria for iteration-03 fixes (`task-012`)

### AC-01 — branch-summary insertion completeness

- **Pass** only if branches `06`, `07`, `08`, and `09` each gain an explicit mid-branch foundation summary after `§6.4`, `§7.4`, `§8.2`, and `§9.4` respectively.
- **Fail** if any branch still jumps directly from its foundation block into advanced content with no summary node.

### AC-02 — distinct final review preservation

- **Pass** only if each branch still ends with a separate final review after the advanced block.
- **Fail** if a branch satisfies the summary requirement merely by renaming or repurposing its existing final review file.

### AC-03 — routing coherence

- **Pass** only if `typst/main.typ`, the affected branch `00-overview.typ` files, smoke entrypoints, and any touched `#secref(...)` references all agree on the inserted summary nodes and resulting order.
- **Fail** if insertion leaves stale numbering, broken review routing, or mismatched overview / smoke order.

### AC-04 — optional / advanced placement discipline

- **Pass** only if `§7.9` and `§9.5` remain on the post-summary side of the branch spine and `§8.4` remains in the advanced block.
- **Fail** if any of those chapters are left stranded inside the branch-foundation block, used to fake a summary node, or silently left ambiguous without being recorded in the resolution note.

### AC-05 — within-branch evidence trail

- **Pass** only if the resolution note records every inserted summary node plus any resulting within-branch renumber / reroute.
- **Fail** if the result claims R-02 compliance without an explicit per-branch insertion record.

### AC-06 — spine preservation

- **Pass** if all changes stay inside the existing `06-09` branch interiors and leave the top-level `00-10` spine unchanged.
- **Fail** on any top-level add / remove / rename / reorder / collapse.

## Iteration-03 exit judgment

Iteration 03 cannot pass yet. Branches `06-09` still lack the required mid-branch foundation summaries, so the mandated `{branch}基础 → 基础总结 → {branch}进阶 → {branch}总结` arc is still missing. `task-012` should fix this by inserting new branch-local summary nodes and updating routing coherently, with **no top-level `00-10` spine change**.
