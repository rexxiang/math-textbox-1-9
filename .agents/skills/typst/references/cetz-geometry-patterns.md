# CeTZ Geometry Drawing Patterns (cetz 0.4.2)

## Angle Marks — Mandatory API

All angle marks MUST use the `cetz.angle` module. Manual `arc()` + hardcoded offsets is **forbidden** for angle marking.

### Import

```typst
import cetz.angle: angle, right-angle
```

If using the project's `equal-angle` helper for double/triple arcs:

```typst
#import "../../lib/geometry-helpers.typ": equal-angle
```

### `angle(origin, a, b, ..)` — Single Angle Arc

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `origin` | coordinate | required | Vertex of the angle |
| `a` | coordinate | required | Point on the first ray |
| `b` | coordinate | required | Point on the second ray |
| `direction` | string | `"ccw"` | `"ccw"`, `"cw"`, `"near"` (smaller angle), `"far"` (reflex) |
| `label` | none/content | `none` | Label placed at the arc midpoint |
| `radius` | number | `0.5` | Arc radius; ratio values scale relative to min ray length |
| `label-radius` | number/ratio | `50%` | Label distance from vertex; ratio scales relative to `radius` |
| `stroke` | stroke | `auto` | Arc stroke style |
| `fill` | paint | `none` | Fill the angle sector |

**Anchors**: `origin`, `a`, `b`, `label`, `start`, `end`

### `right-angle(origin, a, b, ..)` — Right Angle Mark

Same parameters as `angle()` except `label` defaults to `"•"`. Draws the standard square symbol.

### `equal-angle(origin, a, b, ..)` — Double/Triple Arc (Project Helper)

Defined in `typst/lib/geometry-helpers.typ`. Wraps `angle()` to draw `n` concentric arcs.

| Extra Parameter | Default | Description |
|-----------------|---------|-------------|
| `n` | `2` | Number of concentric arcs |
| `gap` | `0.07` | Spacing between arc radii |

Label is shown on the outermost arc only.

---

## Usage Templates

### Single angle at a triangle vertex

```typst
#cetz.canvas({
  import cetz.draw: *
  import cetz.angle: angle

  let A = (0, 0)
  let B = (4, 0)
  let C = (1, 3)

  line(A, B, stroke: 0.7pt)
  line(B, C, stroke: 0.7pt)
  line(C, A, stroke: 0.7pt)

  // Mark angle at vertex A (between rays AB and AC)
  angle(A, B, C, label: $alpha$, radius: 0.5, stroke: 0.5pt + blue)
})
```

### Right angle

```typst
import cetz.angle: right-angle

// Mark a right angle at vertex D
right-angle(D, B, C, stroke: 0.5pt)
```

### Equal angles (double arc)

```typst
#import "../../lib/geometry-helpers.typ": equal-angle

// Mark ∠B = ∠E with double arcs
equal-angle(B, C, A, n: 2, stroke: 0.5pt + red, radius: 0.45)
equal-angle(E, F, D, n: 2, stroke: 0.5pt + red, radius: 0.45)
```

### Parallel lines — angles at intersection

```typst
// Given transversal crossing line a at point P
// Mark the angle between the positive-x direction and the transversal
let P = (0.75, 1.5)       // intersection point
let right = (3, 1.5)      // point along line a to the right
let up = (1.5, 3)          // point along transversal upward

angle(P, right, up, label: $angle 1$, radius: 0.4, stroke: 0.5pt + blue)
```

---

## `direction` Parameter Guide

| Value | Behavior | Use When |
|-------|----------|----------|
| `"near"` | Draws the smaller (< 180deg) angle | Most common for interior angles |
| `"far"` | Draws the larger (reflex) angle | Rarely needed |
| `"ccw"` | Counterclockwise from `a` to `b` | When you need explicit control |
| `"cw"` | Clockwise from `a` to `b` | When you need explicit control |

For triangle interior angles, `"near"` (or the default `"ccw"` if point order is correct) usually works. Use `"cw"`/`"ccw"` when `"near"` picks the wrong arc.

---

## Forbidden Patterns

**DO NOT** draw angle marks with manual `arc()`:

```typst
// WRONG — hardcoded center offset, hardcoded angle, hardcoded label position
arc((0.45, 0), start: 0deg, stop: 70deg, radius: 0.45, stroke: 0.5pt + blue)
content((0.85, 0.4), text(7pt)[$∠A$])
```

**DO NOT** draw right-angle marks with manual `line()` pairs:

```typst
// WRONG — fragile, does not adapt to rotated edges
line((2, 0.3), (2.3, 0.3), stroke: 0.5pt)
line((2.3, 0.3), (2.3, 0), stroke: 0.5pt)
```
