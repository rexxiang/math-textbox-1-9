# Quality Summary / Crossref Queue

**Date:** 2026-04-19  
**Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`  
**Scope:** quality-stage queue for branch-entry recaps, branch-foundation summaries, review chapters, capstone summary/review surfaces, and `#secref` / spiral-link quality after structure stabilization  
**Audit mode:** review only — no structural surgery, no textbook-content edits in this pass

## 1. Scope

This queue audits the following surfaces:

- **Branch-entry recap surfaces:** `typst/05-foundation-gate/02-branch-entry-recaps.typ`, `typst/06-algebra-deepening/00-overview.typ`, `typst/07-geometry-deepening/00-overview.typ`, `typst/08-function-models/00-overview.typ`, `typst/09-data-statistics/00-overview.typ`
- **Branch-foundation summaries:** `typst/06-algebra-deepening/07-foundation-summary.typ`, `typst/07-geometry-deepening/07-foundation-summary.typ`, `typst/08-function-models/03-foundation-summary.typ`, `typst/09-data-statistics/05-foundation-summary.typ`
- **Review chapters:** `01-counting/08-review.typ`, `02-fraction-ratio-foundation/06-review.typ`, `03-geometry-foundation/06-review.typ`, `04-number-line-algebra-bridge/05-review.typ`, `05-foundation-gate/03-review.typ`, `06-algebra-deepening/11-review.typ`, `07-geometry-deepening/14-review.typ`, `08-function-models/06-review.typ`, `09-data-statistics/08-review.typ`, `10-capstone/review.typ`
- **Capstone surfaces:** `typst/10-capstone/00-overview.typ`, `typst/10-capstone/invention-tree.typ`, `typst/10-capstone/review.typ`, `typst/10-capstone/whats-next.typ`

Audit focus:

- branch-summary placement and role integrity
- branch-entry recap usefulness and placement quality
- review-chapter structure integrity
- stale / vague / weak `#secref` and spiral links
- capstone summary / review surfaces that still need quality polish

## 2. Findings table

| Priority | File / surface | Issue type | Evidence | Action item | Acceptance check |
|---|---|---|---|---|---|
| P0 | `typst/05-foundation-gate/02-branch-entry-recaps.typ`; `typst/07-geometry-deepening/00-overview.typ` | Branch-entry recap drift | `05-foundation-gate/02-branch-entry-recaps.typ:42-46,88-95` names `3.7/3.8` in one geometry recap surface but `3.6/3.8/3.9` in another; `07-geometry-deepening/00-overview.typ:18-22` uses `2.5/3.4/3.7/3.8/3.9` | Normalize the geometry prerequisite map across gate recap, gate checklist, and branch overview so the learner sees one stable entry checklist | All geometry-entry recap surfaces point to the same prerequisite set and describe the same readiness story |
| P1 | `typst/08-function-models/00-overview.typ` | Branch-entry recap role drift | `08-function-models/00-overview.typ:15-18` moves from waking old tools into introducing the new branch translation frame “表格—公式—图象—情境” | Tighten the recap so it only reactivates old tools; keep new-branch framing in the overview/mainline text rather than the recap block | The `#side-hack` reads as recap only: no new branch method is introduced there |
| P2 | `typst/06-algebra-deepening/07-foundation-summary.typ`; `typst/07-geometry-deepening/07-foundation-summary.typ`; `typst/08-function-models/03-foundation-summary.typ`; `typst/09-data-statistics/05-foundation-summary.typ` | Branch-foundation summary watchpoint | Summary placement is currently correct (`typst/main.typ:96,111,125,137`), and the summary cards remain recap-first; the bridge `#side-hack` blocks at `6.7:39-43`, `7.7:24-28`, `8.3:24-28`, `9.5:24-28` are the easiest drift surface | Keep the bridge language in preview / routing mode only; do not let summary surfaces pre-teach later-half tools during quality edits | Each foundation-summary `#blueprint` summarizes only already-covered material, and each bridge note previews later material without defining new concepts or procedures |
| P0 | `typst/05-foundation-gate/03-review.typ` | Review-structure overflow | `05-foundation-gate/03-review.typ:90-98` has 4 spiral-review prompts, while review chapters are limited to 2-3 (`.agents/skills/math-textbook-authoring/SKILL.md:65-72`) | Compress the spiral block to the strongest 2-3 cross-chapter prompts | Spiral-review block contains 2-3 prompts, all explicitly linked with `#secref(...)` |
| P0 | `typst/07-geometry-deepening/14-review.typ` | Review-structure overflow | `07-geometry-deepening/14-review.typ:104-112` has 4 spiral-review prompts | Compress to 2-3 prompts and keep only the highest-yield cross-chapter links | Spiral-review block contains 2-3 prompts, all cross-chapter and clearly scoped |
| P0 | `typst/08-function-models/06-review.typ` | Review-structure overflow | `08-function-models/06-review.typ:110-118` has 4 spiral-review prompts | Compress to 2-3 prompts and strengthen prompt specificity while trimming | Spiral-review block contains 2-3 prompts, each with a clear cross-chapter purpose |
| P1 | `typst/02-fraction-ratio-foundation/06-review.typ` | Weak spiral link | `02-fraction-ratio-foundation/06-review.typ:95` sends `2.5 + 3/4` representation choice back to `#secref("1.5")`, but the more direct support surface is conversion/comparison in `02-fraction-ratio-foundation/05-conversions-and-comparisons.typ:3` | Retarget the link to the most semantically direct prior tool surface | The cited `#secref` names the exact earlier tool family the prompt asks the student to reuse |
| P1 | `typst/03-geometry-foundation/06-review.typ` | Weak spiral link | `03-geometry-foundation/06-review.typ:83` uses `#secref("2.6")` for a percent-increase prompt; the more direct concept home is `#secref("2.5")` | Retarget the link so the review prompt lands on the precise percent / ratio concept surface | The cited `#secref` matches the mathematical idea named in the prompt, not a broader neighboring section |
| P1 | `typst/09-data-statistics/08-review.typ` | Weak spiral link | `09-data-statistics/08-review.typ:99` uses `#secref("2.6")` for “条形图 vs 扇形图”; the support idea is proportion / part-whole reading rather than generic conversion | Retarget the link to the most direct percentage / proportion support surface | The referenced section directly supports the graph-choice reasoning named in the prompt |
| P0 | `typst/10-capstone/review.typ` | Broken spiral-link role | `10-capstone/review.typ:48-52` includes `#secref("10-review")`, a self-link back into the current review surface | Remove self-reference from spiral review and replace it with genuine earlier-surface links | Every capstone spiral-review link points outward to earlier chapters / sections, never back to the same review node |
| P0 | `typst/10-capstone/review.typ` | Capstone review prompt ambiguity | `10-capstone/review.typ:27-30,41-45` flattens `#secref("6.10")` and `#secref("9.8")` into a shared “范围” frame and asks for the “哪一句提醒” in `9.8`, but `09-data-statistics/07-sampling-estimation.typ:85-93,120-122` contains multiple possible reminder lines | Rewrite the quality target here around “精确约束 vs 样本估计 / 代表性 / 随机性”, and make the `9.8` recall target unique | The prompt / answer pair distinguishes algebraic range from statistical estimation and points to one uniquely recoverable `9.8` reminder |
| P1 | `typst/10-capstone/invention-tree.typ` | Capstone branch-map flattening | `10-capstone/invention-tree.typ:115` treats `7.1` to `7.13` as one continuous geometry line, while `07-geometry-deepening/00-overview.typ:38` explicitly marks `7.13` as optional | Restore optional-side-hall wording in the capstone map so it does not silently re-core the branch | The capstone map visibly preserves `7.13` as optional / side-hall rather than mainline |
| P1 | `typst/10-capstone/invention-tree.typ`; `typst/10-capstone/whats-next.typ` | Capstone branch-map flattening | `10-capstone/invention-tree.typ:117` and `10-capstone/whats-next.typ:33` flatten the data route into `9.1-9.8`, but `09-data-statistics/05-foundation-summary.typ:24-28` explicitly frames `9.6-9.7` as a side window before `9.8` reconnects estimation | Reinsert “随机性侧窗 → 抽样估计回接” language in capstone summary surfaces | Capstone wording preserves the data branch’s stabilized shape: mainline foundation, side window, then estimation reconnect |

## 3. Grouped findings

### A. Branch summary / branch-entry recap

#### A1. Branch-entry recap usefulness and placement

- **Placement quality is structurally correct** in all four branch overviews: the recap `#side-hack` sits after `#history-note` and before the chapter mainline list in `06/07/08/09` overview files.
- The **main quality risk is drift between duplicated entry surfaces**:
  - geometry entry expectations differ between `05.2` and `07.0`
  - function entry recap in `08.0` starts to teach the branch’s new representation frame instead of only waking prior tools

#### A2. Branch-foundation summary role integrity

- The four branch-foundation summaries are **placed correctly** and currently still act as summaries, not mini-lessons.
- The quality-stage watchpoint is the **bridge `#side-hack` block** inside each summary:
  - `6.7:39-43`
  - `7.7:24-28`
  - `8.3:24-28`
  - `9.5:24-28`
- These are acceptable now, but they are the most likely place for future “summary starts teaching later-half content” drift.

### B. Review surface integrity

- Review-chapter backbone is broadly intact across `01-10`, but three surfaces still have a **rule-level spiral-review overflow**:
  - `05-foundation-gate/03-review.typ`
  - `07-geometry-deepening/14-review.typ`
  - `08-function-models/06-review.typ`
- These should be treated as **quality cleanup, not structure changes**: the fix is prioritization and sharpening, not chapter surgery.

### C. Cross-reference quality

- Several spiral links are still **semantically weak rather than technically broken**:
  - `02-fraction-ratio-foundation/06-review.typ:95`
  - `03-geometry-foundation/06-review.typ:83`
  - `09-data-statistics/08-review.typ:99`
- The capstone review has the highest crossref risk because it contains both:
  - a **self-link** (`10-capstone/review.typ:52`)
  - **blurred linkage framing** between algebraic constraints and statistical estimation (`10-capstone/review.typ:27-30,41-45`)

### D. Capstone surfaces

- `10-capstone/review.typ` is the **highest-risk quality surface** in this queue:
  - spiral-review self-link
  - abstract prompts with weaker answer boundaries
  - `9.8` recall target not uniquely anchored
- `10-capstone/invention-tree.typ` and `10-capstone/whats-next.typ` both need **branch-shape fidelity polish** so the stabilized structure is not flattened back into a misleading single line.

## 4. Prioritized queue

### P0 — fix first

1. **Capstone review spiral-link integrity**
   - Owning surface: `typst/10-capstone/review.typ`
   - Remove self-linking and make the `9.8` recall / `6.10` vs `9.8` contrast uniquely checkable.
2. **Review-chapter spiral overflow cleanup**
   - Owning surfaces: `typst/05-foundation-gate/03-review.typ`, `typst/07-geometry-deepening/14-review.typ`, `typst/08-function-models/06-review.typ`
   - Reduce spiral blocks to 2-3 strongest prompts.
3. **Geometry branch-entry prerequisite alignment**
   - Owning surfaces: `typst/05-foundation-gate/02-branch-entry-recaps.typ`, `typst/07-geometry-deepening/00-overview.typ`
   - Unify the learner-facing prerequisite story.

### P1 — next wave

4. **Retarget weak spiral links in review chapters**
   - Owning surfaces: `typst/02-fraction-ratio-foundation/06-review.typ`, `typst/03-geometry-foundation/06-review.typ`, `typst/09-data-statistics/08-review.typ`
5. **Pull function entry recap back to recap-only**
   - Owning surface: `typst/08-function-models/00-overview.typ`
6. **Restore capstone branch-shape fidelity**
   - Owning surfaces: `typst/10-capstone/invention-tree.typ`, `typst/10-capstone/whats-next.typ`

### P2 — guardrail watch

7. **Protect branch-foundation summaries from role drift during later quality edits**
   - Owning surfaces: `typst/06-algebra-deepening/07-foundation-summary.typ`, `typst/07-geometry-deepening/07-foundation-summary.typ`, `typst/08-function-models/03-foundation-summary.typ`, `typst/09-data-statistics/05-foundation-summary.typ`
   - This is a watch queue, not a current blocker.
