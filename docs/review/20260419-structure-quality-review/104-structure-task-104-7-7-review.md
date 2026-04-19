# Task 104 — `§7.7` 结构复核：三角比与测量拆分审查

**Task id:** `task-104`  
**Review scope:** `§7.7` 及其路由/回顾/总览牵引面  
**Reviewer judgment:** `needs_revision`

## 结论

当前 `§7.7` 不是“略密”，而是**结构性超载**。在项目锁定的“honest max-3 / learner-visible fine-grained concepts”规则下，`sin / cos / tan` 已经把基础概念额度基本用满；再把 `仰角 / 俯角 / 坡度` 与测高测距程序一起放在同一章面，会把“基础比值定义”和“下游测量应用家族”伪装进一个 `三角比与测量` 大桶里。这与前序回归结论一致（`docs/review/20260419-structure-quality-review/18-structure-iteration-05.md:47-55`）。

推荐把本节改成**“先稳住三角比，再单独安放测量应用”**的两步或三步路由，而不是继续把全部内容包装在一个章标题下。

## 1. 当前 `§7.7` 的 honest concept inventory

### 1.1 逐项盘点

| learner-visible 项 | 类型判断 | 证据 |
|---|---|---|
| 直角三角形中“角一固定，比值固定” | 基础桥接原理 | `typst/07-geometry-deepening/07-trigonometric-measurement.typ:20-26,57-60` |
| `sin A = 对边 / 斜边` | 基础概念 | `.../07-trigonometric-measurement.typ:49-52` |
| `cos A = 邻边 / 斜边` | 基础概念 | `.../07-trigonometric-measurement.typ:49,53` |
| `tan A = 对边 / 邻边` | 基础概念 | `.../07-trigonometric-measurement.typ:49,55` |
| 特殊角常用值 | 基础熟练化负载，不宜再扩成独立主节点 | `.../07-trigonometric-measurement.typ:77-81` |
| 仰角 / 俯角 | 下游测量场景家族 | `.../07-trigonometric-measurement.typ:83-86,110-116` |
| 坡度 `= 升高 / 水平距离 = tan alpha` | 下游测量场景家族 | `.../07-trigonometric-measurement.typ:87,118-124` |
| “测量题怎样选比值”程序 | 应用流程/策略，不是基础定义 | `.../07-trigonometric-measurement.typ:89-98` |

### 1.2 诚实计数结论

- **最低诚实计数**：`sin`、`cos`、`tan`、`仰/俯角测量`、`坡度测量` = **5 个 learner-visible concept families**。  
- 若把 `仰角` 与 `俯角` 分开记，则是 **6 个**。  
- 因而本节现在的合章方式，只有在把这些东西一起压进“`三角比与测量`”总标签时才看起来像合规；这正是项目规则明令禁止的隐藏式 re-packaging。

## 2. 哪些是 foundational ratios，哪些是 downstream measurement families

| 分层 | 应留在什么位置 | 当前证据 |
|---|---|---|
| 基于相似的“比值只由角决定” | 仍应留在三角比入口章 | `typst/07-geometry-deepening/07-trigonometric-measurement.typ:20-26,57-60` |
| `sin / cos / tan` 三个比值定义 | 仍应留在三角比入口章 | `typst/07-geometry-deepening/07-trigonometric-measurement.typ:47-55` |
| 特殊角常用值 | 可作为三角比章内部熟练化，也可后移；但不能再叠加新的应用家族 | `typst/07-geometry-deepening/07-trigonometric-measurement.typ:77-81` |
| 用已知边+已知角在直角三角形内求另一边 | 这是三角比的直接内部应用，可作为基础章的唯一“落地例” | `typst/07-geometry-deepening/07-trigonometric-measurement.typ:61-75,100-108` |
| 仰角 / 俯角 | 属于测量应用家族，应从基础定义章拆开 | `typst/07-geometry-deepening/07-trigonometric-measurement.typ:83-86,110-116` |
| 坡度 | 属于测量应用家族，应从基础定义章拆开 | `typst/07-geometry-deepening/07-trigonometric-measurement.typ:87,118-124` |
| 章末回顾中的测高/坡道题 | 说明当前 review 面也已经把这些应用当作独立工具在复用 | `typst/07-geometry-deepening/11-review.typ:27-33,57-69,87-99,103-109` |

**判断：**  
`§7.7` 的“基础核”其实只有：**相似支撑 + `sin` + `cos` + `tan` + 一个章内直接求边示例**。  
`仰角 / 俯角 / 坡度 / 不可达长度` 已经是**下一层测量应用家族**，不应继续与定义章共面。

## 3. 可行重构方案（2-3 个）

### 方案 A（推荐）：二段式核心拆分

**结构：**

1. `§7.7 三角比`  
   - 只保留：相似支撑、`sin / cos / tan` 定义、特殊角常用值、章内直角三角形直接求边  
2. 新增 `§7.8 角度测量与坡度`  
   - 放：`仰角 / 俯角 / 坡度 / 测高测距 / 不可达长度`
3. 现有 `§7.8-§7.11` 顺延为 `§7.9-§7.12`

**优点：**

- 最符合项目当前判断：`三角比` 先稳住，再把测量应用单列。
- 明确保住路线：`勾股 -> 三角比 -> 测量应用 -> 图形变换/后续`。
- `仰角/俯角` 与 `坡度` 虽然仍同章，但已不再与 `sin/cos/tan` 共面；真实负载下降明显。

**代价：**

- 需要章节顺延，牵动 `main.typ`、smoke、overview、review、capstone 和若干 `#secref(...)`。

**适用判断：**

- 如果团队认定 `仰/俯角` 与 `坡度` 同属“测量场景章”仍是诚实压缩，这个方案是**最平衡**的做法。

### 方案 B：三段式细粒度拆分

**结构：**

1. `§7.7 三角比`
2. 新增 `§7.8 仰角与俯角测量`
3. 新增 `§7.9 坡度与坡面长度`
4. 现有 `§7.8-§7.11` 顺延为 `§7.10-§7.13`

**优点：**

- 最严格地避免再次把不同应用家族塞回一个章面。
- 对 task-105 最安全：验收时几乎不会再出现“表面拆开、实际重包”的争议。

**代价：**

- 路由改动最大；第七章后半段全部顺延。
- 需要重新整理 `§7.5` 的后半程导航文案与章末回顾编号。

**适用判断：**

- 如果团队认为 `坡度` 不能和 `仰/俯角` 诚实地共章，这是最稳妥方案。

### 方案 C：最小爆炸半径方案

**结构：**

1. 把当前 `§7.7` 缩成纯 `三角比`
2. 把测量应用后移到现有 `§7.10` 位置或另设后置节点，尽量不改 `§7.8 图形变换` 与 `§7.9 投影与三视图` 的编号

**优点：**

- 对核心编号链影响最小。
- `勾股 -> 三角比 -> 图形变换` 主线表面上保持不变。

**代价：**

- 会削弱“几何测量链”的连续感。
- 容易把本应是核心几何测量内容误降为“后置/侧厅内容”。
- 若 `仰角 / 俯角 / 坡度` 仍被视为本章核心学习结果，此方案会在课程定位上显得别扭。

**适用判断：**

- 仅在团队明确决定“角度测量应用不是 Chapter 07 核心必经站”时才成立。按当前 overview/capstone 叙述，这不是首选。

### 推荐

**推荐方案 A。**

原因：

- 它最符合当前证据里反复出现的章内逻辑：先从 `#secref("7.2")` 的相似推出比值稳定，再把三角比接到现实测量（`typst/07-geometry-deepening/07-trigonometric-measurement.typ:20-26,47-75,83-124`）。
- 它保留 Chapter 07 的 geometry-first 路线，不把三角比改写成函数家族章节；同时也不再把测量应用压回定义章。
- 相比方案 B，改动面更可控；相比方案 C，课程定位更诚实。

## 4. 修复时必须同步重路由的 surfaces

以下文件都不是“可选修饰面”，而是**必须同步更新**的路由面：

1. **章总览**
   - `typst/07-geometry-deepening/00-overview.typ:24-36`
   - 其中 `:32` 现写为“`#secref("7.7") 三角比与测量`——高、距、仰角、俯角、不可达长度”，若拆分必须改成新的站点表述。

2. **几何基础总结的后半程导航**
   - `typst/07-geometry-deepening/05-foundation-summary.typ:27`
   - 这里明确把 `#secref("7.6")` 到 `#secref("7.9")` 当成后半程路线；一旦插入新章或顺延编号，这里必须重写。

3. **章末回顾**
   - `typst/07-geometry-deepening/11-review.typ:27-33`
   - `typst/07-geometry-deepening/11-review.typ:57-69`
   - `typst/07-geometry-deepening/11-review.typ:87-99`
   - `typst/07-geometry-deepening/11-review.typ:103-109`
   - 现在回顾卡、混合题、答案、螺旋复习都默认 `§7.7` 同时承担 trig ratios 与测量应用；拆分后必须分配到新编号与新章职责。

4. **主书 include 顺序**
   - `typst/main.typ:100-112`
   - 若新增章节，Chapter 07 的 include 顺序必须调整。

5. **standalone smoke**
   - `typst/smoke/07-geometry-deepening.typ:37-48`
   - `typst/smoke/10-capstone.typ:60-71`
   - 这两个 smoke 入口都直接 include 当前 `07-trigonometric-measurement.typ`，拆分后必须同步。

6. **终章对全书路线的再叙述**
   - `typst/10-capstone/invention-tree.typ:114-116`
   - `typst/10-capstone/whats-next.typ:25`
   - 这里都把 `#secref("7.7")` 视为“几何测量链中的三角比站点”；如果站点拆分，capstone 文案必须诚实反映新结构。

7. **既有结构回归依据**
   - `docs/review/20260419-structure-quality-review/18-structure-iteration-05.md:47-55`
   - task-105 应明确回收这里提出的 blocker，而不是只改正文文件。

## 5. 对 task-105 的 acceptance criteria 建议

为防止把内容继续藏回 `三角比与测量` 这种大桶标题，task-105 的验收条件应至少包含：

1. **显式概念账本**
   - PR/变更说明必须先列出每个目标章节的 learner-visible concepts。
   - 任一章节若超过 3 个 fine-grained concepts，直接判 fail。

2. **禁止 umbrella 计数**
   - `sin`、`cos`、`tan` 必须按三个可见工具计数。
   - `三角比` 只能作为章节总名，不能在验收时被拿来把三个比值压成“1 个概念”。

3. **禁止定义章偷带应用家族**
   - 若某章仍定义 `sin / cos / tan`，则该章不得再引入 `仰角`、`俯角`、`坡度` 这类新应用家族。
   - 定义章最多保留一个“直角三角形内直接求边”的内部落地例。

4. **应用章不得重教基础定义**
   - 若新设测量应用章，它应把三角比当作已稳定旧工具使用，而不是再次把 `sin / cos / tan` 当新发明重讲一遍。

5. **仰/俯角与坡度必须单独说明计数理由**
   - 如果 task-105 选择把它们放同一章，提交说明里必须写清：为什么这仍是诚实计数，而不是新的 umbrella packaging。

6. **所有 routing surfaces 一次性同步**
   - `00-overview.typ`
   - `05-foundation-summary.typ`
   - `11-review.typ`
   - `main.typ`
   - `typst/smoke/07-geometry-deepening.typ`
   - `typst/smoke/10-capstone.typ`
   - `typst/10-capstone/invention-tree.typ`
   - `typst/10-capstone/whats-next.typ`

7. **不得用 summary/review 面偷塞新教学**
   - 不允许把测量应用“挪进 `§7.5` 或 `11-review`”来规避拆章；这些面只能总结/复用，不能承担新发明。

## Actionable follow-ups

1. 先在 task-105 前锁定采用 **方案 A 还是方案 B**。  
2. 产出一张 `old -> new` 的章节映射表，避免 `#secref(...)` 漏改。  
3. 修复完成后，重新检查 Chapter 07 overview / foundation-summary / review / capstone 是否仍在诚实叙述同一条路线。  
4. 重新跑第七章与第十章 smoke，确认新 include 顺序与跨章引用没有断裂。  

## Final review status

**`§7.7` 目前仍是结构 blocker。**  
task-105 不应接受任何只是换标题、换措辞、但仍把 `sin / cos / tan + 仰角 / 俯角 / 坡度` 包在同一章面的“表面拆分”。
