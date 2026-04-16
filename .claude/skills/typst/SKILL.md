---
name: typst
description: Use when tasks involve Typst syntax, math typesetting, geometry or chart drawing in Typst, and Typst build toolchains (CLI, Make, Docker, CI). This skill focuses on Typst-first authoring and operations, not LaTeX-to-Typst migration rules.
---

# Typst Syntax & Toolchain

Typst-first handbook for writing and operating production Typst projects. Covers document syntax, math formulas, geometry/chart drawing, and CLI/Make/Docker/CI toolchain.

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

---

## Critical Gotchas

| Wrong (LaTeX habit) | Correct (Typst) | Why |
|---|---|---|
| `$x$` for display | `$ x $` (spaces both sides) | Spaces inside `$` trigger display mode |
| `x^n+1` | `x^(n+1)` | Multi-char sup/sub MUST use `()` |
| `\alpha`, `\sin` | `alpha`, `sin` | No backslash — just the name |
| `$if x > 0$` | `$"if" x > 0$` | Bare multi-letter = variable product; text needs `""` |
| `\frac{a}{b}` | `a/b` or `frac(a, b)` | Function-call syntax, not command syntax |
| `\sqrt{x}` | `sqrt(x)` | Same — function call |
| `\left( \right)` | auto-scales; or `lr(...)` | No `\left`/`\right` needed |
| `text(fill: red, x)` in math | `text(fill: #red, x)` | Code values inside math need `#` prefix |
| `mat(1, 2, 3, 4)` | `mat(1, 2; 3, 4)` | `;` separates rows, `,` separates columns |
| `#set` inside function body | `#set` affects all subsequent content in scope | set/show are scoped rules, not one-shot commands |

---

## Layer 1: Markup Syntax

### Block Elements

| Element | Syntax | Example |
|---|---|---|
| Heading level 1 | `= Title` | `= 第一章 数与运算` |
| Heading level 2 | `== Title` | `== §1.1 自然数 <sec-1-1>` |
| Heading level 3 | `=== Title` | `=== 练习` |
| Bullet list | `- item` | `- 加法交换律` |
| Numbered list | `+ item` | `+ 第一步` |
| Term list | `/ Term: desc` | `/ 质数: 只能被 1 和自身整除的数` |
| Raw block | `` ``` lang `` | ` ```python print(1) ``` ` |
| Paragraph break | blank line | — |

### Inline Elements

| Element | Syntax | Example |
|---|---|---|
| Bold | `*text*` | `*重要*` |
| Italic | `_text_` | `_emphasis_` |
| Inline code | `` `code` `` | `` `x + 1` `` |
| Label | `<name>` | `<sec-2-3>` |
| Reference | `@name` | `@sec-2-3` |
| Link (auto) | bare URL | `https://typst.app/` |
| Link (manual) | `#link("url")[text]` | `#link("https://x.com")[点击]` |
| Line break | `\` | `第一行 \ 第二行` |
| Non-breaking space | `~` | `Fig.~1` |
| Em-dash | `---` | `概念---定义` |
| En-dash | `--` | `1--9` |
| Escape | `\char` | `\#`, `\*`, `\_` |
| Unicode escape | `\u{hex}` | `\u{1f600}` |
| Comment (line) | `// text` | `// TODO` |
| Comment (block) | `/* text */` | `/* 多行注释 */` |
| Smart quotes | `"text"` or `'text'` | auto-converts to 「」 etc. |

---

## Layer 2: Code Mode

Enter code mode with `#` in markup; inside `{ }` blocks code mode is default.

### Bindings & Control Flow

| Construct | Syntax |
|---|---|
| Variable | `#let x = 42` |
| Function | `#let f(a, b) = a + b` |
| If/else | `#if x > 0 [positive] else [non-positive]` |
| For loop | `#for x in (1, 2, 3) [Item #x. ]` |
| While loop | `#while i < 5 { i += 1 }` |
| Return | `return value` |
| Lambda | `(x, y) => x + y` |

### Content vs Code Blocks

| Block | Syntax | Returns |
|---|---|---|
| Content block | `[*markup* here]` | content (with formatting) |
| Code block | `{let x = 1; x + 2}` | last expression value |
| Nesting | `{let t = [Hello]; t}` | content from code |

### Set / Show Rules

| Pattern | Syntax | Effect |
|---|---|---|
| Set rule | `#set text(size: 12pt)` | Default properties for element |
| Set-if | `#set text(red) if urgent` | Conditional set |
| Show-set | `#show heading: set text(blue)` | Restyle element |
| Show transform | `#show heading: it => {emph(it.body)}` | Custom rendering |
| Show where | `#show heading.where(level: 1): it => {...}` | Filter by field |
| Show everything | `#show: columns.with(2)` | Apply to all content |

### Imports & Modules

| Construct | Syntax |
|---|---|
| Include file | `#include "chapter.typ"` |
| Import all | `#import "lib.typ": *` |
| Import named | `#import "lib.typ": foo, bar` |
| Universe package | `#import "@preview/cetz:0.4.2"` |

### Types & Literals

| Type | Examples |
|---|---|
| None / Auto | `none`, `auto` |
| Boolean | `true`, `false` |
| Integer | `42`, `0xff`, `0b1010`, `0o77` |
| Float | `3.14`, `1e-5` |
| String | `"hello"` |
| Length | `2pt`, `3mm`, `1cm`, `1em`, `1in` |
| Angle | `90deg`, `1rad` |
| Ratio | `50%` |
| Fraction | `1fr`, `2fr` |
| Color | `rgb("#ff0000")`, `luma(200)`, `red`, `blue` |
| Array | `(1, 2, 3)` |
| Dictionary | `(name: "Rex", age: 10)` |

### Operators

| Op | Syntax |
|---|---|
| Arithmetic | `+`, `-`, `*`, `/` |
| Comparison | `==`, `!=`, `<`, `>`, `<=`, `>=` |
| Logic | `and`, `or`, `not` |
| Assignment | `=`, `+=`, `-=`, `*=` |
| Field access | `x.y` |
| Method call | `arr.len()`, `arr.map(fn)` |
| Spread | `..array` |

---

## Layer 3: Math Mode

### Inline vs Display

```
$x + y$          → inline (no spaces inside $)
$ x + y $        → display block (spaces trigger display!)
```

### Subscripts & Superscripts

| Syntax | Renders | Note |
|---|---|---|
| `x^2` | x² | single char OK |
| `x^(n+1)` | x^(n+1) | multi-char MUST group with `()` |
| `x_1` | x₁ | single char OK |
| `x_(i+1)` | x_{i+1} | multi-char MUST group |
| `x_1^2` | x₁² | sub + super |
| `attach(x, tl: a, br: b)` | corners | fine-grained: tl/tr/bl/br |
| `scripts(sum)_1^2` | force script style | side attachments |
| `limits(A)_1^2` | force limits style | above/below attachments |

### Fractions

| Syntax | Behavior |
|---|---|
| `a/b` | auto fraction (single tokens) |
| `(a+b)/(c+d)` | grouped fraction — parens consumed |
| `frac(a, b)` | explicit vertical fraction |
| `frac(a, b, style: "skewed")` | a ⁄ b (slash style) |
| `frac(a, b, style: "horizontal")` | horizontal, parens preserved |

### Roots

| Syntax | Renders |
|---|---|
| `sqrt(x)` | √x |
| `sqrt(x^2 + y^2)` | √(x²+y²) |
| `root(3, x)` | ∛x (cube root) |
| `root(n, x)` | ⁿ√x (nth root) |

### Matrices, Vectors, Cases

| Syntax | Renders |
|---|---|
| `vec(a, b, c)` | column vector (parens) |
| `vec(delim: "[", a, b)` | column vector [brackets] |
| `mat(a, b; c, d)` | 2×2 matrix — `;` = new row |
| `mat(delim: "[", 1, 0; 0, 1)` | matrix with brackets |
| `mat(augment: 2, a, b, c; d, e, f)` | augmented matrix (line after col 2) |
| `cases(x &"if" x > 0, -x &"if" x <= 0)` | piecewise function |
| `cases(reverse: true, ...)` | right-facing brace |
| `binom(n, k)` | binomial coefficient |

### Delimiters

| Syntax | Renders |
|---|---|
| `abs(x)` | \|x\| |
| `norm(x)` | ‖x‖ |
| `floor(x)` | ⌊x⌋ |
| `ceil(x)` | ⌈x⌉ |
| `round(x)` | round brackets |
| `lr(\| x/2 \|)` | auto-scaled delimiters |
| `lr(size: #150%, [...])` | manually sized delimiters |
| `cancel(x)` | diagonal strikethrough |
| `cancel(x, cross: #true)` | X-shaped strikethrough |

### Text & Code in Math

| Need | Syntax |
|---|---|
| Text word | `"if"`, `"其中"`, `"AC"` — use double quotes |
| Code expression | `#expr` — e.g., `#red`, `#calc.pow(2, 10)` |
| Colored math | `text(fill: #red, x)` — `#` before code values |
| Styled text | `bold(x)`, `italic(x)`, `upright(x)` |

### Alignment

Use `&` in display equations to set alignment points:

```typst
$ x + y &= 7 \
  2x - y &= 1 $
```

- `&` alternates right/left alignment
- `\` = line break in display math
- Multiple `&&` for multi-column alignment

### Greek Letters (no backslash!)

`alpha` `beta` `gamma` `delta` `epsilon` `zeta` `eta` `theta` `iota` `kappa` `lambda` `mu` `nu` `xi` `pi` `rho` `sigma` `tau` `upsilon` `phi` `chi` `psi` `omega` — Uppercase: `Alpha` `Omega` etc. Variants: `epsilon.alt`, `phi.alt`, `theta.alt`

### Predefined Operators

`sin` `cos` `tan` `cot` `sec` `csc` `arcsin` `arccos` `arctan` `sinh` `cosh` `tanh` `log` `ln` `lg` `exp` `lim` `limsup` `liminf` `sum` `prod` `max` `min` `sup` `inf` `det` `gcd` `lcm` `mod` `dim` `ker` `arg` `deg`

Custom operator: `op("sgn", limits: #true)` — `limits: true` puts sub/super above/below in display mode.

### Equation Numbering

```typst
#set math.equation(numbering: "(1)")     // all display equations
#set math.equation(number-align: left)   // number position
```

### Symbols Quick Reference

**Relations:** `=` `!=` `<` `>` `<=` `>=` `approx` `equiv` `tilde` `prop` `prec` `succ`

**Sets:** `in` `in.not` `subset` `supset` `subset.eq` `supset.eq` `union` `sect` `emptyset` `without`

**Number sets:** `NN` (ℕ) `ZZ` (ℤ) `QQ` (ℚ) `RR` (ℝ) `CC` (ℂ)

**Arrows:** `arrow.r` (→) `arrow.l` (←) `arrow.t` (↑) `arrow.b` (↓) `arrow.l.r` (↔) `arrow.r.double` (⇒) `arrow.l.r.double` (⇔)

**Logic:** `forall` `exists` `not` `and` `or` `tack.r` (⊢) `models` (⊨)

**Misc:** `infinity` (∞) `dots.h` (⋯) `dots.v` (⋮) `dots.c` (⋱) `dot` `plus.minus` (±) `times` (×) `div` (÷) `compose` (∘) `star`

**Accents:** `hat(x)` `tilde(x)` `dot(x)` `ddot(x)` `overline(x)` `underline(x)` `overbrace(x)` `underbrace(x)` `arrow(x)` (vector arrow)

**Calculus:** `integral` `integral.double` `integral.triple` `diff` (∂) `sum` `prod`

---

## Layer 4: Document Elements

### Table

```typst
#table(
  columns: 3,
  inset: 6pt,
  stroke: 0.5pt,
  align: (left, center, right),
  table.header([*A*], [*B*], [*C*]),
  [1], [2], [3],
  [4], [5], [6],
)
```

| Feature | Syntax |
|---|---|
| Column widths | `columns: (1fr, 2fr, auto)` |
| Cell spanning | `table.cell(colspan: 2)[content]` |
| Row spanning | `table.cell(rowspan: 2)[content]` |
| Repeating header | `table.header(repeat: true, ...)` |
| Footer | `table.footer(...)` |
| Horizontal line | `table.hline(stroke: 0.5pt)` |
| Striped fill | `fill: (_, y) => if calc.odd(y) { luma(240) }` |
| Conditional style | `#show table.cell.where(y: 0): strong` |

### Figure & Image

```typst
#figure(
  image("photo.png", width: 80%),
  caption: [图 1: 三角形],
) <fig-triangle>
```

| Feature | Syntax |
|---|---|
| Caption position | `#show figure.caption: set align(left)` |
| Placement | `figure(placement: top, ...)` |
| Reference | `@fig-triangle` |

### Text Formatting

| Function | Effect |
|---|---|
| `#text(size: 14pt, weight: "bold")[...]` | sized bold text |
| `#emph[text]` | italic |
| `#strong[text]` | bold |
| `#highlight[text]` | background highlight |
| `#underline[text]` | underline |
| `#strike[text]` | strikethrough |
| `#sub[text]` | subscript (text mode) |
| `#super[text]` | superscript (text mode) |
| `#smallcaps[text]` | small capitals |

### Layout Primitives

| Function | Purpose | Example |
|---|---|---|
| `page(paper: "a4")` | page setup | `#set page(margin: 2cm)` |
| `pagebreak()` | manual page break | `#pagebreak()` |
| `v(1em)` | vertical space | `#v(2em)` |
| `h(1em)` | horizontal space | `#h(0.5em)` |
| `align(center)[...]` | alignment | `#align(center)[居中]` |
| `pad(x: 1cm)[...]` | padding | `#pad(left: 2em)[缩进]` |
| `block(above: 1em)[...]` | block container | spacing, fill, stroke |
| `box(inset: 5pt)[...]` | inline container | inset, fill, stroke, radius |
| `grid(columns: 2, ...)` | layout grid | like table without semantics |
| `columns(2)[...]` | multi-column | `#columns(2)[长文本...]` |
| `stack(dir: ltr, ...)` | stack items | horizontal or vertical |
| `place(top + right)[...]` | absolute position | overlay content |

---

## Layer 5: Graphics

Use native `line()`, `circle()`, `rect()`, `ellipse()`, `polygon()`, `path()` for simple shapes.

For geometry diagrams, use CeTZ (`@preview/cetz:0.4.2`). Follow `references/cetz-geometry-patterns.md` for angle marks, right-angle marks, and equal-angle helpers.

For flowcharts/diagrams, use Fletcher (`@preview/fletcher:0.5.8`).

---

## Workflow

1. **Confirm scope is Typst-native** — migration mapping belongs elsewhere.
2. **Build on official sources** — pull from `references/official-sources.md`.
3. **Implement in four layers** — language → math → graphics → toolchain.
4. **Validate:** pinned `typst --version`, core template compiles, locked package versions, CI uses deterministic compile path.

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

- Official source index: `references/official-sources.md`
- CeTZ geometry drawing patterns: `references/cetz-geometry-patterns.md`
- Toolchain baseline and version policy: `references/toolchain-baseline.md`
- Trigger boundary examples: `references/trigger-boundaries.md`
- Reusable templates: `templates/minimal-book/`, `templates/toolchain/`
