# 结构修订第 2 轮

## 本轮目标

把第 5 章闸门重新拉回六阶段骨架，并削掉几处仍然明显过载的侧厅内容：

1. `05` 章两节不再游离于“知识点章节六阶段”之外。
2. `07.9` 不再夹带圆幂这类过高内容。
3. `09.3`、`09.4` 不再把统计主线拉到过重的公式 / 密度框架。

## 本轮发现

### 1. 第 5 章两节虽然定位正确，但结构外壳不合规

- `05-foundation-gate/01-foundation-check.typ`
- `05-foundation-gate/02-branch-entry-recaps.typ`

它们承担的是“主干收束闸门”职责，但原稿没有按照六阶段展开，导致第 5 章像是插进了两张说明页，而不是两节真正的知识点章。

### 2. `§7.9` 的选学侧厅过高

- 原稿把正多边形、圆与圆位置关系、圆幂一瞥混在一起。
- 这会让侧厅直接摸到后续更高层的圆几何语言，和本章“证明链 / 测量链”主线脱节。

### 3. `§9.3` 与 `§9.4` 仍有统计线过载

- `§9.3` 在“方差定义”之外又提前塞入平移 / 伸缩变换规律。
- `§9.4` 把学生过早推向频率密度 / 面积解释，超出本章应先稳住的“分组—频数—等组距直方图读图”。

## 本轮修复

### A. 重写 05 章两节，让闸门也服从六阶段纪律

- `05-foundation-gate/01-foundation-check.typ`
  - 重写为 `crisis / discovery / tryit / blueprint / pitfall / mastery` 六阶段。
  - blueprint 聚焦“四条主干的过关信号”，mastery 只做诊断单与回看路线。
- `05-foundation-gate/02-branch-entry-recaps.typ`
  - 重写为分支入口 recap 的六阶段版本。
  - blueprint 只正式引入各分支入口钥匙，具体清单下沉到 mastery。

### B. 把 `§7.9` 收回真正的“轻量选学”

- `07-geometry-deepening/09-circle-extensions.typ`
  - 删除圆幂方向的高阶内容。
  - 只保留“正多边形与圆心角平均分配”“两圆位置关系”两块轻量拓展。
- `07-geometry-deepening/00-overview.typ`
  - 同步把 `§7.9` 描述改成“正多边形与圆的位置关系侧厅”，不再暗示圆幂。

### C. 让统计主线先稳住“观察与分组”

- `09-data-statistics/03-variability.typ`
  - 删除方差平移 / 伸缩变换规律。
  - 回到“按定义比较波动大小”的主线。
- `09-data-statistics/04-frequency-distribution.typ`
  - 重写为等组距分组与直方图的初阶版本。
  - 删除频率密度 / 面积型解释，先稳住“哪组最高、哪里最集中、两头多不多”。
- `09-data-statistics/07-review.typ`
  - 同步把回顾里对直方图的表述改回“等组距时最高组最集中”的层级。

## 本轮涉及文件

- `typst/05-foundation-gate/01-foundation-check.typ`
- `typst/05-foundation-gate/02-branch-entry-recaps.typ`
- `typst/07-geometry-deepening/00-overview.typ`
- `typst/07-geometry-deepening/09-circle-extensions.typ`
- `typst/09-data-statistics/03-variability.typ`
- `typst/09-data-statistics/04-frequency-distribution.typ`
- `typst/09-data-statistics/07-review.typ`

## 剩余高优先级结构问题

1. `06.2`、`06.7`、`07.8` 仍有 pre-blueprint 口诀 / 方法名抢跑。
2. `07.3`、`07.4`、`07.7`、`09.2` 仍有“一章发明过多工具”的风险。
3. `04`、`09` 的桥接叙述仍需更明确地标出“主线 / 侧窗”关系。

## 下一轮计划

第 3 轮聚焦：

- 回收蓝图前的口诀、公式名和方法名；
- 清理同章前向依赖；
- 继续把 `04` 与 `09` 的桥接写顺。
