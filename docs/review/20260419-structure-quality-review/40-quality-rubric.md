# Quality Stage Rubric

**Date:** 2026-04-19  
**Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`  
**Scope:** stage-2 / top-tier quality review standard after structure-stage PASS  
**Audit mode:** review only

## 1. Quality-stage purpose

This rubric defines what the project should now treat as a **meaningful quality defect** once the structure stage has passed and the whole-book spine is considered stable.

Quality review is now expected to be:

- **strict**
- **multi-angle**
- **multi-dimension**
- grounded in the book’s actual goal: a **Chinese self-study math textbook for grades 1-9**

The target reading experience is:

- beginner-friendly
- dialog-like rather than slogan-like
- supportive of self-study without teacher rescue
- allowed to keep moderate **趣味 / 冒险感** outside formal definitions, theorem statements, and other strict blueprint surfaces

---

## 2. What counts as a meaningful quality defect now

After structure stabilization, a finding counts as a **quality defect** only if it materially harms comprehension, retention, navigation, glossary reliability, review integrity, or learner trust **without needing top-level structural surgery to explain it**.

### 2.1 Counts as a meaningful quality defect

1. **Glossary / terminology defects**
   - a learner-visible term is used but not covered stably enough for self-study
   - an English abbreviation appears without full glossary-grade coverage
   - terminology drifts across chapter / review / summary surfaces

2. **Abbreviation-handling defects**
   - any term with an English abbreviation lacks the eventual trio:
     - Chinese term
     - English full name
     - abbreviation
   - review or summary surfaces use shorthand that the learner cannot reliably decode

3. **Wording clarity defects**
   - the wording is technically correct but still confusing for a solo beginner
   - explanatory sentences hide the real idea behind compression, vagueness, or adult-expert shortcuts

4. **Same-or-earlier-tool defects on non-structural surfaces**
   - examples, chapter reviews, branch summaries, recap blocks, or cross-chapter review surfaces depend on tools that are not yet stable from the learner’s point of view
   - this includes soft pre-use created by shorthand, notation, or unlabeled reference jumps

5. **Branch-summary quality defects**
   - a branch summary stops behaving like a usable consolidation checkpoint
   - summary language becomes too thin, too implicit, too encyclopedic, or too dependent on memory of hidden prerequisites

6. **Review-surface integrity defects**
   - mixed review sets quietly test material not yet stabilized
   - answer keys are incomplete, misleading, or inconsistent with the reviewed toolset
   - spiral review links exist in name only and do not actually help recall

7. **Cross-reference quality defects**
   - `#secref(...)` style references point to the wrong place, a too-broad place, or a place that does not actually supply the promised tool
   - “go back and review X” instructions are too vague for self-study use

8. **Foundation-boundary leakage**
   - Chapter 05 or other recap / gate surfaces start reteaching new branch content under a review label
   - branch-entry recap blocks stop being wake-up aids and become mini-lessons

9. **Difficulty-gradient defects**
   - the route is structurally legal but still feels like a pedagogical cliff
   - examples, exercises, or summary compression jump too fast for the intended grade band

10. **Tone-fit defects**
    - the text becomes too dry, too performative, too slogan-like, too adult, or too cute in a way that damages trust
    - formal surfaces lose precision, or non-formal surfaces lose beginner warmth

### 2.2 Does **not** count as a meaningful quality defect

- purely personal wording preference with no learner-impact evidence
- cosmetic rewrites that do not improve understanding, navigation, or glossary reliability
- requests to reopen the top-level book spine during routine quality review
- “this chapter should be split / merged / relocated” unless the issue is strong enough to formally reopen structure stage
- isolated stylistic variation that remains clear, correct, and beginner-friendly
- a reviewer wanting a different example merely because it feels nicer, while the current one already teaches the intended tool well
- duplicate observations already captured by an open finding, unless new evidence raises severity

---

## 3. Frozen-structure rule for quality stage

Quality stage begins **only because structure has already passed**. Therefore:

- **Top-level structure stays frozen.**
- Keep the live whole-book spine: `00-gateway / 01-04 / 05 / 06-09 / 10`.
- Keep current branch-summary checkpoint positions.
- Keep the currently stabilized routing unless a later plan explicitly authorizes a limited second-level adjustment.

### Default rule

During quality stage, reviewers should assume:

- **no new structural surgery**
- **no new top-level reordering**
- **no routine chapter splitting / merging / relocation**

### Narrow exception rule

If a later plan explicitly allows a second-level intervention, fixes may reorder / split / merge at the second level **only** under that explicit authorization.  
Without that authorization, the correct response is:

- record the issue as a potential structure-reopen signal, and
- **do not** smuggle structural change in as ordinary quality polishing.

---

## 4. Review dimensions for quality stage

Every quality iteration should review the book through multiple dimensions, not through line-editing alone.

| Dimension | What reviewers should ask |
|---|---|
| Glossary completeness | Are learner-visible terms covered enough for self-study? Are glossary surfaces complete, stable, and non-contradictory? |
| Abbreviation handling | For every English abbreviation, is there coverage for **中文术语 + English full name + abbreviation** somewhere the learner can reliably recover? |
| Wording clarity for self-study learners | Can a grades 1-9 self-study reader follow the explanation without a teacher filling gaps? |
| Same-or-earlier-tool usage in examples / reviews / summaries | Do examples, recaps, summaries, and mixed reviews only rely on tools the learner already owns? |
| Branch-summary quality | Does each branch summary really consolidate, not merely compress? Does it help recall and route forward? |
| Review-surface integrity | Do review sets, answer keys, and spiral prompts honestly stay within the promised review surface? |
| Cross-reference quality | Do references send the learner to the right prior support point, with enough precision to be useful? |
| Foundation-boundary leakage | Does Chapter 05 remain a gate and recap surface rather than disguised new teaching? |
| Difficulty gradient | Even if structurally legal, does the learner path rise at a manageable pace across grade bands and chapter checkpoints? |
| Tone fit for beginners | Is the voice dialog-like, calm, and motivating? Is moderate 趣味 / 冒险感 used only where it helps? |
| Notation / term consistency | Are symbols, labels, and naming choices stable across body text, summaries, reviews, and answers? |
| Self-study recoverability | If a learner gets stuck, does the text provide enough breadcrumbs to recover alone? |

### Dimension-specific emphasis

1. **Glossary and abbreviation coverage are top-tier checks, not optional polish.**
2. **Examples / reviews / summaries are first-class audit surfaces.** Quality review is not limited to blueprint paragraphs.
3. **Difficulty gradient remains in scope even after structure stabilizes.** A legally placed chapter can still be pedagogically too steep.
4. **Tone is judged by teaching fitness, not by literary taste.**

---

## 5. Severity taxonomy and defect types

### 5.1 Severity levels

| Severity | Meaning | Typical consequence |
|---|---|---|
| **Critical** | The finding breaks the assumptions that allowed quality stage to begin. Usually this means frozen-structure violation, branch-summary displacement, major foundation-boundary breach, or another issue strong enough to reopen structure stage. | Stop routine quality flow; escalate immediately. |
| **High** | Serious self-study blocker or major trust-breaker. Learners are likely to misunderstand, get lost, or apply the wrong tool. | Must be fixed before claiming strong quality convergence. |
| **Medium** | Clear and real quality defect with local or regional impact, but not a stage-breaking failure. | Queue for near-term resolution in the current quality cycle. |
| **Low** | Useful polish with visible learner benefit, but not comprehension-critical on its own. | Fix opportunistically once higher issues are controlled. |
| **Note** | Observation worth tracking, but not yet a defect requiring action. | Record only; do not inflate into a blocker. |

### 5.2 Defect-type labels

Use one primary type per finding, with optional secondary tags:

- `glossary-gap`
- `abbreviation-gap`
- `clarity`
- `notation-consistency`
- `same-or-earlier-tool`
- `review-integrity`
- `summary-quality`
- `crossref-quality`
- `boundary-leakage`
- `difficulty-gradient`
- `tone-fit`
- `answer-key-quality`
- `structure-reopen-signal`

### 5.3 Escalation rule

If a supposed “quality” finding actually requires top-level structural change, or clearly proves that the current second-level routing is pedagogically invalid at a structural level, re-label it as:

- **Severity:** `Critical`
- **Type:** `structure-reopen-signal`

and stop pretending it is routine quality cleanup.

---

## 6. Confidence-scoring model per quality iteration

Each quality iteration must end with an explicit reviewer confidence score about whether the quality process is still under control and whether another iteration is justified.

## 6.1 What the score means

The score is **not** “how good the book feels.”  
It is the reviewer’s confidence that:

- the current findings are understood well enough,
- the stage boundary still holds,
- the remaining backlog is still quality-stage work rather than hidden structure work,
- and another iteration can proceed without losing review integrity.

## 6.2 Scoring method

Start each iteration at **100%**, then adjust:

| Condition | Adjustment |
|---|---|
| Each unresolved **Critical** finding | cap score at **40%** immediately |
| Each unresolved **High** finding | `-20%` |
| Each unresolved **Medium** finding | `-8%` |
| Each unresolved **Low** finding | `-3%` |
| Missing or weak evidence for a claimed finding / closure | `-5%` each |
| Cross-dimension blind spot (for example, glossary checked but summaries / review surfaces not checked) | `-10%` each missing dimension family |
| Clear proof that a prior fix held across all affected surfaces | optional `+3%` each, up to `+9%` total |

After adjustments:

- clamp the result to `0%–100%`
- record the exact arithmetic in the artifact

## 6.3 Confidence bands

| Score | Meaning | Action |
|---|---|---|
| `85-100%` | Strong control | Continue or prepare for quality exit if backlog is clean enough. |
| `70-84%` | Controlled but still active | Continue targeted quality iterations. |
| `50-69%` | Fragile control | Continue only with a sharply narrowed scope and explicit risk notes. |
| **`<50%`** | **Stop rule triggered** | **Stop routine quality iteration immediately. Do not continue the normal loop. Escalate, consolidate blockers, and decide whether structure must be reopened or the review plan must be reset.** |

## 6.4 Explicit `<50%` stop rule

This project uses a hard stop rule:

- If reviewer confidence for a quality iteration falls **below 50%**, the team must **stop** the ordinary quality loop.
- Do **not** label the stage “still continuing normally.”
- Do **not** hide the collapse by counting the next pass as just another routine iteration.
- The continuation gate must instead state why confidence dropped below control level and whether the issue is:
  - evidence weakness,
  - unresolved high-severity backlog,
  - cross-dimension review failure,
  - or a disguised structure re-open.

---

## 7. How quality-stage artifacts should record work

Every quality-stage review or resolution artifact should record four things explicitly:

1. findings
2. action items
3. acceptance criteria
4. confidence

### 7.1 Required artifact header

Each quality artifact should declare at minimum:

- artifact title
- task ID
- worktree
- scope
- review status (`pass / fail / continue / blocked`)
- confidence score
- stop-rule status (`triggered / not triggered`)
- structure-freeze status (`held / violated / reopen-suspected`)

### 7.2 Findings table

Use a findings table with at least these columns:

| ID | Severity | Type | Location | Evidence | Learner impact | Required action |
|---|---|---|---|---|---|---|

Rules:

- findings must cite real locations
- learner impact must be stated in self-study terms
- “unclear” alone is not enough; explain **why** it blocks or weakens self-study

### 7.3 Action-item section

Action items should be concrete enough to verify later. Good action items:

- identify the exact surface to fix
- say what defect must disappear
- avoid prescribing unauthorized structural surgery

### 7.4 Acceptance-criteria section

Acceptance criteria must be observable. Examples:

- glossary entry now includes Chinese term, English full name, and abbreviation
- summary no longer uses shorthand before recovery support appears
- cross-reference now points to the exact prior section that teaches the needed tool
- Chapter 05 wording remains recap / routing only, with no disguised new branch teaching

### 7.5 Confidence section

The artifact must show:

- starting score
- deductions / bonuses
- final score
- confidence band
- whether the **`<50%` stop rule** was triggered
- what the score implies for the next artifact

Recommended format:

| Item | Value |
|---|---|
| Start score | `100%` |
| Deductions | `High x1 = -20%`, `Medium x2 = -16%` |
| Bonuses | `closure hold x1 = +3%` |
| Final score | `67%` |
| Band | `50-69%` |
| Stop rule | `not triggered` |
| Next-step judgment | `continue with narrowed scope` |

---

## 8. Acceptance standard for quality-stage PASS claims

A quality iteration should not claim strong PASS momentum unless all of the following are true:

- no `Critical` finding is open
- the structure-freeze check still holds
- no branch summary or Chapter 05 surface has drifted into hidden structural work
- glossary / abbreviation coverage is being tracked honestly
- examples / reviews / summaries were audited, not skipped
- confidence remains at or above `50%`, with a clear justification

If these conditions do not hold, the artifact should say `continue`, `fail`, or `blocked` rather than exaggerating progress.
