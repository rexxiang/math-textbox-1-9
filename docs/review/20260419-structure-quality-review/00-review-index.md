# Review Index — 20260419-structure-quality-review

**Plan:** `docs/plan/20260419-structure-quality-review/plan.yaml`  
**Artifact root:** `docs/review/20260419-structure-quality-review/`  
**Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`  
**Merge target:** `main`

---

## Authoritative Naming Rule

All review artifacts for this plan live under the artifact root above and use:

```text
<slot>-<stage>-<topic>.md
```

- `<slot>` is the **artifact slot**, not the task-ID suffix.
- Slots are reserved by stage and must stay stable even if task IDs change.
- Later agents must reuse the exact slot bands below.

---

## Slot Bands by Stage

| Slot band | Stage | Rule |
|---|---|---|
| `00-01` | Scaffold | Index + immutable rule ledger |
| `02-06` | Structure baselines | Baselines and synthesis before structure iterations start |
| `10-19` | Structure iterations 01-05 | Odd review / even-next resolution pattern by iteration pair |
| `20` | Structure exit gate | Pass/fail gate before any quality work |
| `40-43` | Quality baselines | Rubric and backlog queues after structure stabilizes |
| `50-59` | Quality iterations 01-05 | Odd review / even-next resolution pattern by iteration pair |
| `60` | Quality continuation gate | Stop/continue gate based on confidence and blockers |
| `100+` | Structure extension tasks | Iteration 06+ review/resolution pairs if structure blockers remain |
| `200+` | Quality extension tasks | Iteration 06+ review/resolution pairs if confidence stays ≥ 50% |

---

## Registered Artifacts

### Scaffold

| File | Task | Purpose |
|---|---|---|
| `00-review-index.md` | task-001 | Naming convention, slot bands, stage map |
| `01-rule-ledger.md` | task-001 | Immutable execution and content rules |

### Structure Baselines

| File | Task |
|---|---|
| `02-structure-baseline-topology.md` | task-002 |
| `03-structure-baseline-tool-order.md` | task-003 |
| `04-structure-baseline-glossary.md` | task-004 |
| `05-structure-baseline-boundaries.md` | task-005 |
| `06-structure-remediation-queue.md` | task-006 |

### Structure Iterations 01-05

| File | Task |
|---|---|
| `10-structure-iteration-01.md` | task-007 |
| `11-structure-iteration-01-resolution.md` | task-008 |
| `12-structure-iteration-02.md` | task-009 |
| `13-structure-iteration-02-resolution.md` | task-010 |
| `14-structure-iteration-03.md` | task-011 |
| `15-structure-iteration-03-resolution.md` | task-012 |
| `16-structure-iteration-04.md` | task-013 |
| `17-structure-iteration-04-resolution.md` | task-014 |
| `18-structure-iteration-05.md` | task-015 |
| `19-structure-iteration-05-resolution.md` | task-016 |

### Gates

| File | Task | Gate |
|---|---|---|
| `20-structure-exit-gate.md` | task-017 | Structure exit gate |
| `60-quality-continuation-gate.md` | task-032 | Quality continuation gate |

### Quality Baselines

| File | Task |
|---|---|
| `40-quality-rubric.md` | task-018 |
| `41-quality-glossary-queue.md` | task-019 |
| `42-quality-summary-crossref-queue.md` | task-020 |
| `43-quality-boundary-regression-queue.md` | task-021 |

### Quality Iterations 01-05

| File | Task |
|---|---|
| `50-quality-iteration-01.md` | task-022 |
| `51-quality-iteration-01-resolution.md` | task-023 |
| `52-quality-iteration-02.md` | task-024 |
| `53-quality-iteration-02-resolution.md` | task-025 |
| `54-quality-iteration-03.md` | task-026 |
| `55-quality-iteration-03-resolution.md` | task-027 |
| `56-quality-iteration-04.md` | task-028 |
| `57-quality-iteration-04-resolution.md` | task-029 |
| `58-quality-iteration-05.md` | task-030 |
| `59-quality-iteration-05-resolution.md` | task-031 |

### Extension-Task Ranges

| Range | Naming pattern | Use |
|---|---|---|
| `task-100+` | `1NN-structure-iteration-0X(.md / -resolution.md)` | Append structure iteration 06+ review/resolution pairs before quality stage |
| `task-200+` | `2NN-quality-iteration-0X(.md / -resolution.md)` | Append quality iteration 06+ review/resolution pairs after task-032 says continue |

Examples:

- `100-structure-iteration-06.md`
- `101-structure-iteration-06-resolution.md`
- `200-quality-iteration-06.md`
- `201-quality-iteration-06-resolution.md`

---

## Execution Order

```text
00-01  scaffold
02-06  structure baselines + queue
10-19  structure review/fix loop (01-05)
20     structure exit gate
40-43  quality rubric + queues
50-59  quality review/fix loop (01-05)
60     quality continuation gate
100+   structure extensions if 20 fails
200+   quality extensions if 60 says continue
```

All work happens in this worktree. Nothing merges back to `main` until the structure exit gate and quality continuation gate both pass.
