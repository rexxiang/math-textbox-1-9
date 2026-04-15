TYPST_VERSION := 0.14.2
TYPST_IMAGE := ghcr.io/typst/typst:$(TYPST_VERSION)
TYPST_DOCKER_RUN := docker run --rm -v "$$(pwd):/book" $(TYPST_IMAGE)

.PHONY: typst-pdf typst-check

typst-pdf:
	mkdir -p output
	$(TYPST_DOCKER_RUN) compile /book/main.typ /book/output/book.pdf

typst-check:
	$(TYPST_DOCKER_RUN) --version
	$(TYPST_DOCKER_RUN) compile /book/main.typ /tmp/book.pdf
