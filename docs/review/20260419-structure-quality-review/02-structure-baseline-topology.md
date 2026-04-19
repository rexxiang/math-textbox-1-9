# 02 — Structure Baseline Topology

**Plan:** 20260419-structure-quality-review  
**Task:** task-002  
**Status:** baseline (read-only audit; no source chapters modified)  
**Date:** 2026-04-19  
**Reviewed against:** `typst/main.typ`, `AGENTS.md`, per-chapter `00-overview.typ` files, `01-rule-ledger.md`

---

## 1 First-Level Spine — Confirmed Aligned; No Changes Proposed

The on-disk first-level directories and `typst/main.typ` inclusion order fully match the immutable spine
defined in `AGENTS.md §全书结构原则`:

| # | Directory | Spine role | Status |
|---|-----------|-----------|--------|
| 00 | `00-gateway/` | Gateway / 导读 (outside spine proper) | ✅ aligned |
| 01 | `01-counting/` | Public foundation — counting & arithmetic | ✅ aligned |
| 02 | `02-fraction-ratio-foundation/` | Public foundation — fractions, ratios | ✅ aligned |
| 03 | `03-geometry-foundation/` | Public foundation — geometry | ✅ aligned |
| 04 | `04-number-line-algebra-bridge/` | Public foundation — number line / algebra bridge | ✅ aligned |
| 05 | `05-foundation-gate/` | Foundation summary gate (基础总结) | ✅ aligned |
| 06 | `06-algebra-deepening/` | Branch deepening — algebra | ✅ aligned |
| 07 | `07-geometry-deepening/` | Branch deepening — geometry | ✅ aligned |
| 08 | `08-function-models/` | Branch deepening — functions | ✅ aligned |
| 09 | `09-data-statistics/` | Branch deepening — data & statistics | ✅ aligned |
| 10 | `10-capstone/` | Capstone: whole-book summary + outlook | ✅ aligned |

**The 00–10 spine is immutable.** No reordering, collapsing, or extension is proposed anywhere in this
document or in later fix tasks.

---

## 2 Findings — Second-Level Topology

### Finding F-01 — Missing mid-branch foundation summaries (06, 07, 08, 09)

**Severity: 🔴 STRUCTURAL BLOCKER (R-02)**

Rule R-02 requires every branch chapter (06–09) to realize the internal arc:

```
{branch}基础 → 基础总结 → {branch}进阶 → {branch}总结
```

Observed section inventories:

| Chapter | Sections on disk | Mid-branch summary present? |
|---------|-----------------|------------------------------|
| 06 | 00-overview · 01-07 content · 08-review | **No** — single review at end only |
| 07 | 00-overview · 01-09 content · 10-review | **No** — single review at end only |
| 08 | 00-overview · 01-04 content · 05-review | **No** — single review at end only |
| 09 | 00-overview · 01-06 content · 07-review | **No** — single review at end only |

None of the four branch chapters contains an explicit mid-branch foundation summary file separating
the foundational half from the advanced half. A single end-of-chapter review does not satisfy R-02.

**Overloaded-summary check:** no branch in 06–09 currently has a dedicated branch-foundation summary node,
so there is no separate overloaded branch-summary artifact to flag at baseline. The baseline defect is
uniformly **missing summary nodes**, not summary-node overload.

**All four branches are in violation.** This is the primary structural blocker for the structure exit
gate (task-017).

---

### Finding F-02 — §4.2 labelled "侧窗" in overview but compiled as a full peer chapter

**Severity: 🟡 LOWER-PRIORITY FOLLOW-UP**

`04/00-overview.typ` describes §4.2 (实数的入口) as:

> 作为补完整数轴的侧窗，只建立"平方根也是数、实数填满数轴"的直觉

`typst/main.typ` includes §4.2 as a standard numbered chapter in the same sequence as §4.1, §4.3, and §4.4,
giving it full peer status in the compiled book.

There is no typographic or structural distinction in the PDF between a "side window" and a core chapter.
The mismatch is cosmetic-structural: the *intent* is side-window but the *compiled position* is peer-chapter.
Because §4.2 does not introduce new formal tools beyond intuition scaffolding, this does not block
current iterations, but it should be resolved before quality exit.

---

### Finding F-03 — §7.9 designated 选学/侧厅 but placed inline as a numbered section

**Severity: 🟡 LOWER-PRIORITY FOLLOW-UP**

`07/00-overview.typ` explicitly labels §7.9:

> 圆的拓展（选学）——把正多边形与圆的位置关系放进侧厅，不把圆幂这类更高阶工具塞进核心主线

The section file `07/09-circle-extensions.typ` confirms it is "not a core node."  
Yet `typst/main.typ` places it inline between §7.8 and §7.10-review, indistinguishable from mandatory
content in the compiled output.

The 10-capstone's invention tree correctly omits §7.9, confirming the intended non-core status.
However, the section ordering does not signal optionality to a reader navigating the book sequentially.

---

### Finding F-04 — §9.5 probability designated "随机性侧窗" but placed inline as a peer chapter

**Severity: 🟡 LOWER-PRIORITY FOLLOW-UP**

`09/00-overview.typ` describes §9.5 as:

> 作为数据路线旁边的随机性侧窗，把事件的可能性写成数字，区分实验频率和理论概率

Despite the side-window framing, §9.5 (probability) is compiled inline as a full peer chapter between
§9.4 and §9.6, with the sole chapter review following §9.6.  
The 10-capstone invention tree lists §9.1–9.6 continuously, including §9.5, which contradicts the
side-window intent.

This misalignment means the capstone treats §9.5 as core content even though the branch overview
marks it as optional scope. One of these two positions must be authoritative and made consistent.

---

### Finding F-05 — §8.4 introduces exponential formula beyond its stated comparison role

**Severity: 🔴 STRUCTURAL BLOCKER (R-04 — no-future-tool / out-of-scope tool formalization)**

`08/00-overview.typ` states the intent for §8.4:

> 比较"每期固定增加"和"每期按当前总量继续变化"两种节奏，先学会判断模型，**不急着把它扩成新公式家族**

However, `08/04-rate-change-models.typ` contains in the blueprint section:

```
y = 1000 × 1.05^t
```

This notation formalizes `a × r^t` as a symbolic expression, which is the entry form of exponential
functions — a tool family explicitly **not** within the scope of Chapter 08.  
The contrast `y = 1000 + 50t` vs `y = 1000 × 1.05^t` as a formal blueprint pair crosses the stated
boundary: it moves from model-type *identification* into exponential-function *definition*.

This blurs the branch boundary and anticipates tools that are not yet invented anywhere in the 06–09
set, making it a scope-leak structural blocker.

---

### Finding F-06 — §5.2 branch-entry recaps are lighter than the actual entry complexity of §6.1 / §7.1

**Severity: 🟡 LOWER-PRIORITY FOLLOW-UP**

`05/02-branch-entry-recaps.typ` provides a checklist of prerequisite tools: a "装备检查表" style recap.  
This is appropriate for routing but does not close the gap observed at the first sections of the
two heaviest branches:

- **§6.1** (algebraic expressions and polynomial operations) immediately introduces monomial/polynomial
  classification and multiplication formulas, requiring fluency in the operation laws from §1.6 and
  letter-as-template from §4.3 that the §5.2 checklist only names but does not consolidate.
- **§7.1** (congruent triangles) immediately requires formal proof-writing (two-column reasoning chains),
  a skill not introduced anywhere in chapters 01–05 or in §5.2.

The gap is a *preparation depth mismatch*, not a violation of the spine. It does not block the current
structure iteration but should be addressed before the structure exit gate.

---

### Finding F-07 — §10 capstone treatment of optional §7.9 is correct; §9.5 remains open under F-04

**Severity: ✅ NO ISSUE**

`10-capstone/invention-tree.typ` correctly omits §7.9, which matches the explicit optional / side-hall
framing in `07/00-overview.typ` and `07/09-circle-extensions.typ`.

This finding is intentionally narrow: it confirms only that the capstone's omission of optional §7.9
is correct. The separate question of whether §9.5 should remain inside the capstone's main tree is
still an open topology issue under F-04 and is not closed here.

---

## 3 Action Items

### AI-01 — Insert mid-branch foundation summaries into 06, 07, 08, 09

**Priority: HIGH — resolves F-01 (structural blocker)**  
**Scope:** Within each of chapters 06–09; no first-level spine change.

For each branch chapter, insert a new section file that:
- Synthesises the foundational half of the branch (the sections covering core entry-level tools).
- Provides a checkpoint / mastery check before the advanced sections begin.
- Is referenced in the chapter's `00-overview.typ` at the correct position.

Suggested insertion points (all within existing spine):

| Chapter | Current foundational half | New summary section | Current advanced half (then renumbered) |
|---------|------------------|---------------------|---------------|
| 06 | §6.1–§6.3 (expressions, factorization, fractions) | **§6.4-foundation-summary** (new) | Current §6.4→§6.7 (linear equations, systems, quadratic equations, inequalities) plus review renumbered |
| 07 | §7.1–§7.4 (congruence, similarity, quadrilaterals, circles) | **§7.5-foundation-summary** (new) | Current §7.5→§7.9 (Pythagoras, trig, transforms, projections, optional circle extension) plus review renumbered |
| 08 | §8.1–§8.2 (linear, inverse proportion) | **§8.3-foundation-summary** (new) | Current §8.3→§8.4 (quadratic, rate-change) plus review renumbered |
| 09 | §9.1–§9.3 (collection, central tendency, variability) | **§9.4-foundation-summary** (new) | Current §9.4→§9.6 (frequency distribution, probability, sampling) plus review renumbered |

> ⚠️ The renumbering above is **within-chapter only** and does not alter the 00–10 spine.

---

### AI-02 — Strip exponential formula from §8.4 blueprint; keep as descriptive pattern only

**Priority: HIGH — resolves F-05 (structural blocker)**  
**Scope:** `08/04-rate-change-models.typ` only.

Replace the formal `y = 1000 × 1.05^t` expression in the blueprint pair with a
descriptive verbal rule and a step-by-step arithmetic table. The *identification* of "fixed-ratio
growth vs. fixed-difference growth" is the goal of §8.4; it does not require introducing the
general exponential expression as a formal tool.

---

### AI-03 — Mark §4.2 with a typographic side-window indicator

**Priority: MEDIUM — resolves F-02**  
**Scope:** `04/02-real-numbers.typ` header + `typst/main.typ` or a wrapper component.

Add a visual "侧窗" badge or a `side-window` wrapper so the compiled PDF signals to readers that
§4.2 is optional / supplementary, matching the intent in `04/00-overview.typ`.

---

### AI-04 — Mark §7.9 with a typographic optional/side-hall indicator in compiled output

**Priority: MEDIUM — resolves F-03**  
**Scope:** `07/09-circle-extensions.typ` header.

The section title already says "（选学）"; ensure this is rendered with a distinct style (e.g., the
existing `side-hack` or a new `optional-section` wrapper) so the compiled section heading is
visually distinguishable from mandatory sections.

---

### AI-05 — Reconcile §9.5 probability: decide core or side-window; align capstone tree accordingly

**Priority: MEDIUM — resolves F-04**  
**Scope:** `09/05-probability.typ` header and/or `10-capstone/invention-tree.typ`.

Choose one of:
- **Option A (side-window):** Mark §9.5 with the same optional indicator as §7.9; remove §9.5 from
  the capstone invention tree.
- **Option B (core):** Update `09/00-overview.typ` to remove the "侧窗" framing and document §9.5 as
  a required core section.

The decision must be recorded in `01-rule-ledger.md` (or a dedicated decision note) before fix tasks
begin.

---

### AI-06 — Deepen §5.2 recap for §6.1 and §7.1 entry complexity

**Priority: LOW — resolves F-06**  
**Scope:** `05/02-branch-entry-recaps.typ`.

Extend the §06 and §07 entry checklist items to include short worked-example consolidation (not
new tools) for:
- Polynomial-style operation law fluency (§06 entry)
- Reading a two-step geometric reasoning chain (§07 entry), as a bridge to formal proof format in §7.1

---

## 4 Acceptance Criteria for Structural Corrections

The following criteria must all pass before the structure exit gate (task-017) can be declared green:

| AC | Criterion | Resolves |
|----|-----------|---------|
| AC-01 | Each of chapters 06, 07, 08, 09 contains an explicit mid-branch foundation summary section positioned between the foundational and advanced halves, referenced in its `00-overview.typ`. | F-01 / AI-01 |
| AC-02 | No branch chapter uses a single end-of-chapter review as the sole synthesis node; the mid-branch summary provides an independent checkpoint. | F-01 / AI-01 |
| AC-03 | `08/04-rate-change-models.typ` does not contain any symbolic expression of the form `a × r^t` in its blueprint or mastery sections; "rolling growth" is described arithmetically only. | F-05 / AI-02 |
| AC-04 | §4.2 renders with a typographic distinction from core chapters in the compiled PDF (badge, frame, or label). | F-02 / AI-03 |
| AC-05 | §7.9 renders with the same typographic optional indicator as its title implies; the capstone invention tree continues to exclude it. | F-03 / AI-04 |
| AC-06 | §9.5 probability is either (a) visually marked optional and excluded from the capstone invention tree, or (b) formally promoted to core in `09/00-overview.typ` and included in the capstone tree — no mixed signal remains. | F-04 / AI-05 |
| AC-07 | `05/02-branch-entry-recaps.typ` provides at minimum one worked consolidation item for the §06-entry polynomial reasoning and one for the §07-entry two-step proof-chain reading. | F-06 / AI-06 |
| AC-08 | No first-level directory (00–10) is added, removed, renamed, or reordered as a result of any fix task. | invariant / R-01 |

---

## 5 Summary

| Finding | Severity | Action Item |
|---------|----------|-------------|
| F-01 Missing mid-branch foundation summaries (06–09) | 🔴 Structural blocker | AI-01 |
| F-02 §4.2 side-window intent ≠ compiled peer-chapter | 🟡 Follow-up | AI-03 |
| F-03 §7.9 inline placement vs. side-hall designation | 🟡 Follow-up | AI-04 |
| F-04 §9.5 inline placement vs. side-window + capstone inconsistency | 🟡 Follow-up | AI-05 |
| F-05 §8.4 introduces exponential formula beyond comparison scope | 🔴 Structural blocker | AI-02 |
| F-06 §5.2 preparation depth below §6.1 / §7.1 entry complexity | 🟡 Follow-up | AI-06 |
| F-07 §10 capstone omits §7.9 (correct, no action) | ✅ No issue | — |

**Open structural blockers: 2 (F-01, F-05).**  
Both must be resolved and pass AC-01–AC-03 before task-017 can close the structure exit gate.
