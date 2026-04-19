# Rule Ledger — 20260419-structure-quality-review

**Source of truth:** `AGENTS.md` + four research findings in `docs/plan/20260419-structure-quality-review/`  
**Status: IMMUTABLE** — rules below may not be relaxed or overridden by any task in this plan.

---

## R-01 — Immutable 00-10 Top-Level Spine

The book's first-level spine is fixed and must not be reordered, collapsed, or extended:

| Chapter(s) | Directory | Spine role |
|------------|-----------|------------|
| 00 | `00-gateway/` | Gateway / 导读 (outside spine proper) |
| 01–04 | `01-counting/` … `04-number-line-algebra-bridge/` | Public foundation (公共基础) |
| 05 | `05-foundation-gate/` | Foundation summary gate (基础总结) |
| 06–09 | `06-algebra-deepening/` … `09-data-statistics/` | Branch deepening (分支进阶) |
| 10 | `10-capstone/` | Capstone: whole-book summary + outlook (全书总结 + 后续展望) |

**Evidence:** `AGENTS.md §全书结构原则`, `typst/main.typ:21-132`  
**Consequence of violation:** Structural blocker; iteration may not exit the structure stage.

---

## R-02 — Branch Spine Rule

Every branch chapter (06–09) must internally realize:

```
{branch}基础 → 基础总结 → {branch}进阶 → {branch}总结
```

Each branch needs an explicit mid-branch foundation summary separating the foundational and advanced halves.  
A single review at the very end of all sections does **not** satisfy this rule.

**Evidence:** `AGENTS.md §全书结构原则`; `research_findings_branch-dependencies.yaml` finding severity:high  
**Consequence of violation:** Missing branch summaries are structural blockers.

---

## R-03 — Max-3-Tool Rule

Every knowledge-point chapter may invent **at most 3 tools** (definitions, theorems, or techniques).  
The count applies to the `#vocab`/blueprint inventory combined; side-bar notes count as tool slots.

**Interpretation lock for this project:** the count is by **learner-visible new sub-concepts**, not by post-hoc umbrella labels.  
If a chapter introduces several distinct sub-concepts, it may **not** claim compliance by wrapping them into one larger “general concept.”  
When more than 3 new sub-concepts are genuinely needed, the chapter must be **split into multiple knowledge-point chapters**, preferably letting the related sub-concepts appear on separate focused chapter surfaces instead of one shallow umbrella chapter.

**Evidence:** `AGENTS.md §知识点章节工具原则`; `research_findings_tools-glossary.yaml` finding `tool-overload-candidates`  
**Consequence of violation:** Chapter is non-compliant; must be split or pruned before structure exit gate.

---

## R-04 — No-Future-Tool Rule

Every expression, notation, or technique used in a chapter's crisis/discovery/blueprint sections must be either:

1. formally invented in the **same chapter** (in the blueprint phase), or  
2. already invented in a **prior chapter**.

Forward use of tools that are defined later — even within the same chapter — violates this rule.

**Evidence:** `AGENTS.md §知识点章节工具原则`; `research_findings_tools-glossary.yaml` finding `same-chapter-pre-explanation-use`; `research_findings_foundation-scope.yaml` finding FND-01  
**Known violations to address:** §4.2 uses `sqrt(2)`, `x^2` before blueprint; §4.3 uses `n, a, 6n+3` before blueprint; §2.4 uses letter-equation solving before §4 introduces variables.

---

## R-05 — Glossary Abbreviation Rule

Every term that appears with an English abbreviation must have a `#vocab` glossary entry containing **all three** components:

```
Chinese term | English full name | Abbreviation
```

Abbreviation-only or English-only entries are non-compliant.
`00-gateway/symbols.typ` may support notation lookup, but it does **not** replace chapter-local terminology/glossary coverage.

**Evidence:** `research_findings_tools-glossary.yaml` finding `abbreviation-rule-noncompliance`; `glossary_gaps` list  
**Known gaps:** GCD/LCM, SSS/SAS/ASA/AAS/SSA/HL, AA (9 entries total — see `glossary_gaps` in tools-glossary findings).

---

## R-06 — Public-Foundation Boundary Rule

Chapters 01–04 must not introduce concepts that depend on tools invented in chapters 05–10.  
Chapter 05 remains a **foundation gate**: it may diagnose, recap, and route learners into branches, but it may not become a stealth branch-lesson for new formal tools.
Specifically:

- **No variable/equation solving** before §4 formally introduces letters (violates R-04 and this rule).  
- **No quadrant terminology** before the concept is formally named in §3.5 or §4.1.  
- **No advanced content** (e.g., exponential form, full irrational-number classification) when the chapter's stated role is an intuitive side-window.

**Evidence:** `research_findings_foundation-scope.yaml` findings FND-01, FND-02, FND-04; `AGENTS.md §全书结构原则`  
**Consequence of violation:** Public-foundation scope leak; structural blocker.

---

## R-07 — Worktree-First, Merge-Last

All execution — analysis, edits, new files, Typst builds — happens **exclusively in this worktree**:

```
/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419
```

Nothing is pushed or merged to `main` until:

1. The structure exit gate (`task-017`) passes (zero open structural blockers), **and**  
2. The quality continuation gate (`task-032`) passes (reviewer confidence drops below 50 % after at least 5 quality iterations).

Any agent that modifies files outside this worktree, or that merges to `main` before both gates pass, is in violation.

---

## Rule Quick-Reference

| ID | Rule | Gate |
|----|------|------|
| R-01 | Immutable 00-10 spine — no reorder/collapse/extension | Structure exit (task-017) |
| R-02 | Branch spine: {branch}基础 → 基础总结 → {branch}进阶 → {branch}总结 | Structure exit (task-017) |
| R-03 | Max 3 invented tools per knowledge-point chapter | Structure exit (task-017) |
| R-04 | No forward tool use — must use same-chapter (post-blueprint) or prior-chapter tools only | Structure exit (task-017) |
| R-05 | Glossary abbreviation: Chinese term + English full name + abbreviation together | Quality continuation (task-032) |
| R-06 | Public-foundation (01–04) boundary — no advanced or pre-defined tool leakage | Structure exit (task-017) |
| R-07 | All work in worktree; merge to main only after both gates pass | Quality continuation (task-032) |
