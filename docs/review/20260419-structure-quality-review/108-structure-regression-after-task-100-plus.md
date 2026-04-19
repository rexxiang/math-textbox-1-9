# Structure Regression Review — after `task-100+`

**Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`  
**Scope:** whole-book structural regression pass after the focused fixes for `§1.6`, `§6.1`, `§7.1`, `§7.7`  
**Audit mode:** review only

## Reviewed sources

- `typst/main.typ`
- `typst/01-counting/00-overview.typ`, `06-operation-laws.typ`, `07-multiplication-laws.typ`, `08-review.typ`
- `typst/05-foundation-gate/00-overview.typ`, `01-foundation-check.typ`, `02-branch-entry-recaps.typ`, `03-review.typ`
- `typst/06-algebra-deepening/00-overview.typ`, `01-algebraic-expressions.typ`, `02-polynomial-multiplication.typ`, `03-power-notation.typ`, `07-foundation-summary.typ`, `11-review.typ`
- `typst/07-geometry-deepening/00-overview.typ`, `01-congruence-proof-entry.typ`, `02-rigidity-criteria-i.typ`, `03-rigidity-criteria-ii.typ`, `07-foundation-summary.typ`, `09-trigonometric-ratios.typ`, `10-angle-measurement-and-slope.typ`, `14-review.typ`
- `typst/08-function-models/00-overview.typ`, `03-foundation-summary.typ`, `06-review.typ`
- `typst/09-data-statistics/00-overview.typ`, `05-foundation-summary.typ`, `08-review.typ`
- `typst/10-capstone/00-overview.typ`, `invention-tree.typ`, `review.typ`, `whats-next.typ`
- `docs/review/20260419-structure-quality-review/18-structure-iteration-05.md`
- `docs/review/20260419-structure-quality-review/100-structure-task-100-6-1-review.md`
- `docs/review/20260419-structure-quality-review/101-structure-task-101-6-1-resolution.md`
- `docs/review/20260419-structure-quality-review/102-structure-task-102-7-1-review.md`
- `docs/review/20260419-structure-quality-review/103-structure-task-103-7-1-resolution.md`
- `docs/review/20260419-structure-quality-review/104-structure-task-104-7-7-review.md`
- `docs/review/20260419-structure-quality-review/105-structure-task-105-7-7-resolution.md`
- `docs/review/20260419-structure-quality-review/106-structure-task-106-1-6-review.md`
- `docs/review/20260419-structure-quality-review/107-structure-task-107-1-6-resolution.md`

## Reviewer conclusion

- **Review status:** PASS
- **Stage judgment:** structure stage **can proceed toward exit gate**
- **Why:** the four iteration-05 blockers were resolved as real surface splits, not label-only reshuffles; the live book now preserves the immutable `00-10` spine, keeps branch summaries in the correct checkpoint positions, and no new whole-book structural blocker was found in this pass.

## Whole-book pass / fail table

| Check | Result | Evidence | Judgment |
|---|---|---|---|
| Topology / chapter route | **PASS** | `typst/main.typ:33-148` keeps `01–04 → 05 → 06–09 → 10` and the updated second-level routes `§1.6/§1.7/§1.8`, `§6.1–§6.10`, `§7.1–§7.14`. | Immutable top-level spine still holds. |
| Branch-summary placement | **PASS** | `typst/main.typ:96-100,111-118,125-128,137-141`; `typst/06-algebra-deepening/07-foundation-summary.typ:3-43`; `typst/07-geometry-deepening/07-foundation-summary.typ:3-28`; `typst/08-function-models/03-foundation-summary.typ:3-28`; `typst/09-data-statistics/05-foundation-summary.typ:3-28`. | Each branch still reads `{branch}基础 → 基础总结 → {branch}进阶 → {branch}总结`. |
| Honest max-3 | **PASS** | `typst/01-counting/06-operation-laws.typ:3-61`; `typst/01-counting/07-multiplication-laws.typ:3-65`; `typst/06-algebra-deepening/01-algebraic-expressions.typ:41-86`; `02-polynomial-multiplication.typ:37-92`; `03-power-notation.typ:39-118`; `typst/07-geometry-deepening/01-congruence-proof-entry.typ:49-94`; `02-rigidity-criteria-i.typ:47-87`; `03-rigidity-criteria-ii.typ:47-81`; `09-trigonometric-ratios.typ:46-88`; `10-angle-measurement-and-slope.typ:47-100`. | The previously overloaded surfaces are now split into chapter-sized concept families rather than umbrella packages. |
| Same-or-earlier-tool chronology | **PASS** | `typst/06-algebra-deepening/01-algebraic-expressions.typ:21-86` no longer pre-uses exponent notation; `typst/06-algebra-deepening/02-polynomial-multiplication.typ:48-53` explicitly defers general幂 rules to `§6.3`; `typst/06-algebra-deepening/03-power-notation.typ:21-118` builds from prior `§6.2`; `typst/07-geometry-deepening/10-angle-measurement-and-slope.typ:10-72` uses `#secref("7.9")` as prior tool rather than inventing trig again. | No reopened same-chapter chronology break found in the former hotspot surfaces. |
| Foundation boundary discipline | **PASS** | `typst/01-counting/06-operation-laws.typ:7-61`; `typst/01-counting/07-multiplication-laws.typ:7-65`; `typst/05-foundation-gate/00-overview.typ:5-30`; `01-foundation-check.typ:17-77`; `02-branch-entry-recaps.typ:15-67`; `03-review.typ:9-41`. | Public foundation stays on arithmetic / readiness / recap language; Chapter 05 still acts as gate, not as disguised branch teaching. |
| Difficulty cliffs / transition adequacy | **PASS** | `typst/06-algebra-deepening/00-overview.typ:19-31`; `07-foundation-summary.typ:31-43`; `typst/07-geometry-deepening/00-overview.typ:24-39`; `07-foundation-summary.typ:24-28`; `typst/05-foundation-gate/02-branch-entry-recaps.typ:29-66`. | The split routes now provide explicit transition steps before later advanced nodes instead of jumping across missing tools. |
| Routing consistency / stale references | **PASS** | `typst/01-counting/08-review.typ:101-103`; `typst/06-algebra-deepening/00-overview.typ:21-30`; `typst/07-geometry-deepening/00-overview.typ:26-39`; `typst/10-capstone/invention-tree.typ:114-117`; `typst/10-capstone/whats-next.typ:21-25`; `typst/smoke/06-algebra-deepening.typ:38-49`; `typst/smoke/07-geometry-deepening.typ:38-52`; `typst/smoke/10-capstone.typ:18-20,52-77`; `make check` passed. | Live route copy, smoke entrypoints, and capstone references are aligned with the new numbering. |

## Re-check of prior blockers: truly closed or only relabeled?

### 1. `§1.6` — **closed**

- The old five-law surface is no longer intact. The live structure is now `§1.6 加法运算律` + `§1.7 乘法运算律与分配` + `§1.8` review (`typst/main.typ:41-43`; `typst/01-counting/06-operation-laws.typ:3-61`; `typst/01-counting/07-multiplication-laws.typ:3-65`; `typst/01-counting/08-review.typ:101-103`).
- This is not a cosmetic rename: later readiness surfaces now differentiate the two prerequisite bundles explicitly (`typst/05-foundation-gate/01-foundation-check.typ:50-54,179-180`; `typst/05-foundation-gate/02-branch-entry-recaps.typ:34-39,79-85`; `typst/06-algebra-deepening/00-overview.typ:13-17`).

### 2. `§6.1` — **closed**

- The old overloaded `§6.1` no longer exists as one surface. Chapter 06 now runs `§6.1 整式整理 → §6.2 整式相乘与乘法公式 → §6.3 幂的记号与整式里的指数运算` before `§6.4` onward (`typst/main.typ:89-100`; `typst/06-algebra-deepening/00-overview.typ:19-31`).
- The closure is substantive, not cosmetic:
  - `§6.1` now stays on 认项 / 同类项 / 去括号 (`01-algebraic-expressions.typ:41-86`)
  - `§6.2` isolates 乘开 / 平方差 / 完全平方 (`02-polynomial-multiplication.typ:37-92`)
  - `§6.3` isolates 幂记号 / 同底数幂 / 整块乘方 (`03-power-notation.typ:39-118`)
- The earlier chronology blocker is gone: `§6.1` discovery no longer relies on `$x^2$ / x^3`-style notation before the local blueprint (`01-algebraic-expressions.typ:21-39`).

### 3. `§7.1` — **closed**

- The old “proof entry + five criteria + first application” cluster is now split across three numeric surfaces: `§7.1 全等与证明入口`, `§7.2 刚性判定（一）`, `§7.3 刚性判定（二）` (`typst/main.typ:105-107`; `typst/07-geometry-deepening/00-overview.typ:26-29`).
- This is not label-only:
  - `§7.1` now carries 全等 / 对应 / 证明链 / `SSA`警报 (`01-congruence-proof-entry.typ:49-94`)
  - `§7.2` carries `SSS` / `SAS` / 等腰第一次应用 (`02-rigidity-criteria-i.typ:47-87`)
  - `§7.3` carries `ASA` / `AAS` / `HL` (`03-rigidity-criteria-ii.typ:47-81`)
- Review surfaces summarize the split instead of pretending the criteria are still one unsplit node (`typst/07-geometry-deepening/14-review.typ:10-15`).

### 4. `§7.7` — **closed**

- The old trig/measurement overload is gone. `§7.7` is now the branch foundation summary, while the old teaching load is redistributed into `§7.9 三角比` and `§7.10 角度测量与坡度` (`typst/main.typ:111-118`; `typst/07-geometry-deepening/00-overview.typ:32-39`).
- This is a real split:
  - `§7.9` defines `sin / cos / tan` as the core ratio surface (`09-trigonometric-ratios.typ:46-88`)
  - `§7.10` moves 仰角 / 俯角 / 坡度 / 测量流程 onto a later application surface (`10-angle-measurement-and-slope.typ:47-100`)
- The summary / review route is now honest: `§7.7` is recap-only and `§7.14` reuses the separated measurement chain rather than teaching it for the first time (`07-foundation-summary.typ:3-28`; `14-review.typ:27-40`).

## Remaining blockers

**No blocking structural defect found in this regression pass.**

| Severity | Blocker | Evidence | Follow-up |
|---|---|---|---|
| — | None found | Whole-book route audit + targeted hotspot re-check + `make check` all passed. | No new focused structural split/review task is required before exit-gate review. |

## Verification notes

- `make check` passed in the review worktree.
- Numeric second-level numbering remains clean: no `§X.YA` / `<sec-X-YA>` pattern was found.
- No `#vocab[...]` surface was found in the audited summary / review files, which is consistent with “summary/review may summarize and reuse only”.

## Exit judgment

**Structure stage can proceed toward exit gate.**  
The prior `§1.6`, `§6.1`, `§7.1`, and `§7.7` blockers now read as genuinely split structural closures, and this pass did not find a new whole-book blocker that would justify another focused structural task before the exit-gate review.
