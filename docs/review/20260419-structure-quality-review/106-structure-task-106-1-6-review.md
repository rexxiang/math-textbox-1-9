# Structure Task 106 — `§1.6` Exemption / Split Review

**Task:** `task-106`  
**Focus surface:** `typst/01-counting/06-operation-laws.typ`  
**Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`

## Reviewer conclusion

- **Review status:** fail
- **Decision:** a rule-level exemption for current `§1.6` is **not defensible** under the current project rules.
- **Why:** the active plan requires every knowledge-point chapter to stay at `<= 3` invented tools and applies that rule project-wide (`docs/plan/20260419-structure-quality-review/plan.yaml:21-24`). Iteration 05 already reopened `§1.6` specifically because it teaches five named laws on one chapter surface and warned against passing it by retroactively treating them as one concept (`docs/review/20260419-structure-quality-review/18-structure-iteration-05.md:56-62,114-125`). Granting `§1.6` a special exemption would undercut the same no-umbrella logic used to keep `§7.1` and `§7.7` open (`docs/review/20260419-structure-quality-review/18-structure-iteration-05.md:38-54`).

## 1. Exemption analysis

### Judgment

**Reject exemption.**

### Evidence

1. **Project rule is book-wide, not chapter-local.**
   - Stage-1 success requires that **no** knowledge-point chapter invent more than 3 tools (`docs/plan/20260419-structure-quality-review/plan.yaml:21-24`).
   - `task-106` itself was created to decide whether `§1.6` can honestly stay whole under the project-wide no-umbrella interpretation (`docs/plan/20260419-structure-quality-review/plan.yaml:362-375`).

2. **Current `§1.6` openly teaches five learner-visible named laws.**
   - The blueprint table lists: 加法交换律 / 加法结合律 / 乘法交换律 / 乘法结合律 / 乘法分配律 (`typst/01-counting/06-operation-laws.typ:44-56`).
   - Chapter 01 overview already markets this surface as one of the chapter's main tools, not as a loose note bundle (`typst/01-counting/00-overview.typ:5-10`).

3. **Downstream chapters treat these laws as stable prerequisites, not optional enrichment.**
   - Fractions explicitly says the exchange/association/distribution toolkit learned in `§1.6` still applies (`typst/02-fraction-ratio-foundation/02-fractions.typ:51-53`).
   - Rational numbers says all five laws still hold and that earlier arithmetic experience remains reusable (`typst/04-number-line-algebra-bridge/01-rational-numbers.typ:73-76`).
   - The gate and branch-entry surfaces use `#secref("1.6")` as a stable readiness checkpoint for later algebraic work (`typst/05-foundation-gate/01-foundation-check.typ:50-53,176-179`; `typst/05-foundation-gate/02-branch-entry-recaps.typ:35-38,77-83`; `typst/06-algebra-deepening/00-overview.typ:13-16`).

### Why exemption would break consistency

- If five named arithmetic laws can pass as one exempt surface, then the same argument can be reused for `§7.1` ("全等判定") and `§7.7` ("三角比与测量"), which iteration 05 explicitly rejected as fake compliance (`docs/review/20260419-structure-quality-review/18-structure-iteration-05.md:38-54`).
- The planned fix task already assumes only two acceptable outcomes: explicit rule-level exemption **or** structural narrowing/splitting, with project-wide max-3 consistency preserved (`docs/plan/20260419-structure-quality-review/plan.yaml:376-388`). Given the later-chapter precedent, exemption here would create a one-off hole in the rule ledger rather than a principled standard.

## 2. Honest concept inventory for current `§1.6`

Count learner-visible **named laws**, not umbrella labels:

| Count | Named law | Evidence |
|---|---|---|
| 1 | 加法交换律 | `typst/01-counting/06-operation-laws.typ:51` |
| 2 | 加法结合律 | `typst/01-counting/06-operation-laws.typ:52` |
| 3 | 乘法交换律 | `typst/01-counting/06-operation-laws.typ:53` |
| 4 | 乘法结合律 | `typst/01-counting/06-operation-laws.typ:54` |
| 5 | 乘法分配律 | `typst/01-counting/06-operation-laws.typ:55` |

**Honest inventory total: 5 named laws.**

Notes:

- `#side-hack` "找朋友凑整法" is a tactic, not a separately named law (`typst/01-counting/06-operation-laws.typ:19-21`).
- The closing "配对思想" preview is future-facing motivation, not part of the current named-law inventory (`typst/01-counting/06-operation-laws.typ:85-91`).

## 3. Viable split / narrowing options

Because no exemption is defensible, the eventual resolution should choose one of these chapter-sized paths.

### Option A — split by operation family (**cleanest recommendation**)

- **New shape**
  - `§1.6` = 加法运算律：加法交换律 + 加法结合律
  - new next section = 乘法运算律与分配：乘法交换律 + 乘法结合律 + 乘法分配律
- **Why it fits Chapter 01**
  - It stays fully arithmetic-first and keeps the current "巧算 / 重组 / 展开" tone.
  - Each surface stays at `<= 3` named laws.
- **Trade-off**
  - Requires the broadest rerouting because many later files currently use `#secref("1.6")` as shorthand for the whole law family.

### Option B — split by learner strategy

- **New shape**
  - `§1.6` = 换顺序与凑整：加法交换律 + 加法结合律 + 乘法交换律
  - new next section = 乘法分组与展开：乘法结合律 + 乘法分配律
- **Why it fits Chapter 01**
  - It preserves the current discovery examples around mental arithmetic and "找朋友" regrouping.
  - The first surface stays lively and game-like for early-foundation pacing.
- **Trade-off**
  - Requires strict editing discipline so the first section does not silently pre-use multiplication grouping before 乘法结合律 is invented.

### Option C — three-step progression for maximal audit clarity

- **New shape**
  - `§1.6` = 加法交换律 + 加法结合律
  - new next section = 乘法交换律 + 乘法结合律
  - new next section = 乘法分配律入门
- **Why it fits Chapter 01**
  - It makes later algebra prerequisites exceptionally explicit.
  - It gives the smoothest compliance story because each section carries only 1-2 named laws.
- **Trade-off**
  - Largest renumbering and routing ripple inside Chapter 01 and every downstream `#secref("1.6")` consumer.

## 4. Rerouting / prerequisite-surface updates the eventual fix must cover

At minimum, task-107 should audit and update these surfaces so prerequisites stay explicit rather than umbrella-based:

| Surface | Current use of `§1.6` | Required update if split/narrowed |
|---|---|---|
| `typst/01-counting/00-overview.typ:5-10` | sells "运算律" as one chapter-level tool | revise Chapter 01 map so the overview matches the new section split/narrowing |
| `typst/01-counting/07-review.typ:32-36` | still summarizes "五大运算律" together | retarget review scope to the new section boundaries |
| `typst/02-fraction-ratio-foundation/02-fractions.typ:51-53` | says 交换律 / 结合律 / 分配律 all came from `§1.6` | point to the exact law sections still serving as prerequisites |
| `typst/04-number-line-algebra-bridge/01-rational-numbers.typ:73-76` | treats all five laws as an inherited toolkit | keep the statement true by citing the right prerequisite span |
| `typst/04-number-line-algebra-bridge/05-review.typ:102-105` | uses `#secref("1.6")` for regrouping fluency | keep on `§1.6` only if regrouping still lives there; otherwise retarget |
| `typst/05-foundation-gate/00-overview.typ:5-9` | summarizes Chapter 01 as "数、算和运算律" | update narrative if Chapter 01 gains another law section |
| `typst/05-foundation-gate/01-foundation-check.typ:50-53,176-179` | treats `§1.6` as one arithmetic-basics gate | specify which law surface(s) are required for the gate |
| `typst/05-foundation-gate/02-branch-entry-recaps.typ:35-38,77-83` | uses `§1.6` as algebra-readiness shorthand | split into exact references for regrouping vs distributive readiness |
| `typst/05-foundation-gate/03-review.typ:14-17` | uses `§1.6` in a single "算术底盘" card | update card labels so branch routing is still auditable |
| `typst/06-algebra-deepening/00-overview.typ:13-16` | assumes `§1.6` already supplies the operation-law toolkit for algebra | ensure algebra overview points to the exact stable prerequisite section(s) |

Secondary regression watchlist after the reroute:

- `typst/02-fraction-ratio-foundation/06-review.typ:97`
- `typst/06-algebra-deepening/09-review.typ:104`

These may remain on `§1.6` only if the eventual narrowed `§1.6` still honestly covers the law being reused.

## 5. Recommended acceptance criteria for `task-107`

Write `task-107` acceptance criteria so the decision is binary and auditable:

1. **Resolution note records one explicit branch only:** either (a) a rule-level exemption is added to the governing rule artifact with justification, or (b) `§1.6` is structurally narrowed/split. No silent hybrid wording.
2. **If exemption is chosen, the resolution note must explain why the same exemption logic does not reopen `§7.1` and `§7.7`, with direct citations to the rule ledger / plan / prior review artifacts.**
3. **If split/narrowing is chosen, every resulting knowledge-point chapter includes a line-cited concept inventory showing `<= 3` learner-visible named laws.**
4. **All downstream prerequisite surfaces that currently treat `#secref("1.6")` as a catch-all law anchor are audited and either updated or explicitly justified as unchanged**, including at least:
   - `typst/01-counting/00-overview.typ`
   - `typst/01-counting/07-review.typ`
   - `typst/02-fraction-ratio-foundation/02-fractions.typ`
   - `typst/04-number-line-algebra-bridge/01-rational-numbers.typ`
   - `typst/05-foundation-gate/01-foundation-check.typ`
   - `typst/05-foundation-gate/02-branch-entry-recaps.typ`
   - `typst/05-foundation-gate/03-review.typ`
   - `typst/06-algebra-deepening/00-overview.typ`
5. **The resolution artifact includes a before/after routing table** mapping each current `§1.6` prerequisite use to its post-fix stable target.
6. **Post-fix wording no longer relies on "运算律" as an umbrella escape hatch** when five separate named laws are still the real learner burden.

## Actionable follow-ups

1. Prefer **Option A** unless the implementer can show that a strategy-based split (Option B) keeps tool-order cleaner with fewer reroute costs.
2. Treat every current `#secref("1.6")` consumer as a prerequisite contract, not a cosmetic cross-reference.
3. Re-run the whole-book structural regression after task-107, because Chapter 05 and Chapter 06 currently lean on `§1.6` as a stable algebra-readiness surface.
