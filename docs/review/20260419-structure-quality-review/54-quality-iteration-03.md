# Quality Iteration 03 Review

- **Task ID:** `task-026`
- **Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`
- **Scope:** branch-entry recap surfaces in `06-09`, branch-foundation summaries in `06-09`, all `XX-review.typ` chapter-review surfaces, and the `#secref(...)` spiral links attached to those recap / summary / review surfaces
- **Review status:** `continue`
- **Confidence score:** `74%`
- **Stop-rule status:** `not triggered`
- **Structure-freeze status:** `held`

## Reviewed inputs and surfaces

- Required inputs: `40-quality-rubric.md`, `42-quality-summary-crossref-queue.md`, `typst/main.typ`
- Reviewed surfaces:
  - `typst/06-algebra-deepening/00-overview.typ`
  - `typst/07-geometry-deepening/00-overview.typ`
  - `typst/08-function-models/00-overview.typ`
  - `typst/09-data-statistics/00-overview.typ`
  - `typst/06-algebra-deepening/07-foundation-summary.typ`
  - `typst/07-geometry-deepening/07-foundation-summary.typ`
  - `typst/08-function-models/03-foundation-summary.typ`
  - `typst/09-data-statistics/05-foundation-summary.typ`
  - `typst/01-counting/08-review.typ`
  - `typst/02-fraction-ratio-foundation/06-review.typ`
  - `typst/03-geometry-foundation/06-review.typ`
  - `typst/04-number-line-algebra-bridge/05-review.typ`
  - `typst/05-foundation-gate/03-review.typ`
  - `typst/06-algebra-deepening/11-review.typ`
  - `typst/07-geometry-deepening/14-review.typ`
  - `typst/08-function-models/06-review.typ`
  - `typst/09-data-statistics/08-review.typ`
  - `typst/10-capstone/review.typ`

## Findings table

| ID | Severity | Type | Location | Evidence | Learner impact | Required action |
|---|---|---|---|---|---|---|
| Q03-01 | Medium | `review-integrity` | `typst/05-foundation-gate/03-review.typ:90-98`; `typst/07-geometry-deepening/14-review.typ:104-112`; `typst/08-function-models/06-review.typ:110-118` | All three review files still use **4** spiral-review prompts, while review surfaces are limited to **2-3**. The blocks read more like backlog checklists than prioritized spiral recall. | The learner’s final “回看” step loses focus: instead of 2-3 strongest return paths, the review asks them to hold too many cross-chapter threads at once. | Compress each spiral block to the highest-yield 2-3 prompts, keeping every prompt explicitly cross-chapter and non-duplicative. |
| Q03-02 | Medium | `review-integrity`, `crossref-quality` | `typst/07-geometry-deepening/14-review.typ:36-41,45-73`; `typst/07-geometry-deepening/00-overview.typ:38` | The chapter review still over-expands the core checkpoint: the mixed self-test has **13** questions, and the review card folds `#secref("7.13")` into the main “表达与运动” block even though `07.0` marks `7.13` as `选学`. | The branch review blurs core-vs-optional ownership and feels heavier than the promised review envelope, which weakens route clarity for self-study readers. | Bring the mixed self-test back to the 10-12 range, and keep `7.13` clearly optional or off the core review card unless it is explicitly labeled as optional recall. |
| Q03-03 | Medium | `crossref-quality` | `typst/03-geometry-foundation/06-review.typ:81-83` | The spiral prompt says “回看 `#secref("2.6")` 的比与百分数”, but ratio / percentage core teaching lives in `#secref("2.5")`; the current link is mislabeled and semantically off-target. | A stuck learner is sent to the wrong recovery point and may not find the precise part-whole / percent idea the prompt asks them to reuse. | Retarget this spiral prompt to the exact earlier ratio / percentage section, and make the in-text label match that target. |
| Q03-04 | Medium | `crossref-quality` | `typst/02-fraction-ratio-foundation/06-review.typ:93-97`; `typst/09-data-statistics/08-review.typ:97-101` | Two spiral prompts still point to indirect prior support rather than the exact earlier tool family: `2.6-review:95` sends representation-unification on `2.5 + 3/4` back to `#secref("1.5")`, and `9.8-review:99` sends chart-choice reasoning to `#secref("2.6")`, which is too broad for the named comparison. | These links technically point backward, but not to the place that most directly helps the learner recover the intended idea. The result is noisier self-study backtracking. | Retarget each prompt to the most semantically direct earlier support surface, so the cited `#secref(...)` matches the actual tool the question is asking the learner to wake up. |

## Findings grouped by severity

### Medium

1. **Spiral-review blocks are still overfull on three review surfaces.**
   - Affects `05-review`, `07-review`, `08-review`.
   - This is a rule-compliance and pedagogy issue, not a structure issue.

2. **`07-review` still reads too much like a full branch sweep instead of a tight end-of-branch checkpoint.**
   - The question count exceeds the review envelope.
   - Optional `7.13` is flattened into the core review card.

3. **A stale / mislabeled spiral link remains in `03-review`.**
   - The prompt names `2.6` as “比与百分数”, but the precise support surface is `2.5`.

4. **Two review surfaces still use semantically weak spiral links.**
   - `02-review` sends the learner too far back for a representation-conversion prompt.
   - `09-review` sends chart-choice reasoning to a too-broad earlier surface.

### Notes (checked, not escalated)

- `06-09` branch-entry recap placement currently complies with the branch-entry rule: `#side-hack[...]` appears after `#history-note[...]` and before the main-line list.
- `06-09` foundation-summary files currently behave as closure surfaces, not mini-lessons; no material first-half / second-half boundary leak was confirmed in this pass.
- `10-capstone/review.typ` now keeps the required four-part review structure and uses outward spiral links; the iteration-02 capstone self-link issue is not reopened.

## Concrete action items

1. **Tighten spiral-review blocks in `05-review`, `07-review`, `08-review`.**
   - Keep only the strongest 2-3 cross-chapter prompts.
   - Remove prompts that duplicate the same recall path or dilute the final review focus.

2. **Trim `07-review` back to the agreed review envelope.**
   - Reduce mixed self-test count to 10-12.
   - Remove or explicitly re-mark `7.13` so the review card does not silently recore optional material.

3. **Fix inaccurate `#secref` targeting in `03-review`.**
   - The prompt and the cited section name must point to the same ratio / percentage tool home.

4. **Retarget weak spiral links in `02-review` and `09-review`.**
   - Each prompt should send the learner to the most direct earlier recovery surface, not just any earlier arithmetic surface.

## Acceptance criteria for the next fix task

1. `typst/05-foundation-gate/03-review.typ`, `typst/07-geometry-deepening/14-review.typ`, and `typst/08-function-models/06-review.typ` each contain **2-3** spiral-review prompts only, and every prompt is explicitly cross-chapter.
2. `typst/07-geometry-deepening/14-review.typ` contains **10-12** mixed self-test questions, and its review card no longer presents `7.13` as unmarked core material.
3. `typst/03-geometry-foundation/06-review.typ` points its percent-growth spiral prompt to the exact earlier ratio / percentage section, with matching text and `#secref(...)`.
4. `typst/02-fraction-ratio-foundation/06-review.typ` and `typst/09-data-statistics/08-review.typ` use `#secref(...)` links that match the precise earlier tool each spiral prompt is asking the learner to reuse.
5. No fix disturbs the already-compliant branch-entry recap placement in `06-09` or the current closure-only role of `06-09` foundation-summary surfaces.

## Confidence

| Item | Value |
|---|---|
| Start score | `100%` |
| Deductions | `Medium x4 = -32%` |
| Bonuses | `prior-fix hold x2 = +6%` |
| Final score | `74%` |
| Band | `70-84%` |
| Stop rule | `not triggered` |
| Next-step judgment | `continue with a narrow review-surface / crossref fix pass` |

### Confidence rationale

- Evidence is direct and file-based across the exact recap / summary / review surfaces named in this iteration’s scope.
- The main defects are still quality-stage issues: review-envelope control and `#secref(...)` precision. No finding requires reopening the frozen `00-10` spine.
- Two prior fixes clearly held during this pass: the `08.0` entry recap stayed recap-only, and `10-capstone/review.typ` no longer regressed to self-linking or mixed-up four-part structure.
