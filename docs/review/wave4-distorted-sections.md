# Wave 4：八节"假危机"重写说明

> 本轮重写针对全书在第三轮内审中发现的 **8 个 `#crisis` / `#discovery` 失真节**。
> 失真主要落在四类反模式上（详见 `.agents/skills/math-textbook-authoring/SKILL.md`）：
>
> - **命名仪式型**：读者其实早就会用，crisis 只是宣布"我们正式给它起名字"
> - **倒灌型**：discovery ≡ blueprint 的预演，crisis 沦为装饰性引子
> - **答案先泄漏型**：crisis 段已把新工具的核心思路 hint 出来
> - **尺度过家家型**：所谓"困境"用旧工具早就能解决，本节并未引入真正的新能力
>
> 重写遵循以下硬规：
>
> 1. 仅替换 `#crisis[...]` 与 `#discovery[...]` 块；`#vocab` / `#blueprint` / `#pitfall` / `#mastery` / `#history-note` / `#side-hack` / `#tryit` / `#lab` 等保持原样（个别节调整 `#tryit` 位置以保证 "discovery → tryit → blueprint" 的顺序）。
> 2. 每条新 crisis 必须满足"旧工具实际卡住 + 卡点可在具体情境复现 + 读完仍想问'怎么办'"。
> 3. 每条新 discovery 必须包含至少一段 "尝试 A → 不够 → 尝试 B → 成功" 的探索弧。
> 4. 不引入 emoji；只允许 `✗ / ✓ / ☞`。Typst 数学约定：多字符变量加空格（`k x`）、`frac(a, b)`、`sqrt(x)`、`tilde.eq` 表示全等。
> 5. 所有现有 `#secref()` 锚点保持有效，全书 `make check` 通过。

## 总览

| # | 文件 | 失真类型 | "新 crisis" 一句话 |
|---|------|----------|-------------------|
| B1 | `cb05/01-letters-represent-numbers` | 尺度过家家型 | 立法官要把税率法令刻到石板上，可算术只会写"具体一次的结果"，不能写"对任意数都成立的规则" |
| B2 | `fn01/01-input-output-tables` | 命名仪式型 | 巴比伦祭司的两张表格式相同，一张能预测日食、一张预测不了粮价——凭什么从形式上分辨"可预测"与"仅历史记录"？ |
| B3 | `fn04/01-direct-variation` | 命名仪式型 | 工程师有了函数与坐标系，但仍要逐点描表才能回答"何时蓄水池满"——正比例在坐标平面上长什么形状，能不能直接读出答案？ |
| B4 | `dt08/02-probability-language` | 倒灌型 | 帕斯卡 / 费马的"分赌注问题"：列样本空间不够，必须给事件配一个*精确数*才能回答"奖金该怎么分" |
| B5 | `ge01/01-congruence-correspondence` | 命名仪式型 | 埃菲尔铁塔 $18\,000$ 个零件分散制造，"看起来一样"装不进——必须把"完全一样"翻译成可独立验证的精确条款 |
| B6 | `pf04/01-fraction-meaning-and-equivalence` | 弱 crisis（讨论支离）+ discovery 无探索弧 | 古埃及测量员"$3$ 份切法"与邻村"$5$ 份切法"互不可比——需要一种数同时支持精确表示和跨切法换算 |
| B7 | `ge02/01-parallel-lines-and-angle-lemmas` | 命名仪式型 | 学生作业写"$ell_1 parallel ell_2$ 故 $angle 1 = angle 5$"被批"无依据"——需要把 8 个角分成命名家族并写出与平行的等价定理 |
| B8 | `al04/01-linear-equation-one-variable` | 倒灌型（discovery 直接给出 5 步表） | （crisis 保留原样，discovery 改为通过"先移项失败 / 先去括号失败 / 先去分母成功"的失败路径揭示步骤为何被锁死） |

## 详细诊断

### B1 — 字母代替数（cb05/01）

**文件**：`typst/2-common-bridges/05-letters-expressions-relationship-templates/01-letters-represent-numbers.typ`

**失真类型**：尺度过家家型

**Before**：crisis 只说"买 $3$ 斤、$7$ 斤、$10$ 斤算来算去像在抄草稿"。但每一次乘法读者都能轻松算出，旧工具（算术）并未卡住——这是"懒得多算几次"，不是"无法表达"。

**After**：把场景升级为美索不达米亚立法官要把税率法令刻在石板上。算术只能写出"具体一次计算的结果"（如 $20 div 4 = 5$），但*没有任何符号能代表"任意一个数"*。要把"对所有面积都成立的规则"写成一行式子，必须发明字母占位。Discovery 走"列具体例子→留方框→用字母 $n$"三步，并用 $6(n+2) = 6n + 12$ 验证字母遵守分配律。

### B2 — 输入输出表（fn01/01）

**文件**：`typst/3c-functions-change/01-function-representations/01-input-output-tables.typ`

**失真类型**：命名仪式型

**Before**：crisis 直接问"什么样的对应关系值得起个名字"——这是命名问题，读者其实已经能区分售水机与身高/体重表。

**After**：以巴比伦天文台两张表（月相 vs 粮价）切入——格式完全相同，但一张能预测日食、一张预测不了粮价。"如何从表的*结构*上提前判断它能不能用作预测机器"成为真正的卡点。Discovery 经"用最频繁值修补→不可重复"的失败尝试，最终落到"输入对应输出唯一"这个隐藏特征。

### B3 — 正比例函数（fn04/01）

**文件**：`typst/3c-functions-change/02-direct-variation-linear-functions-slope/01-direct-variation.typ`

**失真类型**：命名仪式型（crisis 几乎一字未删地写"想给这一类关系一个正式的名字"）

**Before**：crisis 把"起名字 / 标准公式 / 标准图像"明摆着写出来。

**After**：crisis 设定真实工程场景——工程师有了函数与坐标系，仍要描成百上千个点才能回答"$t = 47$ 时多少水"以及"何时装满"。卡点是"不知道正比例在坐标平面上是什么形状、不知道形状能不能直接读出答案"。Discovery 用 $k = 3, 2, -1$ 三个例子归纳"过原点直线"，再从代数解释"为什么必然过原点、为什么必然是直线"。

### B4 — 古典概率（dt08/02）

**文件**：`typst/3d-data-uncertainty/03-sample-space-probability-experimental-frequency/02-probability-language.typ`

**失真类型**：倒灌型（discovery 一开头就甩出 $P(A) = |A|/|Omega|$）

**Before**：crisis 说"下一步该给事件 A 配一个数字"，discovery 直接定义古典概率公式。

**After**：用帕斯卡 / 费马 $1654$ 年"分赌注问题"做引子——列样本空间无法回答"奖金该如何分"。Discovery 走"用样本点个数 $|A|$ 直接比较→分母不一致失败→标准化为 $|A|/|Omega|$"的探索路径，再依次推出 $P(A^c) = 1 - P(A)$（对立）和 $P(A union B) = P(A) + P(B)$（互斥加法）。**Tryit 块从 crisis 后移到 discovery 后**，符合 "crisis → discovery → tryit → blueprint" 顺序。

### B5 — 全等与对应（ge01/01）

**文件**：`typst/3b-geometry-proof/01-congruence-and-basic-criteria/01-congruence-and-correspondence.typ`

**失真类型**：命名仪式型

**Before**：crisis 说要"把完全重合从图感升级成可写下来的语言"——很抽象，没有显示视觉直觉究竟在哪里失效。

**After**：以 $1889$ 年埃菲尔铁塔 $18\,000$ 个零件跨工厂制造为场景——"看起来一样"装不进，必须写成可独立检验的精确条款（$A B = D E$、$angle B = angle E$ 到毫米/度）。Discovery 用同一对三角形的*两种不同顶点对照表*，证明"光说'全等'不够、必须把对照表压进字母顺序"。

### B6 — 分数的意义与等值（pf04/01）

**文件**：`typst/1-public-foundation/04-fractions/01-fraction-meaning-and-equivalence.typ`

**失真类型**：弱 crisis（披萨场景太轻）+ discovery 无探索弧

**Before**：crisis 仅"$2$ 张披萨分给 $3$ 人"；discovery 直接说"$1/3$、$2/3$、$1/2 = 2/4$"——没有展示读者*尝试和失败*。

**After**：crisis 加入古埃及尼罗河泛滥后的土地丈量场景——"$3$ 份切法"与邻村"$5$ 份切法"无法互比，老工具（自然数 + 凭感觉）真的不够。Discovery 走"语言形容→不可比较→标准化切法→不同切法不可换算→把每份再细分得到等值分数"的完整探索弧。

### B7 — 平行线与三类角关系（ge02/01）

**文件**：`typst/3b-geometry-proof/03-similarity-scale-parallel-line-geometry/01-parallel-lines-and-angle-lemmas.typ`

**失真类型**：命名仪式型

**Before**：crisis 笼统说"角关系不是从天上掉下来的"，没显示*缺乏命名*会让证明在哪一步崩掉。

**After**：crisis 用学生作业被批"无依据"的具体场景——$ell_1 parallel ell_2 => angle 1 = angle 5$ 必须能写出"由哪条定理"。卡点：缺三类角的命名 + 与平行的等价定理。Discovery 从*同位角公设*出发，依次用"对顶角"和"邻补角"两条已熟悉小事实推出"内错角相等"和"同旁内角互补"——展示三类角关系是同一公设的三张面孔，并验证反向（角关系→平行）也成立。

### B8 — 一元一次方程的标准五步（al04/01）

**文件**：`typst/3a-algebra-symbols/04-linear-equations-systems-modeling/01-linear-equation-one-variable.typ`

**失真类型**：倒灌型（原 discovery 一开头就甩出完整 5 步表，与 blueprint 完全重复）

**Before**：crisis 真实可保留——分数 + 括号 + 两边混合的方程顺序确实容易出错。但 discovery 把"每步对应一条等式性质"的整张表先列出，导致 blueprint 重复呈现。

**After**：crisis 保留。Discovery 改为对 $(x-1)/2 - (x+3)/6 = 1$ 做*三次错误尝试*：

- **尝试 1（先移项）**：把 $1$ 移过去 → 仍有分母无法合并 → 死路；
- **尝试 2（先去括号）**：括号被分母包着，分配律穿不过分数线 → 死路；
- **尝试 3（先去分母）**：分母约掉 → 括号摆在明面 → 去括号 → 合并 → 移项 → 系数化 1，一路通畅。

最后从死路反推出五步顺序的*逻辑依赖关系*："分母不去 → 括号开不出"、"括号不开 → 同类项合不了"、"合并不做 → 移项白费"。完整 5 步表保留在 blueprint。

## Task C / D / E 配套改动

- **Task C**：在 `typst/4-capstone/01-shared-invention-tree-review/01-shared-tools-and-bridges.typ` 第一个 `#blueprint[` 之前插入 `==== 接力节点：分数 → 比 → 方程 → 函数` 一段约 $500$ 字的叙事，串起 pf04 → cb01 → cb06 → fn01 这条主轴。
- **Task D**：在 `typst/0-orientation/02-symbols-invention-tree-repair-routes/02-invention-tree-and-backfill.typ` 文件末尾追加 `==== 数学发明时间轴` 小节，使用 CeTZ 绘制 9 个历史节点的纵向时间轴（古代 / 中世纪 / 近代早期 / 近代 四个时代用色区分）。
- **Task E**：在 16 个文件的 `#history-note[ ... ]` 块尾部追加 `☞ 历史接力 → ...` 行，串起跨章节的历史延展。
