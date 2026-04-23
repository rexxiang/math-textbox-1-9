TYPST_IMAGE := math-textbook-typst
TYPST_DOCKER_RUN := docker run --rm -v "$$(pwd):/book" -v "$$(pwd)/output/.typst-cache:/root/.cache/typst" $(TYPST_IMAGE)

SMOKE_PARTS := \
	0-orientation \
	1-public-foundation \
	2-common-bridges \
	3a-algebra-symbols \
	3b-geometry-proof \
	3c-functions-change \
	3d-data-uncertainty \
	4-capstone

.PHONY: pdf check ci clean _docker-image validate-secrefs \
	_prepare-output _verify-typst-setup _compile-book-check _compile-book-pdf \
	_verify-package-lock _verify-smoke-parts _diff-check

# ── Host targets ────────────────────────────────────────────────────

pdf: _docker-image _prepare-output
	$(TYPST_DOCKER_RUN) compile --root /book /book/typst/main.typ /book/output/math-textbook.pdf

check: _docker-image kg-validate-book validate-secrefs _prepare-output _verify-typst-setup _compile-book-check _verify-package-lock _verify-smoke-parts _diff-check

ci: _docker-image kg-validate-book validate-secrefs _prepare-output _verify-typst-setup _compile-book-pdf _verify-package-lock _verify-smoke-parts _diff-check

_prepare-output:
	mkdir -p output output/.typst-cache

_verify-typst-setup:
	$(TYPST_DOCKER_RUN) --version

_compile-book-check:
	$(TYPST_DOCKER_RUN) compile --root /book /book/typst/main.typ /book/output/math-textbook-check.pdf

_compile-book-pdf:
	$(TYPST_DOCKER_RUN) compile --root /book /book/typst/main.typ /book/output/math-textbook.pdf

_verify-package-lock:
	$(TYPST_DOCKER_RUN) compile --root /book /book/typst/smoke/package-lock.typ /book/output/typst-package-lock-check.pdf

_verify-smoke-parts:
	for part in $(SMOKE_PARTS); do \
		$(TYPST_DOCKER_RUN) compile --root /book /book/typst/smoke/$$part.typ /book/output/$$part-smoke.pdf || exit 1; \
	done

_diff-check:
	git --no-pager diff --check

validate-secrefs:
	$(DOCKER_RUN) python scripts/validate_secrefs.py

clean:
	rm -rf output/*

_docker-image:
	docker build -t $(TYPST_IMAGE) .

# ── 知识图谱 DAG 验证 ────────────────────────────────────────────────────────

PYTHON_IMAGE   := python:3.12-alpine
KG_BOOK_YAML   := docs/knowledge-graph/book-graph.yaml
DOCKER_RUN     := docker run --rm -v "$$(pwd):/book" -w /book $(PYTHON_IMAGE)

.PHONY: kg-validate-book

## kg-validate-book: 验证 book-graph.yaml 语义知识图谱 SSOT
kg-validate-book:
	$(DOCKER_RUN) python scripts/validate_book_graph.py $(KG_BOOK_YAML)
