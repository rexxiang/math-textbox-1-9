// Geometry drawing helpers built on top of cetz.angle.
// Keep this file minimal — single-angle and right-angle marks
// use cetz built-ins directly; only patterns that need wrapping
// belong here.

#import "diagram-packages.typ": cetz

/// Draw `n` concentric angle arcs to indicate equal angles.
/// Wraps `cetz.angle.angle()` — call inside a `cetz.canvas` block.
///
/// - origin: vertex of the angle
/// - a: point on the first ray
/// - b: point on the second ray
/// - n: number of concentric arcs (2 = double-arc, 3 = triple-arc)
/// - gap: spacing between arcs
/// - label: shown on the outermost arc only
#let equal-angle(
  origin, a, b,
  n: 2,
  gap: 0.07,
  direction: "near",
  radius: 0.45,
  stroke: auto,
  fill: none,
  label: none,
) = {
  import cetz.angle: angle as _angle
  for i in range(n) {
    let r = radius - i * gap
    let lbl = if i == 0 { label } else { none }
    _angle(origin, a, b, direction: direction, radius: r, stroke: stroke, fill: fill, label: lbl)
  }
}
