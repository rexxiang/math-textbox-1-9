# Quality Boundary / Regression Queue

**Plan task:** `task-021`  
**Plan source:** `docs/plan/20260419-structure-quality-review/plan.yaml`  
**Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`  
**Audit mode:** review only  
**Stage constraint:** structure stage has passed; this queue assumes the live `00-gateway / 01-04 / 05 / 06-09 / 10` spine and current second-level routing stay frozen unless a finding clearly reopens structure.

## 1. Scope and blocker distinction

This queue rechecks the stabilized live book for four quality-stage defect families that still matter after structure PASS:

- **no-future-tool / same-or-earlier-tool defects** on examples, discovery blocks, summaries, reviews, and capstone-adjacent recap surfaces;
- **dependency-order wording defects** where a surface stays structurally legal but still explains the current lesson mainly through later tools;
- **difficulty-gradient roughness** that now belongs to pacing / transition polish rather than chapter surgery;
- **public-foundation boundary leakage** where foundation / gate wording slips into advanced, architecture-heavy, or expert-compressed phrasing.

### What is **not** being reopened here

- The four former structural blocker families are still closed: `§1.6`, `§6.1`, `§7.1`, `§7.7` (`docs/review/20260419-structure-quality-review/20-structure-exit-gate.md:28-37`).
- Chapter 05 is still structurally acting as recap / routing / readiness gate rather than disguised branch teaching (`20-structure-exit-gate.md:22,41-47`).
- Capstone surfaces that intentionally explain the stabilized tree shape or future outlook are **not** automatically defects just because they mention later routes: `typst/10-capstone/invention-tree.typ:106-109` and `typst/10-capstone/00-overview.typ:21-23` are intentional structural recap / outlook surfaces, not routine future-tool leaks.

### Review judgment

- **No finding below is a clear top-level structural blocker.**
- Two items sit **closest to the structure boundary** and should be handled carefully as wording-only fixes, not rerouting requests:
  1. `typst/05-foundation-gate/02-branch-entry-recaps.typ:91` — recap wording reaches too far into downstream proof/measurement use.
  2. `typst/10-capstone/review.typ:31-32,45-46` — review questions drift toward explaining branch architecture rather than learner-owned math.

## 2. Findings table

| Priority | Iteration owner | File / surface | Evidence | Classification | Action item | Acceptance check |
|---|---|---|---|---|---|---|
| P0 | Q02 | `typst/06-algebra-deepening/07-foundation-summary.typ` | `42-43` previews `#secref("6.8")/#secref("6.9")/#secref("6.10")`; `54` asks the learner to route “后面的题” to “哪一类新工具” | **True remaining quality defect** — future-tool leakage on a branch-foundation summary, not a reopened structure issue | Rewrite the bridge note and self-check so `§6.7` closes `§6.1-§6.6` instead of sending the learner to unreached tool families | The summary can be completed using `§6.1-§6.6` only; no “后面的题 / 新工具 / 后半程哪一类” wording remains |
| P0 | Q02 | `typst/07-geometry-deepening/07-foundation-summary.typ` | `27-28` previews `#secref("7.8")` to `#secref("7.12")`; `39` asks where later length / motion / space problems should be sent | **True remaining quality defect** — summary surface still routes learners by later stations | Keep the checkpoint as proof-foundation consolidation; remove “send later problems to later stations” framing | `§7.7` summarizes the proof half without requiring knowledge of `§7.8-§7.12` |
| P0 | Q02 | `typst/08-function-models/03-foundation-summary.typ` | `27` previews `#secref("8.4")`; `39` asks where later maximum / minimum / growth-comparison problems should be sent | **True remaining quality defect** — future-model routing leak in a foundation summary | Reframe around the two models already owned in `§8.1-§8.2` | The summary self-check is answerable without naming later stations |
| P0 | Q02 | `typst/09-data-statistics/05-foundation-summary.typ` | `27-28` previews `#secref("9.6")/#secref("9.7")/#secref("9.8")`; `39` asks where later randomness / estimation questions should be sent | **True remaining quality defect** — summary routes to later side-window / estimation content | Keep the bridge note as recap-only; do not make `§9.5` a dispatcher for unreached tools | `§9.5` only consolidates `§9.1-§9.4`; no later-station routing prompt remains |
| P0 | Q02 | `typst/05-foundation-gate/02-branch-entry-recaps.typ` | `91` asks whether area / dissection intuition can be connected to “后面的证明与测量里” | **Quality-stage dependency-order wording defect**; **closest to structure boundary**, but still local wording | Keep the geometry-entry checklist inside present prerequisite readiness rather than downstream performance | The checklist item is answerable using current prerequisite tools alone, without invoking later proof / measurement chapters |
| P0 | Q02 | `typst/07-geometry-deepening/04-similar-triangles.typ`; `typst/07-geometry-deepening/06-circles.typ`; `typst/07-geometry-deepening/08-pythagorean-theorem.typ` | `07-geometry-deepening/04-similar-triangles.typ:152,179` justifies similarity through later right-triangle measurement; `07-geometry-deepening/06-circles.typ:109,134-136` frames circle challenges through later length-calculation use; `07-geometry-deepening/08-pythagorean-theorem.typ:146,173` calls the theorem a later measurement “发动机” | **True remaining quality defect** — challenge / answer surfaces justify current tools by later chapters instead of current mathematical payoff | Remove later-chapter justification from challenge / answer wording; keep explanations inside the current section’s own value | The challenge prompts and answers stand on current-section mathematics without “后续 / 后面的长度计算 / 前置工具” language |
| P1 | Q04 | `typst/04-number-line-algebra-bridge/02-rational-operations.typ` | `17-23` discovery is short; `33-46` blueprint gives compact rules; `63-84` moves straight into exercises without a worked same-sign + mixed-sign example pair | **Difficulty-gradient roughness** — structurally fine, but one of the hardest bridge moves is under-scaffolded | Add / plan for explicit worked examples before exercise-only practice | A first-pass reader sees at least one same-sign and one mixed-sign worked calculation before independent drills |
| P1 | Q04 | `typst/04-number-line-algebra-bridge/05-review.typ` | `36-41` emphasizes that Ch.04 only handled very simple one-step equations; `100-106` closes with backward-only spiral prompts and no forward hook into Ch.05 | **Difficulty-gradient / transition polish defect** — the local exit is thinner than the now-stabilized 04→05 handoff | Add a closing line that tells the reader why Ch.05 comes next and what the gate will do | A learner finishing Ch.04 can explain why the next stop is recap / readiness rather than more new content |
| P1 | Q04 | `typst/06-algebra-deepening/08-systems-of-equations.typ` | `7-18,25-32` opens directly with chicken-rabbit and immediate elimination logic, but does not explicitly pick up the just-finished `§6.7` half-way checkpoint | **Difficulty-gradient roughness** — landing sentence missing, not a routing bug | Add / plan for one explicit callback that this is the “one unknown → linked unknowns” extension of the first half | `§6.8` explicitly names itself as the next step after `§6.7`, not a cold restart |
| P1 | Q04 | `typst/06-algebra-deepening/09-quadratic-equations.typ` | `112-127` derives the quadratic formula before the method-choice map appears at `192-200` | **Difficulty-gradient roughness** — heavy method arrives before route-selection scaffold | Move or echo the method-order map earlier: direct square → factorization → formula | Before the formula derivation, the reader already knows the preferred method-selection order |
| P1 | Q04 | `typst/07-geometry-deepening/08-pythagorean-theorem.typ` | `7-10,17-29` opens with applications and theorem discovery, but does not explicitly connect back to the just-finished proof-foundation summary in `§7.7` | **Difficulty-gradient roughness** — proof→measurement landing is still abrupt even though the summary checkpoint is structurally correct | Add / plan for one short pickup sentence naming `§7.8` as the measurement continuation of the proof half | `§7.8` explicitly tells the learner why proof-foundation knowledge is now being converted into length work |
| P1 | Q04 | `typst/05-foundation-gate/00-overview.typ`; `typst/05-foundation-gate/01-foundation-check.typ`; `typst/05-foundation-gate/02-branch-entry-recaps.typ`; `typst/05-foundation-gate/03-review.typ` | `05-foundation-gate/00-overview.typ:9,21-24` uses “底盘 / 系统工具 / 组织成”; `05-foundation-gate/01-foundation-check.typ:14,21,25,31-33` uses “协同工作 / 互相翻译 / 调哪些旧工具”; `05-foundation-gate/02-branch-entry-recaps.typ:16-19` uses “最吃 / 装备检查表 / 底盘”; `05-foundation-gate/03-review.typ:14,32,37` uses “算术底盘 / 互相翻译 / 关系模板” | **Public-foundation boundary leakage** — structurally correct gate surfaces still carry adult routing / tool-management jargon | Simplify gate language into learner-facing actions and recoverable questions; keep recap / routing role unchanged | Ch.05 still performs recap/routing, but the prose no longer depends on “底盘 / 系统工具 / 调工具 / 互相翻译” to be understandable |
| P2 | Q04 | `typst/04-number-line-algebra-bridge/00-overview.typ`; `typst/03-geometry-foundation/00-overview.typ`; `typst/02-fraction-ratio-foundation/04-ratios-percentages.typ`; `typst/01-counting/01-natural-numbers.typ` | `04-number-line-algebra-bridge/00-overview.typ:12-14` uses “方程的本质 / 模板”; `03-geometry-foundation/00-overview.typ:14` uses “整理成逻辑系统”; `02-fraction-ratio-foundation/04-ratios-percentages.typ:103` uses “折扣本质上”; `01-counting/01-natural-numbers.typ:28` explicitly names “抽象” | **Low-severity foundation-boundary leakage** — local expert-compressed nouns remain in foundation narration | Opportunistically replace or anchor abstract nouns with concrete learner actions / examples | The relevant lines can be understood literally by a foundation reader without needing teacher paraphrase of “本质 / 逻辑系统 / 抽象” |
| P2 | Watch only | `typst/10-capstone/review.typ`; `typst/10-capstone/invention-tree.typ` | `10-capstone/review.typ:31-32,45-46` asks the learner to explain why quadratic work was split across branches and why 06–09 must stay parallel; `10-capstone/invention-tree.typ:106-109` explicitly defends Ch.05 as summary and 06–09 as parallel branches | **Do not reopen as a structural defect.** This is a capstone meta-surface watchpoint: keep recap understandable, but do not strip intentional structural recap or future outlook | If polished later, simplify the learner-facing wording only; do not flatten or rewrite the stabilized branch map | Capstone still preserves the current stabilized structure while avoiding unnecessary architecture-jargon overload |

## 3. Grouped findings

### A. Future-tool leakage / dependency-order wording (quality iteration 02 input)

#### A1. Branch-foundation summaries are the biggest remaining leak cluster

The four branch-foundation summaries are now **structurally placed correctly** (`typst/main.typ:96,111,125,137`; `docs/review/20260419-structure-quality-review/20-structure-exit-gate.md:24-25`), but their `#side-hack` / `#mastery` bridge language still leaks later-tool routing:

- `typst/06-algebra-deepening/07-foundation-summary.typ:39-55`
- `typst/07-geometry-deepening/07-foundation-summary.typ:24-40`
- `typst/08-function-models/03-foundation-summary.typ:24-40`
- `typst/09-data-statistics/05-foundation-summary.typ:24-40`

These should feed **quality iteration 02**, not structure re-open:

- keep the summary node where it is;
- keep preview language light if needed;
- remove self-checks that require the learner to classify unreached future problems by later tool family.

#### A2. Geometry challenge / answer surfaces still justify current tools by later ones

Three stabilized geometry files still explain the current lesson mainly as preparation for later measurement work:

- `typst/07-geometry-deepening/04-similar-triangles.typ:152,179`
- `typst/07-geometry-deepening/06-circles.typ:109,134-136`
- `typst/07-geometry-deepening/08-pythagorean-theorem.typ:146,173`

This is a **quality-stage dependency-order wording** problem because the tool is already correctly placed; what remains wrong is the learner-facing justification.

#### A3. Gate recap has one downstream-use sentence that should be cleaned, not escalated

`typst/05-foundation-gate/02-branch-entry-recaps.typ:91` is the clearest near-boundary case. The recap remains a recap surface overall (`:66`), but one checklist line still asks the learner to validate readiness through “后面的证明与测量”. This should be fixed as wording only.

### B. Difficulty gradient / transition roughness (quality iteration 04 input)

#### B1. Ch.04 still has a rough local exit even though the 04→05 structure is now correct

The structure-stage cliff has been removed at the routing level (`20-structure-exit-gate.md:25-26`), but two local quality issues remain:

- `typst/04-number-line-algebra-bridge/02-rational-operations.typ:17-46,63-84` is under-scaffolded for a hard sign-rule transition.
- `typst/04-number-line-algebra-bridge/05-review.typ:36-41,100-106` exits backward only, without a strong gate-forward hook.

#### B2. Mid-branch summaries exist, but the next lesson sometimes lands cold

The structure pass correctly installed / preserved half-way summary checkpoints, yet two next-step landings remain thin:

- `typst/06-algebra-deepening/08-systems-of-equations.typ:7-18,25-32` does not explicitly pick up the `§6.7` checkpoint.
- `typst/07-geometry-deepening/08-pythagorean-theorem.typ:7-10,17-29` does not explicitly name itself as the measurement continuation of the proof half summarized in `§7.7`.

#### B3. Quadratic-equation method ordering is still locally steeper than it needs to be

`typst/06-algebra-deepening/09-quadratic-equations.typ:112-127,192-200` still gives the formula derivation before the route-selection scaffold. That is a **quality-stage pacing** issue, not a structural complaint about chapter order.

### C. Foundation-boundary leakage (quality iteration 04 input)

#### C1. Ch.05 stays within role, but its wording still sounds more like reviewer / architect talk than learner self-talk

This queue does **not** claim that Ch.05 has reopened the old foundation-boundary blocker. The live evidence still says Ch.05 is recap / routing, not disguised new teaching (`20-structure-exit-gate.md:22,41-47`).

What remains is wording compression and adult framing across the chapter:

- `typst/05-foundation-gate/00-overview.typ:9,21-24`
- `typst/05-foundation-gate/01-foundation-check.typ:14,21,25,31-33`
- `typst/05-foundation-gate/02-branch-entry-recaps.typ:16-19`
- `typst/05-foundation-gate/03-review.typ:14,32,37`

The chapter can stay functionally identical while replacing jargon like “底盘 / 系统工具 / 调工具 / 互相翻译” with clearer beginner-facing phrasing.

#### C2. A small amount of abstract compression still survives in the public-foundation chapters

The remaining low-severity cluster is not a routing bug, but a tone / accessibility issue:

- `typst/04-number-line-algebra-bridge/00-overview.typ:12-14`
- `typst/03-geometry-foundation/00-overview.typ:14`
- `typst/02-fraction-ratio-foundation/04-ratios-percentages.typ:103`
- `typst/01-counting/01-natural-numbers.typ:28`

These are appropriate **quality-iteration-04 cleanup items**, not stage-breaking defects.

## 4. Prioritized queue

### P0 — feed directly into quality iteration 02

1. **Strip future-tool routing from the four branch-foundation summaries**
   - Surfaces: `6.7`, `7.7`, `8.3`, `9.5`
   - Why first: this is the largest remaining same-or-earlier-tool defect cluster on summary surfaces.
2. **Remove later-chapter justification from geometry challenge / answer blocks**
   - Surfaces: `7.4`, `7.6`, `7.8`
   - Why first: these are high-visibility practice surfaces where learners should not need later chapters to understand the point of the current tool.
3. **Clean the one downstream-use line in the Chapter 05 geometry-entry checklist**
   - Surface: `05.2`
   - Why first: it is the closest wording defect to re-triggering a false structure alarm.

### P1 — feed into quality iteration 04

4. **Smooth the Ch.04 bridge pacing**
   - Surfaces: `4.2`, `4-review`
   - Focus: add worked-example scaffolding and a clearer exit into Ch.05.
5. **Add explicit landing callbacks after branch-foundation summaries**
   - Surfaces: `6.8`, `7.8`
   - Focus: make the first page after each half-way summary feel like a continuation, not a cold restart.
6. **Move the quadratic-equation method-order map earlier**
   - Surface: `6.9`
   - Focus: method-choice before heavy derivation.
7. **De-jargonize Ch.05 without changing its gate role**
   - Surfaces: `05.0`, `05.1`, `05.2`, `05-review`
   - Focus: keep routing / recap function, simplify learner-facing prose.

### P2 — opportunistic boundary polish / watchpoints

8. **Clean remaining abstract-compression nouns in public-foundation narration**
   - Surfaces: `1.1`, `2.4`, `3.0`, `4.0`
9. **Watch capstone meta-surfaces without treating them as routine structure regressions**
   - Surfaces: `10-review`, `10-capstone/invention-tree.typ`
   - Rule: simplify learner-facing wording only; do not undo intentional structure recap / outlook framing.

## Bottom line

- **Major defect clusters:** branch-summary future-tool routing, geometry challenge/answer dependency-order wording, Ch.04 and mid-branch landing roughness, and Ch.05 jargon-heavy gate wording.
- **Dangerously close to re-opening structure?** **No clear reopen.** The nearest cases are `05.2:91` and `10-capstone/review.typ:31-32,45-46`, but both should still be handled as quality-stage wording / review-surface cleanup rather than structural surgery.
