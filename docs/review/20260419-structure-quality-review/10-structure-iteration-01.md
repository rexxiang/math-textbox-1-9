# Structure Iteration 01 — No-Future-Tool Re-Review

**Task:** `task-007`  
**Paired resolution task:** `task-008`  
**Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`

## Anchors used

- `docs/review/20260419-structure-quality-review/01-rule-ledger.md`
- `docs/review/20260419-structure-quality-review/03-structure-baseline-tool-order.md`
- `docs/review/20260419-structure-quality-review/05-structure-baseline-boundaries.md`
- `docs/review/20260419-structure-quality-review/06-structure-remediation-queue.md`

## Scope re-reviewed directly in repo

- `typst/02-fraction-ratio-foundation/04-ratios-percentages.typ` (`§2.4`)
- `typst/04-number-line-algebra-bridge/02-real-numbers.typ` (`§4.2`)
- `typst/04-number-line-algebra-bridge/03-variables-and-expressions.typ` (`§4.3`)
- `typst/06-algebra-deepening/02-factorization.typ` (`§6.2`, monitor check only)

## Reviewer conclusion

- **Review status:** fail
- **Confirmed blockers remain:** no-future-tool / public-foundation blockers remain in `§2.4`, `§4.2`, and `§4.3`; in this re-review, the concrete open rule hit in `§4.3` is still the no-future-tool leak.
- **Monitor-only judgment preserved:** `§6.2` remains monitor-only, not a blocker, because its crisis explicitly back-references `§6.1` instead of inventing a new forward dependency.
- **Constraint for `task-008`:** fixes must be chapter-local, must include explicit pass/fail checks, and **must not make any top-level `00-10` spine change**.

## Findings

### F01 — critical — `§2.4` still pulls algebra / equation machinery forward into the public foundation

- **Rules hit:** R-04, R-06
- **Exact evidence:**
  - `typst/02-fraction-ratio-foundation/04-ratios-percentages.typ:56-78` formalizes ratio / proportion with algebra-letter placeholders `$a$`, `$b$`, `$c$`, `$d$`, `$k$`, `$S$`, including `$a:b = c:d$`, `$frac(a, b) = frac(c, d)$`, `$a times d = b times c$`, and allocation formulas with `$S times frac(a, a+b)$`.
  - `typst/02-fraction-ratio-foundation/04-ratios-percentages.typ:128-149` still asks learners to solve `$frac(x, 6) = frac(5, 3)$` and gives the equation-style answer chain `$3x = 30 arrow.r x = 10$`.
- **Why this is still a blocker:** this chapter is still using chapter-4 variable / equation machinery before the bridge formally establishes it, so the same cross-chapter leak called out in the baseline remains open.

### F02 — critical — `§4.2` still uses future tools before blueprint and still exceeds the intended bridge-side-window boundary

- **Rules hit:** R-04, R-06
- **Exact evidence:**
  - `typst/04-number-line-algebra-bridge/02-real-numbers.typ:27-49` discovery still introduces `$sqrt(2)$`, `$x^2 = 2$`, `$sqrt(4)$`, `$sqrt(9)$`, `$sqrt(0.25)$`, `$pi$`, and the non-repeating-decimal distinction before blueprint defines the relevant tool family.
  - `typst/04-number-line-algebra-bridge/02-real-numbers.typ:76-105` blueprint then formally defines 算术平方根, 无理数, 实数, and a full real-number classification tree, confirming that discovery is still pre-using same-file future tools.
  - `typst/04-number-line-algebra-bridge/02-real-numbers.typ:67-70` says this section should only “补数轴” and should not expand root notation into a full new arithmetic track, but `:84-105` still teaches the broader taxonomy.
- **Why this is still a blocker:** the file still fails both checks from iteration-01 scope: same-file first-use order is wrong, and the public-foundation bridge is still carrying a broader real-number-family lesson than the queue allows.

### F03 — critical — `§4.3` discovery still formalizes letters and algebraic expressions before blueprint names them

- **Rules hit:** R-04
- **Exact evidence:**
  - `typst/04-number-line-algebra-bridge/03-variables-and-expressions.typ:24-46` discovery still uses `$n$`, `$6n + 3$`, `$a$`, `$x$`, `$l$`, `$w$`, and `$2(l + w)$` as finished symbolic templates.
  - `typst/04-number-line-algebra-bridge/03-variables-and-expressions.typ:63-103` blueprint is still the place that formally defines 字母表示数, 代数式, and the expression / equation distinction.
- **Why this is still a blocker:** the chapter still uses the exact symbolic tools that its own blueprint is supposed to invent, so the no-future-tool leak remains open even though the topic belongs in chapter 4.

### F04 — low — `§6.2` remains monitor-only, not a blocker

- **Rules hit:** none currently failing
- **Exact evidence:**
  - `typst/06-algebra-deepening/02-factorization.typ:7-12` opens by explicitly anchoring the crisis to `#secref("6.1")` and reverses the already-taught expansion pattern `$(x + 3)(x - 2) = x^2 + x - 6$`.
  - `typst/06-algebra-deepening/02-factorization.typ:19-37` then introduces factorization as the inverse move, rather than hiding a same-file forward invention in crisis.
- **Why this is monitor-only:** the current file reads as an earlier-tool back-reference case, not as a confirmed forward leak. It should still be watched during `task-008` only to ensure no rewrite removes the explicit earlier-root cue.

## Action items for `task-008`

1. **`§2.4`: remove the algebra-letter leak completely.**
   - Replace algebra-placeholder proportion formalization with numeric or verbal ratio / percentage / allocation treatment that does not depend on chapter-4 variable / equation tools.
   - Remove the solved-unknown proportion exercise / answer chain from mastery.
2. **`§4.2`: fix both order and boundary in one pass.**
   - Stop discovery from naming root notation / equation templates / taxonomy before blueprint.
   - Narrow the chapter back to a bridge-side window about “数轴不只靠有理数填满”, rather than a full real-number classification lesson.
3. **`§4.3`: delay formal symbolic templates until blueprint.**
   - Rewrite crisis / discovery / try-it so they motivate placeholders without using finished algebra-expression notation before the invention point.
4. **`§6.2`: keep monitor-only.**
   - No blocker fix is required here unless `task-008` accidentally introduces a new pre-blueprint dependency.
5. **No top-level `00-10` spine changes are allowed.**
   - `task-008` must not add, remove, rename, collapse, reorder, or otherwise alter top-level chapter directories or the `00-10` spine.

## Acceptance criteria for iteration-01 fixes (`task-008`)

### AC-01 — `§2.4` leak removal

- **Pass** if `§2.4` no longer contains algebra-letter proportion formalization or solved-unknown proportion work such as `$a:b = c:d$`, `$a times d = b times c$`, `$S times frac(a, a+b)$`, or `$frac(x, 6) = frac(5, 3)$`.
- **Fail** if any chapter-4-style variable / equation machinery remains anywhere in the touched instructional path or answer key.

### AC-02 — `§4.2` no-future-tool order

- **Pass** if discovery / try-it / side-window framing no longer pre-use `$sqrt(2)$`, `$x^2 = 2$`, `$pi$`, or named irrational / real-number classification before the local invention point.
- **Fail** if those tools still appear before blueprint or if the rewrite only changes wording while preserving the same dependency order.

### AC-03 — `§4.2` public-foundation boundary

- **Pass** if `§4.2` ends as a narrow bridge-side window about completing the number line, without a full rational / irrational / real classification block.
- **Fail** if the chapter still teaches the current broader taxonomy or otherwise remains a stealth future-family lesson inside the public foundation.

### AC-04 — `§4.3` no-future-tool order

- **Pass** if crisis / discovery / try-it stop using finished symbolic templates such as `$n$`, `$6n+3$`, `$a$`, `$x$`, `$l$`, `$w$`, and `$2(l+w)$` before blueprint formally introduces 字母表示数 / 代数式.
- **Fail** if the first formal use of those tools is still above the blueprint boundary.

### AC-05 — `§6.2` monitor-only preservation

- **Pass** if `§6.2` keeps its explicit backward anchor to `§6.1` and does not introduce any new pre-blueprint tool dependency.
- **Fail** only if the earlier-root cue is removed or a genuine new forward leak is introduced.

### AC-06 — Spine preservation

- **Pass** if `task-008` makes only scoped chapter-local edits and leaves the top-level `00-10` spine unchanged.
- **Fail** on any top-level `00-10` add / remove / rename / reorder / collapse.

## Iteration-01 exit judgment

Iteration 01 cannot pass yet. The repo re-review still confirms open blockers in `§2.4`, `§4.2`, and `§4.3`; `§6.2` remains a watch item only. `task-008` should close these leaks with explicit pass/fail checks and with **no top-level `00-10` spine changes**.
