# Structure Iteration 05 — Whole-Book Structural Regression Audit

**Task:** `task-015`  
**Plan:** `docs/plan/20260419-structure-quality-review/plan.yaml`  
**Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`

## Reviewer conclusion

- **Review status:** fail
- **Stage judgment:** structure stage **cannot exit**
- **Why:** the whole-book topology, branch spine, foundation gate, and iteration-04 hotspot closures largely hold, but the whole-book regression re-opened **honest max-3 compliance** and **same-or-earlier-tool enforcement** on several chapters that only look compliant if umbrella packaging is allowed.
- **Required continuation:** append `task-100+` structural review/fix pairs before any quality-stage work begins.

## Whole-book pass / fail table

| Check | Result | Judgment basis |
|---|---|---|
| Topology / immutable `00-10` spine | **PASS** | `typst/main.typ:33-142` keeps `01-04 → 05 → 06-09 → 10`; no top-level reorder/collapse/extension found. |
| Branch summaries / branch spine | **PASS** | `typst/main.typ:88-135` plus `typst/06-algebra-deepening/05-foundation-summary.typ:3-40`, `typst/07-geometry-deepening/05-foundation-summary.typ:3-40`, `typst/08-function-models/03-foundation-summary.typ:3-40`, `typst/09-data-statistics/05-foundation-summary.typ:3-40` realize `{branch}基础 → 基础总结 → {branch}进阶 → {branch}总结`. |
| Same-or-earlier-tool enforcement | **FAIL** | `typst/06-algebra-deepening/01-algebraic-expressions.typ:22-25` uses `$3 x^2 - 5 x + 7$` and `$x^3$` in discovery before local blueprint formalizes the整式/幂 machinery at `:37-46` and `:101-134`. |
| Difficulty cliffs / second-level pacing | **FAIL** | `§6.1`, `§7.1`, and `§7.7` each compress too many learner-visible tool families into one chapter surface, creating real comprehension cliffs rather than stable chapter-sized steps. |
| Foundation boundaries / Chapter 05 gate discipline | **PASS** | `typst/05-foundation-gate/01-foundation-check.typ:136-143` and `typst/05-foundation-gate/03-review.typ:54-88` stay on diagnostic/routing language; `rg "象限"` on `typst/05-foundation-gate/` returns no matches. `typst/05-foundation-gate/02-branch-entry-recaps.typ:29-66` remains a recap/map node, not a mini-course. |
| Honest max-3 compliance (no umbrella packaging) | **FAIL** | `§1.6`, `§6.1`, `§7.1`, `§7.7` still exceed the locked count when learner-visible fine-grained sub-concepts are counted honestly. |

## Findings

### F01 — high — `§6.1` is still a structural blocker: same-chapter pre-use + honest max-3 failure

- **Rules hit:** R-03, R-04
- **Evidence:**
  - `typst/06-algebra-deepening/01-algebraic-expressions.typ:22-25` discovery already uses `$3 x^2 - 5 x + 7$`, “同类项”, and `$x times x times x = x^3$` before the chapter has formally stabilized those tools.
  - `typst/06-algebra-deepening/01-algebraic-expressions.typ:37-60` then formalizes *整式整理*.
  - `typst/06-algebra-deepening/01-algebraic-expressions.typ:62-99` adds *整式乘法与公式*, including *平方差公式* and *完全平方公式*.
  - `typst/06-algebra-deepening/01-algebraic-expressions.typ:101-134` adds a separate *幂的运算法则* block with five named power rules.
  - `typst/06-algebra-deepening/00-overview.typ:21-28` still advertises all of these as one `§6.1` surface.
- **Judgment:** this chapter is not just “dense”; it is structurally overloaded. Under the locked no-umbrella rule, “整式整理 / 乘法公式 / 幂的运算法则” are separate learner-visible concept families, and the discovery section also pre-uses local tools before blueprint.

### F02 — high — `§7.1` only appears compliant if five congruence criteria are hidden under the umbrella label “全等判定”

- **Rules hit:** R-03
- **Evidence:**
  - `typst/07-geometry-deepening/01-congruent-triangles.typ:5` exposes only `全等 / 全等判定 / 证明链` in `#vocab[...]`.
  - `typst/07-geometry-deepening/01-congruent-triangles.typ:65-75` then teaches five separate named congruence criteria — `SSS`, `SAS`, `ASA`, `AAS`, `HL` — plus the non-criterion `SSA`.
  - `typst/07-geometry-deepening/11-review.typ:10-13,47-77` later reuses these criteria individually, confirming that learners are expected to retain them as separate operational tools rather than as one fuzzy umbrella.
- **Judgment:** this is exactly the kind of fake compliance the rule lock forbids. “全等判定” cannot honestly count as one concept when the chapter asks learners to distinguish and apply at least five separate判定工具.

### F03 — high — `§7.7` only appears compliant if `sin / cos / tan` and angle/slope tools are packaged as one broad “三角比与测量” bucket

- **Rules hit:** R-03
- **Evidence:**
  - `typst/07-geometry-deepening/07-trigonometric-measurement.typ:47-55` separately defines `sin A`、`cos A`、`tan A`.
  - `typst/07-geometry-deepening/07-trigonometric-measurement.typ:77-87` adds *特殊角常用值* plus `仰角`、`俯角`、`坡度 = tan alpha`.
  - `typst/07-geometry-deepening/07-trigonometric-measurement.typ:89-124` immediately operationalizes these as distinct measurement choices.
- **Judgment:** even with generous counting, this chapter carries more than three learner-visible new tools. The cleanest structural reading is: (1) `sin`, (2) `cos`, (3) `tan`, plus a second application family for `仰角/俯角/坡度`. That exceeds the cap without any honest way to compress it.

### F04 — medium — `§1.6` still bundles five named运算律 into one chapter surface

- **Rules hit:** R-03
- **Evidence:**
  - `typst/01-counting/06-operation-laws.typ:45-56` teaches five separately named laws in one table: 加法交换律 / 加法结合律 / 乘法交换律 / 乘法结合律 / 乘法分配律.
  - `typst/05-foundation-gate/02-branch-entry-recaps.typ:35` and `:79` later reuse “运算律” as an already-stable prerequisite for branch entry.
- **Judgment:** this chapter remains structurally questionable under the locked count rule. If the project now counts learner-visible fine-grained laws honestly, then five named laws on one knowledge-point surface is above cap.

### F05 — note — abbreviation/glossary surfaces still need quality-stage cleanup, but they are not the current structural blocker

- **Rules touched:** R-05 only
- **Evidence:**
  - `typst/07-geometry-deepening/01-congruent-triangles.typ:67-75` and `typst/07-geometry-deepening/02-similar-triangles.typ:52-54` give English full names inline for `SSS / SAS / ASA / AAS / HL / AA`.
  - `typst/07-geometry-deepening/11-review.typ:11-12` later uses abbreviations in review shorthand.
- **Judgment:** this is still a glossary-quality queue item, but it is **not** the reason structure fails here. The structural failure is the overloaded chapter shape itself, not missing glossary formatting.

## Preservation audit of earlier closures

### Closed / preserved

- **`§2.5` stayed closed.** `typst/02-fraction-ratio-foundation/04-ratios-percentages.typ:53-103` keeps ratio/proportion/percentage on parts-shares-percent language and does not reintroduce letter-based equation solving.
- **Chapter 03 de-symbolization held.**
  - `typst/03-geometry-foundation/02-perimeter.typ:35-49` keeps perimeter word-first / numeric-first.
  - `typst/03-geometry-foundation/02-area-volume.typ:49-63` keeps area on grids / cut-paste rather than symbolic formula inventory.
  - `typst/03-geometry-foundation/03-volume.typ:35-49` keeps volume on layering/stacking.
- **`§4.3` stayed narrow.** `typst/04-number-line-algebra-bridge/02-real-numbers.typ:67-93` still treats `sqrt(2)` as a number-line completion note, not a full real-number taxonomy.
- **Chapter 05 remained a gate.**
  - `typst/05-foundation-gate/01-foundation-check.typ:136-143` uses directional coordinate language only.
  - `typst/05-foundation-gate/02-branch-entry-recaps.typ:29-66` explicitly frames itself as “唤醒旧工具”, not branch teaching.
  - `typst/05-foundation-gate/03-review.typ:54-88` stays recap/diagnostic.
- **`§8.5` stayed pulled back to comparison level.** `typst/08-function-models/05-rate-change-models.typ:95-128` keeps “固定差 / 固定倍率” comparison and no longer compresses rolling growth into a future-family closed form.
- **Probability split held.**
  - `typst/09-data-statistics/06-probability.typ:53-76` now stays inside `事件 / 样本空间 / 概率`.
  - `typst/09-data-statistics/07-probability-experiments.typ:45-65` cleanly carries `实验概率 / 理论概率 / 公平性`.
- **Inserted summary nodes stayed summaries.** `§6.5 / §7.5 / §8.3 / §9.5` each contain blueprint/mastery recap structures with no new `#vocab[...]` root and no stealth invention role.

### Re-opened retroactively by the locked count rule

- `§6.1` was not honestly re-audited under the no-umbrella rule after the later branch stabilization.
- `§7.1` and `§7.7` were allowed to pass because umbrella chapter labels masked several separately named learner-visible tools.
- `§1.6` becomes re-opened once the project-wide “fine-grained learner-visible sub-concept” interpretation is applied consistently, not only to the later 03/08/09 hotspots.

## Actionable follow-ups

1. **Append `task-100` / `task-101` for `§6.1`.**
   - split the chapter so discovery only uses same-or-earlier tools
   - keep each resulting knowledge-point chapter at `<= 3` learner-visible concepts
   - update `06-algebra-deepening/00-overview.typ`, `typst/main.typ`, and recap/review routing accordingly

2. **Append `task-102` / `task-103` for `§7.1`.**
   - do not keep five congruence criteria under one umbrella “全等判定” label
   - split or narrow until each chapter surface is honestly within cap
   - preserve Chapter 07 branch spine and keep `§7.5` as summary-only

3. **Append `task-104` / `task-105` for `§7.7`.**
   - separate core trig ratios from angle/slope application load if all pieces are truly needed
   - avoid hiding `sin / cos / tan / 仰角 / 俯角 / 坡度` inside one broad label

4. **Append `task-106` / `task-107` for `§1.6` if the rule is to be applied uniformly across the whole book.**
   - either narrow to three laws or split arithmetic laws honestly
   - do not exempt this chapter by retroactively treating five named laws as one concept

## Acceptance criteria for the next structural iteration set

- `§6.1` discovery contains no same-chapter pre-use of tools later invented in its own blueprint.
- No knowledge-point chapter passes by packaging several separately named criteria/laws/ratios under one umbrella label.
- `§7.1` no longer teaches five congruence criteria on one chapter surface.
- `§7.7` no longer teaches trig ratios plus angle/slope application families on one chapter surface.
- If `§1.6` remains unchanged, the team must record a rule-level exemption; otherwise it must be structurally narrowed/split.
- Previously closed surfaces (`§2.5`, Chapter 03 de-symbolized geometry, `§4.3`, Chapter 05, `§8.5`, `§9.6/§9.7`, inserted summary nodes) remain closed after any `task-100+` work.

## Exit judgment

**Structure stage must continue.**  
Do **not** enter quality stage yet.  
The correct next move is to append `task-100+` structural iterations focused on the still-open honest-max-3 / tool-order blockers above, then re-run the whole-book structural regression before `task-017`.
