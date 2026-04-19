# Structure Remediation Queue

**Plan:** `docs/plan/20260419-structure-quality-review/plan.yaml`  
**Task:** `task-006`  
**Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`  
**Inputs synthesized:** `01-rule-ledger.md`, `02-structure-baseline-topology.md`, `03-structure-baseline-tool-order.md`, `04-structure-baseline-glossary.md`, `05-structure-baseline-boundaries.md`

---

## Queue rules

1. **Preserve the immutable 00-10 top-level spine.** No iteration may add, remove, rename, collapse, or reorder top-level directories.
2. **Treat this queue as the scope map for `task-007` through `task-016`.** Review/fix pairs stay sequential even though the baseline work was parallel-safe.
3. **Prioritize structural blockers in this order unless later review finds a stronger blocker inside the same iteration scope:**
   1. no-future-tool leaks,
   2. tool overload / max-3-tool violations,
   3. branch-summary gaps,
   4. foundation-stage advanced leakage,
   5. optional-side-window placement / presentation mismatches.
4. **Do not spend structure-stage effort on pure glossary-only cleanup** unless a missing local root blocks a structural decision in the touched chapter.

---

## Whole-queue overview

| Iteration | Review / fix slots | Primary scope | Why this order |
|---|---|---|---|
| 01 | `10` / `11` | Eliminate confirmed no-future-tool leaks | These are the clearest structural blockers and make later counting/order checks unreliable if left open. |
| 02 | `12` / `13` | Reduce tool overload and enforce max-3-tool rule | Chapter split/prune decisions should land before branch summaries are inserted into unstable chapter interiors. |
| 03 | `14` / `15` | Insert required branch-foundation summaries in 06-09 | Summary nodes belong on stabilized branch interiors, not on chapters still being split for overload control. |
| 04 | `16` / `17` | Remove remaining public-foundation / foundation-gate advanced leakage | Boundary cleanup is safer after tool order and branch spine are structurally stable. |
| 05 | `18` / `19` | Resolve optional-side-window / presentation mismatches and run structural regression | Lowest-priority structural alignment work should happen after the core blockers above are closed or sharply narrowed. |

---

## Iteration 01 — No-future-tool leaks first

**Primary scope**

- Remove confirmed semantic or same-chapter future-tool leakage.
- Establish only the minimum local invention-root clarity needed to verify same-or-earlier-tool use in the touched files.

**Target chapters / files**

- `typst/02-fraction-ratio-foundation/04-ratios-percentages.typ` (`§2.4`)
- `typst/04-number-line-algebra-bridge/02-real-numbers.typ` (`§4.2`)
- `typst/04-number-line-algebra-bridge/03-variables-and-expressions.typ` (`§4.3`)
- Reviewer watch item only: `typst/06-algebra-deepening/02-factorization.typ` (`§6.2`) stays monitored unless review finds it is a real leak, not just an earlier-tool back-reference case.

**Main risks**

- Fixes may hide the leak in wording while leaving the same dependency order intact.
- Rewriting `§4.2` or `§4.3` may accidentally expand scope instead of delaying formal notation to blueprint.
- `§2.4` can drift back into algebra/equation solving if examples are merely rephrased instead of structurally simplified.

**Acceptance criteria**

1. `§2.4`, `§4.2`, and `§4.3` contain **zero** reviewer-confirmed future-tool uses in crisis / discovery / try-it / mastery before same-file blueprint or earlier-chapter invention.
2. Every flagged first-use token in the touched scope resolves to either:
   - a same-file blueprint introduction, or
   - an earlier chapter’s explicit invention root.
3. No fix introduces a new forward dependency into chapters `01-05`.
4. The resolution note explicitly records whether `§6.2` remains “monitored only” or graduates into an open blocker.

**Why it belongs here**

- Baselines identify `§2.4`, `§4.2`, and `§4.3` as the clearest critical blockers under R-04 and R-06.
- Leaving them open would distort later max-3 and boundary judgments because chapter scope is still being violated at first use.

---

## Iteration 02 — Tool overload / max-3-tool compliance

**Primary scope**

- Fix chapter-internal overload so every touched knowledge-point chapter lands at `<= 3` invented tools.
- Prefer split / prune / reorder inside existing top-level directories over cosmetic wording shuffles.
- Count by learner-visible sub-concepts, **not** by umbrella roots invented after the fact to hide several finer-grained concepts under one label.

**Target chapters / files**

- **Worst direct overloads first:** `§2.1`, `§3.1`, `§3.3`, `§7.8`
- **Confirmed over-cap follow-up set:** `§1.3`, `§2.2`, `§2.3`, `§2.4`, `§2.5`, `§3.2`, `§3.4`, `§3.5`, `§4.1`, `§6.4`, `§6.5`, `§6.6`, `§7.1`, `§7.5`, `§7.7`, `§8.4`, `§9.6`
- **Hidden-overload watchlist:** `§7.2`, `§7.4`, `§9.4`, `§9.5` — structural treatment only if the chapter truly needs split/prune, not just glossary surfacing

**Main risks**

- Superficial fixes may move tools into notes/blueprints without reducing the real tool count.
- Superficial fixes may also fake compliance by merging several new sub-concepts into one larger umbrella concept, which increases learner burden instead of reducing it.
- Overload fixes can trigger second-level renumbering ripple effects inside a branch.
- Reviewers may confuse pure glossary additions with genuine structural overload reduction.

**Acceptance criteria**

1. Every touched knowledge-point chapter is at `<= 3` invented tools when counting both explicit `#vocab` items and blueprint-only coined tools.
2. Any chapter that still needs more than 3 learner-visible new sub-concepts is explicitly split into smaller chapter surfaces or structurally narrowed; it is **not** passed by hiding tools in sidebars or by collapsing several finer concepts into one umbrella label.
3. The resolution note includes a per-chapter status table for all chapters touched in this iteration.
4. No fix changes the immutable `00-10` spine.

**Why it belongs here**

- The queue must address tool overload immediately after future-tool leaks because max-3 compliance is the next highest structural priority.
- Branch-summary insertion should wait until branch interiors are no longer unstable from overload-driven splits or prunes.

---

## Iteration 03 — Branch-summary gaps in 06-09

**Primary scope**

- Enforce the required branch arc:

```text
{branch}基础 → 基础总结 → {branch}进阶 → {branch}总结
```

- Insert explicit mid-branch foundation summaries without touching the global 00-10 spine.

**Target chapters / files**

- `typst/main.typ`
- `typst/06-algebra-deepening/00-overview.typ` plus new / renumbered files around the `6.4` insertion point
- `typst/07-geometry-deepening/00-overview.typ` plus new / renumbered files around the `7.4` insertion point
- `typst/08-function-models/00-overview.typ` plus new / renumbered files around the `8.2` insertion point
- `typst/09-data-statistics/00-overview.typ` plus new / renumbered files around the `9.4` insertion point
- Corresponding branch review files so the final review remains the `{branch}总结` node after advanced content

**Main risks**

- A new “foundation summary” may be created by merely renaming the existing final review, which does not satisfy R-02.
- Within-branch renumbering can break overview sequencing or blur optional sections with core sections.
- Entry recap discipline (`#history-note -> #side-hack -> 本章的主线是`) could be accidentally rewritten even though baseline says it already passes.

**Acceptance criteria**

1. Branches `06`, `07`, `08`, and `09` each contain an explicit mid-branch foundation summary after `6.4`, `7.4`, `8.2`, and `9.4` respectively.
2. Each branch keeps a distinct final review after the advanced block; the mid-branch summary is not the only synthesis node.
3. Branch-entry recap placement in `00-overview.typ` remains intact unless a reviewer documents a rule-level reason to change it.
4. The resolution note records every within-branch reorder / split / renumber caused by summary insertion.

**Why it belongs here**

- Missing branch-foundation summaries are the next whole-branch blocker after no-future leaks and overload.
- The insertion points are best chosen after branch contents have already been reduced to stable tool loads.

---

## Iteration 04 — Foundation-stage advanced leakage

**Primary scope**

- Remove advanced or future-branch content that still appears inside the public foundation (`01-04`) or the foundation gate (`05`).
- Keep Chapter `05` as a gate / routing surface, not a stealth branch lesson.

**Target chapters / files**

- `typst/02-fraction-ratio-foundation/04-ratios-percentages.typ` (`§2.4`) for any residual proportion-formalization leakage not already closed in iteration 01
- `typst/04-number-line-algebra-bridge/02-real-numbers.typ` (`§4.2`) to keep it at bridge-side-window depth rather than full real-number-family teaching
- `typst/05-foundation-gate/01-foundation-check.typ` and `typst/05-foundation-gate/03-review.typ` for premature quadrant terminology
- `typst/05-foundation-gate/02-branch-entry-recaps.typ` only if review finds the gate is still carrying advanced branch-entry burden instead of recap/gating work

**Main risks**

- Boundary cleanup can regress into pure wording edits while leaving the same advanced concepts in place.
- Trimming `§4.2` can accidentally break the intended bridge into chapter `04.3/04.4`.
- Foundation-gate fixes can drift into teaching new branch tools instead of diagnosing readiness.

**Acceptance criteria**

1. Chapters `01-04` no longer teach tools or expressions that depend on later branch-stage machinery.
2. `§4.2` remains a narrow bridge-side window: enough to support the number-line bridge, not a full real-number taxonomy.
3. `§5.1` / `§5.3` do not rely on quadrant terminology unless that terminology is explicitly established earlier in the public foundation.
4. Chapter `05` still functions as a gate: diagnose, recap, and route; no new branch-family formal tools are invented there.

**Why it belongs here**

- These are structural boundary defects, but they are safer to tune after tool order, overload, and branch spine have been stabilized.
- This iteration closes the remaining high-priority public-foundation blockers before the final structural alignment pass.

---

## Iteration 05 — Optional-side-window placement / presentation mismatches + regression

**Primary scope**

- Resolve the remaining structural mismatches between stated role and compiled presentation.
- Run the final whole-book structural regression and either clear the stage or identify the exact `task-100+` extension work.

**Target chapters / files**

- `typst/04-number-line-algebra-bridge/02-real-numbers.typ` and any supporting wrapper/style surface needed to signal `§4.2` as a side window
- `typst/07-geometry-deepening/09-circle-extensions.typ` (`§7.9`)
- `typst/09-data-statistics/05-probability.typ` (`§9.5`) plus any capstone / overview surface needed to make core-vs-side-window status consistent
- `typst/08-function-models/04-rate-change-models.typ` (`§8.4`) plus related overview / capstone framing if review confirms the future-family preview leak is still open after earlier structural work
- Whole-book regression surfaces: `typst/main.typ`, all branch `00-overview.typ`, and the exit-gate evidence set used by `task-017`

**Main risks**

- Cosmetic markers can be added without actually resolving the underlying scope mismatch.
- `§9.5` can remain in a mixed state where overview, capstone, and compiled order disagree about whether it is core.
- `§8.4` may still formalize future-family notation if reviewers treat it only as a wording polish issue.

**Acceptance criteria**

1. `§4.2`, `§7.9`, and `§9.5` render consistently with their chosen structural role; no mixed signal remains between overview, compiled presentation, and capstone treatment.
2. `§8.4` is either pulled back to comparison-level modeling or otherwise made structurally consistent with the book’s “future-family belongs later” rule; no future-family formula teaching remains in the core chapter scope.
3. The review artifact for this iteration contains a whole-book pass/fail table for:
   - topology / spine preservation,
   - no-future-tool usage,
   - max-3-tool compliance,
   - branch-summary health,
   - foundation-boundary discipline,
   - optional-side-window consistency.
4. If any structural blocker remains, the resolution note names the exact blocker and the required `task-100+` continuation pair instead of silently carrying it forward.

**Why it belongs here**

- Placement and presentation mismatches are the lowest-priority structural work in this queue.
- They depend on earlier decisions about what is core, what is optional, and where the branch / foundation boundaries finally land.

---

## Cross-iteration dependencies

| Later iteration | Depends on | Dependency reason |
|---|---|---|
| 02 | 01 | Tool counts and split targets are not reliable while `§2.4`, `§4.2`, and `§4.3` still leak future tools. |
| 03 | 02 | Mid-branch summary insertion points should be chosen after overload-driven split / prune decisions stabilize branch interiors. |
| 04 | 03 | Foundation-boundary review should validate against the final branch spine, not a pre-summary intermediate state. |
| 05 | 04 | Optional / side-window presentation should reflect the stabilized structural decisions from the earlier four iterations. |
| 17 exit gate | 05 | The structure stage may exit only after the whole queue has been regression-checked and all remaining blockers are either closed or escalated to `task-100+`. |

---

## Explicit deferrals to quality stage

These items should be labeled **quality-stage work, not structure-stage work**, unless a specific review proves they are blocking a structural fix in the same touched chapter:

1. **Pure glossary normalization**
   - `GCD`, `LCM`, `SSS`, `SAS`, `ASA`, `AAS`, `SSA`, `HL`, `AA`
   - missing bilingual `#vocab` where the remedy is only “add / normalize local glossary coverage”
   - Reason: `04-structure-baseline-glossary.md` classifies these as terminology-surface defects, and R-05 is gated again in stage 2.

2. **Chapter-local terminology completion in chapters 08 and 09 when no structural split/order change is needed**
   - Examples: adding local `#vocab` to `§8.1`, `§9.2`, `§9.3`, `§9.4`, `§9.5` if the owning chapter is already structurally stable
   - Reason: if ownership is clear and no split/reorder is required, the remaining work is glossary normalization, not structural surgery.

3. **Review-surface polish and spiral-link cleanup**
   - review-card completeness, answer-surface cleanup, non-blocking `#secref(...)` polish, branch-entry worked-example enrichment
   - Reason: these are quality refinements unless a review shows they currently break branch-spine or dependency rules.

---

## Exit expectation after the five iterations

This queue succeeds only if the end of iteration 05 leaves **zero open structural blockers** under:

- R-01 immutable `00-10` spine
- R-02 branch spine with explicit branch-foundation summaries
- R-03 max-3-tool compliance
- R-04 no-future-tool usage
- R-06 public-foundation / foundation-gate boundary discipline

If any blocker remains, the structure exit gate must fail and append `task-100+` review/fix pairs before any quality-stage task begins.
