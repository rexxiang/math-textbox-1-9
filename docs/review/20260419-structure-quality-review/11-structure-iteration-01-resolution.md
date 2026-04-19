# Structure Iteration 01 — Resolution Note

**Task:** `task-008`  
**Reviewed artifact:** `docs/review/20260419-structure-quality-review/10-structure-iteration-01.md`  
**Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`

## Scope touched

- `typst/02-fraction-ratio-foundation/04-ratios-percentages.typ` (`§2.4`)
- `typst/04-number-line-algebra-bridge/02-real-numbers.typ` (`§4.2`)
- `typst/04-number-line-algebra-bridge/03-variables-and-expressions.typ` (`§4.3`)

## Monitor-only file

- `typst/06-algebra-deepening/02-factorization.typ` (`§6.2`) — **unchanged**

## Action-item resolution map

### 1. `§2.4`: remove the algebra-letter leak completely

- Rewrote the `#blueprint` ratio/proportion section to use numeric and verbal treatments only.
- Removed symbolic formalization such as `$a:b = c:d$`, `frac(a, b) = frac(c, d)`, `a times d = b times c`, and allocation formulas with symbolic `$S$`.
- Follow-up cleanup removed the remaining percentage-letter formalization `$a% = frac(a, 100)$`.
- Replaced solved-unknown proportion work in `#mastery` with numeric proportional-allocation practice (`150` 本按 `2 : 3` 分配).

### 2. `§4.2`: fix both order and boundary in one pass

- Rewrote `#discovery`, `#tryit`, and `#side-hack` so they no longer pre-use `$sqrt(2)$`, `$x^2 = 2$`, `$pi$`, or named irrational/real taxonomy before the invention point.
- Narrowed the chapter to a bridge-side window: “数轴上还有需要新名字的点”, rather than a full rational/irrational/real classification lesson.
- Reduced the blueprint to one bridge goal: use `sqrt(2)` as a name for the exact point/length, with approximation and placement intuition only.

### 3. `§4.3`: delay formal symbolic templates until blueprint

- Rewrote `#discovery` around verbal placeholders such as `"练习册本数"`、`"边长"`、`"宽"` instead of finished algebra notation.
- Rewrote `#tryit` to ask for pre-blueprint word-template expressions, not letter expressions.
- Left the formal invention of 字母表示数 / 代数式 inside `#blueprint`, so symbolic templates now begin there.

### 4. `§6.2`: keep monitor-only

- No edit was needed.
- The explicit backward anchor to `#secref("6.1")` remains intact because the file was left unchanged.

### 5. No top-level `00-10` spine changes

- No top-level directory, overview spine, or top-level include order was changed.
- All edits were chapter-local plus this resolution note.

## Acceptance-criteria check

| AC | Result | Note |
|---|---|---|
| AC-01 — `§2.4` leak removal | PASS | Removed algebra-letter proportion formalization, the residual `$a% = frac(a, 100)$` percentage rule, and the solved-unknown proportion exercise/answer chain. |
| AC-02 — `§4.2` no-future-tool order | PASS | Discovery / try-it no longer pre-use `sqrt(2)`, `x^2 = 2`, `pi`, or named taxonomy. |
| AC-03 — `§4.2` public-foundation boundary | PASS | Reframed as a narrow bridge about incomplete number-line coverage; removed the full taxonomy block. |
| AC-04 — `§4.3` no-future-tool order | PASS | Crisis / discovery / try-it no longer use finished symbolic templates before blueprint. |
| AC-05 — `§6.2` monitor-only preservation | PASS | `§6.2` stayed unchanged, so its backward anchor to `§6.1` remains. |
| AC-06 — Spine preservation | PASS | No top-level `00-10` add/remove/rename/reorder/collapse occurred. |

## Final note

Iteration 01 fixes were kept tightly scoped to dependency-leak removal. A narrow follow-up removed the last adjacent symbolic leftover in `§2.4`. `§6.2` stayed monitor-only and unchanged.
