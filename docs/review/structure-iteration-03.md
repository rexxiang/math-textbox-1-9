# 结构修订第 3 轮

## 本轮目标

继续清理“还没发明就先使用”的结构违例，并把几处桥接写得更顺：

1. 回收蓝图前泄露的公式、口诀与术语。
2. 去掉同章前向引用造成的隐性依赖。
3. 让 `04` 和 `09` 的桥接叙述更清楚地区分主线与侧窗。

## 本轮发现

### 1. 多节仍在 blueprint 前偷放工具

- `07.6` 的 tryit / side-hack 在正式定义前就写出三角比公式。
- `08.1`、`08.2` 在章节开头直接堆上函数类别 vocab。

### 2. 同章前向引用仍在悄悄制造“未来工具已在场”的错觉

- `05.1 -> 5.2`
- `7.2 -> 7.6`
- `7.4 -> 7.5`
- `7.5 -> 7.6`

这些引用不一定直接要求解题，但会把学生注意力拉向尚未展开的后文工具。

### 3. 两章桥接意图还不够显式

- 第 4 章的“实数入口”容易打断代数桥主线。
- 第 9 章的概率容易看起来像强行插入主线中部，而不是“随机性侧窗”。

## 本轮修复

### A. 收回 blueprint 前的工具偷跑

- `07-geometry-deepening/06-trigonometric-measurement.typ`
  - tryit 改成先写“对边 / 邻边 / 斜边的比”。
  - side-hack 去掉 `sin / cos / tan` 公式，保留“先认边，再选比”的观察。
- `08-function-models/01-linear-functions.typ`
- `08-function-models/02-inverse-proportion.typ`
  - 移除章节开头多余的 vocab 预加载，让定义回到 blueprint。

### B. 切断同章前向引用

- `05-foundation-gate/01-foundation-check.typ`
  - 不再直接把学生推向 `#secref("5.2")`，改成“下一节的分支入口总览”。
- `07-geometry-deepening/02-similar-triangles.typ`
- `07-geometry-deepening/04-circles.typ`
- `07-geometry-deepening/05-pythagorean-theorem.typ`
  - 把“后面会用到哪一节”改成泛化描述，不再显式点名尚未展开的章节。

### C. 让 `04` 与 `09` 的桥接关系写顺

- `04-number-line-algebra-bridge/00-overview.typ`
  - 重新排序桥接叙述，把“负数—字母—方程”写成代数桥主线。
  - 将 `§4.2` 明写成“补完整数轴的侧窗”。
- `04-number-line-algebra-bridge/02-real-numbers.typ`
  - 加上 side-hack，明确本节只做“补数轴”，不扩成根式算术训练。
- `09-data-statistics/00-overview.typ`
  - 明写 `§9.5` 是“随机性侧窗”，`§9.6` 再回到数据现场。
- `09-data-statistics/07-review.typ`
  - 去掉关于等组距直方图的重复表述。

## 本轮涉及文件

- `typst/05-foundation-gate/01-foundation-check.typ`
- `typst/07-geometry-deepening/02-similar-triangles.typ`
- `typst/07-geometry-deepening/04-circles.typ`
- `typst/07-geometry-deepening/05-pythagorean-theorem.typ`
- `typst/07-geometry-deepening/06-trigonometric-measurement.typ`
- `typst/08-function-models/01-linear-functions.typ`
- `typst/08-function-models/02-inverse-proportion.typ`
- `typst/04-number-line-algebra-bridge/00-overview.typ`
- `typst/04-number-line-algebra-bridge/02-real-numbers.typ`
- `typst/09-data-statistics/00-overview.typ`
- `typst/09-data-statistics/07-review.typ`

## 剩余高优先级结构问题

1. `06.2`、`06.7`、`07.8` 还有 pre-blueprint 口诀 / 方法名残留。
2. `07.4`、`07.7`、`09.2`、`03.2` 仍有明显过载。
3. `07.3` 虽已减轻，但四边形支线仍要继续收束。

## 下一轮计划

第 4 轮聚焦：

- 收掉剩余 blueprint 前口诀；
- 删去章节里偷长出来的第 4 把工具；
- 继续压平几何与统计的章节负载。
