# 数学自学教材（1-9 年级）— 项目约定

## 项目概述

面向中国 1-9 年级学生的中文数学自学教材。内容覆盖中国课标（小学一年级至初中三年级），教学风格对标美国 AoPS / Beast Academy 精品自学教材：探索先于讲解、概念驱动、螺旋式深化、真实情境连接、系统化常见陷阱、主动尝试机制。

**输出格式**：
- `make pdf` → Typst → `output/math-textbook.pdf`（主要发布格式）

## 文件结构

- `typst/main.typ` — 入口文件，`#include` 所有章节
- `typst/lib/theme-v2.typ` — 页面布局、字体、所有框函数样式
- `typst/lib/diagram-packages.typ` — 图形包导入（cetz、fletcher 等）
- `typst/lib/geometry-helpers.typ` — 几何辅助函数（等角标记等）
- 章节目录（按 `XX-name/` 子目录）：
  - `typst/00-gateway/` — 导读（4 个文件）
  - `typst/01-counting/` — 数的萌芽（小学 1-4 年级，7 个文件含 07-review.typ）
  - `typst/02-fraction-decimal/` — 分与合（小学 3-6 年级，6 个文件含 05-review.typ）
  - `typst/03-ratio-world/` — 比例世界（小学 5-7 年级，6 个文件含 05-review.typ）
- `typst/04-negative-invention/` — 负数的发明（初中 7-8 年级，4 个文件含 03-review.typ）
- `typst/05-foundation-gate/` — 主干收束闸门（4 个文件：总览、基础总检、分支入口回看、回顾）
- `typst/05-equation-machine/` — 方程（初中 7-9 年级，9 个文件含 08-review.typ）
  - `typst/06-shape-logic/` — 形的逻辑（小学 3-9 年级，15 个文件含 14-review.typ）
  - `typst/07-function-lens/` — 函数（初中 8-9 年级，6 个文件含 05-review.typ）
  - `typst/08-data-detective/` — 数据侦探（初中 7-9 年级，6 个文件含 05-review.typ）
  - `typst/09-capstone/` — 终章（2 个文件）
- `typst/smoke/` — 构建烟雾测试（package-lock.typ）
- `scripts/` — 辅助脚本
- `output/` — 构建产物（git ignored）

## 教学框架：四段发明链 + 增强模块

每个 §X.Y 知识点按以下顺序组织：

| 结构 | Typst 函数 | 颜色 | 说明 |
|------|-----------|------|------|
| 现代困境 | `#crisis[...]` | 红色 | 以生活困境引出数学需求 |
| 探索发现 | `#discovery[...]` | 橙色 | 引导学生重演人类发现过程 |
| **试一试** | `#tryit[...]` | 蓝色虚线 | 例题前主动尝试（AoPS 核心机制） |
| 工具蓝图 | `#blueprint[...]` | 蓝色 | 正式概念/公式/定理 |
| **常见陷阱** | `#pitfall[...]` | 红黄警示 | ❌/✓ 对比展示高频错误 |
| 工具磨砺 | `#mastery[...]` | 绿色 | 基础→应用→挑战三级练习 |

章节末尾：`XX-review.typ` 章末回顾。主干 / 桥接 / 闸门章节统一采用：标题 → `#blueprint` 知识 recap → `#mastery` 混合自测题 → 参考答案 → `*螺旋复习*`

三类内联注记：
- `#history-note[...]` — 历史背景
- `#side-hack[...]` — 认知捷径
- `#vocab[...]` — 术语
- `#lab[...]` — 数学实验室（紫色，动手探究）

## Typst 语法规范（重要）

- 行内公式：`$...$`（无空格）；显示公式：`$ ... $`（两端有空格触发 display 模式）
- 对齐方程：在 `$ ... $` 内使用 `&` 对齐
- **分数**：`$frac(a, b)$`（括号加逗号）— **禁止** `frac{a}{b}`（LaTeX 写法）
- **根号**：`$sqrt(a)$` — **禁止** `sqrt{a}`
- **上划线**：`$overline(a)$` — **禁止** `overline{a}` 或 `\overline(a)`
- **均值**：`$bar(x)$` — **禁止** `bar{x}`
- **不等号**：`$a != b$`（不等于）、`$a >= b$`、`$a <= b$`
- **数学函数**：`$sin(x)$`、`$cos(x)$`、`$tan(x)$` — **禁止** `\sin`、`\cos` 等反斜杠形式
- **π**：`$pi$` — **禁止** `$\pi$`
- **÷**：`$div$` — **禁止** `$\div$`
- **粗体数学**：`$bold(a b)$` — **禁止** `$\mathbf{ab}$`
- 绝对值：`$|a|$` 或 `$abs(a)$`
- 上标分组：`$a^(m+n)$`（括号）或 `$a^{m+n}$`（花括号，Typst 数学模式支持）
- **正负号**：`$plus.minus$` — **禁止** `$pm$`（`pm` 不是 Typst 内置符号）
- **全等**：`$tilde.eq$` — **禁止** `$cong$`（与现有几何文件保持一致）
- **多字母变量**：数学模式中连续字母被视为单一标识符（未知变量会报错）
  - 正确：`$k x + b$`、`$a b$`、`$4 a c$`（字母间加空格）
  - 错误：`$kx + b$`、`$ab$`、`$4ac$`（会触发 "unknown variable" 错误）
  - 数字+字母可连写（不报错）：`$2x$`、`$3a$` 均可，但建议加空格增加可读性
- **几何符号**：顶点名/线段名等多字母组合必须加空格：`$triangle A B C$`、`$A B = C D$`
- **数学模式中的中文**：必须加引号：`$P("两奇") = ...$` — 禁止 `$P(两奇)$`
- 中文文本：直接书写，无需特殊处理（指数学公式以外的正文）
- 章节标题：`= 章标题` / `== §X.Y 节标题 <sec-X-Y>`（标题末尾带 label）
- 交叉引用：正文中使用 `#secref("X.Y")` 生成可点击链接；范围引用用 `#secrange("X.Y", "A.B")`
- 图形：使用 cetz 包（`@preview/cetz:0.4.2`），版本锁定在 `lib/diagram-packages.typ`
- Universe 包必须使用固定版本号

## 图形规范

- 所有图形**内联在章节 `.typ` 文件**中，不创建独立图形文件
- 使用 cetz 包绘制几何图形，版本锁定
- 用命名坐标标注关键点
- 图形说明用 `#figure` + `caption`

### 角标记规范

- 角标记**必须**使用 `cetz.angle.angle(origin, a, b, ...)` — 禁止手动 `arc()` + 硬编码偏移
- 直角标记**必须**使用 `cetz.angle.right-angle(origin, a, b, ...)` — 禁止手动 `line()` 对
- 等角标记（双弧/三弧）使用 `equal-angle()` 辅助函数（定义在 `lib/geometry-helpers.typ`）
- 导入方式：`import cetz.angle: angle, right-angle`（在 canvas 块内）
- `direction` 参数：`"near"`（默认选较小角）、`"ccw"`/`"cw"`（显式控制扫过方向）

## 框函数速查

| 函数 | 用途 | 在节中的位置 |
|------|------|------------|
| `#crisis[...]` | 引入生活困境 | 节首 |
| `#discovery[...]` | 引导探索过程 | crisis 之后 |
| `#tryit[...]` | 学生主动尝试（先尝试再看解） | blueprint 之前 |
| `#blueprint[...]` | 正式概念/公式 | discovery 之后 |
| `#pitfall[...]` | ❌/✓ 对比的高频错误 | blueprint 之后 |
| `#mastery[...]` | 三级练习题 | 节末 |
| `#history-note[...]` | 历史文化注记 | 任意位置 |
| `#side-hack[...]` | 认知捷径/记忆技巧 | 任意位置 |
| `#vocab[...]` | 关键术语定义 | 节首附近 |
| `#lab[...]` | 动手实验活动 | 任意位置 |
| `#secref("X.Y")` | 可点击章节引用 | 正文任意位置 |
| `#secrange("X.Y", "A.B")` | 章节范围引用 | 正文任意位置 |

## 章末回顾文件（XX-review.typ）

每章最后一个文件为章末回顾。对共同主干、桥接章和闸门章，统一结构为：
1. **知识速查卡**（`#blueprint`）：两栏极简总结
2. **混合自测题**（`#mastery`）：10-12 题跨节综合，不标知识点出处
3. **参考答案**：与混合自测题分开排布
4. **螺旋复习**：2-3 道题显式连接跨章节知识（必须使用 `#secref` 标注），且不可混入参考答案段落

## 主干闸门与分支入口约定

- `typst/05-foundation-gate/` 的职责是*收束共同主干*，不是继续扩展共同主干。
- 它必须包含：对 `01-arithmetic-foundation`、`02-fraction-ratio-foundation`、`03-geometry-foundation`、`04-number-line-algebra-bridge` 的累计 readiness check；面向后续分支的短 recap；用 `#secref(...)` 回指主干小节的螺旋复习；清晰的分支地图与自检提示。
- 它不得包含：伪装成复习的新主干内容、长推导、分支级操作流程、会和后续深化章节竞争位置的迷你课程。
- 分支入口 recap 必须使用简短的 `#side-hack[...]` 块；目标是唤醒旧工具，不是提前讲新分支内容。
- 任何“后续分支导览 / later branch overview”都放在 `#history-note[...]` 之后、`本章的主线是` 列表之前；若该章没有主线列表，则放在引言段落之后、第一组章节列表之前。

## 年级密度规则

- 1-5 年级内容：精简（基础概念 + 核心例题）
- 6-9 年级内容：详尽（完整发明链 + 多例题 + 充分练习）

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
