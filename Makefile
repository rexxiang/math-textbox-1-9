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
	@errors=0; \
	for ref in $$(grep -roh '§[0-9]\+\.[0-9]\+' 0[0-4]-*/ | sort -u); do \
		section=$$(echo "$$ref" | sed 's/§//'); \
		if ! grep -rqE "^#{1,4} §$$section([^0-9]|$$)" 0[0-4]-*/; then \
			echo "WARNING: $$ref 已引用但未作为标题定义"; \
			errors=$$((errors + 1)); \
		fi; \
	done; \
	if [ $$errors -eq 0 ]; then echo "所有交叉引用正确 ✓"; fi
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
