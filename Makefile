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

clean:
	rm -rf output/*

_docker-image:
	docker build -t $(TYPST_IMAGE) .
