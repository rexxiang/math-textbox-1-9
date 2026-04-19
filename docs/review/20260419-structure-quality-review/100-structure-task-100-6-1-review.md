# Structure Extension Review — `§6.1` blocker audit

**Task:** `task-100`  
**Paired fix task:** `task-101`  
**Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`

## Reviewer conclusion

- **Review status:** fail
- **Blocker confirmed:** current `§6.1` is still structurally overloaded and still pre-uses later-local tools, exactly in the area reopened by the whole-book regression (`docs/review/20260419-structure-quality-review/18-structure-iteration-05.md:27-37`).
- **Recommendation:** split `§6.1` honestly instead of trying to save it with umbrella wording. The cleanest durable fix is a **three-chapter foundation split** inside Chapter 06, with explicit rerouting of overview / summary / review / smoke / capstone references.

## Anchors used

- `AGENTS.md:7-13`
- `docs/review/20260419-structure-quality-review/18-structure-iteration-05.md:27-37`
- `typst/main.typ:86-97`
- `typst/06-algebra-deepening/00-overview.typ:19-29`
- `typst/06-algebra-deepening/01-algebraic-expressions.typ:3-223`
- `typst/06-algebra-deepening/02-factorization.typ:7-17`
- `typst/06-algebra-deepening/05-foundation-summary.typ:3-28`
- `typst/06-algebra-deepening/09-review.typ:5-20`
- `typst/smoke/06-algebra-deepening.typ:37-46`
- `typst/smoke/10-capstone.typ:50-59`
- `typst/10-capstone/invention-tree.typ:112-119`

## 1. Honest learner-visible concept inventory inside current `§6.1`

`AGENTS.md:11-12` requires counting **fine-grained learner-visible concepts**, not umbrella packaging. On that standard, current `§6.1` contains far more than 3.

| Learner-visible tool / concept | Evidence | Why it counts separately |
|---|---|---|
| 整式作为“可整体操作的对象” | `typst/06-algebra-deepening/01-algebraic-expressions.typ:37-40` | This is the chapter’s root object definition. |
| 同类项与合并 | `.../01-algebraic-expressions.typ:41-46` | A distinct recognition-and-operation rule. |
| 去括号（尤其减号后变号） | `.../01-algebraic-expressions.typ:43,54-60` | Separate procedural tool with its own pitfall. |
| 单项式乘单项式 | `.../01-algebraic-expressions.typ:64-66` | A new multiplication rule family. |
| 单项式乘多项式（分配） | `.../01-algebraic-expressions.typ:68-70` | Operationally different from monomial × monomial. |
| 多项式乘多项式 | `.../01-algebraic-expressions.typ:72-80` | Another distinct expansion workflow. |
| 平方差公式 | `.../01-algebraic-expressions.typ:82-90` | A named formula learners must remember and choose. |
| 完全平方公式 | `.../01-algebraic-expressions.typ:92-99` | Another named formula with a different pattern. |
| 幂记号（重复相乘的压缩写法） | `.../01-algebraic-expressions.typ:101-104` | A new notation idea, not just an exercise detail. |
| 单项式除以单项式 | `.../01-algebraic-expressions.typ:105-107` | Distinct division rule. |
| 多项式除以单项式 | `.../01-algebraic-expressions.typ:109-111` | Separate division workflow. |
| 同底数幂相乘 | `.../01-algebraic-expressions.typ:119` | Named power law. |
| 幂的乘方 | `.../01-algebraic-expressions.typ:120` | Named power law. |
| 积的乘方 | `.../01-algebraic-expressions.typ:121` | Named power law. |
| 同底数幂相除 | `.../01-algebraic-expressions.typ:122` | Named power law. |
| 零次幂 | `.../01-algebraic-expressions.typ:123` | A separate rule with its own meaning. |

### Judgment

- **Conservative count:** at least **8** even if some multiplication and power subrules are grouped generously.
- **Honest count from the actual file:** **16 learner-visible moves** are currently exposed.
- Therefore `§6.1` is not “a dense 3-tool chapter”; it is a compressed mini-unit.

## 2. Exact places where discovery pre-uses tools only formalized later

| Pre-use surface | Earlier line | Later formalization | Why this is a blocker |
|---|---|---|---|
| Discovery already presents `$3 x^2 - 5 x + 7$` as a usable object | `typst/06-algebra-deepening/01-algebraic-expressions.typ:22` | `...:37-40` first formalizes these objects as *整式*; `...:101-104` later formalizes power notation | The learner is asked to read both polynomial structure and exponent notation before blueprint gives either tool. |
| Discovery already says `$3 x^2$` and `$-7 x^2$` can merge because “字母部分完全相同” | `.../01-algebraic-expressions.typ:24` | `...:41-46` formalizes “把字母部分完全相同的项合并” | This is direct pre-use of the local combine-like-terms rule. |
| Discovery already compresses repeated multiplication into `$x^3$` | `.../01-algebraic-expressions.typ:25` | `...:101-104` introduces 幂 as repeated multiplication; `...:119-123` adds power laws | The chapter uses the notation before inventing it. |
| `#tryit` already asks learners to simplify `$5 a^2 b - 3 a b - (2 a^2 b + a b - 4)$` | `.../01-algebraic-expressions.typ:30-34` | `...:41-46,54-60` formalize combine-like-terms and sign change after parentheses | Not part of discovery, but it intensifies the same chronology problem before blueprint begins. |

### Judgment

The real chronology break is not subtle. `§4.4` only stabilizes letter-as-template algebra (`typst/04-number-line-algebra-bridge/03-variables-and-expressions.typ:55-96`); it does **not** already cover exponent notation, polynomial classes, or like-term merging. Current `§6.1` discovery therefore steps onto tools that are neither earlier nor already-local-blueprinted.

## 3. Viable restructuring options

## Option A — recommended: split into three honest foundation chapters

### Proposed shape

1. **New `§6.1` — 整式整理**
   - 整式 / 项
   - 同类项
   - 去括号与合并
2. **New `§6.2` — 整式相乘与乘法公式**
   - 展开（分配到多项式乘法）
   - 平方差公式
   - 完全平方公式
3. **New `§6.3` — 幂的记号与整式里的指数运算**
   - 幂记号
   - 同底数乘 / 幂的乘方 / 积的乘方
   - 同底数相除 / 零次幂

Then reroute the rest of the branch:

- current `§6.2` → `§6.4`
- current `§6.3` → `§6.5`
- current `§6.4` → `§6.6`
- branch foundation summary moves after the foundation run (current `05-foundation-summary.typ` would become `§6.7` in numbering, while still serving as the branch summary checkpoint)
- current advanced run shifts accordingly
- chapter review shifts accordingly

### Trade-offs

**Pros**
- Closes both blockers honestly: max-3 and pre-use chronology.
- Keeps each chapter promise simple for beginners.
- Makes later references cleaner: factorization can point specifically to the expansion/formula chapter instead of one overloaded umbrella section.

**Cons**
- Largest reroute cost: numbering changes ripple through overview, summary, review, smoke, capstone, and later `#secref(...)` links.
- Task-101 must update more files in one patch.

## Option B — viable but less durable: split into two chapters and explicitly defer power laws

### Proposed shape

1. **New `§6.1` — 整式整理**
2. **New `§6.2` — 展开与乘法公式**
3. Remove the current power-law block (`typst/06-algebra-deepening/01-algebraic-expressions.typ:101-134`) from this foundation pass and queue it as a later dedicated chapter/task only if downstream dependencies truly require it.

Then shift current `§6.2` onward by one slot and reroute references accordingly.

### Trade-offs

**Pros**
- Smaller immediate patch than Option A.
- Fixes the most obvious learner cliff first: current discovery + combine/expand/formula overload.

**Cons**
- Leaves an unresolved editorial placement problem for power laws.
- More likely to create a follow-up “where do exponents live?” task if the branch later needs them explicitly.
- Easier for a later patch to re-introduce umbrella hiding.

## Recommendation

Choose **Option A**.

Why:

- It is the first option that is honest under `AGENTS.md:11-12`.
- It gives each chapter one clear beginner-facing promise instead of one “do everything with symbols” cliff.
- Prior structural fixes in this repo have already accepted second-level renumbering and rerouting when a chapter split was the honest fix (`docs/review/20260419-structure-quality-review/17-structure-iteration-04-resolution.md:58-97`).

If schedule pressure forces a lighter first patch, Option B is acceptable **only if** the power-law block is truly removed from the overloaded chapter rather than cosmetically renamed.

## 4. Exact downstream files and routing surfaces task-101 would need to update

| Surface | Evidence | Why reroute is required |
|---|---|---|
| `typst/main.typ` | `typst/main.typ:88-97` | The include order is the chapter-order source of truth. Any split changes the Chapter-06 include sequence. |
| `typst/06-algebra-deepening/00-overview.typ` | `typst/06-algebra-deepening/00-overview.typ:19-29` | The overview bullet map currently sells all of `整式分类、乘法公式与幂的基本运算` as one `§6.1`. |
| `typst/06-algebra-deepening/02-factorization.typ` | `typst/06-algebra-deepening/02-factorization.typ:7-17` | Its crisis explicitly points back to `#secref("6.1")` for expansion; after a split it must target the correct new expansion/formula chapter. |
| `typst/06-algebra-deepening/05-foundation-summary.typ` | `typst/06-algebra-deepening/05-foundation-summary.typ:10-19` | The foundation summary currently compresses `§6.1` and `§6.2` into one recap pair; split chapters change both numbering and summary grouping. |
| `typst/06-algebra-deepening/09-review.typ` | `typst/06-algebra-deepening/09-review.typ:10-14` | The chapter review card currently labels `整式运算` as `#secref("6.1")`. |
| `typst/smoke/06-algebra-deepening.typ` | `typst/smoke/06-algebra-deepening.typ:37-46` | Standalone branch smoke includes the live Chapter-06 sequence and must mirror the new order. |
| `typst/smoke/10-capstone.typ` | `typst/smoke/10-capstone.typ:50-59` | Full-chain smoke also hardcodes the Chapter-06 include sequence. |
| `typst/10-capstone/invention-tree.typ` | `typst/10-capstone/invention-tree.typ:114` | The capstone currently references the algebra branch as `#secref("6.1")` to `#secref("6.8")`; split/renumber work changes that span. |
| Regression context artifact | `docs/review/20260419-structure-quality-review/18-structure-iteration-05.md:100-124` | Task-101 should close the exact blocker and acceptance checks already queued there. |

### Minimal reroute set from current `#secref("6.1")` search

The direct `#secref("6.1")` surfaces currently found in repo are:

- `typst/06-algebra-deepening/00-overview.typ:21`
- `typst/06-algebra-deepening/02-factorization.typ:8`
- `typst/06-algebra-deepening/05-foundation-summary.typ:10`
- `typst/06-algebra-deepening/09-review.typ:10`
- `typst/10-capstone/invention-tree.typ:114`

These are the minimum text-routing surfaces; include-order surfaces add `typst/main.typ:88-97`, `typst/smoke/06-algebra-deepening.typ:37-46`, and `typst/smoke/10-capstone.typ:50-59`.

## 5. Beginner-friendly wording guidance to reduce the comprehension cliff

1. **Let the first split chapter promise only “整理”, not “整理 + 乘法 + 幂”.**
   - Discovery should stay on already-familiar templates like `25n + 80` and `2(a + b)`, then ask “哪些能合并？”“括号怎么打开？” instead of jumping to `$x^2$` and `$x^3$`.
2. **Move formulas behind an explicit “先把式子乘开” bridge.**
   - In the second chapter, derive formulas from expansion so they feel like shortcuts grown from one action, not three new worlds dropped at once.
3. **Teach power notation as a separate compression story.**
   - Start from “重复写太长了，所以发明短写法” before giving any rule table.
4. **Use one chapter, one verb family.**
   - `§6.1`: 看整体 / 合并 / 去括号
   - `§6.2`: 乘开 / 认公式 / 反向看结构
   - `§6.3`: 压缩写法 / 指数怎么动
5. **Keep Chinese-first labels and short oral phrasing.**
   - Example tone target: “先别急着背公式，先看它是怎么乘开的。”  
   - This matches `AGENTS.md:16-19` better than taxonomy-heavy blueprint prose.

## Actionable follow-ups for `task-101`

1. Implement the chosen split (recommended: Option A) inside Chapter 06 only.
2. Rewrite the new `§6.1` discovery so it uses only `§4.4` / `§4.5`-safe prerequisites before local blueprint.
3. Update all Chapter-06 numbering / include-order / `#secref(...)` routing surfaces listed above.
4. Recount learner-visible concepts per resulting chapter explicitly in the resolution artifact.
5. Re-run branch and capstone smoke after rerouting.

## Acceptance criteria for `task-101`

### AC-01 — chronology closure

- New `§6.1` discovery and `#tryit` contain **no** exponent notation, no combine-like-terms rule use, and no other tools that are only formalized later in the same chapter.
- Reviewer can point to exact earlier-or-local blueprint evidence for every tool appearing before the end of the new `§6.1` discovery.

### AC-02 — honest max-3 compliance

- Each chapter produced by the `§6.1` split ends with **<= 3** learner-visible invented concept families, counted by fine-grained learner-visible tools rather than umbrella names.
- The task-101 resolution note includes an explicit per-chapter count table.

### AC-03 — branch spine preserved

- Chapter 06 still reads as `{branch}基础 → 基础总结 → {branch}进阶 → {branch}总结`, even if second-level numbering changes.
- No top-level `00-10` change is made.

### AC-04 — routing fully updated

- All affected routing surfaces are updated consistently:
  - `typst/main.typ`
  - `typst/06-algebra-deepening/00-overview.typ`
  - `typst/06-algebra-deepening/02-factorization.typ`
  - `typst/06-algebra-deepening/05-foundation-summary.typ` or its renumbered successor
  - `typst/06-algebra-deepening/09-review.typ` or its renumbered successor
  - `typst/smoke/06-algebra-deepening.typ`
  - `typst/smoke/10-capstone.typ`
  - `typst/10-capstone/invention-tree.typ`
- No stale `#secref("6.1")` remains pointing at the wrong concept surface.

### AC-05 — beginner-facing pacing

- The first split chapter reads like a continuation of `§4.4` / `§4.5`, not like a jump into a full symbolic toolbox.
- Formula and power-law content are not front-loaded into the first chapter just to keep old numbering alive.

### AC-06 — verification

- Chapter-06 smoke and capstone smoke compile with the rerouted file order.
- If task-101 changes live Typst ordering, the fix run includes the project’s standard verification command before claiming closure.

