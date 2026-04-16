TYPST_IMAGE := math-textbook-typst
TYPST_DOCKER_RUN := docker run --rm -v "$$(pwd):/book" $(TYPST_IMAGE)

.PHONY: pdf pdf-v1 pdf-v2 check clean _docker-image

# ── Host targets ────────────────────────────────────────────────────

pdf: _docker-image
	mkdir -p output
	$(TYPST_DOCKER_RUN) compile --root /book --input v2-mode=true /book/typst/main.typ /book/output/math-textbook.pdf

pdf-v1: _docker-image
	mkdir -p output
	$(TYPST_DOCKER_RUN) compile --root /book --input v2-mode=false /book/typst/main.typ /book/output/math-textbook.pdf

pdf-v2: _docker-image
	mkdir -p output
	$(TYPST_DOCKER_RUN) compile --root /book --input v2-mode=true /book/typst/main.typ /book/output/math-textbook.pdf

check: _docker-image
	$(TYPST_DOCKER_RUN) --version
	mkdir -p output
	$(TYPST_DOCKER_RUN) compile --root /book --input v2-mode=true /book/typst/main.typ /book/output/math-textbook-check.pdf
	$(TYPST_DOCKER_RUN) compile --root /book --input v2-mode=false /book/typst/main.typ /book/output/math-textbook-v1-check.pdf
	$(TYPST_DOCKER_RUN) compile --root /book /book/typst/smoke/package-lock.typ /book/output/typst-package-lock-check.pdf

clean:
	rm -rf output/*

_docker-image:
	docker build -t $(TYPST_IMAGE) .
