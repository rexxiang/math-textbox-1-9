# Post-cutover editorial audit

Audited live HEAD: `ee798f11279ca07e8d4942463046514291309dff`

## Verdict

The editorial voice is close to the intended post-cutover framing, but it is not yet fully cleaned of migration-era language. The biggest issue is not style in the abstract; it is that the live book still occasionally narrates the reorg instead of simply presenting the new shape as settled fact.

## Findings

### High — migration residue is reader-visible

Several passages still speak from inside the migration rather than from the finished book. The most visible examples are:

- “旧函数章” — `typst/07-geometry-deepening/00-overview.typ:29`
- “刻意不再安排” — `typst/08-function-models/00-overview.typ:7`
- “旧挂件” — `typst/10-capstone/invention-tree.typ:115`

Impact: the live text still sounds post-surgery, which undercuts release-candidate confidence.

### Medium — opening taxonomy is not fully unified

The gateway material uses related but not fully stabilized labels for the same structural ideas: “共同主干 / 总检查 / 专题深化 / 重新会合”, “四种阅读路线”, “结构地图”, and chapter naming around “基础总闸门”. The meaning remains understandable, but the opening package is not yet operating with one fully locked taxonomy.

- Refs: `typst/00-gateway/welcome.typ:13-18`, `typst/00-gateway/how-to-use.typ:5-17,29-32`, `typst/00-gateway/invention-tree.typ:5,63`, `typst/main.typ:70-71`

### Medium — capstone still explains the reorg instead of simply landing it

The capstone still spends explicit prose telling the reader why chapter 5 is a gate and why chapters 6–9 are parallel siblings. That explanation was useful during transition, but in the landed version it should feel more like the natural state of the book than a defense of the redesign.

- Refs: `typst/10-capstone/invention-tree.typ:108`, `typst/10-capstone/00-overview.typ:5`

## Bottom line

Editorial cleanup should focus on removing migration telltales, stabilizing opening terminology, and letting the capstone inhabit the new structure without overtly justifying it.
