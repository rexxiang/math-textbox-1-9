# Structure Task 103 — `§7.1` Split Resolution

**Task:** `task-103`  
**Reviewed artifacts:**
- `docs/review/20260419-structure-quality-review/102-structure-task-102-7-1-review.md`
- `docs/review/20260419-structure-quality-review/18-structure-iteration-05.md`  
**Linked combined pass:** chapter-07 renumbering also closed `task-105` in the same edit set  
**Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`

## Chosen strategy

- **Chosen option:** Option A from task-102
- **Decision:** split the old overloaded `§7.1` proof cluster into three numeric foundation chapters:
  - `§7.1 全等与证明入口`
  - `§7.2 刚性判定（一）`
  - `§7.3 刚性判定（二）`
- **Why this closes the blocker:** the old surface no longer hides congruence meaning, proof-chain entry, five named criteria, `SSA`, and the first isosceles proof application inside one umbrella label. The proof route now runs “入口 → 边锁形 → 角锁形 / 直角特例”, which is both honest and beginner-smooth.

## Honest concept counts after the split

| Chapter | Learner-visible concept families kept on the surface | Count | Judgment |
|---|---|---:|---|
| `§7.1 全等与证明入口` | 全等的意义与对应关系 / 证明链入口 / `SSA` 不是工具 | 3 | compliant |
| `§7.2 刚性判定（一）` | `SSS` / `SAS` / 等腰三角形的第一次全等应用 | 3 | compliant |
| `§7.3 刚性判定（二）` | `ASA` / `AAS` / `HL` | 3 | compliant |

## Old -> new numbering / reroute table

| Surface | Before | After |
|---|---|---|
| `typst/07-geometry-deepening/01-congruence-proof-entry.typ` | `01-congruent-triangles.typ`, old overloaded `§7.1 全等三角形` | `§7.1 全等与证明入口` |
| `typst/07-geometry-deepening/02-rigidity-criteria-i.typ` *(new)* | — | `§7.2 刚性判定（一）` |
| `typst/07-geometry-deepening/03-rigidity-criteria-ii.typ` *(new)* | — | `§7.3 刚性判定（二）` |
| `typst/07-geometry-deepening/04-similar-triangles.typ` | `02-similar-triangles.typ`, old `§7.2` | `§7.4` |
| `typst/07-geometry-deepening/05-quadrilaterals.typ` | `03-quadrilaterals.typ`, old `§7.3` | `§7.5` |
| `typst/07-geometry-deepening/06-circles.typ` | `04-circles.typ`, old `§7.4` | `§7.6` |
| `typst/07-geometry-deepening/07-foundation-summary.typ` | `05-foundation-summary.typ`, old `§7.5` | `§7.7` |
| `typst/07-geometry-deepening/08-pythagorean-theorem.typ` | `06-pythagorean-theorem.typ`, old `§7.6` | `§7.8` |
| `typst/07-geometry-deepening/09-trigonometric-ratios.typ` | `07-trigonometric-measurement.typ`, old `§7.7` | `§7.9` |
| `typst/07-geometry-deepening/10-angle-measurement-and-slope.typ` *(new)* | — | `§7.10` |
| `typst/07-geometry-deepening/11-transformations.typ` | `08-transformations.typ`, old `§7.8` | `§7.11` |
| `typst/07-geometry-deepening/12-projections.typ` | `09-projections.typ`, old `§7.9` | `§7.12` |
| `typst/07-geometry-deepening/13-circle-extensions.typ` | `10-circle-extensions.typ`, old `§7.10` | `§7.13` |
| `typst/07-geometry-deepening/14-review.typ` | `11-review.typ` end review surface | `14-review.typ` end review surface |

## Routing surfaces updated

- `typst/main.typ`
- `typst/07-geometry-deepening/00-overview.typ`
- `typst/07-geometry-deepening/01-congruence-proof-entry.typ`
- `typst/07-geometry-deepening/02-rigidity-criteria-i.typ`
- `typst/07-geometry-deepening/03-rigidity-criteria-ii.typ`
- `typst/07-geometry-deepening/04-similar-triangles.typ`
- `typst/07-geometry-deepening/05-quadrilaterals.typ`
- `typst/07-geometry-deepening/06-circles.typ`
- `typst/07-geometry-deepening/07-foundation-summary.typ`
- `typst/07-geometry-deepening/08-pythagorean-theorem.typ`
- `typst/07-geometry-deepening/14-review.typ`
- `typst/smoke/07-geometry-deepening.typ`
- `typst/smoke/10-capstone.typ`
- `typst/10-capstone/00-overview.typ`
- `typst/10-capstone/invention-tree.typ`
- `typst/10-capstone/review.typ`
- `typst/10-capstone/whats-next.typ`

## Acceptance-criteria check

| AC | Result | Note |
|---|---|---|
| No umbrella counting inside the old `§7.1` cluster | PASS | `SSS / SAS / ASA / AAS / HL / SSA / 等腰应用` are no longer hidden on one surface |
| Every resulting proof surface is at `<= 3` honest learner-visible concepts | PASS | `§7.1 / §7.2 / §7.3` each carry exactly 3 |
| Proof-entry integrity preserved | PASS | meaning, correspondence, and proof-chain entry stay at the front in new `§7.1` |
| Criterion honesty preserved | PASS | five criteria are named individually across `§7.2 / §7.3` |
| `SSA` remains visible as an anti-tool | PASS | new `§7.1` keeps it explicit |
| First isosceles proof application remains counted honestly | PASS | new `§7.2` counts it as one full surface load |
| Numeric routing updated consistently | PASS | Chapter 07 now uses `§7.1` through `§7.13` with no letter suffixes |
| Summary / review surfaces do not fake compliance | PASS | `§7.7` and `14-review` only recap the split structure |

## Verification

- `make check`
