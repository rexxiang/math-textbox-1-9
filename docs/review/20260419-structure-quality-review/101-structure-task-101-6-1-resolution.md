# Structure Task 101 — `§6.1` Split Resolution

**Task:** `task-101`  
**Reviewed artifact:** `docs/review/20260419-structure-quality-review/100-structure-task-100-6-1-review.md`  
**Supporting regression artifact:** `docs/review/20260419-structure-quality-review/18-structure-iteration-05.md`  
**Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`

## Chosen split strategy

- **Chosen option:** Option A
- **Decision:** split the old overloaded `§6.1` into three honest Chapter-06 foundation chapters:
  - `§6.1 整式整理`
  - `§6.2 整式相乘与乘法公式`
  - `§6.3 幂的记号与整式里的指数运算`
- **Why this closes both blockers:** the new first chapter now stays on `§4.4 / §4.5`-level continuation work（认项、合并、去括号）, while multiplication/formula work and exponent work each move to their own later surfaces instead of hiding under one umbrella “整式运算” label.

## Honest concept counts after the split

| Chapter | Learner-visible concept families kept on the surface | Count | Judgment |
|---|---|---:|---|
| `§6.1 整式整理` | 整式与项 / 同类项与合并 / 去括号 | 3 | compliant |
| `§6.2 整式相乘与乘法公式` | 整式相乘与展开 / 平方差公式 / 完全平方公式 | 3 | compliant |
| `§6.3 幂的记号与整式里的指数运算` | 幂记号 / 同底数幂接在一起（连乘、连除、零次幂） / 整个块再乘方（幂的乘方、积的乘方） | 3 | compliant |

## Why chronology is now clean

- New `§6.1` discovery and `#tryit` stay on already-ready template work from `§4.4 / §4.5` plus earlier distributive intuition from `§1.7`; they no longer pre-use exponent notation or formula blocks.
- New `§6.2` introduces “平方”短写 inside its own blueprint before using it in formula statements, so there is no local pre-use before blueprint.
- New `§6.3` crisis and `#tryit` now stay on fully written repeated multiplication until the blueprint invents general exponent shorthand; the live chapter now surfaces three honest families—幂记号 / 同底数幂接在一起 / 整个块再乘方—instead of hiding five reader-visible rules under a loose umbrella label.

## Chapter-06 reroute / renumber table

| Surface | Before | After |
|---|---|---|
| `typst/06-algebra-deepening/01-algebraic-expressions.typ` | `§6.1` overloaded “整式运算” surface | `§6.1 整式整理` |
| `typst/06-algebra-deepening/02-polynomial-multiplication.typ` *(new)* | — | `§6.2 整式相乘与乘法公式` |
| `typst/06-algebra-deepening/03-power-notation.typ` *(new)* | — | `§6.3 幂的记号与整式里的指数运算` |
| `typst/06-algebra-deepening/04-factorization.typ` | `02-factorization.typ`, heading `§6.2` | `04-factorization.typ`, heading `§6.4` |
| `typst/06-algebra-deepening/05-rational-expressions.typ` | `03-rational-expressions.typ`, heading `§6.3` | `05-rational-expressions.typ`, heading `§6.5` |
| `typst/06-algebra-deepening/06-linear-equations.typ` | `04-linear-equations.typ`, heading `§6.4` | `06-linear-equations.typ`, heading `§6.6` |
| `typst/06-algebra-deepening/07-foundation-summary.typ` | `05-foundation-summary.typ`, heading `§6.5` | `07-foundation-summary.typ`, heading `§6.7` |
| `typst/06-algebra-deepening/08-systems-of-equations.typ` | `06-systems-of-equations.typ`, heading `§6.6` | `08-systems-of-equations.typ`, heading `§6.8` |
| `typst/06-algebra-deepening/09-quadratic-equations.typ` | `07-quadratic-equations.typ`, heading `§6.7` | `09-quadratic-equations.typ`, heading `§6.9` |
| `typst/06-algebra-deepening/10-inequalities.typ` | `08-inequalities.typ`, heading `§6.8` | `10-inequalities.typ`, heading `§6.10` |
| `typst/06-algebra-deepening/11-review.typ` | `09-review.typ` after `§6.8` | `11-review.typ` after `§6.10` |

## Old `§6.1` reference reroute table

| Surface | Before | After |
|---|---|---|
| `typst/06-algebra-deepening/00-overview.typ` | `#secref("6.1")` stood for “整式分类、乘法公式与幂的基本运算” all at once | split into `#secref("6.1")`, `#secref("6.2")`, `#secref("6.3")` with separate promises |
| `typst/06-algebra-deepening/04-factorization.typ` | crisis pointed to `#secref("6.1")` for expansion | rerouted to `#secref("6.2")`, the actual expansion/formula chapter |
| `typst/06-algebra-deepening/07-foundation-summary.typ` | `#secref("6.1")` was one half of a compressed “表达与整理” pair | summary now treats `#secref("6.1")`, `#secref("6.2")`, `#secref("6.3")` as separate foundation surfaces |
| `typst/06-algebra-deepening/11-review.typ` | `#secref("6.1")` covered all整式运算 content | review card now splits this into separate `#secref("6.1")`, `#secref("6.2")`, `#secref("6.3")` cards |
| `typst/10-capstone/invention-tree.typ` | algebra branch span was `#secref("6.1")` to `#secref("6.8")` | rerouted to `#secref("6.1")` to `#secref("6.10")` |

## All renumber / reroute changes applied

- `typst/main.typ`
  - inserted the two new Chapter-06 foundation surfaces before factorization
  - kept Chapter 06 spine as `基础（6.1–6.6）→ 基础总结（6.7）→ 进阶（6.8–6.10）→ 总结（review）`
- `typst/06-algebra-deepening/00-overview.typ`
  - rewrote the Chapter-06 map to the new 6.1–6.10 sequence
- `typst/06-algebra-deepening/03-power-notation.typ`
  - rewrote crisis and `#tryit` so the chapter does not pre-use general exponent shorthand before its own blueprint
  - regrouped the blueprint around three honest learner-visible families: 幂记号 / 同底数幂接在一起 / 整个块再乘方
- `typst/06-algebra-deepening/04-factorization.typ`
  - rerouted the prerequisite callback from old `§6.1` to new `§6.2`
- `typst/06-algebra-deepening/07-foundation-summary.typ`
  - renumbered summary to `§6.7`
  - rewrote the recap grid so the split foundation surfaces are named separately
  - shifted the “next stage” links to `§6.8 / §6.9 / §6.10`
- `typst/06-algebra-deepening/11-review.typ`
  - expanded the old single “整式运算” card into separate cards for `§6.1 / §6.2 / §6.3`
  - rerouted later cards to the renumbered Chapter-06 surfaces
- `typst/smoke/06-algebra-deepening.typ`
  - inserted the two new Chapter-06 includes so standalone branch smoke matches live order
- `typst/smoke/10-capstone.typ`
  - inserted the two new Chapter-06 includes so full-chain smoke matches live order
- `typst/10-capstone/invention-tree.typ`
  - extended the Chapter-06 range to the new endpoint `§6.10`
- `typst/10-capstone/00-overview.typ`
  - rerouted the algebra checkpoint example from old linear-equation number `§6.4` to new `§6.6`
- `typst/10-capstone/review.typ`
  - rerouted the inequality callback from old `§6.8` to new `§6.10`

## Files intentionally left structurally unchanged

| File / surface | Why unchanged |
|---|---|
| Top-level `00-10` spine | Task requirement and project rule: immutable |

## Acceptance-criteria check

| AC | Result | Note |
|---|---|---|
| Current overloaded `§6.1` is honestly split | PASS | old `§6.1` content is now separated across `§6.1 / §6.2 / §6.3` |
| New first chapter reads as continuation of `§4.4 / §4.5` | PASS | no exponent notation or formula blocks appear in new `§6.1` discovery / `#tryit` |
| Factorization prerequisite points to the correct expansion chapter | PASS | `typst/06-algebra-deepening/04-factorization.typ` now points to `#secref("6.2")` |
| Branch spine remains `{branch}基础 → 基础总结 → {branch}进阶 → {branch}总结` | PASS | Chapter 06 now runs `6.1–6.6 → 6.7 → 6.8–6.10 → review` |
| Routing surfaces updated | PASS | overview, factorization prereq, summary, review, smoke, capstone all rerouted |
| Standard verification command run | PASS | `make check` |

## Verification

- `make check`
