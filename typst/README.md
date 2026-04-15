# Typst Scaffold (Preparation Stage)

This directory is the Typst-native project scaffold for the math textbook.

## Current stage

- Includes all 47 chapter placeholders mirrored from `main.tex` include order.
- Provides a reusable style module in `lib/theme.typ`.
- Adds optional diagram dependency lock file in `lib/diagram-packages.typ`.
- Does not convert LaTeX chapter content yet.

## Build commands

- PDF scaffold build:
  - `make typst-pdf`
- Toolchain + package lock checks:
  - `make typst-check`

Output files are written to `output/`.

## Regenerate scaffold

If chapter include order changes in `main.tex`, regenerate:

`python3 scripts/bootstrap_typst_scaffold.py`
