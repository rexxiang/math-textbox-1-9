# Structure Task 105 — `§7.7` Trig / measurement Split Resolution

**Task:** `task-105`  
**Reviewed artifacts:**
- `docs/review/20260419-structure-quality-review/104-structure-task-104-7-7-review.md`
- `docs/review/20260419-structure-quality-review/18-structure-iteration-05.md`  
**Linked combined pass:** chapter-07 renumbering also closed `task-103` in the same edit set  
**Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`

## Chosen strategy

- **Chosen option:** Option A from task-104, executed inside the larger Chapter-07 numeric reroute
- **Decision:** split the old overloaded trig/measurement surface into:
  - `§7.9 三角比`
  - `§7.10 角度测量与坡度`
- **Why no extra third split was used:** in the final `§7.9`, the “相似支撑” part is handled as explicit old-tool justification from already-stable `§7.4`, not as a new learner-visible invention family. The new learner-visible inventions on that surface are exactly `sin / cos / tan`. The downstream measurement family then lives honestly on its own chapter surface.

## Honest concept counts after the split

| Chapter | Learner-visible concept families kept on the surface | Count | Judgment |
|---|---|---:|---|
| `§7.9 三角比` | `sin` / `cos` / `tan` | 3 | compliant |
| `§7.10 角度测量与坡度` | 仰角与俯角 / 坡度 / 场景测量流程 | 3 | compliant |

## Old -> new numbering / reroute table

| Surface | Before | After |
|---|---|---|
| `typst/07-geometry-deepening/09-trigonometric-ratios.typ` | old `07-trigonometric-measurement.typ`, heading `§7.7 三角比与测量` | `§7.9 三角比` |
| `typst/07-geometry-deepening/10-angle-measurement-and-slope.typ` *(new)* | — | `§7.10 角度测量与坡度` |
| `typst/07-geometry-deepening/11-transformations.typ` | `08-transformations.typ`, old `§7.8` | `§7.11` |
| `typst/07-geometry-deepening/12-projections.typ` | `09-projections.typ`, old `§7.9` | `§7.12` |
| `typst/07-geometry-deepening/13-circle-extensions.typ` | `10-circle-extensions.typ`, old `§7.10` | `§7.13` |
| `typst/07-geometry-deepening/14-review.typ` | old `11-review.typ` end review surface | `14-review.typ` end review surface |

## Routing surfaces updated

- `typst/main.typ`
- `typst/07-geometry-deepening/00-overview.typ`
- `typst/07-geometry-deepening/07-foundation-summary.typ`
- `typst/07-geometry-deepening/08-pythagorean-theorem.typ`
- `typst/07-geometry-deepening/09-trigonometric-ratios.typ`
- `typst/07-geometry-deepening/10-angle-measurement-and-slope.typ`
- `typst/07-geometry-deepening/11-transformations.typ`
- `typst/07-geometry-deepening/12-projections.typ`
- `typst/07-geometry-deepening/13-circle-extensions.typ`
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
| Explicit concept ledger provided | PASS | `§7.9` and `§7.10` are counted separately above |
| No umbrella counting of `sin / cos / tan` | PASS | each ratio is treated as its own learner-visible tool |
| Definition surface no longer hides measurement family | PASS | `§7.9` keeps only ratio invention and direct right-triangle use |
| Application surface does not re-invent trig definitions | PASS | `§7.10` uses `#secref("7.9")` as already-stable prior tool |
| `仰角 / 俯角` and `坡度` counting rationale stated | PASS | paired angle-scene family + slope + workflow are counted explicitly |
| All routing surfaces updated in one pass | PASS | overview, summary, review, smoke, capstone surfaces were rerouted together |
| Summary / review surfaces do not hide new teaching | PASS | they only recap the split measurement chain |

## Verification

- `make check`
