# 结构修订第 4 轮

## 本轮目标

把仍残留的 blueprint 前泄露和“隐藏第 4 工具”一次收口：

1. `06.2`、`06.7`、`07.8` 回到“先问题、后工具”。
2. `09.2` 不再在三种代表值之后偷偷再发明“加权平均”。
3. 削掉与本章主线无关的高阶扩展尾巴。

## 本轮发现

### 1. `06.2` 仍在蓝图前交出方法名与口诀

- `#vocab` 直接点名 `十字相乘`。
- `#side-hack` 先给出“ 一提二看三十字 ”顺序。

### 2. `06.7` 仍在蓝图前交出关键规则

- `#side-hack` 直接用“乘负变号”口诀。
- 章末还有 `AM-GM` 这条高中扩展，继续拉高本章边界。

### 3. `07.8` 的三视图口诀先于蓝图出现

- 对齐原则还没正式整理，口诀已经先给答案。

### 4. `09.2` 在三种代表值后又偷偷补了“加权平均”

- 这既超过本章原定的三种代表值，也没有完整经历前面的危机—发现—试一试链。

## 本轮修复

### A. 把方法名和口诀推回 blueprint

- `06-algebra-deepening/02-factorization.typ`
  - vocab 只保留“因式分解 / 公因式”。
  - side-hack 改成通用提问，不再提前点名十字相乘。
- `06-algebra-deepening/07-inequalities.typ`
  - side-hack 改成“每次乘除先看正负”，不提前背口诀。
- `07-geometry-deepening/08-projections.typ`
  - side-hack 改成观察任务。
  - 三视图口诀移回 blueprint 的“对齐原则”后。

### B. 删除不属于本章主线的高阶尾巴

- `06-algebra-deepening/02-factorization.typ`
  - 删除立方和 / 立方差扩展。
- `06-algebra-deepening/07-inequalities.typ`
  - 删除 AM-GM 扩展。

### C. 把 `09.2` 收回“三个代表值”主线

- `09-data-statistics/02-central-tendency.typ`
  - 删除加权平均及其例题。
  - 应用题改成继续比较平均数 / 中位数 / 众数，保持章内闭环。

## 本轮涉及文件

- `typst/06-algebra-deepening/02-factorization.typ`
- `typst/06-algebra-deepening/07-inequalities.typ`
- `typst/07-geometry-deepening/08-projections.typ`
- `typst/09-data-statistics/02-central-tendency.typ`

## 剩余高优先级结构问题

1. `07.4` 仍把线角主线和弧长 / 扇形测量混在一起。
2. `07.7` 仍把四类变换与一整张坐标规则表塞进一节。
3. `03.2` 仍把公共基础推向圆锥 / 表面积等额外负担。
4. `07.3` 仍需进一步压缩支线。

## 下一轮计划

第 5 轮聚焦：

- 让几何几节大章真正只保留核心工具；
- 收掉基础章和几何章里最后几块过载内容；
- 用结构审计再次确认没有缺阶段和同章前向引用。
