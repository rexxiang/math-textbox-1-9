# Post-cutover technical audit

Audited live HEAD: `ee798f11279ca07e8d4942463046514291309dff`

## Verdict

One live technical issue is release-blocking because it creates reader-visible numbering errors. Two additional medium issues weaken verification confidence but do not, by themselves, invalidate the cutover.

## Findings

### High — chapter numbering is off by one after cutover

`= 导读` is still a numbered level-1 heading, while chapter-local labels remain hardcoded as `§X.Y`. With `set heading(numbering: "1.1")` active, the book now auto-numbers the gateway as chapter 1 and shifts every later chapter forward by one.

- Refs: `typst/main.typ:21`, `typst/lib/theme-v2.typ:16`, `typst/01-counting/01-natural-numbers.typ:3`
- Evidence observed in PDF text:
  - `数的萌芽` rendered as chapter 2
  - `2.1 §1.1 自然数与零`
  - `10.1 §9.1 数据收集与整理`
  - `11 终章综合`
- Why this blocks release: the visible book map and the printed section labels disagree, so navigation fidelity is broken in the shipped artifact.

### Medium — CI does not verify the current live branch

The GitHub Actions workflow only triggers on `main` for both `push` and `pull_request`. That means the live audited branch can diverge from what CI actually exercises.

- Refs: `.github/workflows/build.yml:4-7`
- Risk: false confidence from green CI that is scoped to the wrong branch target.

### Medium — local/CI package-cache behavior is not equivalent

Local `make check` mounts `output/.typst-cache` into the Typst container, but `clean` only removes `output/*`, not the hidden cache directory. CI, meanwhile, runs cold without mounting that cache at all.

- Refs: `Makefile:2,12-16,25-26`, `.github/workflows/build.yml:23-81`
- Risk: local verification can pass because of hidden cached packages that are absent in CI.

## Bottom line

Fix numbering before release. Then tighten branch-targeted CI coverage and cache-parity expectations so that “verified” means the same thing locally and in automation.
