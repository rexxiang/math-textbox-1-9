IMAGE := math-textbook-builder
DOCKER_RUN := docker run --rm -v "$$(pwd):/book" $(IMAGE)

.PHONY: all pdf html clean check _docker-image _pdf _html _all

# ── Host targets (invoke via Docker) ────────────────────────────────

all: _docker-image
	$(DOCKER_RUN) make _all

pdf: _docker-image
	$(DOCKER_RUN) make _pdf

html: _docker-image
	$(DOCKER_RUN) make _html

clean:
	rm -rf output/* build/* *.aux *.log *.toc *.out *.bbl *.bcf *.run.xml

check:
	@echo "=== 检查 LaTeX 交叉引用一致性 ==="
	@errors=0; \
	for ref in $$(grep -roh '§[0-9]\+\.[0-9]\+' chapters/ | sort -u); do \
		section=$$(echo "$$ref" | sed 's/§//'); \
		if ! grep -rqE "\\\\chapter\\{§$$section" chapters/; then \
			echo "WARNING: $$ref 已引用但未作为 \\chapter{} 定义"; \
			errors=$$((errors + 1)); \
		fi; \
	done; \
	if [ $$errors -eq 0 ]; then echo "所有交叉引用正确 ✓"; fi
	@echo "=== 检查完成 ==="

_docker-image:
	docker build -t $(IMAGE) .

# ── Container-internal targets ───────────────────────────────────────

_all: _pdf _html

_pdf:
	mkdir -p output
	xelatex -shell-escape -interaction=nonstopmode main.tex
	xelatex -shell-escape -interaction=nonstopmode main.tex
	mv main.pdf output/math-textbook.pdf

_html:
	mkdir -p build docs/html
	make4ht -lm xelatex -f html5 -d build main.tex "svg,mathml"
	cp -r build/. docs/html/
