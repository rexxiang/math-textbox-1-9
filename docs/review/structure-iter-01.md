# 结构审校迭代 01 — 留痕报告
日期：2026-04-20
分支：feat/20260420-polish

---

## 总体评估

本轮审校覆盖了全书所有知识点 `.typ` 文件（跳过 review 文件与 overview 文件）。共发现 **16 个问题**，分维度统计如下：

| 维度 | 问题数 |
|------|--------|
| A 文件重复与编号混乱 | 8 |
| B 分支脊椎结构 | 1 |
| C 工具过载 | 3 |
| D 前序工具依赖链 | 1 |
| E 公基/进阶分界 | 0 |
| F 知识断层与难度跳跃 | 1 |
| 写作语气 | 2 |

**公基/进阶分界（维度 E）未发现违规**：01–05 章均未出现求根公式、因式分解、函数方程、三角函数、全等证明链、样本空间/古典概率公式等进阶工具。坐标入门（§3.9）只用了第一象限非负坐标，未触碰负轴或完整四象限，属于合理的入口处理。

---

## 问题清单

---

### P01 [维度 A] — 第 2 章：02-gcd-lcm.typ 游离于 main.typ 之外，但内容被 01a-primes-common-factors.typ 重复

**位置**：`typst/02-fraction-ratio-foundation/02-gcd-lcm.typ`（全文）；`typst/02-fraction-ratio-foundation/01a-primes-common-factors.typ`（全文）

**问题**：
- `02-gcd-lcm.typ` 声明节号 `§2.2 公因数、公倍数与整齐分配 <sec-2-2>`，内容为质因数分解法求 GCD / LCM，共 3 个工具（质因数分解、最大公因数、最小公倍数），结构完整（六阶段齐备）。
- `01a-primes-common-factors.typ` 声明节号 `§2.1A 质数、合数与公因公倍 <sec-2-1A>`，包含**完全相同**的三个工具（质数/合数、最大公因数、最小公倍数），同样六阶段齐备。
- **main.typ 只 include 了 01a 文件，02-gcd-lcm.typ 从未被引用**，即 02-gcd-lcm.typ 是无效的孤立文件。
- 两个文件的危机场景（"两根绳子+两盏灯"）几乎完全相同，内容存在实质重叠。

**建议**：
1. 删除 `02-gcd-lcm.typ`（孤立文件，内容已被 01a 覆盖）。
2. 检查 `01a-primes-common-factors.typ` 的工具数量是否超标（见 P09）。

---

### P02 [维度 A] — 第 3 章：02-perimeter.typ 与 01b-perimeter.typ 内容重复，且前者游离于 main.typ 之外

**位置**：`typst/03-geometry-foundation/02-perimeter.typ`（全文）；`typst/03-geometry-foundation/01b-perimeter.typ`（全文）

**问题**：
- `02-perimeter.typ` 声明节号 `§3.2 周长：先量一圈有多长 <sec-3-2>`，六阶段完整。
- `01b-perimeter.typ` 声明节号 `§3.1B 周长与一圈长度 <sec-3-1B>`，六阶段完整，工具定义几乎相同（长方形周长、正方形周长、圆周长）。
- **main.typ 只 include 01b-perimeter.typ，02-perimeter.typ 从未被引用**，是无效的孤立文件。

**建议**：
1. 删除 `02-perimeter.typ`（孤立文件，内容已被 01b 覆盖）。
2. `01b-perimeter.typ` 节号为 §3.1B，而内容（独立的周长节）逻辑上更适合称 §3.2，建议在统一修复节号时一并调整。

---

### P03 [维度 A] — 第 3 章：03-point-line-plane.typ 与 01a-point-line-plane.typ 内容重复，且前者游离于 main.typ 之外

**位置**：`typst/03-geometry-foundation/03-point-line-plane.typ`（全文）；`typst/03-geometry-foundation/01a-point-line-plane.typ`（全文）

**问题**：
- `03-point-line-plane.typ` 声明节号 `§3.3 点、线与平面：几何的最小积木 <sec-3-3>`，六阶段完整，额外增加了"不在同一直线上的三点确定一个平面"这一命题。
- `01a-point-line-plane.typ` 声明节号 `§3.1A 点、线与平面 <sec-3-1A>`，六阶段完整，工具（点、线段/射线/直线、平面，两点确定一条直线，两点之间线段最短）高度重叠。
- **main.typ 只 include 01a，03-point-line-plane.typ 从未被引用**，是无效的孤立文件。
- 更严重的是：`03-angles.typ`（被 include）也声明了 `§3.3 <sec-3-3>`，造成**同一 label 冲突**（见 P04）。

**建议**：
1. 删除 `03-point-line-plane.typ`（孤立且 label 与现有节冲突）。

---

### P04 [维度 A] — 第 3 章：03-angles.typ 与孤立的 03-point-line-plane.typ 共享相同的节号和 label

**位置**：`typst/03-geometry-foundation/03-angles.typ`（第 4 行）；`typst/03-geometry-foundation/03-point-line-plane.typ`（第 3 行）

**问题**：
两个文件都写了 `== §3.3 ... <sec-3-3>`：
- `03-angles.typ`：`§3.3 角、直角与度量 <sec-3-3>`（被 main.typ include）
- `03-point-line-plane.typ`：`§3.3 点、线与平面：几何的最小积木 <sec-3-3>`（未被 include，但游离于目录中）

尽管后者目前不参与编译，这一 label 冲突会在未来编辑时造成混乱，也反映出旧版本向新版本迁移时残留的混乱状态。

**建议**：删除 `03-point-line-plane.typ`（见 P03），彻底消除 label 冲突。

---

### P05 [维度 A] — 第 3 章：06-angle-relations.typ 游离于 main.typ 之外，内容被 03b-angle-relations.typ 覆盖

**位置**：`typst/03-geometry-foundation/06-angle-relations.typ`（全文）；`typst/03-geometry-foundation/03b-angle-relations.typ`（全文）

**问题**：
- `06-angle-relations.typ` 声明节号 `§3.7 角之间的关系：互余、互补与对顶角 <sec-3-7>`，六阶段完整，包含 CeTZ 对顶角图示。
- `03b-angle-relations.typ` 声明节号 `§3.3B 互余、互补与对顶角 <sec-3-3B>`，六阶段完整，工具（互余、互补、对顶角）完全相同，但更简洁。
- **main.typ 只 include 03b，06-angle-relations.typ 从未被引用**，是无效孤立文件。

**建议**：
1. 删除 `06-angle-relations.typ`（孤立，内容被 03b 覆盖）。
2. 如果 03b 的内容不够充分（缺少 CeTZ 图示），可将 06 中的图示迁移到 03b 后再删除 06。

---

### P06 [维度 A] — 第 3 章：已 include 的节号序列严重混乱（乱序 + 跳号 + 区间重叠）

**位置**：`typst/main.typ` 第 58–69 行；各 ch03 文件内的节号声明

**问题**：main.typ 按以下顺序 include ch03 文件，对应节号如下：

| include 顺序 | 文件名 | 声明节号 |
|---|---|---|
| 1 | 01-basic-shapes.typ | §3.1 |
| 2 | 01a-point-line-plane.typ | §3.1A |
| 3 | 01b-perimeter.typ | §3.1B |
| 4 | 02-area-volume.typ | **§3.4**（跳过 §3.2、§3.3） |
| 5 | 03-volume.typ | **§3.5**（跳过后续节） |
| 6 | 03-angles.typ | **§3.3**（倒退！已在 §3.5 之后） |
| 7 | 03a-angle-types.typ | §3.3A |
| 8 | 03b-angle-relations.typ | §3.3B |
| 9 | 04-parallel-perpendicular.typ | **§3.8**（跳过 §3.4–§3.7 中间） |
| 10 | 05-coordinate-entry.typ | §3.9 |

实际读者在正文中看到的节号顺序：§3.1 → §3.1A → §3.1B → **§3.4 → §3.5 → §3.3** → §3.3A → §3.3B → **§3.8** → §3.9，其中 §3.2、§3.6、§3.7 完全缺失（§3.6 从未存在；§3.7 存在于孤立的 06-angle-relations.typ），且节号出现了先到 §3.5 再回 §3.3 的倒退。

**建议**：对 ch03 所有被 include 的文件统一重新编号，使顺序为：
- §3.1 基本平面图形（保持）
- §3.2 点、线与平面（将 01a 重命名为 §3.2）
- §3.3 周长（将 01b 重命名为 §3.3，或删除 01b 并将内容合入 §3.1B）
- §3.4 面积（02-area-volume.typ 保持 §3.4 或改为 §3.3，视重编方案）
- §3.5 体积（03-volume.typ）
- §3.6 角与角的类型（合并 03-angles.typ + 03a-angle-types.typ，或分拆为 §3.6 + §3.6A）
- §3.7 角的关系（03b-angle-relations.typ，改为 §3.7）
- §3.8 平行与垂直（04-parallel-perpendicular.typ，可保持）
- §3.9 坐标入门（05-coordinate-entry.typ，可保持）

---

### P07 [维度 A] — 第 4 章：01a-opposites-absolute-operations.typ（§4.1A）与孤立的 02-rational-operations.typ（§4.2）内容实质重复

**位置**：`typst/04-number-line-algebra-bridge/01a-opposites-absolute-operations.typ`（全文）；`typst/04-number-line-algebra-bridge/02-rational-operations.typ`（全文）

**问题**：
- `01a-opposites-absolute-operations.typ`（被 include，§4.1A）：工具为相反数、绝对值、有理数四则运算，六阶段完整。
- `02-rational-operations.typ`（**未被 include**，§4.2）：工具完全相同——相反数、绝对值、有理数四则运算，六阶段完整，连危机情境（小林账户 $-18$ 元）都高度重叠。

**建议**：删除 `02-rational-operations.typ`（孤立文件，内容已被 01a 完整覆盖）。

---

### P08 [维度 A] — 第 4 章：包含文件的节号序列跳过 §4.2

**位置**：`typst/main.typ` 第 74–79 行；各 ch04 文件内部节号声明

**问题**：main.typ include 的 ch04 文件对应节号为：§4.1 → §4.1A → **§4.3** → §4.4 → §4.5，中间 §4.2 被跳过。原因是 `02-rational-operations.typ`（§4.2）是孤立文件未被引用（见 P07），而 `02-real-numbers.typ` 内部硬编码了 `§4.3`，导致向读者呈现的节号出现跳跃。

**建议**：在删除 `02-rational-operations.typ` 后，将 `02-real-numbers.typ` 的节号从 `§4.3` 改为 `§4.2`，并同步修改文件内的 `<sec-4-3>` 标签为 `<sec-4-2>`，相应修改所有使用 `#secref("4.3")` 的文件。

---

### P09 [维度 A] — 第 7 章：01-congruent-triangles.typ 游离于 main.typ 之外，且 label 与 01-congruence-proof-entry.typ 冲突

**位置**：`typst/07-geometry-deepening/01-congruent-triangles.typ`（全文）；`typst/07-geometry-deepening/01-congruence-proof-entry.typ`（全文）

**问题**：
- `01-congruent-triangles.typ`（**未被 include**）声明节号 `§7.1 全等三角形：刚性与证明的起点 <sec-7-1>`，内容更完整（含所有五种判定 SSS/SAS/ASA/AAS/HL 的完整 blueprint）。
- `01-congruence-proof-entry.typ`（**被 include**）声明节号 `§7.1 全等与证明入口：先学会"完全重合"怎么说 <sec-7-1>`，是更轻量的入口版本（blueprint 未完整列出所有判定）。
- 两个文件共享**相同的 `<sec-7-1>` label**，会在编译时产生 label 冲突风险（虽然目前未被引用的文件不参与编译）。
- `01-congruent-triangles.typ` 内部引用了 `#secref("3.4")`，但 `§3.4` 对应的是 `02-area-volume.typ`（面积章节），而该文件中提到的是"平行线制造的相等角"，与面积完全无关，属于引用内容错误。

**建议**：
1. 删除 `01-congruent-triangles.typ`（孤立文件，与已 include 的 01-congruence-proof-entry.typ 冲突）。
2. 如果 01-congruent-triangles.typ 中有 01-congruence-proof-entry.typ 缺失的内容（如更完整的判定条件），需将差异内容合并到 01-congruence-proof-entry.typ，再删除旧文件。

---

### P10 [维度 A] — 第 7 章：04-circles.typ 游离于 main.typ 之外，且 label 与 04-similar-triangles.typ 冲突

**位置**：`typst/07-geometry-deepening/04-circles.typ`（全文）；`typst/07-geometry-deepening/04-similar-triangles.typ`（全文）

**问题**：
- `04-circles.typ`（**未被 include**）声明节号 `§7.4 圆里的线、角与垂径 <sec-7-4>`。内容为圆的线角关系（弦、圆心角、圆周角、垂径定理）。
- `04-similar-triangles.typ`（**被 include**）声明节号 `§7.4 同形放缩与测量 <sec-7-4>`，内容为相似三角形。
- 两者共享 `<sec-7-4>` label，产生 label 冲突风险。
- 圆的内容在 main.typ 中被安排到 `06-circles.typ`（§7.6）中统一处理，04-circles.typ 的内容与 06-circles.typ 存在重叠可能性。

**建议**：
1. 删除 `04-circles.typ`（孤立文件，圆的内容已在 §7.6 中覆盖；如有独特内容可合并入 06-circles.typ）。

---

### P11 [维度 A] — 第 9 章：05-probability.typ 游离于 main.typ 之外，且与 05-foundation-summary.typ 共享 §9.5 label

**位置**：`typst/09-data-statistics/05-probability.typ`（全文）；`typst/09-data-statistics/05-foundation-summary.typ`（全文）

**问题**：
- `05-probability.typ`（**未被 include**）声明节号 `§9.5 概率初步 <sec-9-5>`，内容为事件、概率基础、对立事件。
- `05-foundation-summary.typ`（**被 include**）声明节号 `§9.5 数据基础总结：把"整理—描述—分布"这条线收束 <sec-9-5>`，是正式的分支脊椎 foundation-summary 节。
- 两个文件共享 `<sec-9-5>` label，构成 label 冲突。

**建议**：
1. 删除 `05-probability.typ`（孤立，概率内容已在 §9.6、§9.7 中覆盖）；如果 05-probability.typ 中有 06-probability.typ 未涵盖的"对立事件"工具，需在删除前将该部分内容并入 06-probability.typ。

---

### P12 [维度 A] — 第 9 章：两个文件共用 `07-` 前缀，main.typ 中同时 include，会造成两个内容分属不同节却在目录中挨在一起

**位置**：`typst/09-data-statistics/07-probability-experiments.typ`（§9.7）；`typst/09-data-statistics/07-sampling-estimation.typ`（§9.8）

**问题**：
两个文件均以 `07-` 开头，但分属 §9.7（概率实验）和 §9.8（总体与样本），main.typ 中两者都被 include（第 141–142 行）。文件名前缀不能区分顺序，07-sampling-estimation.typ 应该是 `08-`，与其内部声明的 §9.8 一致。

**建议**：将 `07-sampling-estimation.typ` 重命名为 `08-sampling-estimation.typ`，并在 main.typ 中相应修改 include 路径。

---

### P13 [维度 C] — 第 2 章：§2.3 分数工具严重过载（至少 7 个细分概念挤入一节）

**位置**：`typst/02-fraction-ratio-foundation/02-fractions.typ`，第 33–46 行（`#blueprint` 块）

**问题**：该节 `#blueprint` 中一次性引入以下细分概念：

1. 真分数、假分数、带分数（3 种新概念）
2. 分数基本性质（分子分母同乘同除不变）
3. 约分
4. 通分
5. 分数加减法
6. 分数乘法
7. 分数除法（乘以倒数）

按照"3 个工具"规则，至少应拆分为：
- §2.3 分数的意义与类型（真/假/带分数 + 基本性质，3 个工具）
- §2.4 约分与通分（约分 + 通分 + 分数比较，3 个工具）
- §2.5 分数四则运算（加减 + 乘除，2 组但各含细节）

注意：当前文件内部节号已为 `§2.3`（因为 §2.2 是孤立的 gcd-lcm 文件未被引用），与本报告 P01 的修复方案相关联。

**建议**：将 `02-fractions.typ` 拆分为至少两个文件（分数意义与类型 / 约分通分 / 分数四则运算），各自不超过 3 个新工具，拆分后文件命名建议为 `02-fractions-concept.typ` + `02a-fractions-simplify.typ` + `02b-fractions-operations.typ`。

---

### P14 [维度 C] — 第 6 章：§6.5 分式工具严重过载（至少 6 个细分概念挤入一节）

**位置**：`typst/06-algebra-deepening/05-rational-expressions.typ`，第 39–132 行（`#blueprint` 块）

**问题**：该节 `#blueprint` 中一次性引入以下细分概念：

1. 分式定义（分母含字母的分式）
2. 分式基本性质（同乘同除不变）
3. 约分（化最简分式）
4. 通分（求最简公分母）
5. 分式四则运算（乘除 + 加减）
6. 分式方程（含去分母、验根、增根概念）

"增根"本身又是一个独立的重要细分概念。把分式基础、分式运算、分式方程全部打包在同一节，违反"每节不超过 3 个新工具"的原则。

**建议**：将 `05-rational-expressions.typ` 拆分为：
- `05-rational-expressions.typ`：分式定义 + 基本性质 + 约分（3 工具）
- `05a-rational-operations.typ`：通分 + 乘除 + 加减（3 工具）
- `05b-rational-equations.typ`：分式方程 + 增根 + 验根（3 工具）

---

### P15 [维度 C] — 第 2 章：§2.1A 质数/合数与公因公倍同节，工具数达 3 个边界且分类有打包嫌疑

**位置**：`typst/02-fraction-ratio-foundation/01a-primes-common-factors.typ`，第 39–43 行（`#blueprint` 块）

**问题**：该节工具为：质数/合数（一个概念对）、最大公因数、最小公倍数。表面上是 3 个，但"质数与合数"本身是两个独立概念，且同一节还包含了"公因数与公倍数的基本概念"以及"质因数分解作为求法"（`02-gcd-lcm.typ` 里有更系统的质因数分解法，此节也提到了 "先做质因数分解"）。

如果"质数、合数"各算一个概念，加上 GCD、LCM，实际是 4 个细分概念，属于临界过载。同时把"质数/合数的认识"和"GCD/LCM 的计算"放在同一节，难度梯度也较大。

**建议**：将 `01a-primes-common-factors.typ` 拆分为：
- `01a-primes-composites.typ`：质数 + 合数 + 基本认识（2 个细分概念，工具较少可合并）
- 将 GCD/LCM 内容并入删除 P01 后留下的适当节，或单独成 `01b-gcd-lcm.typ`

---

### P16 [维度 B/F] — 第 9 章：分支脊椎内两个节（§9.7 和 §9.8）主题跨度大，且 §9.8 与概率节之间缺少衔接

**位置**：`typst/09-data-statistics/07-probability-experiments.typ`（§9.7）；`typst/09-data-statistics/07-sampling-estimation.typ`（§9.8）

**问题**：
- §9.6 概率（古典概型）→ §9.7 概率实验（实验概率 vs 理论概率）→ §9.8 总体与样本（抽样估计）

§9.8 的知识跨度跳跃明显：从"用实验看概率"直接跳到"总体、样本、样本容量、用样本比例估计总体"，中间没有过渡说明"概率与抽样估计的连接"。读者在 §9.8 中突然要处理"随机性是否代表整体"的思维，而此前三节关注的是单次实验与长期频率，思维模式差异较大。

同时，§9.8 的文件名前缀错误（见 P12），也反映出该文件在编辑时可能是后加入的，未经过完整的内容衔接审查。

**建议**：在 §9.7 结尾或 §9.8 开头添加 1–2 句过渡说明，明确"频率接近概率的规律，也是'用样本估计总体'的直觉基础"，帮助读者看到两节的认知连续性。不需要新建文件，只需在现有文件内增加衔接内容。

---

### P17 [写作语气] — 第 2 章：01-factors-multiples.typ 和 00-overview.typ 使用"抓手"一词

**位置**：
- `typst/02-fraction-ratio-foundation/01-factors-multiples.typ`，第 14 行（`#history-note` 块）：
  > 整数先学会怎么拆、怎么合，后面的分数运算才有抓手。
- `typst/02-fraction-ratio-foundation/00-overview.typ`，第 17 行：
  > 给后面的约分、通分和周期问题提供抓手。

**问题**：AGENTS.md 写作语气约定明确禁止"抓手"等口号式措辞。

**建议**：
- `01-factors-multiples.typ` 第 14 行改为：整数先学会怎么拆、怎么合，后面的分数运算才有地方站稳。
- `00-overview.typ` 第 17 行改为：给后面的约分、通分和周期问题打好基础。

---

## 修复优先级排序

### P1 — 阻断学习路径（必须最先处理）

| 编号 | 问题简述 | 紧迫原因 |
|------|---------|---------|
| P06 | ch03 节号序列混乱（倒退 §3.5→§3.3，跳号 §3.2/§3.6/§3.7 缺失） | 读者在正文中看到节号倒退，严重影响参考和自学 |
| P13 | §2.3 分数工具过载（7 个细分概念） | 初学者在一节内同时接触所有分数运算，难以消化 |
| P14 | §6.5 分式工具过载（6 个细分概念含分式方程） | 分式方程是独立难点，增根验根不应与基础运算挤在同一节 |
| P08 | ch04 节号跳过 §4.2 | 读者无法理解节号意义，交叉引用失效 |

### P2 — 严重结构问题（第二优先级）

| 编号 | 问题简述 |
|------|---------|
| P01 | ch02 的 02-gcd-lcm.typ 游离，内容与 01a 重复 |
| P02 | ch03 的 02-perimeter.typ 游离，内容与 01b 重复 |
| P03 / P04 | ch03 的 03-point-line-plane.typ 游离且 label 冲突 |
| P05 | ch03 的 06-angle-relations.typ 游离，内容被 03b 覆盖 |
| P07 | ch04 的 02-rational-operations.typ 游离，内容被 01a 覆盖 |
| P09 | ch07 的 01-congruent-triangles.typ 游离且 label 冲突，内含错误 secref |
| P10 | ch07 的 04-circles.typ 游离且 label 冲突 |
| P11 | ch09 的 05-probability.typ 游离且 label 冲突 |
| P15 | §2.1A 工具数达临界（质数/合数+GCD+LCM 打包） |

### P3 — 优化建议（第三优先级）

| 编号 | 问题简述 |
|------|---------|
| P12 | ch09 的 07-sampling-estimation.typ 文件名应改为 08- |
| P16 | §9.7→§9.8 缺少认知过渡说明 |
| P17 | "抓手"措辞违反写作语气约定（2 处） |

---

## 下一轮需重点验证的区域

1. **ch03 重编号后的所有 `#secref` 交叉引用**：P06 修复完成后，需要全文扫描所有对 `sec-3-X` 的引用是否仍然正确（特别是 §3.4 现用于"面积"，修复后编号可能改变）。

2. **§6.5 拆分后与 §6.9 一元二次方程的依赖链**：§6.9 的 blueprint 依赖 §6.4 的因式分解作为解法之一；§6.5 若拆分，需确认 §6.9 中对分式方程的引用路径不中断。

3. **§2.3 拆分后与 §2.4–§2.6 的前序工具依赖链**：§2.4 小数节引用了分数互化，§2.5 比与百分数节引用了约分，拆分后需确认这些依赖都在相应前序节已建立。

4. **ch07 的 01-congruence-proof-entry.typ（§7.1）工具完整性**：目前该节的 blueprint 未完整列出所有全等判定（SSS/SAS/ASA/AAS/HL），而孤立文件 01-congruent-triangles.typ 中列出了全部，需在删除孤立文件前确认判定内容已合并入被 include 的文件。

5. **第 5 章（05-foundation-gate）与 06–09 章的衔接**：本轮未深入审查 05-foundation-gate 内部内容，需在下一轮验证其 `01-foundation-check.typ` 和 `02-branch-entry-recaps.typ` 中列出的工具是否与 01–04 章实际发明的工具列表完全吻合。

6. **ch06 的 foundation-summary（§6.7）位置是否合理**：§6.7 位于线性方程之后、方程组之前，而分式（§6.5）和分式方程（§6.5 blueprint 末尾）已在基础段，方程组和二次方程在进阶段——这个分界是否准确体现了"分支基础/进阶"的脊椎结构，需下一轮专门验证。
