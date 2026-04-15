# 设计文档：迁移至全 LaTeX + TikZ

**日期**：2026-04-15  
**状态**：已批准  
**范围**：将现有 Markdown + SVG 教材重构为 LaTeX + TikZ，输出 PDF 和 GitHub Pages

---

## 背景与目标

当前教材使用 Markdown + 手写 SVG 通过 Pandoc 生成 PDF。存在两个核心问题：

1. **图形精度差**：SVG 坐标手写，角弧端点无法精确对齐射线方向，反复出现标签压线 bug
2. **排版质量有限**：Pandoc 生成的 PDF 缺少 tcolorbox 彩色知识框、编号定理环境、专业章节样式等正式教材必需的排版能力

**目标**：

- 迁移为原生 LaTeX（ctexbook 类）+ TikZ 图形
- 引入 tcolorbox 彩色环境，视觉上体现"引入情境/概念建立/例题/总结/练习"的五步结构
- 双路输出：`xelatex` → PDF（主要发布格式），`make4ht` → HTML5 → GitHub Pages（在线浏览）
- 不再维护 EPUB

---

## 最终目录结构

```
math-textbook-1-9/
├── main.tex                      # 入口文件，\include 各章
├── preamble/
│   ├── packages.tex              # 所有 \usepackage
│   ├── environments.tex          # tcolorbox 五步结构环境定义
│   ├── tikz-styles.tex           # TikZ 全局颜色/线型/箭头样式
│   └── fonts.tex                 # CJK 字体配置（Noto CJK）
│
├── chapters/
│   ├── 00-introduction/
│   │   ├── welcome.tex
│   │   ├── learning-path.tex
│   │   ├── symbols.tex
│   │   └── table-of-contents.tex
│   ├── 01-numbers/
│   │   ├── 00-overview.tex
│   │   ├── 01-integers.tex       # \chapter{§1.1 整数的认识}
│   │   ├── 02-arithmetic.tex
│   │   └── ...（共 10 文件）
│   ├── 02-algebra/               # 共 12 文件
│   ├── 03-geometry/              # 共 11 文件，TikZ 图形内联
│   └── 04-statistics/            # 共 7 文件
│
├── build/                        # make4ht HTML 输出（git ignored）
├── docs/                         # GitHub Pages 发布目录
│   ├── superpowers/specs/        # 设计文档
│   └── index.html                # 入口（从 build/ 发布）
├── output/                       # PDF 产物（git ignored）
│   └── math-textbook.pdf
│
├── Dockerfile
├── Makefile
├── CLAUDE.md
└── .gitignore
```

**关键变更**：
- `00-introduction/*.md` → `chapters/00-introduction/*.tex`（44 个文件全部迁移）
- `assets/03-geometry/*.svg` → 废弃；TikZ 代码内联在对应 `chapters/03-geometry/*.tex`
- `metadata.yaml` + `book-order.txt` → 改由 `main.tex` 的 `\include` 管理
- `Makefile` 保留 Docker 双层架构，更换内部目标

---

## LaTeX 文档类与导言区

### 文档类

```latex
\documentclass[b5paper, openany, 12pt]{ctexbook}
```

`ctexbook` 提供中文化的章节标题、目录、页眉页脚，无需额外配置。

### 核心包（`preamble/packages.tex`）

| 包 | 用途 |
|----|------|
| `tcolorbox` + `skins,breakable,theorems` | 彩色知识框 |
| `tikz` + `arrows.meta,calc,angles,quotes,patterns,decorations.markings` | 几何图形 |
| `pgfplots` | 统计图表（频率分布直方图等）|
| `amsmath, amssymb, amsthm` | 数学排版 |
| `hyperref` | PDF 超链接 + 目录跳转 |
| `cleveref` | `\cref{sec:2.1}` 智能交叉引用 |
| `fontawesome5` | 环境标题图标（🔍 💡 ★ ✏）|
| `enumitem` | 列表样式（练一练编号）|
| `booktabs` | 专业表格 |
| `geometry` | B5 纸张，2.5cm 边距 |
| `xcolor` | 颜色系统 |

### 字体配置（`preamble/fonts.tex`）

```latex
\setCJKmainfont{Noto Serif CJK SC}
\setCJKsansfont{Noto Sans CJK SC}
\setmathfont{Latin Modern Math}
```

---

## tcolorbox 环境设计（`preamble/environments.tex`）

五步教学结构对应五种视觉环境：

### 1. 引入情境（Explore）

```latex
\newtcolorbox{explore}{
  enhanced, breakable,
  colback=orange!8, colframe=orange!60,
  leftrule=4pt, sharp corners,
  title={\faSearch\enskip 引入情境},
  fonttitle=\bfseries\sffamily,
}
```

### 2. 概念建立（Build Understanding）

```latex
\newtcolorbox{understand}{
  enhanced, breakable,
  colback=blue!5, colframe=blue!40,
  title={\faLightbulb\enskip 概念建立},
  fonttitle=\bfseries\sffamily,
}
```

### 3. 典型例题（Worked Examples）

编号定理风格（使用 `tcolorbox` 的 `theorems` 库）：

```latex
\newtcbtheorem[number within=chapter]{workedexample}{例}
{colback=gray!5, colframe=gray!40, fonttitle=\bfseries}{ex}
```

用法：`\begin{workedexample}{解一元一次方程}{ex:1.1-1}` ... `\end{workedexample}`

### 4. 关键总结（Key Takeaways）

```latex
\newtcolorbox{keytakeaway}{
  enhanced, breakable,
  colback=green!6, colframe=green!50,
  title={\faStar\enskip 关键总结},
  fonttitle=\bfseries\sffamily,
}
```

### 5. 练一练（Practice）

```latex
\newtcolorbox{practice}{
  enhanced, breakable,
  colback=violet!5, colframe=violet!40,
  leftrule=4pt, sharp corners,
  title={\faPencil\enskip 练一练},
  fonttitle=\bfseries\sffamily,
}
```

### 辅助环境

```latex
% 前置知识（行内小框）
\newcommand{\prerequisite}[1]{%
  \begin{tcolorbox}[size=small, colback=yellow!10, colframe=yellow!60,
    leftrule=2pt, sharp corners]
    \small\textbf{前置知识：} #1
  \end{tcolorbox}}

% 适用年级
\newcommand{\gradelevel}[1]{%
  \begin{tcolorbox}[size=small, colback=teal!8, colframe=teal!40,
    leftrule=2pt, sharp corners]
    \small\textbf{适用年级：} #1
  \end{tcolorbox}}

% 定理/定义/性质（amsthm 风格）
\newtheorem{theorem}{定理}[chapter]
\newtheorem{definition}[theorem]{定义}
\newtheorem{property}[theorem]{性质}
\newtheorem{corollary}[theorem]{推论}
```

---

## TikZ 图形集成（`preamble/tikz-styles.tex`）

**内联方式**：几何图形直接写在章节 `.tex` 文件的 `figure` 环境中。

```latex
\begin{figure}[htbp]
\centering
\begin{tikzpicture}[
  every node/.style={font=\small},
  angle line/.style={black, thick},
]
  % 顶点 O
  \coordinate (O) at (0,0);
  \coordinate (A) at (130:3);   % 射线方向用角度指定，不手算坐标
  \coordinate (B) at (40:3);
  
  \draw[->] (O) -- (A) node[above left] {$A$};
  \draw[->] (O) -- (B) node[right] {$B$};
  \node[below] at (O) {$O$};
  
  % 弧线：端点精确在射线上
  \draw (40:1) arc[start angle=40, end angle=130, radius=1];
  \node at (85:1.25) {$\angle AOB$};
\end{tikzpicture}
\caption{角 $\angle AOB$ 的示意图}
\label{fig:angle-aob}
\end{figure}
```

**全局 TikZ 样式定义**（在 `tikz-styles.tex` 中统一）：

```latex
\usetikzlibrary{angles, quotes, arrows.meta, calc, patterns,
                decorations.markings, intersections}

% 标准线型
\tikzset{
  main line/.style   = {thick, black},
  aux line/.style    = {dashed, gray, thin},
  angle arc/.style   = {thin, black},
  point mark/.style  = {circle, fill=black, inner sep=1.5pt},
}
```

**统计图表使用 `pgfplots`**（频率分布直方图、折线图、条形图），代替手写 SVG。

---

## 构建流水线

### Makefile（双层架构保留，更换内部目标）

```makefile
IMAGE := math-textbook-builder
DOCKER_RUN := docker run --rm -v "$$(pwd):/book" $(IMAGE)

pdf: _docker-image
	$(DOCKER_RUN) make _pdf

html: _docker-image
	$(DOCKER_RUN) make _html

all: _docker-image
	$(DOCKER_RUN) make _all

clean:
	rm -rf output/* build/* *.aux *.log *.toc *.out

_all: _pdf _html

_pdf:
	mkdir -p output
	xelatex -shell-escape -interaction=nonstopmode main.tex
	xelatex -shell-escape -interaction=nonstopmode main.tex
	mv main.pdf output/math-textbook.pdf

_html:
	mkdir -p build docs
	make4ht -lm xelatex -f html5 -d build main.tex "svg,mathml"
	cp -r build/. docs/html/

_docker-image:
	docker build -t $(IMAGE) .
```

### Dockerfile 新增依赖

```dockerfile
RUN apt-get install -y --no-install-recommends \
    # 原有包保留
    pandoc texlive-xetex texlive-lang-chinese \
    texlive-fonts-recommended texlive-science texlive-latex-extra \
    fonts-noto-cjk fonts-noto-cjk-extra lmodern make \
    # 新增
    tex4ht          \   # make4ht 底层
    dvisvgm         \   # TikZ → SVG 转换（make4ht 调用）
    texlive-extra-utils \  # 包含 make4ht
    && rm -rf /var/lib/apt/lists/*
```

### GitHub Pages 发布

`.github/workflows/build.yml` 中：
- Push to `main` → Docker 构建 → `docs/html/` 输出 → 发布到 GitHub Pages

---

## 迁移策略（44 个 Markdown 文件）

### 阶段 1：自动转换（≈80%）

使用 Python 脚本完成：
1. `pandoc --from markdown --to latex`：正文、数学公式、表格
2. 脚本识别 `#### 引入情境` 等 Markdown 标题，替换为对应 `\begin{explore}` 环境
3. `> **前置知识**：...` 块引用 → `\prerequisite{...}` 命令
4. Markdown 图片引用 `![...](../assets/03-geometry/xxx.svg)` → TikZ 占位注释（待手动填写）

### 阶段 2：TikZ 重写图形

几何模块（`03-geometry/`）中 45 个 SVG → TikZ：
- 每个图形由 Agent 根据原 SVG 语义重写为 TikZ 代码
- 使用角度指定坐标，消除手算精度问题
- 并行化：多个 Agent 同时处理不同章节

### 阶段 3：人工/Agent 审查

- 检查环境边界（`\begin{explore}` 是否在正确位置）
- 验证 TikZ 图形在 PDF 和 HTML 两端的渲染
- 交叉引用：LaTeX 内部引用使用 `\cref{sec:2.1}`；面向读者的可读文字（"见 §2.1"）保留 `§X.Y` 字面文本

**注**：新增几何图形（当前无对应 SVG 的章节）同样以 TikZ 内联方式添加，不创建 SVG 文件。

---

## 验证方法

1. `make pdf` — PDF 构建成功，A4/B5 排版正确，彩色知识框完整显示
2. `make html` — HTML5 构建成功，TikZ 转换为内联 SVG，数学公式用 MathML 渲染
3. 抽查 5 个几何图形：弧线端点精确在射线上（无手算偏差）
4. 在 GitHub Pages 预览中检查中文字体和公式显示
5. `make check`（迁移后需更新）— 将 grep 目标从 `.md` 改为 `.tex`，从 `§X.Y` 标题识别改为 `\chapter{§X.Y}` 模式
