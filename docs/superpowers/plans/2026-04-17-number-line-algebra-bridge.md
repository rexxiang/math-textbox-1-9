# Number-Line Algebra Bridge Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Draft the new bridge chapter family in `typst/04-number-line-algebra-bridge/` so it connects arithmetic foundations to later algebra without importing later-branch dependencies.

**Architecture:** Keep the existing textbook lesson rhythm and chapter numbering conventions while splitting the bridge into overview, four lesson files, and one review. Reuse only bridge-safe ideas from the current negative-number and equation chapters, keeping real numbers light and equation work limited to meaning, balance, undo, and substitution check.

**Tech Stack:** Typst, project theme macros from `typst/lib/theme-v2.typ`, Docker-based `make check`

---

### Task 1: Create the chapter plan artifact

**Files:**
- Create: `docs/superpowers/plans/2026-04-17-number-line-algebra-bridge.md`

- [ ] **Step 1: Write the plan file**

```md
# Number-Line Algebra Bridge Implementation Plan
...
```

- [ ] **Step 2: Review plan for scope coverage**

Run: `rg "TODO|TBD|implement later|Similar to Task" docs/superpowers/plans/2026-04-17-number-line-algebra-bridge.md`
Expected: no matches

### Task 2: Draft chapter overview and rational-number lesson

**Files:**
- Modify: `typst/04-number-line-algebra-bridge/00-overview.typ`
- Create: `typst/04-number-line-algebra-bridge/01-rational-numbers.typ`

- [ ] **Step 1: Write overview framing**

```typst
#import "../lib/theme-v2.typ": history-note, side-hack, secref

_数轴与代数桥——把数放回位置，把关系写成式子。_
```

- [ ] **Step 2: Write rational-number lesson with standard rhythm**

```typst
#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall

== §4.1 数轴上的正负与有理数 <sec-4-1>
```

- [ ] **Step 3: Compile the rational-number file**

Run: `docker run --rm -v "$(pwd):/book" -v "$(pwd)/output/.typst-cache:/root/.cache/typst" math-textbook-typst compile --root /book /book/typst/04-number-line-algebra-bridge/01-rational-numbers.typ /book/output/04-bridge-01.pdf`
Expected: compile succeeds

### Task 3: Draft light real-number bridge

**Files:**
- Create: `typst/04-number-line-algebra-bridge/02-real-numbers.typ`

- [ ] **Step 1: Write light real-number lesson**

```typst
#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall

== §4.2 实数的入口 <sec-4-2>
```

- [ ] **Step 2: Verify the lesson stays bridge-safe**

Run: `rg "反证法|有理化|平方差|#secref\\(\"6\\.9\"\\)|二次根式|分母有理化" typst/04-number-line-algebra-bridge/02-real-numbers.typ`
Expected: no matches

- [ ] **Step 3: Compile the real-number file**

Run: `docker run --rm -v "$(pwd):/book" -v "$(pwd)/output/.typst-cache:/root/.cache/typst" math-textbook-typst compile --root /book /book/typst/04-number-line-algebra-bridge/02-real-numbers.typ /book/output/04-bridge-02.pdf`
Expected: compile succeeds

### Task 4: Draft variables/expressions and equation-intuition lessons

**Files:**
- Create: `typst/04-number-line-algebra-bridge/03-variables-and-expressions.typ`
- Create: `typst/04-number-line-algebra-bridge/04-equation-intuition.typ`

- [ ] **Step 1: Write meaning-first variable lesson**

```typst
== §4.3 用字母写计算模板 <sec-4-3>
```

- [ ] **Step 2: Verify no algebra taxonomy leaked in**

Run: `rg "单项式|多项式|同类项|整式|幂的运算" typst/04-number-line-algebra-bridge/03-variables-and-expressions.typ`
Expected: no matches

- [ ] **Step 3: Write equation-intuition lesson**

```typst
== §4.4 方程：左右一样多 <sec-4-4>
```

- [ ] **Step 4: Verify no full solving-algorithm content leaked in**

Run: `rg "去分母|移项|标准步骤|一元一次方程|分式方程" typst/04-number-line-algebra-bridge/04-equation-intuition.typ`
Expected: no matches

- [ ] **Step 5: Compile both lesson files**

Run: `docker run --rm -v "$(pwd):/book" -v "$(pwd)/output/.typst-cache:/root/.cache/typst" math-textbook-typst compile --root /book /book/typst/04-number-line-algebra-bridge/03-variables-and-expressions.typ /book/output/04-bridge-03.pdf && docker run --rm -v "$(pwd):/book" -v "$(pwd)/output/.typst-cache:/root/.cache/typst" math-textbook-typst compile --root /book /book/typst/04-number-line-algebra-bridge/04-equation-intuition.typ /book/output/04-bridge-04.pdf`
Expected: both compiles succeed

### Task 5: Draft in-scope review chapter

**Files:**
- Create: `typst/04-number-line-algebra-bridge/05-review.typ`

- [ ] **Step 1: Write chapter review**

```typst
#import "../lib/theme-v2.typ": blueprint, mastery, secref

== 第四章回顾：数轴与代数的桥
```

- [ ] **Step 2: Verify review structure**

Run: `rg "混合自测题|螺旋复习|知识速查卡" typst/04-number-line-algebra-bridge/05-review.typ`
Expected: all three labels present

- [ ] **Step 3: Compile the review file**

Run: `docker run --rm -v "$(pwd):/book" -v "$(pwd)/output/.typst-cache:/root/.cache/typst" math-textbook-typst compile --root /book /book/typst/04-number-line-algebra-bridge/05-review.typ /book/output/04-bridge-05.pdf`
Expected: compile succeeds

### Task 6: Full verification and commit

**Files:**
- Verify: `Makefile`
- Verify: `typst/04-number-line-algebra-bridge/*.typ`

- [ ] **Step 1: Run repository verification**

Run: `make check`
Expected: Docker image check and Typst compiles succeed

- [ ] **Step 2: Run focused compile checks**

Run: `docker run --rm -v "$(pwd):/book" -v "$(pwd)/output/.typst-cache:/root/.cache/typst" math-textbook-typst compile --root /book /book/typst/04-number-line-algebra-bridge/00-overview.typ /book/output/04-bridge-00.pdf && docker run --rm -v "$(pwd):/book" -v "$(pwd)/output/.typst-cache:/root/.cache/typst" math-textbook-typst compile --root /book /book/typst/04-number-line-algebra-bridge/01-rational-numbers.typ /book/output/04-bridge-01.pdf && docker run --rm -v "$(pwd):/book" -v "$(pwd)/output/.typst-cache:/root/.cache/typst" math-textbook-typst compile --root /book /book/typst/04-number-line-algebra-bridge/02-real-numbers.typ /book/output/04-bridge-02.pdf && docker run --rm -v "$(pwd):/book" -v "$(pwd)/output/.typst-cache:/root/.cache/typst" math-textbook-typst compile --root /book /book/typst/04-number-line-algebra-bridge/03-variables-and-expressions.typ /book/output/04-bridge-03.pdf && docker run --rm -v "$(pwd):/book" -v "$(pwd)/output/.typst-cache:/root/.cache/typst" math-textbook-typst compile --root /book /book/typst/04-number-line-algebra-bridge/04-equation-intuition.typ /book/output/04-bridge-04.pdf && docker run --rm -v "$(pwd):/book" -v "$(pwd)/output/.typst-cache:/root/.cache/typst" math-textbook-typst compile --root /book /book/typst/04-number-line-algebra-bridge/05-review.typ /book/output/04-bridge-05.pdf`
Expected: all compiles succeed

- [ ] **Step 3: Commit the work**

```bash
git add docs/superpowers/plans/2026-04-17-number-line-algebra-bridge.md \
  typst/04-number-line-algebra-bridge/00-overview.typ \
  typst/04-number-line-algebra-bridge/01-rational-numbers.typ \
  typst/04-number-line-algebra-bridge/02-real-numbers.typ \
  typst/04-number-line-algebra-bridge/03-variables-and-expressions.typ \
  typst/04-number-line-algebra-bridge/04-equation-intuition.typ \
  typst/04-number-line-algebra-bridge/05-review.typ
git commit -m "feat: draft number-line algebra bridge chapter"
```
