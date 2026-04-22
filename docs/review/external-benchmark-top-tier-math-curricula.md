# 外部对标调研 — 顶级数学教材与课程结构参考
日期：2026-04-22
适用范围：全书骨架设计、共享前置能力分层、分支入口设计、样章重排时的外部参考

---

## 文档目的

本文件把这次外部调研单独沉淀下来，供后续结构重构直接引用。

它不回答“我们现在就要怎么改稿”的全部细节，而是回答 4 个更基础的问题：

1. 顶级教材 / 课程公开呈现出来的骨架是什么样的。
2. 它们如何处理“共享基础”和“后续分支”的关系。
3. 它们在教学机制上有哪些值得借鉴的地方。
4. 哪些做法适合本项目，哪些不适合直接照搬。

配套诊断见：

- [结构审校迭代 02 — 顶级教材深度诊断](./structure-iter-02-top-tier-diagnosis.md)

---

## 调研范围与方法

### 本轮只使用官方公开材料

- Art of Problem Solving 官方书籍页、官方课程页、官方 syllabus PDF
- Beast Academy 官方图书页、官方 planning 页、官方 overview PDF、官方 sequence PDF
- Singapore Math 官方 overview / FAQ / resources / scopes & sequences 页

### 本轮不使用的材料

- 第三方博客、测评、论坛讨论
- 非官方解读视频
- 用户评价作为事实依据

### 为什么这样做

本项目现在处在“要不要改骨架”的阶段，最需要的是：

- 官方如何定义自己的课程层次
- 官方如何公开表达 prerequisite / sequence / review / enrichment
- 官方如何描述 lesson structure 与 problem-solving philosophy

这些信息用官方材料最稳。

---

## 结论先行

### 总结判断

三条路线虽然风格不同，但都没有走“纯领域桶装 + 后面再硬分叉”的路。

它们共同体现出 3 个结构事实：

1. **共享前置能力会被显式组织，而不是长期埋在单一领域里。**
2. **分支深化之前，总会有一段桥梁式 runway。**
3. **review / readiness / enrichment 不是零散附属物，而是主结构的一部分。**

### 对本项目最有价值的直接启发

1. 本项目应该把 `共通桥梁` 从隐含逻辑升级为实体结构。
2. `比 / 数轴 / 坐标 / 字母 / 方程` 这类内容不应继续被当成某一条主干内部的小节。
3. 分支入口不应只是“导语”，而应是带回补路径的正式 contract。

---

## 来源总表

| 体系 | 来源 | 用途 |
|---|---|---|
| AoPS | [Prealgebra 书籍页](https://artofproblemsolving.com/store/book/prealgebra) | 公开定位、覆盖主题、问题先行的教学定位 |
| AoPS | [Prealgebra syllabus PDF](https://data.artofproblemsolving.com/course-docs/syllabi/prealgebra1-syllabus.pdf) | 全年 Part 1 / Part 2 的详细主题顺序 |
| AoPS | [Prealgebra self-paced syllabus PDF](https://data.artofproblemsolving.com/course-docs/syllabi/sp-prealgebra2-syllabus.pdf) | 章节级主题拆分与更细粒度内容 |
| Beast Academy | [Level 5 总页](https://beastacademy.com/books/level-5) | Unit 级主题编排 |
| Beast Academy | [Planning 页](https://beastacademy.com/resources/planning/5) | sequence / overview / standards 资料入口 |
| Beast Academy | [BA5 Overview PDF](https://beastacademy.com/u/pdfs/planning/overviews/BA5Overview.pdf) | 单章 prerequisite、教学建议、概念组织 |
| Beast Academy | [BA5 Sequence PDF](https://beastacademy.com/u/pdfs/planning/sequence/BA5Sequence.pdf) | section 级 sequencing、core vs enrichment、Guide/Practice/Online 对齐 |
| Singapore Math | [Dimensions Math 6–8 for Schools](https://www.singaporemath.com/pages/dimensions-math-6-8-for-schools) | 中学阶段总体定位 |
| Singapore Math | [School FAQ](https://www.singaporemath.com/pages/school-faq) | lesson structure、grade 6/7/8 关系、review 机制、教材组件 |
| Singapore Math | [Dimensions Math 6–8 Resources](https://www.singaporemath.com/pages/dimensions-math-6-8-resources) | pacing guides、resources、assessment 信息 |
| Singapore Math | [Scopes & Sequences](https://www.singaporemath.com/pages/scopes-sequences) | 官方 scope/sequence 入口存在性 |

---

## A. AoPS Prealgebra

### 1. 它公开把自己定义成什么

AoPS 官方把 `Prealgebra` 定位成一门完整课程，不只是“代数前零散准备”。

官方公开材料反复强调几件事：

- 它覆盖 arithmetic、algebra、geometry、counting & probability、statistics。
- 它是进入后续 AoPS Introductory 体系的 runway。
- 它强调的是理解 “why”，而不是记忆公式。
- 它把 problem solving 当主线，而不是课后附加项。

### 2. 公开可见的结构是什么

从官方 syllabus 可以直接整理出一条非常清晰的两段式跑道。

#### Part 1

1. Arithmetic Rules
2. Exponents
3. Number Theory
4. Fractions
5. Equations and Inequalities
6. Decimals
7. Ratios, Conversions, and Rates

#### Part 2

8. Percents
9. Square Roots
10. Angles
11. Perimeter and Area
12. Right Triangles and Quadrilaterals
13. Data and Statistics
14. Counting
15. Problem-Solving Strategies

### 3. 这条结构最重要的信号

#### 信号 A：它不是纯学科分桶

AoPS 没有先做一整条“纯算术书”、再做一整条“纯几何书”、再做一整条“纯统计书”。

它把：

- arithmetic
- equations
- decimals
- ratios
- percents
- square roots
- geometry
- data/statistics
- counting/probability

放进同一条 prealgebra 跑道里。

这说明它真正关心的是：**什么内容应该先为后面内容搭桥**，而不是“它表面上属于哪个传统学科模块”。

#### 信号 B：桥梁主题被刻意放在中段

AoPS 并没有把比、比例、转换率、百分数放在很后面的应用尾部，也没有把它们拆到不同学科里。

相反，它把：

- Fractions
- Equations and Inequalities
- Decimals
- Ratios / Conversions / Rates
- Percents
- Square Roots

排成了一条连续桥梁带。

这条桥梁带刚好承担了三个任务：

1. 从算术走向代数表达
2. 从静态数值走向关系和变化
3. 从单一表示走向跨表示转换

#### 信号 C：问题解决被正式放在骨架里

AoPS 不是“讲完所有知识以后再附送 problem solving”。

官方 syllabus 直接把 `Problem-Solving Strategies` 作为 Part 2 的正式章节收尾。

这意味着在 AoPS 体系里：

- problem solving 是课程目标本身
- 不是装饰性的活动页
- 也不是只存在于难题区

### 4. 它在教学哲学上最值得注意的地方

#### a. 明确强调 why

官方 syllabus 直接写出：学生会深入探究数学概念和结果背后的 “why”。

这和本项目“探索先于讲解、概念驱动”的方向是高度一致的。

#### b. 反对只靠记忆公式

官方材料强调从 axiomatic principles 出发，而不是只靠 memorized facts and formulas。

这意味着 AoPS 的重点不是“知识点数量多”，而是：

- 让学生知道为什么规则成立
- 让学生能在陌生题里重新组织旧工具

#### c. 把 proof 提前暴露

官方 syllabus 还明确说：学生会在 Math 6 写出 first formal proofs。

这说明 AoPS 的抽象桥梁并不是只铺到“会列式”，而是继续往“会解释、会论证”推进。

### 5. 对本项目的启发

#### 可借鉴

- 不要把公开骨架绑死在 6 域上。
- 要把“桥梁主题”显式排成连续地带。
- 要把 problem-solving / strategy 当正式结构，而不是补充模块。

#### 不宜直接照搬

- AoPS 的抽象密度高，适合高表现学生，不适合直接原样移植到 1-9 年级全覆盖教材。
- AoPS 可以更早地把证明、离散数学、计数策略拉进主线；本项目必须受中国课标和年龄层覆盖约束。

#### 对本项目的具体映射

AoPS 最像本项目未来骨架中的：

`公共基础 -> 共通桥梁 -> 分支进阶`

其中最值得学的是 **共通桥梁带的连续性**，不是“更难”本身。

---

## B. Beast Academy Level 5

### 1. 它公开把自己定义成什么

Beast Academy 是 AoPS 的小学阶段延伸，但呈现方式更适合低年龄层：

- comic-style Guide book
- Practice book
- Online lessons
- planning / overview / standards / placement tests

官方 Level 5 总页明确写出 4 个 units：

- 5A: 3D Solids / Integers / Expressions & Equations
- 5B: Statistics / Factors & Multiples / Fractions
- 5C: Sequences / Ratios & Rates / Decimals
- 5D: Percents / Square Roots / Exponents

### 2. 这条顺序最值得注意的地方

#### 信号 A：它明显不是传统学校学科顺序

传统课本更可能把几何、整数、代数、统计分别成块。

但 Beast Academy Level 5 的公开顺序是交错的：

- 3D solids
- integers
- expressions & equations
- statistics
- factors & multiples
- fractions
- sequences
- ratios & rates
- decimals
- percents
- square roots
- exponents

这条顺序背后的逻辑不是“学科标签一致”，而是：

- 先铺某个桥
- 再让它去支持另一个主题
- 再回到更抽象的表达

#### 信号 B：桥梁主题被分散布置，但并不被埋没

例如：

- `Expressions & Equations` 被放得很早
- `Sequences` 之前要求学生已经能操作 expressions and equations
- `Ratios & Rates` 紧接着继续推进关系表达
- `Percents`、`Square Roots`、`Exponents` 放在后段，形成更高抽象层的桥

这说明 Beast Academy 的做法不是简单“先学完数，再学式，再学图”，而是**在多轮循环里逐渐把桥搭厚**。

### 3. Planning 文档暴露出的结构细节

官方 planning 页明确说明 sequence 文档提供：

- Guide readings
- Practice pages
- BA Online lessons
- 章节被拆成 sections
- 标记为 `Enrichment` 的 sections 可选
- 其余 sections 是 required core concepts

这几条信息非常重要，因为它们暴露了 Beast Academy 的真实组织方式：

#### a. 它不是“只有一本书的目录”

它的真实课程结构是：

- 叙事型讲解
- 练习页
- 在线 lesson
- core / enrichment 区分

也就是说，**公开目录只是表层，真实课程是多层编排系统。**

#### b. 它把 enrichment 正式制度化

sequence PDF 中，大量 section 被明确标为 `Enrichment` 或 `optional`。

这意味着 Beast Academy 没有把所有有趣内容都塞进必须主线，而是把：

- required core
- optional enrichment

系统性分开。

这对本项目很重要，因为“顶级教材”不等于“主线什么都装进去”。

### 4. Overview PDF 暴露出的教学风格

官方 BA5 Overview PDF 很值得看，因为它不是单纯列 topic，而是在告诉老师“这一章怎么教”。

几个特别关键的例子：

#### Chapter 1: 3D Solids

官方明确写：

- 学生开始前应能熟练求矩形和三角形面积
- 鼓励使用 manipulatives
- 通过实体展开和折叠来理解 net、surface area、volume

这说明它在进入新主题前，会先显式写 prerequisite，并强调具体操作经验。

#### Chapter 2: Integers

官方明确写：

- 学生必须先流畅掌握正负整数加减
- 否则会误用乘除规则
- 不应直接给规则，而应让学生通过 patterns and examples 自己发现

这说明它非常重视：

- 先修稳固
- 规则生成过程
- 常见误用的前置预防

#### Chapter 3: Expressions & Equations

官方明确写：

- 学生应先会 order of operations、variables、negative integers
- 这章的目标是帮助学生从 arithmetic 过渡到 prealgebra

这里最值得本项目注意：**它把“表达式与方程”定义成 transition chapter，而不是代数分支内部的后置专章。**

#### Chapter 7: Sequences

官方明确提醒：

- 不要把 sequence 做成套公式
- arithmetic sequence 本质上是 skip-counting patterns
- 学生应能够靠 reasoning 解题

这和本项目的“探索先于蓝图”高度一致，也说明 Beast Academy 非常警惕“桥梁主题公式化过早”。

### 5. Sequence PDF 暴露出的节级组织方式

BA5 Sequence PDF 进一步说明了几个结构事实：

#### a. 每章先有 review，再进新课

例如 5A Chapter 1 会先做 geometry review，再进入 3D solids。

这意味着它不会假设前置自然完好，而是把 prerequisite 激活正式写进 sequence。

#### b. Core 与 Enrichment 交错出现

例如：

- Sequences 一章中，核心 section 与 `Sequence Paths`、`Triangular Numbers`、`Fibonacci Sequence` 等 enrichment section 明确分层。
- Ratios & Rates 一章中，核心 `Ratios`、`Using Ratios`、`Rates`、`Speed` 与 enrichment `Geometry`、`Multi-Part Ratios`、`Teamwork`、`Conversions 2/3` 并存。

这说明：

- 主线不必承载全部变式
- 但 enrichment 也不是丢在书外，而是紧挨主线，保持可见

#### c. 同一概念会跨媒介被反复加固

sequence 文档会同步列：

- Guide 页码
- Practice 页码
- Online lesson

这说明它默认一个主题不是“一次讲完”，而是跨媒介重复加固。

### 6. 对本项目的启发

#### 可借鉴

- 公开骨架可以混排，但 prerequisite 必须写明。
- 共享桥梁主题不能只靠讲解页，还要有正式的 readiness / review 机制。
- enrichment 应明确制度化，不要全部挤在主线里。
- 对桥梁主题应明确反对“公式先行、理解滞后”。

#### 不宜直接照搬

- Beast Academy 的 comic / Guide / Practice / Online 三层联动非常强，本项目当前只有一本主书结构，媒介条件不同。
- 它允许很多 puzzle-heavy enrichment；本项目要受“全国 1-9 年级自学教材”的普适性约束。

#### 对本项目的具体映射

最值得借鉴的不是它的漫画形式，而是这 4 点：

1. prerequisite 显式化
2. core / enrichment 制度化
3. transition chapter 前置
4. 桥梁主题防公式化

---

## C. Singapore Math — Dimensions Math 6-8

### 1. 它公开把自己定义成什么

官方把 Dimensions Math 6-8 定位成：

- middle school continuation
- building on strong foundation from earlier years
- integrating pre-algebra, algebra, geometry, data analysis, probability, and some advanced topics

这已经直接说明它不是一套“单学科先修书”，而是一套 **foundation 之后的 integrated middle school pathway**。

### 2. Grade 6 / 7 / 8 的关系

官方 FAQ 明确写出：

- Grade 6 包含一些 pre-algebra topics，但不是传统意义上的 pre-algebra text
- Grades 7 and 8 together cover Pre-algebra and Algebra 1 topics, with some Geometry
- Grade 7 假设学生对 integers 和 simple algebraic equations 还是新的
- Grade 8 对 linear equations 等已有更高期望

这组信息非常关键，因为它说明：

- Singapore 并不是把 Pre-algebra 切成一册孤立桥梁
- 而是把 grade 6-8 设计成一条跨年级的递进整合通道

### 3. Lesson structure 暴露出的教学机制

官方 School FAQ 对 6-8 的 lesson structure 说得相当清楚：

- 以 class activity 开始，鼓励 discovery
- 然后是 worked examples
- 再用类似题巩固
- 练习分成：
  - Basic Practice
  - Further Practice
  - Challenging Practice
  - Math@Work
  - Brainworks and Enrichment
- Grades 7-8 每章后有 review exercise
- 还有 `In A Nutshell`
- 还有 `Extend Your Learning Curve`

这说明它的教材结构不是“正文 + 习题”二层，而是：

1. 发现
2. 示例
3. 分层练习
4. 现实应用
5. 高阶开放题
6. 快速回顾
7. 章后 review
8. 章后延展

### 4. 它的强项在哪里

#### a. 强 foundation 意识

官方 repeatedly 强调 building on the strong foundation from earlier years。

也就是说，Singapore 路线的核心不是“跨主题混排得多激进”，而是：

- 前序基础打得稳
- 后续整合推进得平

#### b. review 机制被制度化

它不是课后零散地给复习题，而是把：

- 每章 review exercise
- In A Nutshell
- Extend Your Learning Curve

都写进正式结构中。

#### c. 练习层级非常清楚

这很适合大范围学生覆盖，因为它让同一主题下的不同深度读者都有入口。

### 5. 它和 AoPS / Beast 的主要差别

#### 相同点

- 都强调 discovery，不只是直接讲规则
- 都不是纯学科孤立推进
- 都把 review / practice / enrichment 看成结构的一部分

#### 不同点

- AoPS / Beast 更强调 problem-solving identity，自带更强的挑战气质
- Singapore 更强调平稳 progression、分层练习和系统回顾
- AoPS / Beast 更愿意在公开骨架上做“主题交错”
- Singapore 更像“稳态整合推进”

### 6. 对本项目的启发

#### 可借鉴

- 主干重构以后，必须同步重构 review 机制，而不是只动目录。
- 分支前的 readiness 检查需要标准化。
- 每个桥梁主题除了正文，还应有“quick review / recap / extension”的制度化出口。

#### 不宜直接照搬

- Singapore 依托完整教材组件体系，包含 workbook、teacher materials、solutions 等；本项目当前仍是一册主书逻辑，配套条件不同。
- 它的分层练习和课后支持资源比本项目目前丰富得多，不能假定本项目能原样复制其练习层次。

---

## 横向比较

### 1. 三家共同认可的结构规律

| 规律 | AoPS | Beast Academy | Singapore |
|---|---|---|---|
| 共享前置能力必须被组织 | 强 | 强 | 强 |
| discovery 是主结构的一部分 | 强 | 强 | 中强 |
| review 机制制度化 | 中 | 强 | 强 |
| enrichment / extension 不应全部塞进主线 | 中 | 强 | 强 |
| 不走纯学科长条推进 | 强 | 强 | 中强 |

### 2. 三家最大的风格差异

| 维度 | AoPS | Beast Academy | Singapore |
|---|---|---|---|
| 骨架风格 | 高抽象 runway | 交错主题 + 强 prerequisite | 稳态整合 progression |
| 读者体验 | 高挑战、自我论证 | 漫画叙事、挑战驱动 | 稳定、分层、复习清晰 |
| enrichment 处理 | 内化到 problem-solving identity | 显式 core / enrichment | 显式 practice / extension |
| 对 proof / why 的力度 | 很强 | 强 | 中等偏强 |

---

## 对本项目的直接结构建议

### 1. 应采纳的不是哪一家“整套目录”

不应简单说：

- “我们学 AoPS”
- “我们学 Beast”
- “我们学 Singapore”

更合理的方式是分层吸收：

#### 从 AoPS 吸收

- bridge topics 成带
- why-first
- strategy 作为正式结构

#### 从 Beast Academy 吸收

- prerequisite 显式化
- core / enrichment 分层
- transition chapter 提前
- 桥梁主题防公式化

#### 从 Singapore 吸收

- review / recap / extension 制度化
- 平稳 progression
- 分层练习的思路

### 2. 本项目最推荐的组合路线

如果用一句话概括，最适合本项目的方向是：

**AoPS/Beast 的桥梁意识 + Singapore 的稳态推进与复习机制。**

这比“纯 AoPS 化”更适合 1-9 年级全覆盖，也比“纯 Singapore 化”更能保住本项目已经明确追求的探索感和概念驱动。

### 3. 对当前项目骨架的具体落点

| 当前角色 | 建议未来角色 |
|---|---|
| `1a-number-sense` 的后半桥梁内容 | 上移到 `共通桥梁` |
| `1b-shapes` 中的坐标 | 上移到 `共通桥梁` |
| `3a-symbols` 中的 `variable / equation` 入口 | 上移到 `共通桥梁` |
| `2-foundation-transition` | 缩回 `总检 + 分支入口合同` |
| `3a-3d` | 保持分支深化，但入口前加 readiness contract |

---

## 对后续重构最有帮助的检查清单

后面如果进入目录重排，可直接拿这 8 条做 sanity check：

1. 共享桥梁是否被做成了实体层，而不是只留在 transition 页里。
2. 比、数轴、坐标、字母、方程是否已经从领域内部上移。
3. 每条分支前是否存在正式的 readiness contract。
4. 主线是否只保留 required core，而不是把所有 enrichment 压进去。
5. 是否为桥梁主题保留了 quick review / recap / extension 位置。
6. 是否仍然允许 problem-solving 作为正式结构，而不只是挑战题角落。
7. 是否避免了“公式先行、理解滞后”的桥梁写法。
8. 是否兼顾了 AoPS 式探索感与 Singapore 式平稳推进。

---

## 本轮调研的最终结论

如果只问一句“顶级教材通常怎么处理共享基础和后续分支的关系”，这次官方材料给出的答案是：

**它们不会把共享桥梁长期伪装成某一门学科内部的小节。**

它们会用不同方式把这件事做出来：

- AoPS：把桥梁主题直接排成 runway
- Beast Academy：用 prerequisite + sequence + core / enrichment 把桥梁做厚
- Singapore：用 strong foundation + integrated middle school progression + review 机制把桥梁稳定化

对本项目来说，最合理的落地不是二层，而是三层：

`公共基础 -> 共通桥梁 -> 分支进阶`

这既符合外部顶级教材的共同规律，也与当前 repo 内部已经长出来的教学逻辑一致。

