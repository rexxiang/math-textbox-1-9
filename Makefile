IMAGE := math-textbook-builder
DOCKER_RUN := docker run --rm -v "$$(pwd):/book" $(IMAGE)
SOURCES := $(shell cat book-order.txt)

.PHONY: all pdf epub clean check _docker-image _pdf _epub _all

# --- 宿主机目标（通过 Docker 执行）---

all: _docker-image
	$(DOCKER_RUN) make _all

pdf: _docker-image
	$(DOCKER_RUN) make _pdf

epub: _docker-image
	$(DOCKER_RUN) make _epub

clean:
	rm -rf output/*

check:
	@echo "=== 检查交叉引用一致性 ==="
	@grep -roh '§[0-9]\+\.[0-9]\+' 0[0-4]-*/ | sort -u | while read ref; do \
		section=$$(echo "$$ref" | sed 's/§//'); \
		module=$$(echo "$$section" | cut -d. -f1); \
		chapter=$$(echo "$$section" | cut -d. -f2); \
		if ! grep -rq "§$$section" 0[0-4]-*/; then \
			echo "WARNING: $$ref referenced but not defined"; \
		fi; \
	done
	@echo "=== 检查完成 ==="

_docker-image:
	docker build -t $(IMAGE) .

# --- 容器内目标 ---

_all: _pdf _epub

_pdf:
	mkdir -p output
	pandoc metadata.yaml $(SOURCES) \
		--pdf-engine=xelatex \
		--resource-path=. \
		-o output/math-textbook.pdf

_epub:
	mkdir -p output
	pandoc metadata.yaml $(SOURCES) \
		--mathml \
		--resource-path=. \
		-o output/math-textbook.epub
