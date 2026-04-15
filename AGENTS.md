# 数学自学教材（1-9 年级）— 项目约定

## 项目概述

面向中国 1-9 年级学生的中文数学自学教材。内容覆盖中国课标（小学一年级至初中三年级），教学风格借鉴美国教材：探索先于讲解、概念驱动、螺旋式深化、真实情境连接。

**输出格式**：
- `make pdf` → Typst → `output/math-textbook.pdf`（主要发布格式）

## 文件结构

- `typst/main.typ` — 入口文件，`#include` 所有章节
- `typst/lib/theme.typ` — 页面布局、字体、lesson-box 样式
- `typst/lib/diagram-packages.typ` — 图形包导入（cetz、fletcher 等）
- `typst/chapters/` — 所有章节 `.typ` 文件（按模块子目录）
  - `typst/chapters/00-introduction/` — 导读（4 个文件）
  - `typst/chapters/01-numbers/` — 数与运算（9 个文件）
  - `typst/chapters/02-algebra/` — 代数（13 个文件）
  - `typst/chapters/03-geometry/` — 几何（11 个文件）
  - `typst/chapters/04-statistics/` — 统计与概率（8 个文件）
- `typst/smoke/` — 构建烟雾测试（package-lock.typ）
- `scripts/` — 辅助脚本
- `output/` — 构建产物（git ignored）

## 知识点五步结构

每个 §X.Y 知识点按固定顺序：

| 结构 | Typst 函数 | 颜色 |
|------|-----------|------|
| 引入情境 | `#explore[...]` | 橙色 |
| 概念建立 | `#understand[...]` | 蓝色 |
| 典型例题 | `#workedexamples[...]` | 灰色 |
| 关键总结 | `#keytakeaway[...]` | 绿色 |
| 练一练 | `#practice[...]` | 紫色 |
| 参考答案 | `#answer[...]` | 浅灰 |

## Typst 规范

- 行内公式：`$...$`（无空格）；显示公式：`$ ... $`（两端有空格触发 display 模式）
- 对齐方程：在 `$ ... $` 内使用 `&` 对齐
- 不等号：`>=` / `<=`
- 绝对值：`abs(a)` 或 `|a|`
- 整除/条件：`|`
- 中文文本：直接书写，无需特殊处理
- 章节标题：`= 章标题` / `== §X.Y 节标题 <sec-X-Y>`（标题末尾带 label）
- 交叉引用：正文中使用 `#secref("X.Y")` 生成可点击链接；范围引用用 `#secrange("X.Y", "A.B")`
- 图形：使用 cetz 包（`@preview/cetz:0.4.2`），版本锁定在 `lib/diagram-packages.typ`
- Universe 包必须使用固定版本号

## 图形规范

- 所有图形**内联在章节 `.typ` 文件**中，不创建独立图形文件
- 使用 cetz 包绘制几何图形，版本锁定
- 用命名坐标标注关键点
- 图形说明用 `#figure` + `caption`

## 辅助函数

- `#explore[...]` — 引入情境框
- `#understand[...]` — 概念建立框
- `#workedexamples[...]` — 典型例题框
- `#keytakeaway[...]` — 关键总结框
- `#practice[...]` — 练一练框
- `#answer[...]` — 参考答案框
- `#secref("X.Y")` — 可点击的 §X.Y 章节引用链接
- `#secrange("X.Y", "A.B")` — 章节范围引用（如 §X.Y–§A.B）

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
make check  # 检查 Typst 工具链和包锁定
make clean  # 清理构建产物
```
