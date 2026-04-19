# Structure Baseline — Glossary and Abbreviation Coverage

**Plan task:** `task-004`  
**Plan source:** `docs/plan/20260419-structure-quality-review/plan.yaml`  
**Worktree re-review:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`  
**Rule anchor:** `R-05 — Glossary Abbreviation Rule` in `docs/review/20260419-structure-quality-review/01-rule-ledger.md`

---

## Baseline Summary

- Whole-book knowledge-point coverage remains **28 / 46 files with local `#vocab`** and **18 / 46 without local `#vocab`**.
- All abbreviation gaps already identified in `research_findings_tools-glossary.yaml` are still present in the current worktree state.
- Required normalization format is:

```text
Chinese term + English full name + abbreviation
```

- `typst/00-gateway/symbols.typ` is still a notation lookup surface, not a replacement for chapter-local terminology coverage.

---

## Missing Abbreviation Entries

All entries below are still open after direct repo re-review.

| Chinese term | English full name required | Abbreviation | Current defect | Current evidence |
|---|---|---|---|---|
| 最大公因数 | greatest common divisor | GCD | abbreviation present, English full name missing | `typst/02-fraction-ratio-foundation/01-factors-multiples.typ:5,44-46`; repeated in `typst/02-fraction-ratio-foundation/06-review.typ:14` |
| 最小公倍数 | least common multiple | LCM | abbreviation present, English full name missing | `typst/02-fraction-ratio-foundation/01-factors-multiples.typ:5,44-46`; repeated in `typst/02-fraction-ratio-foundation/06-review.typ:15` |
| 三边分别相等 | side-side-side | SSS | abbreviation used, no compliant glossary entry | `typst/07-geometry-deepening/01-congruent-triangles.typ:67`; reused in `typst/07-geometry-deepening/02-similar-triangles.typ:52` |
| 两边和夹角分别相等 | side-angle-side | SAS | abbreviation used, no compliant glossary entry | `typst/07-geometry-deepening/01-congruent-triangles.typ:68`; reused in `typst/07-geometry-deepening/02-similar-triangles.typ:51` |
| 两角和夹边分别相等 | angle-side-angle | ASA | abbreviation used, no compliant glossary entry | `typst/07-geometry-deepening/01-congruent-triangles.typ:69` |
| 两角和其中一角的对边分别相等 | angle-angle-side | AAS | abbreviation used, no compliant glossary entry | `typst/07-geometry-deepening/01-congruent-triangles.typ:70` |
| 两边和一个非夹角相等 | side-side-angle | SSA | abbreviation used, no compliant glossary entry | `typst/07-geometry-deepening/01-congruent-triangles.typ:75,126` |
| 直角三角形斜边和一条直角边分别相等 | hypotenuse-leg | HL | abbreviation used, no compliant glossary entry | `typst/07-geometry-deepening/01-congruent-triangles.typ:71`; reused in `typst/07-geometry-deepening/04-circles.typ:85` |
| 两组角分别相等 | angle-angle | AA | abbreviation used, no compliant glossary entry | `typst/07-geometry-deepening/02-similar-triangles.typ:50,69,173` |

**Rule to enforce on every row above:** the compliant glossary form is **Chinese term + English full name + abbreviation**, stored in chapter-local `#vocab` before later abbreviation-only reuse.

---

## Missing Local `#vocab` Coverage by Chapter

Knowledge-point files with no local `#vocab` after current repo scan:

| Chapter | Coverage | Missing files |
|---|---|---|
| 01-counting | `4 / 6` | `05-mixed-operations.typ`, `06-operation-laws.typ` |
| 04-number-line-algebra-bridge | `1 / 4` | `02-real-numbers.typ`, `03-variables-and-expressions.typ`, `04-equation-intuition.typ` |
| 06-algebra-deepening | `6 / 7` | `01-algebraic-expressions.typ` |
| 07-geometry-deepening | `5 / 9` | `02-similar-triangles.typ`, `03-quadrilaterals.typ`, `04-circles.typ`, `06-trigonometric-measurement.typ` |
| 08-function-models | `1 / 4` | `01-linear-functions.typ`, `02-inverse-proportion.typ`, `03-quadratic-functions.typ` |
| 09-data-statistics | `1 / 6` | `01-data-collection.typ`, `02-central-tendency.typ`, `03-variability.typ`, `04-frequency-distribution.typ`, `05-probability.typ` |

Chapters already fully covered on this criterion: `02-fraction-ratio-foundation` (`5 / 5`), `03-geometry-foundation` (`5 / 5`).

### High-priority coverage gaps called out by research and re-check

- **Chapter 04**: `02-real-numbers.typ`, `03-variables-and-expressions.typ`, `04-equation-intuition.typ`
- **Chapter 08**: `01-linear-functions.typ`, `02-inverse-proportion.typ`, `03-quadratic-functions.typ`
- **Chapter 09**: `01-data-collection.typ`, `02-central-tendency.typ`, `03-variability.typ`, `04-frequency-distribution.typ`, `05-probability.typ`

These remain the most visible missing-local-glossary clusters.

---

## Action Items

1. Add or normalize chapter-local `#vocab` in all 18 missing knowledge-point files before glossary work is considered complete.
2. Normalize every abbreviation-bearing entry to the required three-part format: **Chinese term + English full name + abbreviation**.
3. Define geometry congruence / similarity abbreviations once in their owning local glossary surface (`07-geometry-deepening/01-congruent-triangles.typ` and `07-geometry-deepening/02-similar-triangles.typ`) before later abbreviation-only reuse.
4. Expand `GCD` and `LCM` entries in `02-fraction-ratio-foundation/01-factors-multiples.typ` from abbreviation-only form to full bilingual-compliant form.
5. Do not treat `00-gateway/symbols.typ` as a substitute for local `#vocab`; keep terminology ownership in the chapter that introduces the term.
6. When later structure tasks split or reorder chapters, carry glossary ownership forward explicitly instead of leaving abbreviations or named terms orphaned.

---

## Acceptance Criteria for Glossary Normalization

Glossary normalization passes only when all of the following are true:

1. Every abbreviation gap listed in the baseline table above has a compliant local glossary entry.
2. Every compliant abbreviation entry uses the exact three-part format: **Chinese term + English full name + abbreviation**.
3. Every knowledge-point chapter that introduces named terms has a local `#vocab` block.
4. Later chapters, review files, and examples may reuse an abbreviation only after that abbreviation already has a compliant glossary definition in the same or an earlier chapter.
5. `00-gateway/symbols.typ` remains supplemental only; glossary compliance is judged against chapter-local terminology coverage, not against the gateway symbol table.

---

## Terminology Defects vs Structure Defects

### Terminology / glossary defects

These belong in glossary normalization work:

- missing local `#vocab` in a knowledge-point file that introduces named terms
- abbreviation used without a compliant three-part glossary entry
- glossary entry that has Chinese + abbreviation only, or English + abbreviation only
- inconsistent bilingual naming depth for chapter-owned terms

### Pure structural defects

These belong in structure-fix work, not glossary normalization:

- chapter exceeds the max-3-tool rule
- forward use of a tool before the blueprint phase or before an earlier chapter invents it
- missing branch-foundation summaries, boundary leaks, or misplaced advanced content
- chapter split / reorder decisions needed to satisfy spine or dependency rules

### Boundary rule for later tasks

If a defect can be fixed **only by adding or normalizing terminology surfaces**, classify it as a glossary defect.  
If a defect requires **reordering, splitting, pruning, or dependency repair of chapter structure**, classify it as a structural defect.  
If both are present in the same chapter, stage the structural repair separately from the glossary normalization so later tasks can land independently.
