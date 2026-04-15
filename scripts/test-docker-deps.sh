#!/bin/bash
# Verify all required binaries are present in the container
set -e
for bin in xelatex make4ht dvisvgm; do
  command -v "$bin" || { echo "MISSING: $bin"; exit 1; }
done
python3 -c "import sys; print('python3 ok')"
echo "All dependencies present ✓"
