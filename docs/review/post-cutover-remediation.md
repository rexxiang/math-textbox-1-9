# Post-cutover remediation note

Post-cutover audit snapshot: `ee798f11279ca07e8d4942463046514291309dff` (`ee798f1`)

Fixed HEAD: `b54aa5be249d7f8c08a0b0ce2c7221c740b94525` (`b54aa5b`)

The audit snapshot at `ee798f1` found two release-blocking issues:

1. live numbering off by one
2. migration-residue copy still visible

Those blockers were fixed in `b54aa5b` (`fix: restore live numbering and copy`).

## Verification on `b54aa5b`

- `make check` passes.
- `pdftotext output/math-textbook-check.pdf - | rg -n '2\.1 §1\.1|10\.1 §9\.1|11 终章综合'` returns no matches.
- `rg -n '旧函数章|旧挂件|刻意不再安排' typst` returns no matches.

The original audit docs remain valuable as a snapshot of the issues found at `ee798f1`. Non-blocking polish items from that audit may still be considered in later cleanup if desired.
