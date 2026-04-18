# 结构修订第 1 轮

## 本轮目标

先清理**最明确的结构性违例**：

1. 公共基础提前使用后文工具。
2. 分支章节里的旁支内容偷跑到主线前。
3. 章末回顾文件未按“四段结构”拆开。
4. 练习题在当前知识树上出现明显越级。

## 本轮发现

### 1. 第三章回顾提前使用完整坐标平面

- `03-geometry-foundation/06-review.typ` 直接使用四象限与负坐标。
- 但 `§3.5` 明确只在第一象限与坐标轴上建立坐标入门；负数与完整平面要等到第 4 章才稳住。

### 2. `§3.1` 挑战题把基础几何硬拉到后续代数思路

- 原题直接写出 $x(10-x)$ 并讨论“面积最大”，跨度超出当前公共基础。
- 另一个挑战直接把点数推广成一般公式，也偏离“认识图形、点线面与周长”的主线。

### 3. `§6.1` 在一节里超量装入未来语言

- 原稿把整式整理、幂法则、负整数指数、科学记数法、指数与根式互通塞在一节里。
- 这让 06 分支入口的第一步难度偏陡，也模糊了“整式整理”的主线边界。

### 4. `§6.3` 的挑战题提前动用了 `§6.6` 的二次方程求解

- 原题清分母后直接落到二次方程，并在答案里给出 `2 ± sqrt(5)`。
- 这属于明显的“未来工具泄漏”。

### 5. `§6.6` 用抛物线/落地情境抢跑函数路线

- 原 crisis 与例题都把一元二次方程直接接到抛物线/落地问题。
- 这会让 06 章提前借用 08 章的话语重心。

### 6. 多个回顾文件把“题目 / 答案 / 螺旋复习”混在同一个 `#mastery` 内

- 本轮先修正：`06/08/07` 的 review 文件。
- `09` 已拆开题目段与后续段，后续再按统计主线调整内容。

## 本轮修复

### A. 收回公共基础里的未来工具

- `03-geometry-foundation/01-basic-shapes.typ`
  - 把“固定周长面积最大”改成枚举比较，不再提前写二次表达式。
  - 把“一般 $n$ 点线段公式”改成 5 点/6 点的规律观察。
- `03-geometry-foundation/06-review.typ`
  - 去掉四象限与负坐标。
  - 回顾题改回第一象限与坐标轴范围。

### B. 给 06 分支第一步减载，并切断未来泄漏

- `06-algebra-deepening/00-overview.typ`
  - 去掉 `§6.1` 对科学记数法的前置承诺。
  - 把 `§6.6` 的说明改回“含平方关系的求解问题”，不再提前点名抛物线。
- `06-algebra-deepening/01-algebraic-expressions.typ`
  - 把幂法则限制在“整式里最常用的情形”。
  - 删除负整数指数与“指数—根式互通”的提前扩展，只保留边界提醒。
- `06-algebra-deepening/03-rational-expressions.typ`
  - 替换掉会落到二次方程的挑战题，保持在本节已有工具可解的范围内。
- `06-algebra-deepening/06-quadratic-equations.typ`
  - crisis 改为长方形花圃问题。
  - 公式应用例改为花圃求长宽。
  - 练习中的抛体落地题改为连续正整数问题。

### C. 拉正 review 文件结构

- `06-algebra-deepening/08-review.typ`
- `07-geometry-deepening/10-review.typ`
- `08-function-models/05-review.typ`

处理方式：

1. 让 `#mastery` 只保留混合自测题。
2. 参考答案单独排布。
3. 螺旋复习从答案段拆出。

### D. 收回 08 回顾里对未来/旁支表达的依赖

- `08-function-models/05-review.typ`
  - 不再直接用显式幂式表达增长模型。
  - 不再要求把一般式化成顶点式。
  - 改成读取已给顶点式，以及按“下一年 = 上一年 × 倍率”的规则递推。

## 本轮涉及文件

- `typst/03-geometry-foundation/01-basic-shapes.typ`
- `typst/03-geometry-foundation/06-review.typ`
- `typst/06-algebra-deepening/00-overview.typ`
- `typst/06-algebra-deepening/01-algebraic-expressions.typ`
- `typst/06-algebra-deepening/03-rational-expressions.typ`
- `typst/06-algebra-deepening/06-quadratic-equations.typ`
- `typst/06-algebra-deepening/08-review.typ`
- `typst/07-geometry-deepening/10-review.typ`
- `typst/08-function-models/05-review.typ`

## 剩余高优先级结构问题

1. `05-foundation-gate/01-foundation-check.typ` 与 `05-foundation-gate/02-branch-entry-recaps.typ` 仍未回到六阶段骨架。
2. `07-geometry-deepening/09-circle-extensions.typ` 仍含“圆幂一瞥”这类过高侧厅内容。
3. `09-data-statistics/03-variability.typ`、`09-data-statistics/04-frequency-distribution.typ` 仍有统计密度/公式层过重的问题。
4. `04`、`09` 的局部顺序还需继续梳理。
5. `07.1`、`07.6`、`08.1`、`08.2` 的 pre-blueprint 术语与口诀仍需回收。

## 下一轮计划

第 2 轮聚焦：

- `05` 闸门两节的结构重写；
- `07.9`、`09.3`、`09.4` 的过载削减；
- 继续清理 pre-blueprint 抢跑。
