# Toolchain Baseline

## Defaults

- Typst CLI baseline: `0.14.2`
- PDF is the production output path.
- HTML remains experimental and disabled by default for production builds.

## Package Strategy

- Use minimum set of Universe packages.
- Lock versions in import strings.
- Recommended optional package set:
  - `@preview/cetz:0.4.2`
  - `@preview/cetz-plot:0.1.3`
  - `@preview/fletcher:0.5.8`

## Reproducibility Rules

- Pin container image tags (for example `ghcr.io/typst/typst:0.14.2`).
- Keep output paths stable (`output/math-textbook-typst.pdf`).
- Use deterministic compile entrypoints in Make and CI.
- Separate experimental HTML from production PDF targets.

## Project Integration Checklist

- Add Typst target without breaking existing publish workflow.
- Keep containerized compile command available in CI.
- Upload Typst PDF artifact in a dedicated step/job.
- Ensure chapter entry files and include order are explicit and reviewable.
