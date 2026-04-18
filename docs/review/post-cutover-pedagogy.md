# Post-cutover pedagogy audit

Audited live HEAD: `ee798f11279ca07e8d4942463046514291309dff`

## Verdict

Pedagogically, the cutover largely works: the reader can understand the intended shift from shared trunk to gate to parallel branches to capstone reunion. The main remaining issue is not conceptual confusion, but operational framing.

## Findings

### Medium — parallel branches are clear in concept, but still read operationally like one long required line

The live structure map correctly presents chapters 6–9 as peer branches, yet the surrounding guidance still pushes the reader toward a single forward march through the PDF. In practice, the branch concept is explained, but not fully enacted in reading instructions and capstone landing copy.

- Refs: `typst/main.typ:77-121`, `typst/00-gateway/how-to-use.typ:20-33`, `typst/00-gateway/invention-tree.typ:97-103`, `typst/10-capstone/invention-tree.typ:106-109`
- Impact: readers may understand the diagram while still feeling obliged to consume chapters 6–9 as one mandatory queue.
- Audit view: this is a guidance/positioning problem, not a topology problem.

### Medium — spiral-review consistency is not yet uniform

Later review sections explicitly spiral back across earlier trunk material, but Ch.1 review still mostly looks inward to its own chapter toolkit. That makes the “same invention tree, revisited at wider scale” pattern feel stronger in later chapters than at the start.

- Refs: `typst/01-counting/07-review.typ:85-88`, `typst/02-fraction-ratio-foundation/06-review.typ:87-93`, `typst/05-foundation-gate/03-review.typ:86-94`, `typst/06-algebra-deepening/08-review.typ:97-103`
- Impact: the review architecture is good, but not yet fully normalized in reader experience.

### Acceptable — Ch.1 staying on `01-counting/*` does not currently break coherence

The present chapter naming/layout still holds together despite Ch.1 remaining on `01-counting/*`. This is worth tracking, but it is not presently a pedagogy defect.

## Bottom line

The pedagogy has landed well enough to ship once blocking issues are cleared. The remaining work is to make the live reading experience behave as clearly as the new structure diagram already claims.
