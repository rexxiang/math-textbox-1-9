# Structure Iteration 02 — Tool-Overload / Max-3 Re-Review

**Task:** `task-009`  
**Paired resolution task:** `task-010`  
**Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`

## Anchors used

- `docs/review/20260419-structure-quality-review/01-rule-ledger.md`
- `docs/review/20260419-structure-quality-review/03-structure-baseline-tool-order.md`
- `docs/review/20260419-structure-quality-review/06-structure-remediation-queue.md`

## Repo-state note for this iteration

- This re-review is against the current repo state **after iteration 01**.
- The only chapter-source edits in iteration 01 were `§2.4`, `§4.2`, and `§4.3`.
- For iteration-02 scope, that means:
  - `§2.4` must be re-counted directly in its updated form;
  - the rest of the overload map is materially the same as the baseline unless a current file read proves otherwise;
  - `§4.2` and `§4.3` are no longer the overload focus of this iteration.

## Reviewer conclusion

- **Review status:** fail
- **Open blocker type:** R-03 max-3-tool noncompliance remains open in the worst direct overloads, throughout the confirmed over-cap follow-up set, and in the hidden-overload watchlist.
- **Task-010 constraint:** fixes must stay inside the existing chapter tree and **must not make any top-level `00-10` spine change**.

## Findings

### F01 — critical — `§3.1` is still the worst direct overload and must be structurally split

- **Rule hit:** R-03
- **Evidence:**
  - `typst/03-geometry-foundation/01-basic-shapes.typ:6` declares **11** explicit tools in one file.
  - `typst/03-geometry-foundation/01-basic-shapes.typ:15-60` mixes basic shape recognition, triangle/four-sided shape subtyping, circle radius/diameter language, and point-line-plane primitives in one discovery chain.
  - `typst/03-geometry-foundation/01-basic-shapes.typ:72-105` adds perimeter formulas and point-line-plane facts in the same blueprint.
- **Judgment:** this is not a wording problem. The file is carrying multiple tool families and must be **structurally split**, not cosmetically trimmed.

### F02 — critical — `§3.3` still bundles too many angle families and must be structurally split

- **Rule hit:** R-03
- **Evidence:**
  - `typst/03-geometry-foundation/03-angles.typ:6` declares **8** explicit tools.
  - `typst/03-geometry-foundation/03-angles.typ:60-139` combines angle notation, degree/minute reading, angle classification, complementary/supplementary relations, and vertical-angle reasoning in one blueprint block.
- **Judgment:** this chapter still exceeds the max-3 ceiling by too much for a pure trim. It must be **structurally split** into smaller tool units.

### F03 — high — `§2.1` still overloads foundational number tools and must be structurally split

- **Rule hit:** R-03
- **Evidence:**
  - `typst/02-fraction-ratio-foundation/01-factors-multiples.typ:5` declares **6** explicit tools.
  - `typst/02-fraction-ratio-foundation/01-factors-multiples.typ:17-27` already mixes factor/multiple with prime/composite in discovery.
  - `typst/02-fraction-ratio-foundation/01-factors-multiples.typ:36-47` then adds divisibility cues plus `GCD` and `LCM`.
- **Judgment:** the overload is structural. The separate abbreviation cleanup for `GCD` / `LCM` is quality-stage work, but the chapter itself still must be **structurally split**.

### F04 — high — `§7.8` still collapses projection basics and three-view conventions into one over-cap file

- **Rule hit:** R-03
- **Evidence:**
  - `typst/07-geometry-deepening/08-projections.typ:5` declares **6** explicit tools.
  - `typst/07-geometry-deepening/08-projections.typ:49-104` combines orthographic projection, three named views, alignment rules, common-solid readback, visible/hidden lines, and “three views are not enough” caveats in one blueprint.
- **Judgment:** this remains a **structural split** candidate, not a glossary pass.

### F05 — high — the confirmed over-cap follow-up set remains open after iteration 01

- **Rule hit:** R-03
- **Current direct-count evidence:** the following chapters are still explicitly over cap in the current repo state:

| Chapter | File evidence | Current explicit count | Iteration-02 judgment |
|---|---|---:|---|
| `§1.3` | `typst/01-counting/03-addition-subtraction.typ:5` | 4 | narrow/prune in place |
| `§2.2` | `typst/02-fraction-ratio-foundation/02-fractions.typ:5` | 5 | narrow/prune in place |
| `§2.3` | `typst/02-fraction-ratio-foundation/03-decimals.typ:5` | 4 | narrow/prune in place |
| `§2.4` | `typst/02-fraction-ratio-foundation/04-ratios-percentages.typ:5` | 4 | narrow/prune in place; iteration-01 leak fix did **not** close overload |
| `§2.5` | `typst/02-fraction-ratio-foundation/05-conversions-and-comparisons.typ:5` | 4 | narrow/prune in place |
| `§3.2` | `typst/03-geometry-foundation/02-area-volume.typ:6` | 4 | narrow/prune in place |
| `§3.4` | `typst/03-geometry-foundation/04-parallel-perpendicular.typ:6` | 5 | narrow/prune in place |
| `§3.5` | `typst/03-geometry-foundation/05-coordinate-entry.typ:6` | 5 | narrow/prune in place |
| `§4.1` | `typst/04-number-line-algebra-bridge/01-rational-numbers.typ:64` | 5 | narrow/prune in place |
| `§6.4` | `typst/06-algebra-deepening/04-linear-equations.typ:5` | 4 | narrow/prune in place |
| `§6.5` | `typst/06-algebra-deepening/05-systems-of-equations.typ:5` | 4 | narrow/prune in place |
| `§6.6` | `typst/06-algebra-deepening/06-quadratic-equations.typ:5` | 4 | narrow/prune in place |
| `§7.1` | `typst/07-geometry-deepening/01-congruent-triangles.typ:5` | 5 | narrow/prune, but do **not** hide criteria load |
| `§7.5` | `typst/07-geometry-deepening/05-pythagorean-theorem.typ:5` | 4 | narrow/prune in place |
| `§7.7` | `typst/07-geometry-deepening/07-transformations.typ:5` | 4 | narrow/prune in place |
| `§8.4` | `typst/08-function-models/04-rate-change-models.typ:5` | 5 | narrow/prune in place |
| `§9.6` | `typst/09-data-statistics/06-sampling-estimation.typ:5` | 4 | narrow/prune in place |

- **Judgment:** these are still structural iteration-02 items. They are **not** cleared by the iteration-01 dependency fix.

### F06 — high — the hidden-overload watchlist cannot be waived as “glossary later”

- **Rules hit:** R-03, queue deferral boundary in `06-structure-remediation-queue.md`
- **Evidence and judgment:**

| Chapter | Structural evidence | Current judgment |
|---|---|---|
| `§7.2` | `typst/07-geometry-deepening/02-similar-triangles.typ:37-114` invents 相似三角形 / 相似比 / `AA-SAS-SSS` criteria / perimeter-area scaling / midline measurement flow without a local `#vocab` root. | structural recount required in `task-010`; prune first, split only if still `>3` after honest recount |
| `§7.4` | `typst/07-geometry-deepening/04-circles.typ:43-105` invents 弦 / 弧 / 圆心角 / 圆周角 / 垂径性质 cluster in one file. | not glossary-only; likely structural split unless sharply narrowed |
| `§9.4` | `typst/09-data-statistics/04-frequency-distribution.typ:64-121` invents 组距 / 频数 / 频率 / 频率分布表 / 频率分布直方图 cluster without explicit root registration. | structural recount required; prune first, split if honest count still `>3` |
| `§9.5` | `typst/09-data-statistics/05-probability.typ:62-109` invents 概率 / 事件 / 样本空间 / 对立事件 / 理论概率 / 实验概率 plus fairness readback. | not glossary-only; likely structural split or heavy prune |

- **Judgment:** these four chapters stay in structure-stage scope. They cannot be passed by merely adding glossary labels later.

## Structural-vs-glossary boundary for task-010

### Must be structurally split in iteration 02

- `§2.1`
- `§3.1`
- `§3.3`
- `§7.8`

### May remain single-file only if narrowed/pruned to `<= 3` without hiding tools

- `§1.3`, `§2.2`, `§2.3`, `§2.4`, `§2.5`
- `§3.2`, `§3.4`, `§3.5`
- `§4.1`
- `§6.4`, `§6.5`, `§6.6`
- `§7.1`, `§7.5`, `§7.7`
- `§8.4`
- `§9.6`

### Structural watchlist — not quality-stage deferrals

- `§7.2`, `§7.4`, `§9.4`, `§9.5`
- These must receive an explicit structural recount in `task-010`.
- They may be deferred to quality only **after** the re-review can show that no real `>3` structural overload remains.

### Glossary-only work that should wait for quality stage unless a structural edit forces it

- Pure abbreviation normalization such as `GCD`, `LCM`, `SSS`, `SAS`, `ASA`, `AAS`, `SSA`, `HL`, `AA`
- Adding local root registration to otherwise stable chapters like `§8.1`, `§9.2`, `§9.3` when no split/reorder/prune is needed

## Action items for `task-010`

1. **Execute four mandatory structural splits** inside existing chapter branches:
   - `§2.1`
   - `§3.1`
   - `§3.3`
   - `§7.8`
2. **Reduce the confirmed follow-up set to `<= 3` tools per chapter** by real pruning/reordering, not by moving terms into notes or leaving them blueprint-hidden.
3. **Recount the hidden watchlist explicitly**:
   - if `§7.2`, `§7.4`, `§9.4`, or `§9.5` still coin more than 3 tools after honest surfacing, fix them structurally in the same iteration;
   - if not, record why they can wait for quality-stage glossary cleanup.
4. **Keep `§2.4` in scope**:
   - iteration 01 removed the future-tool leak,
   - but `§2.4` still sits at 4 explicit tools and still fails max-3.
5. **Do not touch the top-level `00-10` spine**:
   - no top-level add/remove/rename/reorder/collapse,
   - all surgery must stay chapter-local or within an existing branch interior.

## Acceptance criteria for iteration-02 fixes (`task-010`)

### AC-01 — mandatory split completion

- **Pass** only if `§2.1`, `§3.1`, `§3.3`, and `§7.8` are materially decomposed so that no resulting knowledge-point chapter invents more than 3 tools.
- **Fail** if the same tool families are merely renamed, moved into sidebars, or kept in one overloaded file.

### AC-02 — confirmed over-cap follow-up compliance

- **Pass** only if every touched chapter in the follow-up set lands at `<= 3` invented tools when counting both explicit `#vocab` entries and blueprint-only coined tools.
- **Fail** if any touched chapter remains at 4+ tools, or if a hidden blueprint cluster is ignored during counting.

### AC-03 — watchlist resolution

- **Pass** only if `§7.2`, `§7.4`, `§9.4`, and `§9.5` each receive an explicit recorded outcome:
  - `no structural overload after recount`, or
  - `narrowed/pruned to <= 3`, or
  - `split because still > 3`.
- **Fail** if any of the four is waved through as “glossary later” without a structural recount.

### AC-04 — structural-vs-quality boundary discipline

- **Pass** if `task-010` spends iteration effort on overload reduction first, and defers pure abbreviation / glossary normalization unless that work is required by a structural edit in the same touched chapter.
- **Fail** if glossary-only cleanup consumes the iteration while direct overload blockers remain open.

### AC-05 — per-chapter evidence trail

- **Pass** only if the resolution note records a per-chapter status table for every chapter touched in iteration 02.
- **Fail** if the result claims compliance without a chapter-by-chapter count judgment.

### AC-06 — spine preservation

- **Pass** if all fixes stay within the existing branch interiors and leave the top-level `00-10` spine unchanged.
- **Fail** on any top-level add / remove / rename / reorder / collapse.

## Iteration-02 exit judgment

Iteration 02 cannot pass yet. The worst direct overloads still require structural split, the confirmed over-cap follow-up set still needs count reduction, and the hidden-overload watchlist still needs explicit structural recount. `task-010` should close these blockers **without any top-level `00-10` spine change**.
