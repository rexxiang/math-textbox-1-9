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

/// Render a horizontal number line segment.
///
/// - min / max / step: integer range and tick spacing
/// - marks: explicit numeric values to label (default = all integer ticks in [min, max])
/// - highlight: numeric values to mark with a red filled dot
/// - length: per-unit length on the page
#let draw-number-line(
  min: -5,
  max: 5,
  step: 1,
  marks: (),
  highlight: (),
  length: 0.5cm,
) = {
  let label-marks = if marks.len() == 0 {
    range(min, max + 1, step: step)
  } else {
    marks
  }
  figure(
    cetz.canvas(length: length, {
      import cetz.draw: *
      let pad = 0.6
      line(
        (min - pad, 0),
        (max + pad, 0),
        mark: (start: ">", end: ">"),
        stroke: 0.6pt,
      )
      for k in range(min, max + 1, step: step) {
        line((k, -0.12), (k, 0.12), stroke: 0.5pt)
      }
      for v in label-marks {
        content((v, -0.5), text(8pt)[#v])
      }
      for v in highlight {
        circle((v, 0), radius: 0.14, fill: rgb("#C62828"), stroke: none)
      }
    }),
  )
}

/// Render a rectangular coordinate plane with optional grid and labelled points.
///
/// - xrange / yrange: (min, max) integer ranges
/// - grid: draw a light grid at integer steps
/// - points: list of `(x, y, label)` tuples to plot as red dots with text labels
/// - length: per-unit length on the page
///
/// Returns a raw cetz canvas (caller wraps in `figure` if needed).
#let draw-coord-plane(
  xrange: (-5, 5),
  yrange: (-5, 5),
  grid: true,
  points: (),
  length: 0.5cm,
) = {
  let (xmin, xmax) = xrange
  let (ymin, ymax) = yrange
  cetz.canvas(length: length, {
    import cetz.draw: *
    if grid {
      for x in range(xmin, xmax + 1) {
        line((x, ymin), (x, ymax), stroke: 0.3pt + luma(200))
      }
      for y in range(ymin, ymax + 1) {
        line((xmin, y), (xmax, y), stroke: 0.3pt + luma(200))
      }
    }
    let pad = 0.6
    line((xmin - pad, 0), (xmax + pad, 0), mark: (end: ">"), stroke: 0.6pt)
    line((0, ymin - pad), (0, ymax + pad), mark: (end: ">"), stroke: 0.6pt)
    content((xmax + pad + 0.3, 0), text(8pt)[$x$])
    content((0, ymax + pad + 0.3), text(8pt)[$y$])
    content((-0.3, -0.3), text(8pt)[$O$])
    for p in points {
      let (px, py, plabel) = p
      circle((px, py), radius: 0.12, fill: rgb("#C62828"), stroke: none)
      content((px + 0.3, py + 0.3), text(8pt)[#plabel])
    }
  })
}
