#!/bin/bash
# migrate-all.sh — Run md2tex.py on all chapter files
set -e

SCRIPT="scripts/md2tex.py"
COUNT=0

migrate() {
  local src="$1"
  local dst="$2"
  python3 "$SCRIPT" "$src" "$dst"
  COUNT=$((COUNT + 1))
}

# 00-introduction
migrate "00-introduction/01-welcome.md"                             "chapters/00-introduction/welcome.tex"
migrate "00-introduction/02-learning-path.md"                      "chapters/00-introduction/learning-path.tex"
migrate "00-introduction/03-symbols.md"                            "chapters/00-introduction/symbols.tex"
migrate "00-introduction/04-table-of-contents.md"                  "chapters/00-introduction/table-of-contents.tex"

# 01-numbers
migrate "01-numbers-and-operations/00-overview.md"                 "chapters/01-numbers/00-overview.tex"
migrate "01-numbers-and-operations/01-integers.md"                 "chapters/01-numbers/01-integers.tex"
migrate "01-numbers-and-operations/02-arithmetic.md"               "chapters/01-numbers/02-arithmetic.tex"
migrate "01-numbers-and-operations/03-operation-laws.md"           "chapters/01-numbers/03-operation-laws.tex"
migrate "01-numbers-and-operations/04-factors-and-multiples.md"    "chapters/01-numbers/04-factors-and-multiples.tex"
migrate "01-numbers-and-operations/05-fractions.md"                "chapters/01-numbers/05-fractions.tex"
migrate "01-numbers-and-operations/06-decimals.md"                 "chapters/01-numbers/06-decimals.tex"
migrate "01-numbers-and-operations/07-percentages.md"              "chapters/01-numbers/07-percentages.tex"
migrate "01-numbers-and-operations/08-ratios-and-proportions.md"   "chapters/01-numbers/08-ratios-and-proportions.tex"
migrate "01-numbers-and-operations/09-module-summary.md"           "chapters/01-numbers/09-module-summary.tex"

# 02-algebra
migrate "02-algebra/00-overview.md"                                "chapters/02-algebra/00-overview.tex"
migrate "02-algebra/01-rational-numbers.md"                        "chapters/02-algebra/01-rational-numbers.tex"
migrate "02-algebra/02-real-numbers.md"                            "chapters/02-algebra/02-real-numbers.tex"
migrate "02-algebra/03-algebraic-expressions.md"                   "chapters/02-algebra/03-algebraic-expressions.tex"
migrate "02-algebra/04-factorization.md"                           "chapters/02-algebra/04-factorization.tex"
migrate "02-algebra/05-rational-expressions.md"                    "chapters/02-algebra/05-rational-expressions.tex"
migrate "02-algebra/06-linear-equations.md"                        "chapters/02-algebra/06-linear-equations.tex"
migrate "02-algebra/07-systems-of-equations.md"                    "chapters/02-algebra/07-systems-of-equations.tex"
migrate "02-algebra/08-quadratic-equations.md"                     "chapters/02-algebra/08-quadratic-equations.tex"
migrate "02-algebra/09-inequalities.md"                            "chapters/02-algebra/09-inequalities.tex"
migrate "02-algebra/10-linear-functions.md"                        "chapters/02-algebra/10-linear-functions.tex"
migrate "02-algebra/11-quadratic-functions.md"                     "chapters/02-algebra/11-quadratic-functions.tex"
migrate "02-algebra/12-module-summary.md"                          "chapters/02-algebra/12-module-summary.tex"

# 03-geometry
migrate "03-geometry/00-overview.md"                               "chapters/03-geometry/00-overview.tex"
migrate "03-geometry/01-points-lines-planes.md"                    "chapters/03-geometry/01-points-lines-planes.tex"
migrate "03-geometry/02-angles.md"                                 "chapters/03-geometry/02-angles.tex"
migrate "03-geometry/03-parallel-perpendicular.md"                 "chapters/03-geometry/03-parallel-perpendicular.tex"
migrate "03-geometry/04-triangles.md"                              "chapters/03-geometry/04-triangles.tex"
migrate "03-geometry/05-quadrilaterals.md"                         "chapters/03-geometry/05-quadrilaterals.tex"
migrate "03-geometry/06-circles.md"                                "chapters/03-geometry/06-circles.tex"
migrate "03-geometry/07-pythagorean-theorem.md"                    "chapters/03-geometry/07-pythagorean-theorem.tex"
migrate "03-geometry/08-transformations.md"                        "chapters/03-geometry/08-transformations.tex"
migrate "03-geometry/09-coordinate-geometry.md"                    "chapters/03-geometry/09-coordinate-geometry.tex"
migrate "03-geometry/10-trigonometric-functions.md"                "chapters/03-geometry/10-trigonometric-functions.tex"
migrate "03-geometry/11-module-summary.md"                         "chapters/03-geometry/11-module-summary.tex"

# 04-statistics
migrate "04-statistics-and-probability/00-overview.md"             "chapters/04-statistics/00-overview.tex"
migrate "04-statistics-and-probability/01-data-collection.md"      "chapters/04-statistics/01-data-collection.tex"
migrate "04-statistics-and-probability/02-central-tendency.md"     "chapters/04-statistics/02-central-tendency.tex"
migrate "04-statistics-and-probability/03-data-variability.md"     "chapters/04-statistics/03-data-variability.tex"
migrate "04-statistics-and-probability/04-frequency-distribution.md" "chapters/04-statistics/04-frequency-distribution.tex"
migrate "04-statistics-and-probability/05-probability-basics.md"   "chapters/04-statistics/05-probability-basics.tex"
migrate "04-statistics-and-probability/06-sampling-estimation.md"  "chapters/04-statistics/06-sampling-estimation.tex"
migrate "04-statistics-and-probability/07-module-summary.md"       "chapters/04-statistics/07-module-summary.tex"

echo "Migration complete: $COUNT files converted."
