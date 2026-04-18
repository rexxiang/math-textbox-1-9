# 结构修订第 5 轮

## 本轮目标

完成结构收口：把最后几节仍显过载的大章压回核心主线，并确认全书结构扫描通过。

## 本轮发现

### 1. `§7.4` 仍把“圆里的线角关系”和“弧长 / 扇形面积”混在一章

- 线角证明链与测量公式链混搭，会把本节从“先锁定关系”拉向“后面长度计算”。

### 2. `§7.7` 仍像一章里发明了四类变换

- 轴对称、平移、旋转之外，中心对称又被单独展开。
- 再叠上一整张坐标规则表，章内负载仍偏高。

### 3. `§3.2` 仍超出公共基础应承担的重量

- 主线本应是面积推导 + 最基础体积。
- 圆锥体积、表面积会把公共基础推到过宽的知识面。

### 4. `§7.3` 练习里还留着梯形侧支

- 虽然正文已把它降到对照位，但练习还在继续把注意力拉出去。

## 本轮修复

### A. 把 `§7.4` 收回“圆里的线与角”

- `07-geometry-deepening/04-circles.typ`
  - 删除弧长 / 扇形面积公式。
  - 用“弦中点—圆心连线垂直弦”的证明例替换测量例。
  - 练习与陷阱全部改回线角主线。

### B. 把 `§7.7` 收回三类核心变换

- `07-geometry-deepening/07-transformations.typ`
  - vocab 中不再把中心对称单列成并行主工具。
  - blueprint 改成“旋转 $180°$ 的特例就是中心对称”。
  - 坐标规则表收缩成最常用的轻量表达。
- `07-geometry-deepening/00-overview.typ`
- `07-geometry-deepening/10-review.typ`
  - 同步把“中心对称”改写为旋转特例，不再当作并列大节。

### C. 把 `§3.2` 拉回公共基础体量

- `03-geometry-foundation/02-area-volume.typ`
  - 删除圆锥体积和表面积。
  - pitfall 改回最基础的单位进率提醒。
  - 练习改成长方体 / 圆柱范围内的体积题。
- `03-geometry-foundation/06-review.typ`
  - 同步去掉圆锥公式。

### D. 再压一刀 `§7.3`

- `07-geometry-deepening/03-quadrilaterals.typ`
  - 把梯形练习移出，应用题回到矩形对平行四边形性质的增量理解。
  - 正文里也把梯形只保留为“别误套性质”的对照提醒。

## 本轮涉及文件

- `typst/03-geometry-foundation/02-area-volume.typ`
- `typst/03-geometry-foundation/06-review.typ`
- `typst/07-geometry-deepening/00-overview.typ`
- `typst/07-geometry-deepening/03-quadrilaterals.typ`
- `typst/07-geometry-deepening/04-circles.typ`
- `typst/07-geometry-deepening/07-transformations.typ`
- `typst/07-geometry-deepening/10-review.typ`

## 收口验证

本轮之后，重新做了两类结构审计：

1. **六阶段壳检查**：知识点章未再发现缺 `crisis / discovery / tryit / blueprint / pitfall / mastery` 的情况。
2. **同章前向引用检查**：未再发现同章 `#secref` 指向后文的结构性抢跑。

同时 `make check` 通过，说明本轮结构收口后的全书与 smoke 入口仍保持可编译。

## 结构阶段结论

经过 5 轮结构 review + fix，当前全书已收敛到以下状态：

- 主干与分支边界更清楚；
- 六阶段外壳已统一；
- blueprint 前抢跑基本收回；
- 章节过载已明显削平；
- 同章前向依赖已清空。

下一阶段转入**质量打磨**：在不改总体骨架的前提下，只调整节内组织、例题 / 练习顺序、二级标题与叙事衔接，按更严苛的教材标准继续多轮打磨。
