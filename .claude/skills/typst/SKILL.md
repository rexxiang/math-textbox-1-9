---
name: typst
description: Use when tasks involve Typst syntax, math typesetting, geometry or chart drawing in Typst, and Typst build toolchains (CLI, Make, Docker, CI). This skill focuses on Typst-first authoring and operations, not LaTeX-to-Typst migration rules.
---

# Typst Syntax Toolchain

## Overview

This skill is a Typst-first handbook for writing and operating production Typst projects.  
It covers:
- Typst document syntax and styling primitives
- math formulas and equation layout
- geometry/chart drawing strategy in Typst
- reproducible CLI/Make/Docker/CI toolchain practices

## When To Use

Use this skill when requests involve:
- `.typ` authoring, refactoring, debugging, or review
- math textbook/document layout in Typst
- building diagram/chart code in Typst (especially with locked Universe packages)
- wiring Typst compile pipelines (`typst compile`, container builds, CI)

Do not use this skill for:
- LaTeX-to-Typst semantic mapping rules
- bulk content migration strategy from legacy formats
- non-Typst publishing stacks

## Workflow

1. Confirm scope is Typst-native
- If the task asks for migration mapping, keep it out of this skill and treat separately.
- If the task is Typst syntax/toolchain, continue.

2. Build on official sources first
- Start from Typst docs and Typst Universe package pages only.
- Pull exact URLs from `references/official-sources.md`.

3. Implement in four layers
- Language layer: markup, code mode, show/set rules, module layout.
- Math layer: inline/block equations, alignment, matrix/cases/operators.
- Graphics layer: choose native visualize functions first; use locked package imports only when needed.
- Toolchain layer: compile commands, Docker pinning, Make/CI integration.

4. Validate in the same order
- `typst --version` (or container tag) is pinned.
- Core template compiles to PDF.
- Optional diagram template compiles with locked package versions.
- CI uses deterministic compile path and artifact location.

## Authoring Rules

- Keep terminology bilingual where useful: Chinese narrative + Typst English keywords.
- Prefer explicit imports and short module boundaries (`lib/theme.typ`, `chapters/...`).
- Use versioned Universe imports, for example:
  - `#import "@preview/cetz:0.4.2"`
  - `#import "@preview/cetz-plot:0.1.3"`
- Keep HTML as non-production default unless the caller explicitly accepts Typst HTML experimental status.

## Quick Commands

- Local compile:
  - `typst compile typst/main.typ output/math-textbook-typst.pdf`
- Container compile (pinned image example):
  - `docker run --rm -v "$(pwd):/book" ghcr.io/typst/typst:0.14.2 compile /book/typst/main.typ /book/output/math-textbook-typst.pdf`
- Watch mode:
  - `typst watch typst/main.typ output/math-textbook-typst.pdf`

## Resources In This Skill

- Official source index:
  - `references/official-sources.md`
- Toolchain baseline and version policy:
  - `references/toolchain-baseline.md`
- Trigger boundary examples (positive/negative prompts):
  - `references/trigger-boundaries.md`
- Reusable templates:
  - `templates/minimal-book/`
  - `templates/toolchain/`
