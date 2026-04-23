# 对标差距分析：当前书稿 vs 顶级教材基准

日期：2025-07-17
基准文档：`docs/review/external-benchmark-top-tier-math-curricula.md`
分析范围：`typst/main.typ` 全书结构 + 43 章 overview/review + 122 个知识点节文件

---

## 一、8 项 Sanity Check 逐条评估

### ✅ 1. 共享桥梁是否被做成了实体层，而非只留在 transition 页里

**评级：✅ 已达成**

证据：
- `共通桥梁`（Part 2）已独立为全书 7 大 Part 之一，含 7 章（比/数轴/坐标/字母/方程/平方根/入口合同）。
- `2-common-bridges/00-part-map.typ` 明确定义："这一部分连接公共基础和后面的四条分支。每一章引入一项'共用工具'，分支里都会反复用到。"
- 不再是 transition 页或附录，而是带独立章号、独立 overview/review 的实体结构。

---

### ✅ 2. 比、数轴、坐标、字母、方程是否已从领域内部上移

**评级：✅ 已达成**

证据：
- 2.1 比/比例/百分数、2.2 数轴/负数/有理数、2.3 坐标/位置/平面、2.4 字母/代数式/关系模板、2.5 方程/平衡/反向操作、2.6 平方根/无理数——全部已上移到共通桥梁。
- 公共基础（Part 1）保持纯基础内容（数/位值/四则/分数/小数/图形/度量），不再内嵌桥梁主题。

---

### ✅ 3. 每条分支前是否存在正式的 readiness contract

**评级：✅ 已达成**

证据：
- `2-common-bridges/07-bridge-readiness-contracts/` 是独立的一章，含 4 个分支准备清单（代数/几何/函数/数据）。
- 每个清单含三部分：前置工具表（带 secref）→ 最常见误判 → 哪里不会回哪里 → 可以继续前进的信号 → 诊断题。
- 答案与跨四分支综合小试集中在 `99-review.typ` 中，形成完整的自评闭环。
- 此外，Part 1 末尾 `09-foundation-readiness-check/` 也是一个 readiness check，形成两级检查站：公共基础 → 桥梁、桥梁 → 分支。

---

### ⚠️ 4. 主线是否只保留 required core，而非把所有 enrichment 压进去

**评级：⚠️ 部分达成**

证据（已达成部分）：
- 六阶段结构（crisis→discovery→tryit→blueprint→pitfall→mastery）本身隐含了 core 定义：blueprint 即核心工具，mastery 分三层（基础/应用/挑战）。
- 99 个节文件中有分层 mastery（基础/应用/挑战），"挑战"层实际充当了 enrichment。
- 全书目录清晰，没有明显的"知识点堆砌"。

证据（未达成部分）：
- **没有显式的 core / enrichment 标记制度。** Beast Academy 的做法是在 sequence 文档中把 section 明确标为 `Enrichment` 或 `optional`。本书的"挑战"题虽然起到类似功能，但没有对章节或知识点本身做 core vs enrichment 区分。
- 仅 16 个文件出现"拓展/选做/延伸/enrichment/optional"关键词，且多为自然语境提及，不是系统性标记。
- **读者无法在目录或 part-map 层面看出"哪些章节可跳"。** 当前 part-map 只有难度星级，没有 core/enrichment 区分。

---

### ⚠️ 5. 是否为桥梁主题保留了 quick review / recap / extension 位置

**评级：⚠️ 部分达成**

证据（已达成部分）：
- 每章 `99-review.typ` 均含三段式结构：知识速查卡 → 混合自测（含参考答案）→ 巩固复习。36/43 章的 review 含"巩固复习"回看段。
- 27/43 章的 review 含"☞ 高中桥"延伸段，提供 forward-looking extension。
- `巩固复习`段通过 secref 回看前章，实现了螺旋回顾。

证据（未达成部分）：
- **缺少章头 quick review / prerequisite warm-up 机制。** Beast Academy 每章开头做 prerequisite review 再进新课。本书虽然在 blueprint 中列出"需要先会"，但没有对应的"快速回顾练习"让读者热身。
- **review 结构是统一模板，没有针对桥梁章做特殊加强。** 桥梁章（Part 2）的 review 与普通知识点章的 review 格式相同。按 benchmark，桥梁主题应有更厚的 recap/extension。
- **缺少跨 Part 的 cumulative review。** Singapore 体系的 review exercise 是跨章累积的，本书每章 review 只回看本章和直接前置。

---

### ⚠️ 6. 是否仍然允许 problem-solving 作为正式结构，而非只是挑战题角落

**评级：⚠️ 部分达成**

证据（已达成部分）：
- `4-capstone/02-cross-domain-problem-solving-modeling/` 是正式章节，含多步建模、跨域混合题、完整答卷示范三个子节。
- 每个分支有独立的 summary 章（`06-algebra-summary/`、`06-geometry-summary/` 等），含跨章综合题。
- 自学循环（先试再读）将 problem-solving mindset 贯穿全书。

证据（未达成部分）：
- **problem-solving / strategy 只在终章和分支总结出现，不在正文主线中。** AoPS 把 `Problem-Solving Strategies` 作为独立章节，本书的策略训练没有独立成章，而是被嵌入总结和终章。
- **缺少"解题策略"作为显式工具的发明。** 当前全书只有 5 个文件提及"策略/strategy"。AoPS 体系中，strategy（如 work backwards, case analysis, invariant）是被正式教授的。
- **每节的 mastery 练习虽分三层，但"挑战"层更偏计算难度提升，较少是 strategy-heavy 的开放题。**

---

### ✅ 7. 是否避免了"公式先行、理解滞后"的桥梁写法

**评级：✅ 已达成**

证据：
- 六阶段结构严格要求 crisis（困境/需求）→ discovery（探索发现）→ tryit（自己试）→ blueprint（工具蓝图）的顺序。公式/定义在 blueprint 阶段才正式出现，之前已经有情境动机和探索过程。
- 全书 99 个节文件均使用 `#crisis` → `#discovery` → `#tryit` → `#blueprint` → `#pitfall` → `#mastery` 结构，无一例外。
- 以 `cb01-ratio-basics.typ` 为例：先从"奶茶配方"引出困境，再从等值分数推导出比的写法，最后才给出正式定义。
- `pitfall` 环节专门预防"公式误用"。

---

### ⚠️ 8. 是否兼顾了 AoPS 式探索感与 Singapore 式平稳推进

**评级：⚠️ 部分达成**

证据（AoPS 式探索感 — 强）：
- crisis → discovery 结构提供了强探索感。
- "先试一试"贯穿全书，读者在读定义前先暴露空白。
- 历史困境（history-note）增加了"发明"叙事感。
- 写作语气约定强调"对话感、冒险感"。

证据（Singapore 式平稳推进 — 中等）：
- 章节按严格线性顺序排列，part-map 给出明确难度梯度。
- 两级 readiness check 提供检查站。
- 但**缺少 Singapore 式的分层练习制度**：Singapore 有 Basic Practice → Further Practice → Challenging Practice → Math@Work → Brainworks 五层。本书只有基础/应用/挑战三层，且格式统一，缺少"数学实际应用"和"开放探究"的独立层次。
- **缺少"In A Nutshell"式的极简概要。** 知识速查卡起到类似作用，但每章只在 99-review 中出现一次，不在章中或章头提供。

---

## 二、三系统吸收状态

### 从 AoPS 吸收

| 建议项 | 状态 | 说明 |
|---|---|---|
| bridge topics 成带 | ✅ 已吸收 | 共通桥梁（Part 2）6 章形成连续桥梁带 |
| why-first | ✅ 已吸收 | crisis→discovery→blueprint 严格执行"先问为什么" |
| strategy 作为正式结构 | ❌ 未吸收 | problem-solving strategy 没有独立成章/成节，仅在终章和分支总结中出现。缺少对 work backwards / case analysis / invariant / extreme cases 等通用策略的显式教学 |

### 从 Beast Academy 吸收

| 建议项 | 状态 | 说明 |
|---|---|---|
| prerequisite 显式化 | ✅ 已吸收 | 每章 blueprint 含"需要先会"+ secref；readiness contract 含完整工具表 |
| core / enrichment 分层 | ❌ 未吸收 | 没有在章节或知识点级别做 core vs enrichment 标记。mastery 的"挑战"层部分替代，但不是制度性分层 |
| transition chapter 提前 | ✅ 已吸收 | 桥梁（Part 2）在分支之前，且公共基础末尾有 readiness check |
| 桥梁主题防公式化 | ✅ 已吸收 | 六阶段结构天然防止公式先行 |

### 从 Singapore 吸收

| 建议项 | 状态 | 说明 |
|---|---|---|
| review / recap / extension 制度化 | ⚠️ 部分 | 有 99-review（速查卡+自测+巩固复习+高中桥），但缺少章头 warm-up 和跨章 cumulative review |
| 平稳 progression | ✅ 已吸收 | 严格线性顺序，难度星级梯度，两级 readiness check |
| 分层练习的思路 | ⚠️ 部分 | 有基础/应用/挑战三层，但缺少 Math@Work（实际应用层）和 Brainworks（开放探究层），且缺少 Further Practice（加量巩固层） |

---

## 三、Top 10 最具影响力的改进建议（按优先级排序）

### 1. 建立显式 core / enrichment 分层标记制度
**影响：结构性（全书级）**

当前每章所有内容都被视为"必读"。建议：
- 在 part-map 中每章标注 `[核心]` 或 `[延伸]`。
- 在 mastery 练习中，"挑战"后面增加明确的 `选做` 标记。
- 对于个别知识点节（如某些变式推导），考虑标记为 enrichment section，让基础较弱的读者知道可以先跳过。
- 对每章的 blueprint 工具做"核心工具 / 延伸工具"区分。

### 2. 增设 problem-solving strategy 正式章节
**影响：教学深度（AoPS 核心差距）**

建议在共通桥梁或终章中增设 1-2 个"解题策略"显式教学节：
- 可教授的通用策略：画图辅助、从特例猜一般、逆向工作、分类讨论、不变量、极端情况检验。
- 不需要完整的 AoPS 策略课程，但至少应有一个 `strategy toolbox` 章节让读者知道"除了知识工具，还有思维工具"。
- 可以在 `4-capstone/02-cross-domain-problem-solving-modeling/` 之前或之内增设 `00-strategy-toolbox.typ`。

### 3. 增加章头 prerequisite warm-up 机制
**影响：学习体验（Singapore 核心差距）**

当前 blueprint 列出"需要先会"，但读者需要自己判断是否真的会。建议：
- 在每章 overview 的 blueprint 之后增加 2-3 道 prerequisite warm-up 快速诊断题（不需独立成节，3-5 行即可）。
- 目的：在进入新内容前激活前置知识，而不是等到读完才在 review 中发现基础不稳。
- 对桥梁章（Part 2）尤为重要。

### 4. 增加跨章累积复习（cumulative review）
**影响：长期记忆巩固**

当前每章 review 只回看本章和直接前置。建议：
- 在每个 Part 的最后一章 review 中增加 `跨章混合练习`：抽取本 Part 和前面所有 Part 的关键工具出题。
- Part 2 结尾（bridge-readiness-contracts 的 review）已经做了四分支综合小试，这很好。建议在 Part 3a-3d 各自的 summary review 中也加入回看 Part 1 和 Part 2 的题目。

### 5. 丰富练习层次（从三层扩展到五层）
**影响：覆盖面（Singapore 核心差距）**

当前 mastery 只有基础/应用/挑战三层。建议扩展：
- **基础**（概念确认）→ **巩固**（同类题加量）→ **应用**（现实情境）→ **挑战**（策略密集）→ **选做/拓展**（开放探究）
- 不需要每节都五层齐全，但至少让"应用"层独立于"基础"层，且"选做"层明确标记为 optional。

### 6. 为桥梁章（Part 2）设计加厚的 review/recap
**影响：桥梁质量**

桥梁是全书的"承重结构"。建议：
- Part 2 每章的 99-review 增加一个 `跨桥回看` 段：每学完一个桥梁工具后，快速回看它和前面桥梁工具的关系（如"比→比例→方程"的链条）。
- Part 2 的 07-bridge-readiness-contracts 可在四分支清单之前增加一节 `桥梁工具总览图`，把 6 个桥梁工具画成依赖链。

### 7. 在分支 overview 中增加 "来自桥梁的回顾" 段
**影响：分支入口平滑度**

当前分支第一章的 overview 有 blueprint 列出"需要先会"，但没有做 warm-up。建议：
- 每条分支的第一章 overview 增加一个 `来自桥梁的快速回忆` 段（3-5 道快速题），检验读者对桥梁工具的掌握。
- 这与 readiness contract 互补：readiness contract 是全面检查，这里是轻量激活。

### 8. 增加 "数学实际应用" 独立练习层（Math@Work）
**影响：真实情境连接**

Singapore 的 Math@Work 层专门用真实数据和情境出题。建议：
- 在每章或每 Part 的 review 中增加 1-2 道"生活中的数学"题，明确标注数据来源（如"某市 2024 年公交线路数据"）。
- 终章的跨域建模已经做了这件事，但应更早、更频繁地出现。

### 9. 在导读中增加 "全书学习路径图" 可视化
**影响：自学者导航**

当前 part-map 是文字表格。建议：
- 在导读或 Part 2 的 part-map 中增加一张**可视化的知识依赖图**：公共基础 → 桥梁 → 四分支（并行）→ 终章。
- 明确标出"分支之间无先后依赖，可选任一条先走"。
- 这比文字 side-hack 更直观，对自学者导航帮助极大。

### 10. 将"解题策略"要素嵌入常规章节的 mastery 挑战题
**影响：策略思维渗透**

即使不增设独立策略章节（建议 2），至少可以：
- 在每章 mastery 的"挑战"层题目旁标注所用策略标签（如 `[逆向]`、`[分类]`、`[画图]`）。
- 让读者逐渐意识到"解题不只靠知识工具，还靠策略工具"。
- 在终章或分支总结中汇总出现过的策略标签，形成一张"策略速查表"。

---

## 四、当前书稿的独特优势（benchmark 系统不具备的）

### 1. 六阶段发明链（crisis→discovery→tryit→blueprint→pitfall→mastery）
三大 benchmark 系统中，**没有一个**把教学结构压缩到如此清晰的六阶段模板。AoPS 有 why-first 但结构松散；Beast Academy 有 comic 叙事但无固定模板；Singapore 有分层练习但 discovery 较弱。本书的六阶段是全书 99 个节文件一以贯之的结构，是最大的差异化优势。

### 2. 双重 readiness check 机制
公共基础末尾 `09-foundation-readiness-check` + 桥梁末尾 `07-bridge-readiness-contracts` 构成两级检查站。三大 benchmark 中只有 Beast Academy 有显式 prerequisite check，但没有做到两级串联。

### 3. 系统化的"哪里不会回哪里"查漏地图
每个 readiness contract 和分支 overview 都带 `忘了可以回到` + secref 定向补缺表。这比三大 benchmark 的 prerequisite 声明更精确——不是"你需要先学 X"，而是"你在 Y 题卡住时回到 Z 节"。

### 4. 全书统一的 secref 交叉引用网络
每个工具有唯一 tool-id，每个前置都通过 secref 链接。这在纸质书中罕见，对自学者的定向补缺体验远超三大 benchmark。

### 5. "高中桥" 延伸段
27 章的 review 含"☞ 高中桥"前瞻段，告诉读者当前工具在高中如何被延续。三大 benchmark 中没有一个在初中/Pre-algebra 层面做这种系统性的 forward-looking extension。

### 6. 自学循环作为元认知基础设施
导读中的"四步自学循环"（先试→暴露空白→有针对性补→再尝试）不是附加建议，而是全书教学结构的底层逻辑。三大 benchmark 假设有教师引导，本书假设无教师，因此在元认知工具上做得更深。

---

## 五、总体评估

| 维度 | 评分 | 说明 |
|---|---|---|
| 骨架结构 | ★★★★★ | 三层结构（基础→桥梁→分支）完全对齐 benchmark |
| 桥梁实体化 | ★★★★★ | 桥梁主题全部上移且带 readiness contract |
| 探索感 (AoPS) | ★★★★☆ | 六阶段强于 benchmark，但缺策略显式教学 |
| 分层制度 (Beast) | ★★★☆☆ | 缺 core/enrichment 标记；练习分层不够深 |
| 稳态推进 (Singapore) | ★★★★☆ | 线性有序、readiness check 好，但缺 warm-up 和 cumulative review |
| problem-solving 正式度 | ★★★☆☆ | 终章有但日常渗透不足 |
| review 机制 | ★★★★☆ | 有速查卡+自测+巩固复习+高中桥，但缺累积 review |
| 自学可操作性 | ★★★★★ | 独有优势：自学循环+查漏地图+secref 网络 |

**一句话总结：骨架已对齐顶级标准，六阶段和自学机制是独有优势；最大缺口是 core/enrichment 制度化和 problem-solving strategy 显式教学——补齐这两项即可逼近顶级。**
