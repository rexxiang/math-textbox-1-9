# Task 102 Review — `§7.1` structure audit

- **Task:** `task-102`
- **Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`
- **Scope:** review only; no chapter-content edits
- **Review status:** fail for current structure, ready for restructuring in `task-103`

## Reviewer conclusion

Current `§7.1` is structurally overloaded. The file exposes only three umbrella labels in `#vocab[...]` — `全等 / 全等判定 / 证明链` (`typst/07-geometry-deepening/01-congruent-triangles.typ:5`) — but the actual learner-visible load is much larger: the chapter teaches congruence meaning and correspondence, proof-chain entry, five separate congruence criteria, `SSA` as a non-tool, and an isosceles-triangle proof application (`typst/07-geometry-deepening/01-congruent-triangles.typ:24-32,54-102`).

Under the locked rule (“honest max-3 by learner-visible fine-grained concepts; no umbrella packaging”), current `§7.1` cannot pass as-is. `task-103` must split the surface honestly rather than relabeling five criteria as one concept.

## 1. Honest concept inventory in current `§7.1`

## Evidence-backed inventory

| Learner-visible concept | Evidence | Why it counts separately |
|---|---|---|
| 1. 全等的意义与对应关系 | `01-congruent-triangles.typ:24-25,54-63` | “能完全重合”“对应边相等”“对应角相等” is the base concept, not the same as any criterion. |
| 2. 证明链入口 / 标准证明写法 | `01-congruent-triangles.typ:26-32,77-84` | The chapter explicitly teaches proof structure as its own routine: 已知 → 判定全等 → 对应元素相等. |
| 3. `SSS` | `01-congruent-triangles.typ:67` | Separate named criterion learners must recognize and choose. |
| 4. `SAS` | `01-congruent-triangles.typ:68` | Separate named criterion; also used in worked proof. |
| 5. `ASA` | `01-congruent-triangles.typ:69` | Separate named criterion. |
| 6. `AAS` | `01-congruent-triangles.typ:70` | Separate named criterion. |
| 7. `HL` | `01-congruent-triangles.typ:71` | Separate right-triangle-only criterion. |
| 8. `SSA` 不是判定 | `01-congruent-triangles.typ:75,126-128,168` | This is a distinct anti-tool learners must remember precisely because it blocks a wrong move. |
| 9. 等腰三角形的全等应用 | `01-congruent-triangles.typ:86-102,145-157,178-184` | This is not just repetition: it is the chapter’s first structured proof application and a new use case. |

**Judgment:** the honest inventory is **9 learner-visible concepts**. Even the most charitable grouping still leaves the chapter far above the max-3 cap.

## 2. What belongs together pedagogically, and what must split

### Should stay together for first-time proof learners

1. **Congruence meaning + correspondence discipline + proof-chain entry**
   - The file already frames these as one entry package: what full overlap means, why “对应” matters, and how a proof is written (`01-congruent-triangles.typ:24-32,54-63,77-84,130-132`).
   - This is the true beginner-proof doorway for Chapter 07.

2. **`SSS` + `SAS` + first isosceles application**
   - `SAS` is the criterion actually used in the chapter’s model proof and in the isosceles example (`01-congruent-triangles.typ:82-84,88-102`).
   - These are the most concrete “rigidity” cases for first contact.

3. **`ASA` + `AAS` + `HL`**
   - These are still congruence tools, but they are a second wave: two angle-led criteria and one right-triangle exception (`01-congruent-triangles.typ:69-71`).
   - They belong after learners already understand correspondence and the proof template.

### Must not stay bundled on one surface

- `SSS / SAS / ASA / AAS / HL` must not be counted as one “全等判定” concept (`01-congruent-triangles.typ:65-75`; `11-review.typ:10-12,47,77`).
- `SSA` must not be hidden as a minor note; it is a distinct “do not use this” decision point (`01-congruent-triangles.typ:75,126-128`).
- The isosceles proof application should not be treated as free extra practice when it is the chapter’s first full transfer from criterion to geometric consequence (`01-congruent-triangles.typ:86-102`).

## 3. Viable restructuring options

### Convention check

- `rg "§[0-9]+\\.[0-9]+[A-Z]|<sec-[0-9]+-[0-9]+[A-Z]" typst/**/*.typ` returns **no matches**, so there is no in-repo evidence for letter-suffixed section numbering or anchor labels.
- `typst/main.typ:99-112` shows the authoritative Chapter 07 route as a numeric include spine: `01`, `02`, `03`, `04`, `05`, `06`, `07`, `08`, `09`, `10`, `11`.
- Existing public chapter surfaces are numbered as standard numeric `§7.1` through `§7.10` headings (for example `01-congruent-triangles.typ:3`, `02-similar-triangles.typ:3`, `06-pythagorean-theorem.typ:3`, `10-circle-extensions.typ:3`).

**Judgment:** my earlier lettered recommendation is **not** aligned with the repository’s visible numbering conventions. The recommended path should therefore prefer a numeric split, even though that increases rerouting cost.

## Option A — **Recommended:** numeric split with downstream renumbering

### Shape

- **new `§7.1` 全等与证明入口**
  - congruence meaning / correspondence
  - proof-chain entry
  - `SSA` as anti-tool
- **new `§7.2` 刚性判定（一）**
  - `SSS`
  - `SAS`
  - isosceles-triangle congruence application
- **new `§7.3` 刚性判定（二）**
  - `ASA`
  - `AAS`
  - `HL`

- current `§7.2`–`§7.11` shift forward accordingly so the whole branch remains numeric.

### Why this works

- Keeps the Chapter 07 proof line smooth: learners meet proof language first, then basic rigid-lock cases, then angle-led/right-triangle cases.
- Keeps every learner-visible surface at `<= 3` concepts.
- Aligns with the repository’s current numeric-only section and anchor convention.

### Trade-offs

- Requires the largest numeric reroute in Chapter 07 because current `§7.2` onward must be renumbered.
- Forces broad `#secref(...)` updates across Chapter 07, smoke, and capstone surfaces.

## Option B — lettered local cluster (secondary / not convention-aligned)

### Shape

- **`§7.1A`** congruence meaning + correspondence
- **`§7.1B`** proof-chain entry + corresponding-elements rule + `SSA` warning
- **`§7.1C`** `SSS` + `SAS` + isosceles application
- **`§7.1D`** `ASA` + `AAS` + `HL`

### Why it is viable

- Lowest per-surface cognitive load for first-time proof learners.
- Makes “how to write a proof” visibly prior to “which criterion to pick.”
- Minimizes downstream renumbering.

### Trade-offs

- Most fragmented local proof block.
- Highest local authoring and cross-reference churn inside Chapter 07.
- Risks making the route feel too granular unless overview/review copy is rewritten carefully.
- Conflicts with observed repository convention: no current `§X.YA` / `<sec-X-YA>` pattern exists under `typst/`.

## Option C — numeric split with a four-step novice-first ramp

### Shape

- Insert four new numbered proof chapters before the current similarity chapter and renumber the rest of Chapter 07 downstream.

### Why it is viable

- Clean public numbering with no letter suffixes.
- Makes the structural fix fully explicit in the book topology.
- Gives the lowest per-surface cognitive load while staying convention-aligned.

### Trade-offs

- Largest rerouting cost across overview, main entry, smoke builds, review surfaces, capstone references, and all `#secref(...)` links.
- Highest rerouting and renumbering cost of all options.

## Recommendation

Choose **Option A**. After checking repository conventions, it is the best balance of honesty, learner smoothness, and convention alignment:

- it fixes the fake max-3 packaging,
- preserves the Chapter 07 proof-before-summary flow,
- and keeps the resulting public structure inside the repository’s existing numeric chapter scheme.

## 4. Downstream rerouting surfaces the eventual fix will need

1. **Chapter route copy**
   - `typst/07-geometry-deepening/00-overview.typ:24-36`
   - The overview currently presents one `§7.1` proof-entry node before `§7.2` similar triangles.

2. **Foundation-summary proof map**
   - `typst/07-geometry-deepening/05-foundation-summary.typ:8-18,24-39`
   - The summary currently compresses the proof entry into `#secref("7.1")、#secref("7.2")`.

3. **Chapter review / mixed practice**
   - `typst/07-geometry-deepening/11-review.typ:10-13,47-49,67-71,77,97`
   - The review currently lists all congruence criteria together and calls back to `#secref("7.1")` as one surface.

4. **Main book include order**
   - `typst/main.typ:99-112`
   - Any convention-aligned numeric split must update the Chapter 07 include sequence and renumber downstream entries.

5. **Smoke build entry**
   - `typst/smoke/07-geometry-deepening.typ:37-48`
   - Smoke compilation mirrors the chapter include order and must stay in sync.

6. **Internal cross-reference surfaces**
   - `typst/07-geometry-deepening/03-quadrilaterals.typ:26-28`
   - `typst/07-geometry-deepening/08-transformations.typ:166-172`
   - These currently reference `#secref("7.1")` broadly.

7. **Capstone / whole-book narrative references**
   - `typst/10-capstone/invention-tree.typ:112-116`
   - `typst/10-capstone/review.typ:50-52`
   - These references describe Chapter 07’s proof chain and will need relabeling if `§7.1` becomes a cluster rather than one overloaded stop.

## 5. Actionable follow-ups for `task-103`

1. Produce an explicit **post-split concept inventory** for each resulting surface before drafting prose.
2. Split `§7.1` using an option equivalent to A/B/C above; do **not** relabel the current file and keep all criteria inside it.
3. Update all route-copy and cross-reference surfaces listed above.
4. Recheck `§7.5` and `§7.11` to confirm they are summarizing the new structure rather than re-collapsing it.
5. Re-run a focused Chapter 07 structural regression after the split.

## 6. Acceptance criteria for `task-103`

`task-103` should only pass if **all** of the following are true:

1. **No umbrella counting**
   - The change set must enumerate learner-visible concepts separately.
   - `SSS / SAS / ASA / AAS / HL / SSA-warning / isosceles-application` cannot be counted as one “全等判定” block.

2. **Per-surface honest cap**
   - Every resulting learning surface in the split `§7.1` proof block has an explicit concept list with **at most 3** learner-visible concepts.

3. **Proof-entry integrity**
   - Congruence meaning/correspondence and proof-chain entry remain available before later proof-heavy Chapter 07 uses.

4. **Criterion honesty**
   - If a surface teaches `SSS`, `SAS`, `ASA`, `AAS`, or `HL`, each taught criterion is named and counted individually.

5. **`SSA` cannot disappear into footnotes**
   - The eventual structure must still teach that `SSA` is not a valid congruence criterion, and this warning must be counted as part of that surface’s learner load.

6. **Application honesty**
   - If the isosceles-triangle proof application remains in the `§7.1` cluster, it must be counted as a learner-visible concept/application load, not treated as “free exercise only.”

7. **Convention-aligned routing updated everywhere**
   - The accepted fix uses repository-aligned numeric section numbering rather than introducing `§X.YA` / `<sec-X-YA>` labels.
   - `00-overview.typ`, `05-foundation-summary.typ`, `11-review.typ`, `typst/main.typ`, `typst/smoke/07-geometry-deepening.typ`, and affected cross-ref/capstone files are updated consistently.

8. **No fake compliance in recap surfaces**
   - Summary/review files may use “全等判定” as a recap label only **after** the underlying criteria have already been taught on separate honest surfaces; recap wording cannot be used as the concept-counting basis.

## Exit judgment

`task-102` review work is complete, but the current `§7.1` structure remains **blocked** pending `task-103`.
