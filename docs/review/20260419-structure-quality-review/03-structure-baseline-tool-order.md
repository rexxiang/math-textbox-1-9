# Structure Baseline — Tool Order & Tool-Count Compliance

**Task:** `task-003`  
**Plan:** `docs/plan/20260419-structure-quality-review/plan.yaml`  
**Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`

---

## Scope and method

- Re-read current repo state directly under `typst/`.
- Used `docs/plan/20260419-structure-quality-review/research_findings_tools-glossary.yaml` as input only; findings below are re-checked against the current files.
- Audited four things together:
  1. tool invention order,
  2. tool reuse order,
  3. intra-chapter pre-explanation leakage,
  4. chapters that exceed the max-3-tool rule.

---

## Baseline tool invention / reuse order

The intended whole-book dependency chain is currently:

1. **01 counting** → number names, place value, four operations.
2. **02 fraction-ratio foundation** → factors / fractions / decimals / ratios / percentages / conversions.
3. **03 geometry foundation** → shapes / area-volume / angles / parallel-perpendicular / coordinates.
4. **04 number-line algebra bridge** → rational number → real number → variable / algebraic expression → equation.
5. **06 algebra deepening** reuses **04.3–04.4** and should not re-invent early algebra tools.
6. **07 geometry deepening** reuses **03.4–03.5**, then should progress **7.1 congruence → 7.2 similarity → 7.4 circle angle/chord tools → 7.5 Pythagorean → 7.6 trigonometric measurement → 7.8 projections**.
7. **08 function models** should reuse **03.5 coordinates**, **04.3 variables**, and **02.4 ratio / percentage intuition**; **8.1** should be the root definition chapter for **8.2–8.4**.
8. **09 data statistics** should introduce central-tendency / variability / distribution / probability terms locally before later review or application chapters reuse them.

### Current order problems

- **Cross-chapter semantic forward leak:** `§2.4` already uses algebra-letter placeholders and equation solving (`a,b,c,d,k,S,x`) before `§4.3` formally introduces 字母表示数 / 代数式 and before `§4.4` formalizes 方程. Evidence: `typst/02-fraction-ratio-foundation/04-ratios-percentages.typ:56-79,128-149`.
- **Intra-chapter future-tool leaks:** `§4.2` and `§4.3` use symbolic tools in discovery before blueprint names them. Evidence: `typst/04-number-line-algebra-bridge/02-real-numbers.typ:24-54,73-105`; `typst/04-number-line-algebra-bridge/03-variables-and-expressions.typ:21-51,62-103`.
- **Inventory-root gaps:** `§8.1`, `§9.2`, `§9.3`, `§9.4`, `§9.5` coin major later-reused tools in blueprint but provide no `#vocab`, so later reuse has no explicit local registration point.

---

## Findings

### F-01 — Confirmed / suspected future-tool leakage

| Severity | Chapter | Finding | Evidence |
|---|---|---|---|
| critical | `§2.4` | Cross-chapter forward use of algebra-letter machinery before chapter 4 formally introduces variables / algebraic expressions. | `typst/02-fraction-ratio-foundation/04-ratios-percentages.typ:56-79` uses `a,b,c,d,k,S`; `:128-149` solves `x` in a proportion. |
| critical | `§4.2` | Discovery uses `sqrt(2)`, `x^2 = 2`, `sqrt(4)`, `sqrt(9)`, `pi` before blueprint defines 算术平方根 / 无理数 / 实数. | `typst/04-number-line-algebra-bridge/02-real-numbers.typ:24-54` vs `:73-105`. |
| critical | `§4.3` | Discovery uses `n`, `6n+3`, `a`, `x`, `l`, `w`, `2(l+w)` before blueprint defines 字母表示数 and 代数式. | `typst/04-number-line-algebra-bridge/03-variables-and-expressions.typ:21-51` vs `:62-103`. |
| low | `§6.2` | Crisis uses factorized-form algebra before the local blueprint, but the file explicitly back-references the earlier tool root in `§6.1`; treat as monitored, not open leakage. | `typst/06-algebra-deepening/02-factorization.typ:7-16` with back-reference mitigation noted in research. |
| medium | `§7.1` | Congruence criteria abbreviations are first introduced in blueprint but have no prior or same-file glossary registration, so later reuse order is opaque. | `typst/07-geometry-deepening/01-congruent-triangles.typ:5,65-75`. |
| medium | `§7.2` | Similarity criteria `AA / SAS / SSS` appear in blueprint with no `#vocab`; tool invention point is implicit rather than registered. | `typst/07-geometry-deepening/02-similar-triangles.typ:37-53`. |

### Cross-chapter forward-reference audit result

- **No numeric forward `#secref(...)` references were found** in knowledge-point chapters during repo scan.
- The forward-order problem is therefore mainly **semantic dependency leakage**, not explicit future section links.

### F-02 — Hidden tool-invention roots that later chapters depend on

These chapters are not necessarily over the 3-tool cap yet, but they currently hide their invention point by defining major tools in blueprint without a `#vocab` root:

| Chapter | Hidden tool root | Evidence |
|---|---|---|
| `§4.2` | 算术平方根 / 无理数 / 实数 | `typst/04-number-line-algebra-bridge/02-real-numbers.typ:73-105` |
| `§4.3` | 字母表示数 / 代数式 | `typst/04-number-line-algebra-bridge/03-variables-and-expressions.typ:62-103` |
| `§7.2` | 相似三角形 / 相似比 / AA-SAS-SSS criteria | `typst/07-geometry-deepening/02-similar-triangles.typ:37-69` |
| `§7.4` | 弦 / 弧 / 圆心角 / 圆周角 / 垂径性质 entry cluster | `typst/07-geometry-deepening/04-circles.typ:43-105` |
| `§7.6` | `sin / cos / tan` and their Chinese names | `typst/07-geometry-deepening/06-trigonometric-measurement.typ:46-98` |
| `§8.1` | 函数 / 正比例函数 / 一次函数 | `typst/08-function-models/01-linear-functions.typ:73-154` |
| `§9.2` | 平均数 / 中位数 / 众数 | `typst/09-data-statistics/02-central-tendency.typ:59-101` |
| `§9.3` | 极差 / 方差 | `typst/09-data-statistics/03-variability.typ:80-117` |
| `§9.4` | 组距 / 频数 / 频率 / 频率分布表 / 频率分布直方图 | `typst/09-data-statistics/04-frequency-distribution.typ:64-121` |
| `§9.5` | 概率 / 事件 / 样本空间 / 对立事件 / 理论概率 / 实验概率 | `typst/09-data-statistics/05-probability.typ:62-109` |

Impact: later remediation tasks cannot reliably verify “same chapter or earlier” usage if the invention root is missing or implicit.

### F-03 — Chapters that currently exceed the max-3-tool rule

The direct scan below counts current `#vocab[...]` entries. This is the minimum confirmed overload set; chapters in **F-02** may be worse once hidden blueprint tools are counted.

| Chapter | File | Current count | Over by | Evidence |
|---|---|---:|---:|---|
| `§1.3` | `typst/01-counting/03-addition-subtraction.typ` | 4 | 1 | `:5` |
| `§2.1` | `typst/02-fraction-ratio-foundation/01-factors-multiples.typ` | 6 | 3 | `:5` |
| `§2.2` | `typst/02-fraction-ratio-foundation/02-fractions.typ` | 5 | 2 | `:5` |
| `§2.3` | `typst/02-fraction-ratio-foundation/03-decimals.typ` | 4 | 1 | `:5` |
| `§2.4` | `typst/02-fraction-ratio-foundation/04-ratios-percentages.typ` | 4 | 1 | `:5` |
| `§2.5` | `typst/02-fraction-ratio-foundation/05-conversions-and-comparisons.typ` | 4 | 1 | `:5` |
| `§3.1` | `typst/03-geometry-foundation/01-basic-shapes.typ` | 11 | 8 | `:6` |
| `§3.2` | `typst/03-geometry-foundation/02-area-volume.typ` | 4 | 1 | `:6` |
| `§3.3` | `typst/03-geometry-foundation/03-angles.typ` | 8 | 5 | `:6` |
| `§3.4` | `typst/03-geometry-foundation/04-parallel-perpendicular.typ` | 5 | 2 | `:6` |
| `§3.5` | `typst/03-geometry-foundation/05-coordinate-entry.typ` | 5 | 2 | `:6` |
| `§4.1` | `typst/04-number-line-algebra-bridge/01-rational-numbers.typ` | 5 | 2 | `:64` |
| `§6.4` | `typst/06-algebra-deepening/04-linear-equations.typ` | 4 | 1 | `:5` |
| `§6.5` | `typst/06-algebra-deepening/05-systems-of-equations.typ` | 4 | 1 | `:5` |
| `§6.6` | `typst/06-algebra-deepening/06-quadratic-equations.typ` | 4 | 1 | `:5` |
| `§7.1` | `typst/07-geometry-deepening/01-congruent-triangles.typ` | 5 | 2 | `:5` |
| `§7.5` | `typst/07-geometry-deepening/05-pythagorean-theorem.typ` | 4 | 1 | `:5` |
| `§7.7` | `typst/07-geometry-deepening/07-transformations.typ` | 4 | 1 | `:5` |
| `§7.8` | `typst/07-geometry-deepening/08-projections.typ` | 6 | 3 | `:5` |
| `§8.4` | `typst/08-function-models/04-rate-change-models.typ` | 5 | 2 | `:5` |
| `§9.6` | `typst/09-data-statistics/06-sampling-estimation.typ` | 4 | 1 | `:5` |

### Important note on hidden overloads

The following chapters are likely also non-compliant once blueprint-defined tools are counted, even though they currently have no `#vocab`: `§7.2`, `§7.4`, `§9.4`, `§9.5`.

---

## Compact hotspot table

| Hotspot | Why it is hot | Evidence | Severity |
|---|---|---|---|
| `§2.1` | 6-tool vocab and abbreviation debt (`GCD/LCM`) in one section. | `typst/02-fraction-ratio-foundation/01-factors-multiples.typ:5` | high |
| `§2.4` | Already over cap and also pulls algebra-letter / equation tools forward before chapter 4. | `typst/02-fraction-ratio-foundation/04-ratios-percentages.typ:56-79,128-149` | critical |
| `§3.1` | 11-tool inventory is the worst direct overload in the book. | `typst/03-geometry-foundation/01-basic-shapes.typ:6` | critical |
| `§3.3` | 8-tool inventory mixes angle types and angle relations in one chapter. | `typst/03-geometry-foundation/03-angles.typ:6` | critical |
| `§4.2` | Same-chapter future-tool leak plus missing local inventory root. | `typst/04-number-line-algebra-bridge/02-real-numbers.typ:24-54,73-105` | critical |
| `§4.3` | Same-chapter future-tool leak plus missing local inventory root. | `typst/04-number-line-algebra-bridge/03-variables-and-expressions.typ:21-51,62-103` | critical |
| `§7.1` | 5-tool vocab plus 6 congruence criteria introduced in blueprint. | `typst/07-geometry-deepening/01-congruent-triangles.typ:5,65-75` | critical |
| `§7.2` | Similarity criteria are invented without an explicit inventory root. | `typst/07-geometry-deepening/02-similar-triangles.typ:37-69` | high |
| `§7.8` | 6-tool vocab in a single chapter. | `typst/07-geometry-deepening/08-projections.typ:5` | high |
| `§8.1` | Function-family root chapter defines later-reused tools but has no `#vocab`. | `typst/08-function-models/01-linear-functions.typ:73-154` | high |
| `§9.4` | Frequency-distribution cluster appears to exceed 3 tools even before review / exercise reuse. | `typst/09-data-statistics/04-frequency-distribution.typ:64-121` | high |
| `§9.5` | Probability cluster clearly exceeds 3 tools and has no explicit inventory root. | `typst/09-data-statistics/05-probability.typ:62-109` | high |

---

## Action items (priority order)

### P0 — Must fix before structure stage can pass

1. **Remove all confirmed future-tool leaks**
   - Rewrite `§2.4` to avoid abstract algebra placeholders / solved equations before `§4.3–§4.4`, or defer those patterns until chapter 4.
   - Rewrite `§4.2` discovery so root notation and `x^2 = a` are either plain-language placeholders or postponed to blueprint.
   - Rewrite `§4.3` discovery so variable letters are not formalized before blueprint.

2. **Split the worst direct overloads**
   - `§3.1`, `§3.3`, `§2.1`, `§7.8`.

3. **Make tool roots explicit for later reuse**
   - Add explicit local tool inventory roots to `§4.2`, `§4.3`, `§7.2`, `§8.1`, `§9.2`, `§9.3`, `§9.4`, `§9.5`.

### P1 — Should be fixed in structure iteration 04

1. Reduce all currently confirmed 4- or 5-tool chapters to `<= 3`.
2. Normalize `§7.1–§7.4` so congruence / similarity / circle theorems reuse earlier registered tools instead of inventing hidden shorthand midstream.
3. Normalize `§8.1–§8.4` so `8.1` is the explicit dependency root for later function chapters.

### P2 — Clean-up after structural surgery

1. Re-check all review / mastery sections for reintroduced future-tool wording.
2. Re-run whole-book inventory scan after each structure-fix batch.

---

## Acceptance criteria for later fix tasks

A later fix task passes only if **all** checks below pass.

### AC-01 — Same-or-earlier-tool usage

- In any knowledge-point file, the **first formal appearance** of a new tool must be inside that file’s blueprint, not crisis / discovery / tryit / mastery.
- Any symbol, term, or abbreviation used before local blueprint must already be defined in an earlier chapter.
- If a later chapter reuses a tool, the reviewer must be able to point to either:
  - the same file’s blueprint, or
  - an earlier chapter’s explicit tool root.
- Pass condition for **same-or-earlier-tool usage**: every flagged first-use token in the touched scope resolves to a same-file blueprint introduction or an earlier chapter root, with no unresolved forward dependency.

### AC-02 — No semantic forward leakage

- Chapters `01–03` may not rely on variable / equation machinery that is first formalized in `§4.3–§4.4`.
- Chapters may use backward `#secref(...)`, but not future ones.
- Pass condition: whole-book scan finds **zero** forward `#secref(...)` and **zero** manually confirmed semantic forward uses like the current `§2.4` case.

### AC-03 — Max-3-tool compliance

- Every knowledge-point chapter must end with **at most 3 invented tools**.
- Count both explicit `#vocab` items and blueprint-only coined tools.
- If a chapter still needs more than 3 tools, it must be structurally split instead of wording-expanded.

### AC-04 — Registered invention roots

- Every chapter that coins a named tool family must expose an explicit local inventory root (`#vocab` or an equivalent approved structure).
- Hidden blueprint-only tool clusters do **not** pass review.

### AC-05 — Abbreviation safety

- Any abbreviation used in a chapter must have a same-or-earlier glossary root with:
  - Chinese term,
  - English full name,
  - abbreviation.
- Abbreviation-only insertion in examples, blueprint, review, or mastery is a fail.

### AC-06 — Hotspot exit checks

The later structure-fix tasks for this area should be marked done only when:

- `§2.4`, `§4.2`, `§4.3` have no future-tool leakage.
- `§3.1`, `§3.3`, `§2.1`, `§7.8` are at or under the 3-tool cap.
- `§7.1`, `§7.2`, `§8.1`, `§9.2–§9.5` have explicit registered invention roots.
- The full over-limit list in **F-03** has either been fixed or narrowed to zero.

---

## Baseline judgment

- **Review status:** fail
- **Why:** the repo currently contains both **confirmed future-tool leaks** and **many chapters above the max-3-tool limit**, with additional hidden-inventory chapters that block reliable same-or-earlier-tool verification.
