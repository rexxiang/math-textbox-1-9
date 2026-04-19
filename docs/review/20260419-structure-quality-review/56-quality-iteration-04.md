# Quality Iteration 04 Review

- **Task ID:** `task-028`
- **Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`
- **Scope:** public-foundation boundary discipline in `01-05`, core-route difficulty gradients around the `04 -> 05` handoff, and side-window / optional containment checks on the nearby boundary-setting surfaces
- **Review status:** `continue`
- **Confidence score:** `93%`
- **Stop-rule status:** `not triggered`
- **Structure-freeze status:** `held`

## Reviewed inputs and surfaces

- Required inputs: `40-quality-rubric.md`, `43-quality-boundary-regression-queue.md`, `typst/main.typ`
- Reviewed surfaces:
  - `typst/01-counting/00-overview.typ`
  - `typst/01-counting/01-natural-numbers.typ`
  - `typst/02-fraction-ratio-foundation/00-overview.typ`
  - `typst/02-fraction-ratio-foundation/04-ratios-percentages.typ`
  - `typst/03-geometry-foundation/00-overview.typ`
  - `typst/04-number-line-algebra-bridge/00-overview.typ`
  - `typst/04-number-line-algebra-bridge/01-rational-numbers.typ`
  - `typst/04-number-line-algebra-bridge/02-rational-operations.typ`
  - `typst/04-number-line-algebra-bridge/02-real-numbers.typ`
  - `typst/04-number-line-algebra-bridge/05-review.typ`
  - `typst/05-foundation-gate/00-overview.typ`
  - `typst/05-foundation-gate/01-foundation-check.typ`
  - `typst/05-foundation-gate/02-branch-entry-recaps.typ`
  - `typst/05-foundation-gate/03-review.typ`
  - `typst/07-geometry-deepening/00-overview.typ`
  - `typst/07-geometry-deepening/13-circle-extensions.typ`
  - `typst/07-geometry-deepening/14-review.typ`

## Findings table

| ID | Severity | Type | Location | Evidence | Learner impact | Required action |
|---|---|---|---|---|---|---|
| Q04-01 | Medium | `difficulty-gradient` | `typst/04-number-line-algebra-bridge/02-rational-operations.typ:17-23,41-46,63-84` | The section introduces same-sign / mixed-sign addition and sign rules in compressed rule form, then moves straight into independent drills. There is no worked same-sign example and no worked mixed-sign example between the rule block and the exercise block. | For a self-study reader, this is one of the sharpest conceptual turns inside the public foundation: “direction on the number line” suddenly becomes sign-rule execution. Without one concrete positive case and one concrete mixed-sign case being walked through, the chapter asks the learner to invent the bridge alone. | Add two short worked examples before independent practice: one same-sign addition/subtraction chain and one mixed-sign chain, both explicitly tied back to direction / absolute-value language. |
| Q04-02 | Medium | `boundary-leakage`, `clarity` | `typst/05-foundation-gate/00-overview.typ:5-9,20-24`; `typst/05-foundation-gate/01-foundation-check.typ:14,18-25,29-33`; `typst/05-foundation-gate/02-branch-entry-recaps.typ:15-19,22-26`; `typst/05-foundation-gate/03-review.typ:14,20-23,29-38` | Chapter 05 still keeps its gate role, but its learner-facing narration repeatedly uses adult routing / tool-management language such as “系统工具”“底盘”“协同工作”“互相翻译”“调哪些旧工具”. The chapter is asking for recap behavior, yet its framing often sounds like reviewer architecture talk rather than student self-talk. | The issue is not hidden new teaching; it is recoverability. A self-study reader at the exact `04 -> 05` checkpoint should hear “先判断卡在哪、回哪一节补哪块、再回来重做”, not need to decode a meta layer about systems, chassis, and tool dispatch. This makes the gate feel more abstract than the surrounding foundation chapters. | Keep all current gate functions, but rewrite the framing into direct learner actions and questions. The chapter should sound like a checkpoint the student can use alone, not like a meta commentary on curriculum machinery. |

## Findings grouped by severity

### Medium

1. **`§4.2` still contains a real self-study pacing cliff.**
   - The rules are correct.
   - The bridge from number-line intuition to signed-operation execution is still under-scaffolded.

2. **Chapter 05 remains structurally correct, but its diction is still too architecture-heavy for a public-foundation gate.**
   - This is not a mini-course regression.
   - It is a learner-facing boundary / clarity defect inside a gate that should feel simpler than the chapters around it.

### Notes (checked, not escalated)

- **No material public-foundation method leakage was confirmed in `01-04`.** The reviewed foundation files did not quietly reteach branch-only methods or expressions as if already owned.
- **Chapter 05 still behaves like a gate, not a disguised lesson.** The live issue is wording and usability, not role drift.
- **Side-window / optional containment currently holds on the checked surfaces.**
  - `typst/04-number-line-algebra-bridge/02-real-numbers.typ:63-67,82-94` still frames `§4.3` as a limited “补数轴” side window rather than a full real-number mini-course.
  - `typst/07-geometry-deepening/00-overview.typ:38`, `typst/07-geometry-deepening/13-circle-extensions.typ:10,14-15,79-81`, and `typst/07-geometry-deepening/14-review.typ:46` still keep `§7.13` visibly optional instead of flattening it into core-route ownership.
- **The earlier near-boundary wording defect in `05.2` is no longer material.** The geometry-entry checklist now stays inside present prerequisite readiness rather than pointing the learner to downstream proof / measurement performance.

## Concrete action items

1. **Decompress `§4.2` before the practice block.**
   - Insert a same-sign worked example and a mixed-sign worked example between the rule summary and independent exercises.
   - Each example should name the sign decision in beginner language and tie it to the earlier number-line / distance intuition.

2. **De-jargonize Chapter 05 without changing its frozen role.**
   - Replace curriculum-management nouns with direct checkpoint language.
   - Preserve recap / diagnosis / routing behavior, but make every prompt answerable as student self-talk.

## Acceptance criteria for the next fix task

1. `typst/04-number-line-algebra-bridge/02-rational-operations.typ` shows at least:
   - one worked same-sign calculation, and
   - one worked mixed-sign calculation,
   before the learner is sent into independent drills.
2. Those worked examples explicitly connect the sign rule to already-owned ideas from `§4.1` / `§4.2` (direction on the number line, opposite numbers, absolute value), rather than presenting the rule as a bare recipe.
3. `typst/05-foundation-gate/00-overview.typ`, `01-foundation-check.typ`, `02-branch-entry-recaps.typ`, and `03-review.typ` keep the same gate / recap / routing job, but no longer rely on “底盘 / 系统工具 / 协同工作 / 互相翻译 / 调工具” style framing to be understandable.
4. After the rewrite, a learner can read Chapter 05 as:
   - where am I getting stuck,
   - which earlier section should I revisit,
   - and which branch am I currently ready to enter,
   without the chapter sounding like a mini-course or a curriculum map explanation.
5. No fix introduces new branch content into `01-05`, weakens the current `04 -> 05` gate handoff, or recores checked optional surfaces such as `§4.3` or `§7.13`.

## Confidence

| Item | Value |
|---|---|
| Start score | `100%` |
| Deductions | `Medium x2 = -16%` |
| Bonuses | `prior-fix / boundary-hold x3 = +9%` |
| Final score | `93%` |
| Band | `85-100%` |
| Stop rule | `not triggered` |
| Next-step judgment | `continue with a narrow fix pass; no structure reopen signal currently justified` |

### Confidence rationale

- This pass stayed inside the requested boundary-focused scope and rechecked the most likely regression surfaces directly in current files.
- Both open findings are local quality-stage defects: one pacing defect in `§4.2`, one learner-facing gate-language defect across Chapter 05. Neither requires top-level or second-level structural surgery.
- Three earlier boundary controls clearly held during this pass: `§5.2` no longer points readiness toward downstream proof/measurement use, `§4.3` remains visibly secondary, and `§7.13` remains explicitly optional on overview / body / review surfaces.
