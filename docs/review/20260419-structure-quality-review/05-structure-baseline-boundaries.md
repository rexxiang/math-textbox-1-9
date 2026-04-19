# Structure Baseline — Branch Summaries and Foundation Boundaries

**Plan task:** `task-005`  
**Plan:** `docs/plan/20260419-structure-quality-review/plan.yaml`  
**Scope re-reviewed in repo state:** branch-entry recaps, branch-foundation summaries, capstone boundaries, and public-foundation advanced-content leakage.

## Findings

### F01 — Branch-entry recaps are present in 06–09, but the required mid-branch foundation summaries are missing

- **Status:** structural blocker
- **What passed:** the branch-entry recap placement rule is currently met in all four branch overviews. Each overview places a `#side-hack[...]` recap after `#history-note[...]` and before the “本章的主线是” list:
  - `typst/06-algebra-deepening/00-overview.typ:9-19`
  - `typst/07-geometry-deepening/00-overview.typ:14-24`
  - `typst/08-function-models/00-overview.typ:11-21`
  - `typst/09-data-statistics/00-overview.typ:9-19`
- **What failed:** branches 06–09 still run straight from branch entry into core sections and then directly to one closing review, so they do **not** realize `{branch}基础 → 基础总结 → {branch}进阶 → {branch}总结`.
- **Explicit summary-gap references:**
  - **06 algebra:** `typst/main.typ:80-90` lists `06.1`–`06.7` and then `06-algebra-deepening/08-review.typ`; there is no branch-foundation summary between `6.4` and `6.5`.
  - **07 geometry:** `typst/main.typ:92-104` lists `07.1`–`07.9` and then `07-geometry-deepening/10-review.typ`; there is no branch-foundation summary between `7.4` and `7.5`.
  - **08 functions:** `typst/main.typ:106-113` lists `08.1`–`08.4` and then `08-function-models/05-review.typ`; there is no branch-foundation summary between `8.2` and `8.3`.
  - **09 data:** `typst/main.typ:115-124` lists `09.1`–`09.6` and then `09-data-statistics/07-review.typ`; there is no branch-foundation summary between `9.4` and `9.5`.
- **Impact:** branch learners currently get an entry checklist and an end-of-branch review, but no explicit checkpoint that closes the branch foundation before advanced work begins.

### F02 — 07 and 09 blur boundary transitions because optional/side-window material appears inline before the only branch review

- **Status:** medium
- **Chapter references:**
  - `typst/07-geometry-deepening/00-overview.typ:33-35` labels `§7.9` as “圆的拓展（选学）”.
  - `typst/07-geometry-deepening/09-circle-extensions.typ:79-81` says the section is a side hall and not a required core node.
  - `typst/09-data-statistics/00-overview.typ:25-26` labels `§9.5` as a “随机性侧窗”.
  - `typst/main.typ:117-124` still keeps `9.5` inline before `9.6` and the only final review.
- **Boundary issue:** because 07 and 09 lack a mid-branch foundation summary, optional or side-window content is not visibly separated from the core branch spine.

### F03 — 08.4 overreaches into future-family preview territory instead of staying at model-comparison level

- **Status:** high
- **Chapter references:**
  - `typst/08-function-models/00-overview.typ:9` says `§8.4` should compare growth rhythms and should **not** expand into a new formula family.
  - `typst/08-function-models/04-rate-change-models.typ:95-117` turns rolling growth into an explicit power-form expression: `y = 1000 × 1.05^t`.
  - `typst/10-capstone/whats-next.typ:23-25` reserves that future-family continuation for the capstone outlook: exponentials/logs/sequences belong to later study.
- **Boundary leak:** `8.4` is currently teaching closer to a future-family preview than to a controlled branch capstone comparison, so it encroaches on the preview territory that Chapter 10 is supposed to hold.

### F04 — Public-foundation Chapter 2 leaks premature algebra/proportion-solving content

- **Status:** high
- **Chapter references:**
  - `typst/02-fraction-ratio-foundation/04-ratios-percentages.typ:68-75` formalizes proportion as `a:b = c:d` and `ad = bc`.
  - `typst/02-fraction-ratio-foundation/04-ratios-percentages.typ:128-145` includes solving `x/6 = 5/3 → 3x = 30 → x = 10`.
  - `typst/04-number-line-algebra-bridge/03-variables-and-expressions.typ` and `typst/04-number-line-algebra-bridge/04-equation-intuition.typ` are the later formal bridge chapters for letters and equations.
- **Boundary leak:** Chapter 2 is still doing variable-based proportion solving before the bridge formally introduces letters and equation reasoning.

### F05 — Public-foundation Chapter 4 still carries a full real-number classification block instead of a narrow bridge-side window

- **Status:** high
- **Chapter references:**
  - `typst/04-number-line-algebra-bridge/02-real-numbers.typ:24-54` introduces `sqrt(2)`, `x^2 = 2`, `pi`, and the non-repeating decimal distinction in discovery.
  - `typst/04-number-line-algebra-bridge/02-real-numbers.typ:73-105` adds square-root definition, irrational number definition, real-number classification, and approximation rules in blueprint.
  - `typst/04-number-line-algebra-bridge/00-overview.typ` frames `4.2` as a side window for filling the number line rather than as a full new family.
- **Boundary leak:** the section is still too advanced and too complete for a bridge-side window in the public foundation.

### F06 — Chapter 5 is mostly acting as a gate, but it still leaks future coordinate terminology

- **Status:** medium
- **Chapter references:**
  - `typst/05-foundation-gate/01-foundation-check.typ:136-143` asks learners to identify which quadrant a point lies in.
  - `typst/05-foundation-gate/03-review.typ:54-78` repeats quadrant-based answers in the review.
  - `typst/03-geometry-foundation/05-coordinate-entry.typ:81-87` only works in the origin’s upper-right grid region.
  - `typst/04-number-line-algebra-bridge/01-rational-numbers.typ:193-216` extends signed direction into the plane but does not clearly establish full quadrant naming as a public-foundation tool.
- **Boundary leak:** the gate remains mostly compliant, but quadrant terminology is still arriving before the prerequisite naming is securely established.

### F07 — Chapter 10 is broadly within boundary, but it should remain the only home for forward previews

- **Status:** low
- **Chapter references:**
  - `typst/10-capstone/00-overview.typ:19-23` keeps Chapter 10 framed as whole-book summary plus outlook.
  - `typst/10-capstone/review.typ:5-53` functions as all-book summary rather than a new teaching branch.
  - `typst/10-capstone/whats-next.typ:13-33` is the correct preview zone for later-study topics.
- **Boundary conclusion:** the capstone itself is not the main leak; the main problem is that `8.4` is previewing future-family material too early instead of letting Chapter 10 hold that boundary.

## Action Items

1. **Insert explicit branch-foundation summaries inside every branch.**
   - `06`: close branch-foundation after `6.4`, then start advanced block at `6.5`.
   - `07`: close branch-foundation after `7.4`, then start advanced block at `7.5`.
   - `08`: close branch-foundation after `8.2`, then start advanced block at `8.3`.
   - `09`: close branch-foundation after `9.4`, then start advanced block at `9.5`.
2. **Keep branch-entry recap discipline unchanged.** The current `#history-note -> #side-hack -> 本章的主线是` placement in 06–09 should be preserved during later fixes.
3. **Demote or reframe side-window material so it does not masquerade as uninterrupted core spine.**
   - Mark `7.9` as outside the core branch summary path, or move it after the core review.
   - Start the `9.5` / `9.6` uncertainty block only after an explicit `9.4` foundation summary.
4. **Pull 8.4 back to comparison language.**
   - Keep “fixed difference vs fixed multiplier” and recursive-rule reading.
   - Remove the compressed power-form presentation from the core 8.4 teaching path, or move it to a clearly marked preview zone under Chapter 10.
5. **Remove advanced/future-branch content from the public foundation.**
   - `2.4`: keep ratio / percentage / allocation intuition, but remove `ad = bc` formalization and variable-solving examples.
   - `4.2`: reduce to “the number line is not exhausted by rationals” intuition; do not carry full irrational/real-number taxonomy in the bridge.
   - `5.1` / `5.3`: remove quadrant terminology unless the naming is explicitly established earlier in the public foundation.

## Branch-Spine Summary Expectations for Later Fixes

- A **branch-foundation summary** must be an explicit structural checkpoint inside the branch, not just the final chapter review renamed.
- It must:
  - summarize the branch-foundation tools already built,
  - use `#secref(...)` back-links to the foundation chapters/sections it closes,
  - state what the next advanced block adds without teaching that advanced block in the summary itself,
  - visually separate core spine from optional side-window material.
- The **final branch review** must remain the `{branch}总结` node after all core advanced content.

## Acceptance Criteria

- Calls out the current branch-summary gaps in **06, 07, 08, 09** with explicit chapter references and expected insertion points.
- Explicitly identifies `08.4` as a capstone-boundary leak because it previews future-family content that Chapter 10 should own.
- Identifies public-foundation leakage in at least:
  - `2.4` (premature algebraic proportion solving),
  - `4.2` (advanced real/irrational classification),
  - `5.1` / `5.3` (premature quadrant terminology).
- Confirms that branch-entry recaps in `06–09` currently exist and are structurally well placed, so later fixes should preserve rather than rewrite that pattern.
- Defines branch-spine expectations for later fixes: `{branch}基础 → 基础总结 → {branch}进阶 → {branch}总结`, with explicit summary insertion after `6.4`, `7.4`, `8.2`, and `9.4`.
