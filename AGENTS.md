# 数学自学教材（1-9 年级）— 项目约定

## 项目定位

面向中国 1-9 年级学生的中文数学自学教材，覆盖小学一年级至初中三年级课标。教学风格对标 AoPS / Beast Academy：探索先于讲解、概念驱动、螺旋式深化。唯一发布格式：`make pdf` → `output/math-textbook.pdf`。

## 全书结构原则（不可更改）

- **全书脊椎**：导读 → 基础（a 数感 + b 形状） → 基础收束与分支起步 → 分支进阶（c 符号 → d 几何证明 → e 函数 → f 数据） → 终章综合
- **每分支脊椎**：{分支}基础 → 基础总结 → {分支}进阶 → {分支}总结
- **每个知识点章节六阶段**：历史困境 → 探索发现 → 试一试 → 工具蓝图 → 常见陷阱 → 工具磨砺，且六段使用不同的可视化表达
- **知识点章节工具原则**：每章最多发明 3 个工具（定义、定理、技巧等）；每个工具必须在“工具蓝图”阶段引入；章节中出现的工具必须是本章发明的工具或前文已经发明过的工具；**这里的“3 个工具/概念”按读者真正新学的细分概念计数，不允许把多个细分概念打包成一个更大的总概念来“凑到 3 个”**；如果确实出现超过 3 个新的细分概念，应拆成多个知识点章节，相关细分概念尽量分别成章，而不是在一个更大的概念上浅尝则止

## 写作语气约定

- 除严格术语、定理表述、正式定义外，正文应尽量初学者友好、带一点对话感。
- 避免生硬、硬拗、带“口号味”的措辞，如“抓手”。
- 提示语、警示语优先使用更自然的对话式说法；合适时可用“别这样做！”“你以为……但其实……”这类句式。
- 在有助于动机和自学可读性时，可保留适度的趣味性、冒险感；语气始终服务于理解，不服务于表演感。

## 章节图谱

`typst/main.typ` 是章节目录权威来源。源码按 SSOT（`docs/knowledge-graph/tool-dependencies.md`）6 域布局，文件按 `[阶段数字]-[域字母][两位序号]-[slug].typ` 命名（例 `0-a00-overview-counting.typ`、`1-a01-natural-number.typ`、`2-c00-foundation-summary.typ`、`3-c37-system-of-equations.typ`、`4-d00-review-geometry-deepening.typ`）。

| 顶层 | 目录 | 性质 | 覆盖内容 | 脊椎段 |
|---|---|---|---|---|
| 导读 | `0-orientation/` | 非 tool 叙事 | 欢迎 / 使用指南 / 符号 / 发明树 | 导读（不属于脊椎正文） |
| a 域 | `1a-number-sense/` | 56 tool + 合并的 overview/review | 数感与运算（ℕ→ℤ→ℚ→ℝ + 四则 + 位值 + 分数/小数/比例） | 公共基础 |
| b 域 | `1b-shapes/` | 38 tool + overview/review | 图形直观（点线面 + 周长面积体积 + 角与平行 + 坐标入门） | 公共基础 |
| 闸门 | `2-foundation-transition/` | 非 tool 综述 | 基础总结 + 分支入口回顾 | 基础总结 |
| c 域 | `3a-symbols/` | 48 tool + overview/foundation-summary/review | 符号与方程（字母式 + 整式 + 幂 + 因式分解 + 方程/不等式/分式） | 分支进阶 |
| d 域 | `3b-geometry-proof/` | 38 tool + overview/foundation-summary/review | 几何推理（全等/相似/圆/勾股/三角比/变换/视图） | 分支进阶 |
| e 域 | `3c-functions/` | 9 tool + overview/foundation-summary/review | 函数与变化（一次/反比例/二次 + 增长模型） | 分支进阶 |
| f 域 | `3d-data/` | 18 tool + overview/foundation-summary/review | 数据与不确定性（描述统计 + 频率分布 + 概率 + 抽样） | 分支进阶 |
| 终章 | `4-capstone/` | 非 tool 综述 | 全书发明树回看 + 后续展望 | 全书总结 + 后续展望 |

锚点与交叉引用：每个工具文件以 `<tool:{tool-id}>` 为章级锚点，其他节用 `#secref("{tool-id}")` 引用（例 `#secref("a01-natural-number")` 显示 §a01）。meta 节（闸门、各域基础总结）沿用 §5.1 / §6.7 等显示名，以 `<meta:...>` 为锚点。

## 构建

宿主机只需 Docker。

```bash
make pdf    # 生成 PDF（output/math-textbook.pdf）
make check  # 唯一校验入口：工具链 + 主书编译 + package-lock smoke + 8 域 smoke（1a-number-sense/1b-shapes/2-foundation-transition/3a-symbols/3b-geometry-proof/3c-functions/3d-data/4-capstone）
make clean  # 清理构建产物
```

## 详细规则参见

内容创作规则（教学结构、六阶段发明链、章末回顾、闸门约定、年级密度、统计范围等）：

> `.agents/skills/math-textbook-authoring/SKILL.md`

Typst 语法与图形规范（数学写法、CeTZ 角标记、框函数速查、交叉引用等）：

> `.claude/skills/typst/SKILL.md`
