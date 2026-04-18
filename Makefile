TYPST_IMAGE := math-textbook-typst
TYPST_DOCKER_RUN := docker run --rm -v "$$(pwd):/book" -v "$$(pwd)/output/.typst-cache:/root/.cache/typst" $(TYPST_IMAGE)
SMOKE_CHAPTERS := \
	04-number-line-algebra-bridge \
	05-foundation-gate \
	06-algebra-deepening \
	07-geometry-deepening \
	08-function-models \
	09-data-statistics \
	10-capstone

.PHONY: pdf check clean _docker-image

# ── Host targets ────────────────────────────────────────────────────

pdf: _docker-image
	mkdir -p output output/.typst-cache
	$(TYPST_DOCKER_RUN) compile --root /book /book/typst/main.typ /book/output/math-textbook.pdf

check: _docker-image
	mkdir -p output output/.typst-cache
	$(TYPST_DOCKER_RUN) --version
	$(TYPST_DOCKER_RUN) compile --root /book /book/typst/main.typ /book/output/math-textbook-check.pdf
	# Standalone smoke entrypoints intentionally start at chapter 04.
	# Chapters 01-03 are already covered by the full main-book compile above.
	$(TYPST_DOCKER_RUN) compile --root /book /book/typst/smoke/package-lock.typ /book/output/typst-package-lock-check.pdf
	for chapter in $(SMOKE_CHAPTERS); do \
		$(TYPST_DOCKER_RUN) compile --root /book /book/typst/smoke/$$chapter.typ /book/output/$$chapter-smoke.pdf || exit 1; \
	done

clean:
	rm -rf output/*

_docker-image:
	docker build -t $(TYPST_IMAGE) .
