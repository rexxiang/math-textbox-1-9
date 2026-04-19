# Structure Iteration 04 — Whole-Book Tool-Order / Boundary Re-Review

**Task:** `task-013`  
**Paired resolution task:** `task-014`  
**Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`

## Anchors used

- `docs/review/20260419-structure-quality-review/01-rule-ledger.md`
- `docs/review/20260419-structure-quality-review/03-structure-baseline-tool-order.md`
- `docs/review/20260419-structure-quality-review/05-structure-baseline-boundaries.md`
- `docs/review/20260419-structure-quality-review/06-structure-remediation-queue.md`
- `docs/review/20260419-structure-quality-review/15-structure-iteration-03-resolution.md`

## Scope re-reviewed directly in repo

- whole-book structure after iteration 03
- tool invention / use order
- same-or-earlier-tool enforcement
- max-3 regression after inserted summary nodes
- public-foundation / foundation-gate boundary discipline
- known boundary-open surfaces under new numbering:
  - original `§2.4` → current `§2.5`
  - original `§4.2` → current `§4.3`
  - original `§5.1` / `§5.3`
  - original `§8.4` → current `§8.5`
- Chapter-03 public-foundation geometry formula surfaces reopened during this re-review:
  - `typst/03-geometry-foundation/02-perimeter.typ`
  - `typst/03-geometry-foundation/02-area-volume.typ`
  - `typst/03-geometry-foundation/06-review.typ`

## Reviewer conclusion

- **Review status:** fail
- **Open blocker types:** future-family preview leakage, foundation-gate boundary leakage, public-foundation geometry symbolic-formula leakage, and hidden max-3 overload in the rerouted probability chapter.
- **Max-3 interpretation for this review:** counts are by learner-visible **fine-grained new concepts**, not by umbrella labels created to package several distinct ideas into one “big concept.”
- **Task-014 constraint:** fixes must stay inside existing top-level directories and **must not make any top-level `00-10` spine change**.

## Findings

### F01 — high — original `§8.4` (now `§8.5`) still leaks future-family teaching instead of staying at comparison level

- **Rules hit:** R-04, R-06
- **Evidence:**
  - `typst/08-function-models/05-rate-change-models.typ:107-115` explicitly compresses rolling growth into `$y = 1000 times 1.05^t$`.
  - `typst/08-function-models/05-rate-change-models.typ:137-145` still frames the chapter inside a model-family table, which pushes it toward a future-family node instead of a comparison checkpoint.
  - `typst/08-function-models/03-foundation-summary.typ:24-28` explicitly says `§8.5` should only compare rhythms and should **not** pretend to close a new formula family.
- **Judgment:** this remains the clearest open boundary defect after iteration 03. The chapter should compare “固定差” vs “固定倍率”, not formally compress rolling growth into a later-family expression.

### F02 — high — `§5.1` and `§5.3` still use quadrant terminology before the public foundation securely establishes it

- **Rules hit:** R-04, R-06
- **Evidence:**
  - `typst/05-foundation-gate/01-foundation-check.typ:136-143` asks learners to place a translated point and then judge “点 B 在第几象限”.
  - `typst/05-foundation-gate/03-review.typ:54-78` asks for a moved point and answers “在第四象限”.
  - Earlier foundation coverage still does not cleanly invent quadrant naming as a stable prerequisite:
    - `typst/03-geometry-foundation/05-coordinate-entry.typ` stays in the origin’s upper-right region and on the axes
    - `typst/04-number-line-algebra-bridge/01-rational-numbers.typ` reuses signed direction on the plane without opening a full new coordinate-family chapter
- **Judgment:** Chapter 05 is still breaking the gate boundary by relying on quadrant naming it should not assume yet. The gate should diagnose and route, not lean on an under-invented label family.

### F03 — high — `§3.2` perimeter chapter still pre-uses algebraic-expression machinery inside the public foundation

- **Rules hit:** R-04, R-06
- **Evidence:**
  - `typst/03-geometry-foundation/02-perimeter.typ:17-24` discovery already uses symbolic placeholders and grouped expressions:
    - `$a + b + a + b = 2(a + b)$`
    - `$a + a + a + a = 4a$`
  - `typst/03-geometry-foundation/02-perimeter.typ:37-46` blueprint escalates that into general formula-family notation:
    - `$C = 2(a + b)$`
    - `$C = 4a$`
    - `$C = 2 pi r = pi d$`
  - No earlier public-foundation chapter formally establishes `a, b, C, r, d` as allowed placeholder notation or introduces this expression family as legal baseline syntax.
- **Judgment:** this is not just harmless abbreviation. The chapter is using the same compression style that Chapter 4 later formalizes: symbolic placeholders, grouped expressions, and equality-template formulas. In public foundation, that is a structural blocker.

### F04 — high — `§3.4` area/volume chapter is the stronger Chapter-03 blocker because it depends on a full symbolic formula family

- **Rules hit:** R-04, R-06
- **Evidence:**
  - `typst/03-geometry-foundation/02-area-volume.typ:14-53` discovery is already built on symbolic formula families:
    - `$S_"长方形" = a b$`
    - `$S_"平行四边形" = b h$`
    - `$S_"三角形" = frac(1, 2) b h$`
    - `$S_"梯形" = frac(1, 2)(a + b) h$`
    - `$S_"圆" = pi r^2$`
  - `typst/03-geometry-foundation/02-area-volume.typ:70-109` blueprint continues with symbolic inventory tables:
    - `$S = a b$`, `$S = a^2$`, `$S = b h$`, `$S = frac(1, 2) b h$`, `$S = frac(1, 2)(a + b) h$`, `$S = pi r^2$`
    - `$V = a b c$`, `$V = a^3$`, `$V = pi r^2 h$`
  - This chapter depends on `S`, `V`, `a`, `b`, `c`, `h`, `r`, `pi`, exponent notation, and multi-factor expression templates before the algebra bridge formalizes letters as templates.
- **Judgment:** this is a same-or-earlier-tool failure **and** a public-foundation boundary failure. It is more than isolated symbol use; it is a full symbolic formula inventory built on later expression literacy.

### F05 — medium — `§3.6` review immediately re-propagates the same Chapter-03 formula-family leakage inline

- **Rules hit:** R-04, regression safety under iteration 04
- **Evidence:**
  - `typst/03-geometry-foundation/06-review.typ:10-15` still presents `$C = 2(a + b)$` and `$C = 4a$`.
  - `typst/03-geometry-foundation/06-review.typ:30-43` still presents `$S = b h$`, `$S = pi r^2$`, `$V = a b c$`, `$V = a^3$`, `$V = pi r^2 h$`.
  - `typst/03-geometry-foundation/06-review.typ:53-69` still drills circle / cylinder forms such as `$2 pi r$`, `$pi r^2$`, `$pi r^2 h$`.
- **Judgment:** even if `§3.2` and `§3.4` are corrected, `§3.6` will reopen the same blocker unless it is fixed in the same patch. It is therefore a required companion surface for task-014.

### F06 — medium — `§9.6` still appears to exceed the max-3 rule through blueprint-only tool expansion after the summary insertion

- **Rules hit:** R-03
- **Evidence:**
  - `typst/09-data-statistics/06-probability.typ:5` already consumes 3 glossary roots: 事件 / 样本空间 / 概率.
  - `typst/09-data-statistics/06-probability.typ:65-76` adds 必然事件 / 不可能事件 / 随机事件 as named tool content.
  - `typst/09-data-statistics/06-probability.typ:83-87` adds 对立事件.
  - `typst/09-data-statistics/06-probability.typ:91-92` adds 理论概率 / 实验概率.
  - `typst/09-data-statistics/06-probability.typ:108-110` adds fairness wording as another named rule surface.
- **Judgment:** iteration 03 fixed branch placement, but did not close this hidden overload. `§9.6` still needs real scope reduction or structural narrowing, not cosmetic relabeling.

### F07 — low — inserted summary nodes do not create a new structural regression by themselves

- **Rules hit:** none currently failing
- **Evidence:**
  - `typst/06-algebra-deepening/05-foundation-summary.typ:5-28`
  - `typst/07-geometry-deepening/05-foundation-summary.typ:5-28`
  - `typst/08-function-models/03-foundation-summary.typ:5-28`
  - `typst/09-data-statistics/05-foundation-summary.typ:5-28`
  - Across these files, no `#vocab[...]` block appears; blueprint sections summarize prior chapters and forward references stay in routing / preview language rather than acting as invention roots.
- **Judgment:** iteration-03 summary insertion held its line. Task-014 should preserve this pattern and avoid turning summary nodes into stealth invention chapters.

### F08 — low — original `§2.4` (now `§2.5`) no longer shows the earlier algebra / equation leakage

- **Rules hit:** none currently failing
- **Evidence:**
  - `typst/02-fraction-ratio-foundation/04-ratios-percentages.typ:66-82` now teaches ratio / proportion through parts-and-shares allocation, not variable solving.
  - `typst/02-fraction-ratio-foundation/04-ratios-percentages.typ:121-151` no longer contains `x`-solving or `ad = bc` formalization.
- **Judgment:** keep this surface closed. Do not reintroduce variable-based proportion solving into Chapter 02.

### F09 — low — original `§4.2` (now `§4.3`) is substantially narrowed and no longer shows the earlier same-chapter pre-use failure

- **Rules hit:** none currently failing
- **Evidence:**
  - `typst/04-number-line-algebra-bridge/02-real-numbers.typ:24-49` uses approximation / location language first.
  - `typst/04-number-line-algebra-bridge/02-real-numbers.typ:67-92` introduces `$sqrt(2)$` inside blueprint, not before it, and keeps the chapter focused on “补数轴” rather than a full real-number classification tree.
- **Judgment:** keep this bridge-side window narrow. Do not expand it back into full taxonomy or pre-blueprint symbolic leakage.

### F10 — low — optional / side-window placement after iteration 03 is structurally clearer on the rerouted tails

- **Rules hit:** none currently failing
- **Evidence:**
  - `typst/07-geometry-deepening/00-overview.typ:30-36` keeps `§7.10` explicitly as “选学” after the summary and advanced core.
  - `typst/07-geometry-deepening/10-circle-extensions.typ:79-82` explicitly says it is side-hall material, not a core gate.
  - `typst/09-data-statistics/00-overview.typ:25-27` keeps `§9.6` as the random side window after the new `§9.5` summary.
- **Judgment:** placement is clearer than before iteration 03, but `§9.6` still carries the hidden max-3 issue above, so this remains a pass-with-watch surface rather than a closure point.

## Per-surface judgments

| Surface | Current judgment | Note |
|---|---|---|
| original `§2.4` → current `§2.5` | **PASS** | algebraic proportion solving removed |
| original `§4.2` → current `§4.3` | **PASS** | same-chapter pre-use fixed; side window narrowed |
| `§5.1` | **FAIL** | quadrant terminology still premature |
| `§5.3` | **FAIL** | quadrant terminology still premature |
| `§3.2` | **FAIL** | perimeter chapter still depends on symbolic template notation |
| `§3.4` | **FAIL** | area/volume chapter still depends on symbolic formula families |
| `§3.6` | **FAIL** | review chapter re-opens the same geometry-formula leakage |
| original `§8.4` → current `§8.5` | **FAIL** | still escalates into future-family formula teaching |
| `§9.6` | **FAIL** | hidden max-3 overload remains open |
| inserted summary nodes `6.5/7.5/8.3/9.5` | **PASS** | routing/checkpoint only, no new formal tool families |

## Action items directly fixable in `task-014`

1. **Pull `§8.5` back to comparison level.**
   - remove the compressed power-form presentation
   - keep recursive / table / verbal comparison only:
     - “next = previous + fixed amount”
     - “next = previous × fixed factor”
   - keep explicit future-family preview material for Chapter 10 only

2. **Remove premature quadrant language from `§5.1` and `§5.3`.**
   - replace “第几象限” with directional coordinate language already supported by `§3.8` and `§4.1`
   - do not invent a new coordinate-family tool inside Chapter 05

3. **Recast `§3.2`, `§3.4`, and `§3.6` so public-foundation geometry stays pre-algebra in presentation.**
   - perimeter / area / volume reasoning should be teachable through words, numeric patterns, and geometric decomposition first
   - do not assume `a, b, c, h, r, d, C, S, V`, exponent-style forms, or compact equality templates as already-legal baseline notation
   - if any symbolic note is retained, it must be tightly demoted and must not function as prerequisite expression machinery
   - if `§3.4` still needs too many learner-visible sub-concepts after de-symbolization, split it into smaller knowledge-point chapters instead of keeping one umbrella “面积与体积” chapter

4. **Reduce `§9.6` to `<= 3` invented tools.**
   - narrow the core probability entry set
   - if several distinct probability sub-concepts are still needed, split or defer them instead of merging them upward into one umbrella “概率” bucket
   - do not pass this chapter by hiding extra concept families in blueprint prose or by relabeling them as one bigger concept
   - record the final counted tool inventory explicitly in the resolution note

5. **Preserve already-closed surfaces and iteration-03 spine work.**
   - keep current `§2.5` free of algebra-letter / equation leakage
   - keep current `§4.3` as a narrow bridge-side window
   - keep `06–09` summary nodes in place
   - keep optional / side-window nodes visibly post-summary
   - keep the top-level `00-10` spine unchanged

## Acceptance criteria for iteration-04 fixes (`task-014`)

### AC-01 — foundation-gate boundary discipline

- `§5.1` and `§5.3` contain **no quadrant terminology** unless an explicit earlier public-foundation invention root is added and cited.
- Reviewer can point to exact earlier line evidence if quadrant naming is retained.

### AC-02 — `§8.5` future-family boundary closure

- `§8.5` contains **no compressed power-form teaching** such as `a · r^t`.
- Growth-rate content stays at “fixed add vs multiply current total” comparison level.
- Chapter 10 remains the only explicit forward-preview home for the later function-family expansion.

### AC-03 — Chapter-03 symbolic-notation boundary

- `§3.2`, `§3.4`, and `§3.6` do **not** rely on symbolic placeholder formula families (`a, b, c, h, r, d, C, S, V`, exponent-style forms, or compact equality templates) as assumed prerequisite knowledge unless those notations are explicitly invented earlier under project rules.

### AC-04 — public-foundation geometry stays pre-algebra in presentation

- Geometry foundation may teach measurement relationships, but its core teaching path stays readable through words, numeric examples, and geometric decomposition without later algebra-expression machinery.
- Pass condition: a learner can follow perimeter / area / volume reasoning without Chapter-04-level template literacy.

### AC-05 — max-3 compliance for rerouted tail chapters

- `§9.6` ends with **<= 3** invented tools total, counting blueprint-only named tools as well as glossary items.
- If more than 3 are still needed, the content is split or structurally narrowed rather than hidden.

### AC-06 — summary-node regression safety

- `§6.5`, `§7.5`, `§8.3`, and `§9.5` remain summary / checkpoint nodes only.
- They introduce **no new formal tool family** and no blueprint-stage future-tool dependence.

### AC-07 — closed surfaces remain closed

- current `§2.5` does not reintroduce algebra-letter or equation solving
- current `§4.3` does not re-expand into full irrational / real-number taxonomy or pre-blueprint symbolic leakage

### AC-08 — spine immutability

- No task-014 change alters the top-level `00-10` chapter spine.
- All fixes remain inside existing top-level directories and second-level chapter interiors only.

## Iteration-04 exit judgment

Iteration 04 cannot pass yet. Iteration 03 stabilized the branch spine, and the inserted summary nodes themselves are not the new problem. The remaining structure-stage blockers are now concentrated and specific:

1. `§8.5` still behaves like future-family preview teaching  
2. `§5.1` / `§5.3` still break the gate boundary with premature quadrant terminology  
3. `§3.2` / `§3.4` / `§3.6` still let public-foundation geometry depend on later symbolic formula machinery  
4. `§9.6` still remains structurally over-cap on invented tools

`task-014` should close these blockers **without changing the immutable `00-10` top-level spine** and without reopening the already-closed surfaces in current `§2.5`, current `§4.3`, or the new branch-summary nodes.

## Retroactive judgment on earlier iterations

- **Iteration 01:** no retroactive reopen needed. Its fixes were about no-future-tool leakage in `§2.4 / §4.2 / §4.3`, not about packaging many fine-grained concepts into umbrella roots.
- **Iteration 02:** partially implicated. The iteration contained valid structural work (real splits, reroutes, smoke / overview repair), but the newly locked rule means any chapter that reached “max-3” by compressing several learner-visible sub-concepts into a larger umbrella concept must be treated as still under structural review.
- **Iteration 03:** no retroactive reopen needed. The new branch-summary nodes are routing / synthesis checkpoints, not fake max-3 umbrella chapters.

### Orchestrator decision

Do **not** rewind the whole project back to iteration 02 and replay all completed work from scratch.  
Instead:

1. keep the valid split / routing work from iterations 02–03;
2. use `task-014` to correct the already-open blockers under the stricter “no umbrella packaging” rule;
3. use `task-015` as an explicit whole-book retroactive audit for prior max-3 fixes under that rule;
4. if `task-015` still finds umbrella-packaged chapters from earlier iterations, append `task-100+` structure review/fix pairs before any quality-stage work begins.

This path is lower-risk than a full rewind because the structure stage is still open, the top-level spine is not yet exiting, and the valid renumber / routing work already landed can be preserved while the false-convergence surfaces are corrected surgically.
