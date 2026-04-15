#!/bin/bash
# migrate-all.sh — Run md2tex.py on all chapter files
set -e

SCRIPT="scripts/md2tex.py"

declare -A MAP=(
  # 00-introduction
  ["00-introduction/01-welcome.md"]="chapters/00-introduction/welcome.tex"
  ["00-introduction/02-learning-path.md"]="chapters/00-introduction/learning-path.tex"
  ["00-introduction/03-symbols.md"]="chapters/00-introduction/symbols.tex"
  ["00-introduction/04-table-of-contents.md"]="chapters/00-introduction/table-of-contents.tex"
  # 01-numbers
  ["01-numbers-and-operations/00-overview.md"]="chapters/01-numbers/00-overview.tex"
  ["01-numbers-and-operations/01-integers.md"]="chapters/01-numbers/01-integers.tex"
  ["01-numbers-and-operations/02-arithmetic.md"]="chapters/01-numbers/02-arithmetic.tex"
  ["01-numbers-and-operations/03-operation-laws.md"]="chapters/01-numbers/03-operation-laws.tex"
  ["01-numbers-and-operations/04-factors-and-multiples.md"]="chapters/01-numbers/04-factors-and-multiples.tex"
  ["01-numbers-and-operations/05-fractions.md"]="chapters/01-numbers/05-fractions.tex"
  ["01-numbers-and-operations/06-decimals.md"]="chapters/01-numbers/06-decimals.tex"
  ["01-numbers-and-operations/07-percentages.md"]="chapters/01-numbers/07-percentages.tex"
  ["01-numbers-and-operations/08-ratios-and-proportions.md"]="chapters/01-numbers/08-ratios-and-proportions.tex"
  ["01-numbers-and-operations/09-module-summary.md"]="chapters/01-numbers/09-module-summary.tex"
  # 02-algebra
  ["02-algebra/00-overview.md"]="chapters/02-algebra/00-overview.tex"
  ["02-algebra/01-rational-numbers.md"]="chapters/02-algebra/01-rational-numbers.tex"
  ["02-algebra/02-real-numbers.md"]="chapters/02-algebra/02-real-numbers.tex"
  ["02-algebra/03-algebraic-expressions.md"]="chapters/02-algebra/03-algebraic-expressions.tex"
  ["02-algebra/04-factorization.md"]="chapters/02-algebra/04-factorization.tex"
  ["02-algebra/05-rational-expressions.md"]="chapters/02-algebra/05-rational-expressions.tex"
  ["02-algebra/06-linear-equations.md"]="chapters/02-algebra/06-linear-equations.tex"
  ["02-algebra/07-systems-of-equations.md"]="chapters/02-algebra/07-systems-of-equations.tex"
  ["02-algebra/08-quadratic-equations.md"]="chapters/02-algebra/08-quadratic-equations.tex"
  ["02-algebra/09-inequalities.md"]="chapters/02-algebra/09-inequalities.tex"
  ["02-algebra/10-linear-functions.md"]="chapters/02-algebra/10-linear-functions.tex"
  ["02-algebra/11-quadratic-functions.md"]="chapters/02-algebra/11-quadratic-functions.tex"
  ["02-algebra/12-module-summary.md"]="chapters/02-algebra/12-module-summary.tex"
  # 03-geometry
  ["03-geometry/00-overview.md"]="chapters/03-geometry/00-overview.tex"
  ["03-geometry/01-points-lines-planes.md"]="chapters/03-geometry/01-points-lines-planes.tex"
  ["03-geometry/02-angles.md"]="chapters/03-geometry/02-angles.tex"
  ["03-geometry/03-parallel-perpendicular.md"]="chapters/03-geometry/03-parallel-perpendicular.tex"
  ["03-geometry/04-triangles.md"]="chapters/03-geometry/04-triangles.tex"
  ["03-geometry/05-quadrilaterals.md"]="chapters/03-geometry/05-quadrilaterals.tex"
  ["03-geometry/06-circles.md"]="chapters/03-geometry/06-circles.tex"
  ["03-geometry/07-pythagorean-theorem.md"]="chapters/03-geometry/07-pythagorean-theorem.tex"
  ["03-geometry/08-transformations.md"]="chapters/03-geometry/08-transformations.tex"
  ["03-geometry/09-coordinate-geometry.md"]="chapters/03-geometry/09-coordinate-geometry.tex"
  ["03-geometry/10-trigonometric-functions.md"]="chapters/03-geometry/10-trigonometric-functions.tex"
  ["03-geometry/11-module-summary.md"]="chapters/03-geometry/11-module-summary.tex"
  # 04-statistics
  ["04-statistics-and-probability/00-overview.md"]="chapters/04-statistics/00-overview.tex"
  ["04-statistics-and-probability/01-data-collection.md"]="chapters/04-statistics/01-data-collection.tex"
  ["04-statistics-and-probability/02-central-tendency.md"]="chapters/04-statistics/02-central-tendency.tex"
  ["04-statistics-and-probability/03-data-variability.md"]="chapters/04-statistics/03-data-variability.tex"
  ["04-statistics-and-probability/04-frequency-distribution.md"]="chapters/04-statistics/04-frequency-distribution.tex"
  ["04-statistics-and-probability/05-probability-basics.md"]="chapters/04-statistics/05-probability-basics.tex"
  ["04-statistics-and-probability/06-sampling-estimation.md"]="chapters/04-statistics/06-sampling-estimation.tex"
  ["04-statistics-and-probability/07-module-summary.md"]="chapters/04-statistics/07-module-summary.tex"
)

for src in "${!MAP[@]}"; do
  dst="${MAP[$src]}"
  python3 "$SCRIPT" "$src" "$dst"
done

echo "Migration complete: ${#MAP[@]} files converted."
