TYPST_IMAGE := math-textbook-typst
TYPST_DOCKER_RUN := docker run --rm -v "$$(pwd):/book" -v "$$(pwd)/output/.typst-cache:/root/.cache/typst" $(TYPST_IMAGE)

.PHONY: pdf check clean _docker-image

# ── Host targets ────────────────────────────────────────────────────

pdf: _docker-image
	mkdir -p output output/.typst-cache
	$(TYPST_DOCKER_RUN) compile --root /book /book/typst/main.typ /book/output/math-textbook.pdf

check: _docker-image
	mkdir -p output output/.typst-cache
	$(TYPST_DOCKER_RUN) --version
	$(TYPST_DOCKER_RUN) compile --root /book /book/typst/main.typ /book/output/math-textbook-check.pdf
	$(TYPST_DOCKER_RUN) compile --root /book /book/typst/smoke/package-lock.typ /book/output/typst-package-lock-check.pdf
	$(TYPST_DOCKER_RUN) compile --root /book /book/typst/smoke/04-number-line-algebra-bridge.typ /book/output/04-number-line-algebra-bridge-smoke.pdf
	$(TYPST_DOCKER_RUN) compile --root /book /book/typst/smoke/05-foundation-gate.typ /book/output/05-foundation-gate-smoke.pdf
	$(TYPST_DOCKER_RUN) compile --root /book /book/typst/smoke/06-algebra-deepening.typ /book/output/06-algebra-deepening-smoke.pdf
	$(TYPST_DOCKER_RUN) compile --root /book /book/typst/smoke/07-geometry-deepening.typ /book/output/07-geometry-deepening-smoke.pdf
	$(TYPST_DOCKER_RUN) compile --root /book /book/typst/smoke/08-function-models.typ /book/output/08-function-models-smoke.pdf
	$(TYPST_DOCKER_RUN) compile --root /book /book/typst/smoke/09-data-statistics.typ /book/output/09-data-statistics-smoke.pdf

clean:
	rm -rf output/*

_docker-image:
	docker build -t $(TYPST_IMAGE) .
