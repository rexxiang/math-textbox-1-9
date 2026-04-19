# Structure Task 107 — `§1.6` Split Resolution

**Task:** `task-107`  
**Reviewed artifact:** `docs/review/20260419-structure-quality-review/106-structure-task-106-1-6-review.md`  
**Supporting regression artifact:** `docs/review/20260419-structure-quality-review/18-structure-iteration-05.md`  
**Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`

## Chosen strategy

- **Chosen option:** Option A
- **Decision:** keep `§1.6` on加法运算律；add a new next numbered knowledge-point chapter `§1.7` for乘法运算律与分配；renumber Chapter 01 review from `§1.7` to `§1.8`.
- **Why no exemption was used:** the review already established that five named laws on one knowledge-point surface would violate the project-wide honest max-3 rule, and this fix keeps `§1.6` aligned with that rule instead of carving out a one-off exception.

## Final learner-visible concept counts

| Chapter | Final learner-visible laws | Count | Judgment |
|---|---|---:|---|
| `§1.6 加法运算律：换顺序、先配对` | 加法交换律 / 加法结合律 | 2 | compliant |
| `§1.7 乘法运算律与分配：先成整，再展开` | 乘法交换律 / 乘法结合律 / 乘法分配律 | 3 | compliant |

## Chapter-01 routing / renumbering

| Surface | Before | After |
|---|---|---|
| `typst/01-counting/06-operation-laws.typ` | `§1.6 运算律` | `§1.6 加法运算律：换顺序、先配对` |
| `typst/01-counting/07-multiplication-laws.typ` *(new)* | — | `§1.7 乘法运算律与分配：先成整，再展开` |
| `typst/01-counting/08-review.typ` *(renamed from `07-review.typ`)* | `§1.7` review surface | `§1.8` review surface |
| `typst/main.typ` | Chapter 01 ended `... 06-operation-laws → 07-review` | Chapter 01 now runs `... 06-operation-laws → 07-multiplication-laws → 08-review` |

## Before / after routing table for current `#secref("1.6")` prerequisite uses

| Surface | Before | After |
|---|---|---|
| `typst/01-counting/07-review.typ` | `#secref("1.6")` stood in for all five laws | replaced by `typst/01-counting/08-review.typ`, which splits review coverage into `#secref("1.6")` for加法运算律 and `#secref("1.7")` for乘法运算律与分配 |
| `typst/02-fraction-ratio-foundation/02-fractions.typ` | `#secref("1.6")` as catch-all law anchor | `#secref("1.6") and #secref("1.7")` |
| `typst/04-number-line-algebra-bridge/01-rational-numbers.typ` | `#secref("1.6")` as catch-all prior-law surface | `#secref("1.6") and #secref("1.7")` |
| `typst/04-number-line-algebra-bridge/05-review.typ` | `#secref("1.6")` generic “运算律” callback | kept on `#secref("1.6")`, but narrowed explicitly to 加法运算律 because the prompt is additive regrouping only |
| `typst/05-foundation-gate/01-foundation-check.typ` | `#secref("1.6")` as one arithmetic-law gate | split to `#secref("1.6")` for加法重组 and `#secref("1.7")` for乘法凑整 / 分配 |
| `typst/05-foundation-gate/02-branch-entry-recaps.typ` | `#secref("1.6")` as algebra-readiness shorthand | split to `#secref("1.6")` and `#secref("1.7")` with separate readiness bullets |
| `typst/05-foundation-gate/03-review.typ` | `#secref("1.6")` as one算术底盘 card | expanded to `#secref("1.5"), #secref("1.6"), #secref("1.7")` with explicit additive vs multiplicative/distributive cues |
| `typst/06-algebra-deepening/00-overview.typ` | `#secref("1.6")` as the whole operation-law toolkit | split to `#secref("1.6")` for加法重组 and `#secref("1.7")` for乘法运算律与分配 |

## Additional reroutes applied

These were not all “catch-all prerequisite” uses, but they would have become inaccurate if left untouched after the split.

| Surface | Change |
|---|---|
| `typst/01-counting/00-overview.typ` | Chapter 01 map now lists加法运算律 and乘法运算律与分配 as separate learning steps |
| `typst/05-foundation-gate/00-overview.typ` | Chapter 01 summary wording now reflects separate additive and multiplicative regrouping laws |
| `typst/02-fraction-ratio-foundation/06-review.typ` | rerouted from `#secref("1.6")` to `#secref("1.4") and #secref("2.6")`, because the prompt is really about multiplication / division meaning plus percent-fraction conversion, not the law split |
| `typst/06-algebra-deepening/09-review.typ` | rerouted from `#secref("1.6") and #secref("2.5")` to `#secref("2.5") and #secref("4.5")`, because the prompt compares ratio reasoning with equation reasoning rather than reusing the law chapter as a shortcut anchor |
| `typst/smoke/04-number-line-algebra-bridge.typ` through `typst/smoke/10-capstone.typ` | smoke entrypoints were updated to include `../01-counting/07-multiplication-laws.typ`, and `typst/smoke/10-capstone.typ` was also rerouted from `../01-counting/07-review.typ` to `../01-counting/08-review.typ` so standalone smoke compiles still match the Chapter 01 split |

## Files intentionally left unchanged

| File | Reason |
|---|---|
| `typst/05-foundation-gate/02-branch-entry-recaps.typ` entries for 07 / 08 / 09 | task-107 did not newly modify these bullets for the `§1.6` split, because they do not use `#secref("1.6")` as a catch-all law anchor; earlier structural reroutes in the same file may still exist from prior tasks |
| top-level `00-10` spine | task requirement was to preserve it unchanged |

## Acceptance-criteria check

| AC | Result | Note |
|---|---|---|
| Chapter 01 no longer teaches five named laws on one knowledge-point surface | PASS | `§1.6` now has 2 laws; new `§1.7` has 3 laws |
| Downstream `#secref("1.6")` catch-all prerequisite surfaces were rerouted | PASS | gate, branch-entry, bridge, fractions, review, and algebra overview surfaces were updated |
| Beginner-friendly Chapter 01 pacing preserved | PASS | `§1.6` now stays on easy加法配对；`§1.7` carries乘法凑整与分配 without changing the top-level chapter spine |
| No rule-level exemption used | PASS | fix is structural, not a ledger exception |
| Top-level `00-10` spine unchanged | PASS | only Chapter 01 second-level surfaces and dependent routing changed |

## Verification

- `make check`
