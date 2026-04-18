# Post-cutover summary

Audited live HEAD: `ee798f11279ca07e8d4942463046514291309dff`

## Verdict

The cutover is structurally successful: the live book now reads as `共同主干 1–4 → 基础总闸门 5 → 并列分支 6–9 → 终章综合 10`, and no high/medium structural defects were found. Pedagogically, the new topology is understandable, but some reader guidance still presents the branches as if they were a single long required line. The release is **not yet RC-clean** because one technical defect breaks visible numbering parity, and migration residue is still reader-visible in live prose.

## Release-blocking issues

1. **Book numbering is off by one after cutover** — `= 导读` remains a numbered level-1 heading, so Typst auto-numbering now conflicts with hardcoded `§X.Y` labels. Evidence includes `数的萌芽` appearing as chapter 2, `2.1 §1.1 自然数与零`, `10.1 §9.1 数据收集与整理`, and `11 终章综合`. Refs: `typst/main.typ:21`, `typst/lib/theme-v2.typ:16`, `typst/01-counting/01-natural-numbers.typ:3`.
2. **Migration residue is still visible in reader-facing copy** — phrases such as “旧函数章”, “刻意不再安排”, and “旧挂件” make the live book read like an in-progress reorg rather than a landed structure. Refs: `typst/07-geometry-deepening/00-overview.typ:29`, `typst/08-function-models/00-overview.typ:7`, `typst/10-capstone/invention-tree.typ:115`.

## Non-blocking issues

- **Pedagogy:** branch logic is conceptually clear, but live guidance still reads too much like one long required path. Refs: `typst/main.typ:77-121`, `typst/00-gateway/how-to-use.typ:20-33`, `typst/00-gateway/invention-tree.typ:97-103`, `typst/10-capstone/invention-tree.typ:106-109`.
- **Pedagogy:** spiral-review voice is not yet uniform because Ch.1 review stays mostly inward-facing while later reviews explicitly loop back across the trunk. Refs: `typst/01-counting/07-review.typ:85-88`, `typst/02-fraction-ratio-foundation/06-review.typ:87-93`, `typst/05-foundation-gate/03-review.typ:86-94`, `typst/06-algebra-deepening/08-review.typ:97-103`.
- **Structure:** one old-structure residue remains (“旧函数章”), and terminology mildly drifts between `01-counting/*` / “数的萌芽” and downstream “算术基础” summaries. Ref: `typst/07-geometry-deepening/00-overview.typ:29`.
- **Technical:** CI only runs on `main`, so the live branch is not automatically verified in GitHub Actions. Refs: `.github/workflows/build.yml:4-7`.
- **Technical:** local `make check` can benefit from cached Typst packages that CI does not share, so local/CI parity is weaker than it looks. Refs: `Makefile:2,12-16,25-26`, `.github/workflows/build.yml:23-81`.
- **Editorial:** gateway taxonomy is not fully unified, and the capstone still spends copy explaining the reorg instead of simply inhabiting it. Refs: `typst/00-gateway/welcome.typ:13-18`, `typst/00-gateway/how-to-use.typ:5-17,29-32`, `typst/00-gateway/invention-tree.typ:5,63`, `typst/main.typ:70-71`, `typst/10-capstone/invention-tree.typ:108`, `typst/10-capstone/00-overview.typ:5`.

## Areas that passed

- No high/medium structural defects were found in the live chapter graph.
- Ch.1 remaining on `01-counting/*` does **not** currently break coherence.
- The core post-cutover sequence is understandable and recoverable for readers.
