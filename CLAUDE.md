# 数学自学教材（1-9 年级）— 项目约定

## 项目概述

面向中国 1-9 年级学生的中文数学自学教材。内容覆盖中国课标（小学一年级至初中三年级），教学风格借鉴美国教材：探索先于讲解、概念驱动、螺旋式深化、真实情境连接。

**输出格式**：
- `make pdf` → XeLaTeX → `output/math-textbook.pdf`（主要发布格式）
- `make html` → make4ht → HTML5 → `docs/html/` → GitHub Pages

## 文件结构

- `main.tex` — 入口文件，`\include` 所有章节
- `preamble/` — 包导入、字体、tcolorbox 环境、TikZ 样式
- `chapters/` — 所有章节 `.tex` 文件（按模块子目录）
  - `chapters/00-introduction/` — 导读（4 个文件）
  - `chapters/01-numbers/` — 数与运算（10 个文件）
  - `chapters/02-algebra/` — 代数（13 个文件）
  - `chapters/03-geometry/` — 几何（12 个文件，TikZ 内联）
  - `chapters/04-statistics/` — 统计与概率（8 个文件）
- `scripts/` — 辅助脚本（md2tex.py 迁移脚本）
- `output/` — 构建产物（git ignored）
- `build/` — make4ht HTML 中间文件（git ignored）
- `docs/` — GitHub Pages 内容（git ignored，由 CI 发布）

## 知识点五步结构

每个 §X.Y 知识点按固定顺序：

| 结构 | LaTeX 环境 | 颜色 |
|------|-----------|------|
| 引入情境 | `\begin{explore}` | 橙色 |
| 概念建立 | `\begin{understand}` | 蓝色 |
| 典型例题 | `\begin{workedexamples}` | 灰色 |
| 关键总结 | `\begin{keytakeaway}` | 绿色 |
| 练一练 | `\begin{practice}` | 紫色 |
| 参考答案 | `\begin{answer}` | 浅灰 |

## LaTeX 规范

- 行内公式：`$...$`；行间公式：`\[ ... \]`（不用 `$$..$$`）
- 对齐方程：`\begin{aligned} ... \end{aligned}` 嵌套在 `\[ \]` 中
- 不等号：`\geq` / `\leq`（不用 `\geqslant`）
- 绝对值：`\lvert a \rvert`（不用 `|a|`）
- 整除/条件：`\mid`
- 中文文本：`\text{...}`（在数学模式中）
- 章节标签：`\label{sec:X.Y}` 紧跟 `\chapter{}`
- 图形标签：`\label{fig:描述性名称}`
- 交叉引用：`§X.Y` 字面文本（面向读者）
- **不使用** Unicode 特殊字符（✓ → `$\checkmark$`，₁ → `$_1$`）

## TikZ 图形规范

- 所有图形**内联在章节 `.tex` 文件**中，不创建独立图形文件
- 始终使用**角度坐标**（`(130:3)` 等）而非手算直角坐标
- 用 `\coordinate (Name) at (...)` 命名关键点
- 弧线端点：用 `arc[start angle=X, end angle=Y, radius=R]`
- tcolorbox 内不使用 `\begin{figure}[htbp]`，改用 `\begin{center}` + `\captionof{figure}{...}`（需要 `caption` 包）
- tcolorbox 外的独立图形可用 `\begin{figure}[htbp]`

## 辅助命令

- `\prerequisite{§A.B, §C.D}` — 前置知识框
- `\gradelevel{X 年级}` — 适用年级框

## 年级密度规则

- 1-5 年级内容：精简（基础概念 + 核心例题）
- 6-9 年级内容：详尽（完整五步结构 + 多例题 + 充分练习）

## 统计范围限制（按中国课标）

- 包含：方差（八年级）、总体与样本、频率分布直方图
- 严格排除：标准差、正态分布、条件概率、独立性检验、排列组合公式、相关系数、回归方程、随机变量、期望值

## 构建

宿主机只需 Docker。

```bash
make pdf    # 生成 PDF（output/math-textbook.pdf）
make html   # 生成 HTML5（docs/html/）
make check  # 检查交叉引用一致性
make clean  # 清理构建产物
```
