# 数学自学教材（1-9 年级）— 项目约定

## 项目定位

面向中国 1-9 年级学生的中文数学自学教材，覆盖小学一年级至初中三年级课标。教学风格对标 AoPS / Beast Academy：探索先于讲解、概念驱动、螺旋式深化。唯一最终发布格式：`make pdf` → `output/math-textbook.pdf`。

## 全书结构原则

- **全书读者骨架**：导读 → 公共基础 → 共通桥梁 → 分支进阶 → 终章综合
- **分支家族**：代数与符号 / 几何与证明 / 函数与变化 / 数据与不确定性
- **章级难度**：只用 `★☆☆☆☆` 到 `★★★★★` 五级星，**不在正文或章标题出现具体年级**；高中桥接内容只能作为章末可选延伸（`☞ 高中桥` / `☞ 继续往前`），不进入主线 readiness 或后续章节的必备先修
- **六阶段发明链**：只在**知识点章节**和**桥梁章节**的 `##` 小节里使用，顺序固定为  
  `#crisis` → `#discovery` → `#tryit` → `#blueprint` → `#pitfall` → `#mastery`  
  **导读（Part 0）、公共基础总检、桥梁总检、终章综合** 等元章节不套用此链，它们只按各自目的展开；绝不要为了"套壳"硬造一段虚假的 `#crisis` / `#discovery`
- **每知识点节最多 3 个真正新学的细分概念**：按读者实际新学的细分概念计数，禁止把多个细分概念打包成一个更大的总概念来"凑到 3 个"；超出则拆成多个知识点节
- **每条分支入口必须有正式 readiness contract**：记录已掌握旧工具、最常见误判、回补路径、可以继续前进的信号
- **共享桥梁必须先成层，再进入分支**：读者先完整走完共通桥梁，再选择进入任一分支
- **文件名与目录顺序必须直接表达大纲顺序**

## 写作语气约定

- 除严格术语、定理表述、正式定义外，正文应尽量初学者友好、带一点对话感。
- 避免生硬、硬拗、带"口号味"的措辞，如"抓手"。
- 提示语、警示语优先使用更自然的对话式说法；合适时可用"别这样做！""你以为……但其实……"这类句式。
- 在有助于动机和自学可读性时，可保留适度的趣味性、冒险感；语气始终服务于理解，不服务于表演感。

## 视觉强调与符号

- **禁止 emoji**，不引入新字体。
- 允许少量非 emoji 的轻量符号做可视化强调，常用 `☞` / `✓` / `✗`；这三个是示例而非封闭白名单，必要时可添加其他低噪点符号，但不得替换成 emoji 变体。
- 特别注意：`❌` (U+274C) 是 emoji，不允许使用；应使用 `✗` (U+2717)。

## 章节图谱

`typst/main.typ` 是全书编译入口，按部件顺序 `#include` 各章 `00-overview.typ` + `99-review.typ`（章首页已经 `#include` 好同级知识点节）；`docs/knowledge-graph/book-graph.yaml` 是章节 / 知识点图谱 SSOT。文件命名：`[NN]-[slug].typ`，`00-overview.typ` 固定为章首页、`99-review.typ` 固定为章末回顾、其余 `01` 起依序为知识点节。

| 顶层 | 目录 | 性质 | 覆盖内容 | 脊椎段 |
|---|---|---|---|---|
| 0 导读 | `typst/0-orientation/` | 非知识点叙事 | 怎样自学 / 符号、发明树与回补路线 | 导读（不套六阶段链） |
| I 公共基础 | `typst/1-public-foundation/` | 知识点章节 + 基础总检 | 数与位值 / 四则结构 / 因数倍数 / 分数 / 小数与测量 / 点线面 / 周长面积体积角 / 平行与三角形 / 公共基础总检 | 公共基础 |
| II 共通桥梁 | `typst/2-common-bridges/` | 桥梁章节 | 比例 / 数轴与负数 / 坐标 / 代数式 / 方程 / 平方根 / 桥梁 readiness contract | 桥梁 |
| IIIA 代数与符号 | `typst/3a-algebra-symbols/` | 分支进阶 | 整式 / 因式分解 / 分式 / 一次方程与应用 / 二次方程与不等式 / 代数总结 | 分支进阶 |
| IIIB 几何与证明 | `typst/3b-geometry-proof/` | 分支进阶 | 全等 / 相似 / 四边形与圆 / 勾股与三角比 / 变换与视图 / 几何总结 | 分支进阶 |
| IIIC 函数与变化 | `typst/3c-functions-change/` | 分支进阶 | 函数观 / 正比例与一次 / 反比例与二次 / 增长模型 / 函数总结 | 分支进阶 |
| IIID 数据与不确定性 | `typst/3d-data-uncertainty/` | 分支进阶 | 描述统计 / 频率分布 / 概率 / 抽样 / 数据总结 | 分支进阶 |
| IV 终章综合 | `typst/4-capstone/` | 非知识点综述 | 共同发明树回看 / 跨域建模 / 后续学习地图 | 全书总结 + 后续展望 |

**锚点约定**：

- 章级锚点：`<ch:slug>`（例 `<ch:fractions>` / `<ch:ratio-proportion-percent>`）
- 知识点锚点：`<tool:slug>`（例 `<tool:decimal-system>` / `<tool:fraction-arithmetic>`）
- meta 锚点：`<meta:slug>`（例 `<meta:foundation-readiness-check>` / `<meta:bridge-readiness>`）
- 交叉引用统一使用 `#secref("tool:...")` / `#secref("ch:...")` / `#secref("meta:...")`
- （历史命名 `kp:` 已废弃，新章节统一用 `tool:`）

## 构建

宿主机只需 Docker。

```bash
make pdf               # 最终 PDF（output/math-textbook.pdf）
make check             # 唯一校验入口：主书 + 8 份部件 smoke + package-lock + book-graph.yaml 验证 + git diff --check
make kg-validate-book  # 仅校验 docs/knowledge-graph/book-graph.yaml
make clean             # 清理构建产物
```

## 详细规则参见

内容创作规则（六阶段链、章末回顾、桥梁 readiness contract、统计范围等）：

> `.agents/skills/math-textbook-authoring/SKILL.md`

Typst 语法与图形规范（数学写法、CeTZ 角标记、框函数速查、交叉引用等）：

> `.agents/skills/typst/SKILL.md`
