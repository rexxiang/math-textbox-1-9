# 质量打磨第 4 轮

## 本轮目标

补齐几处“概念已经对，但教材手感还不够顶级”的位置：

1. 变换章要有一个共用样本，让“不变量”先被看见。
2. 增长率应用要真正落成模型表达。
3. 统计代表值与波动章节要把边界情形和算题节奏说得更顺。

## 本轮发现

### 1. `§7.7` discovery 很好，但 blueprint 太像分类表

- 读者能知道“有哪几类变换”，却不一定马上抓住“它们都在保持什么不变”。

### 2. `§8.4` 的滚动增长仍偏口头

- 学生能看懂“下一年 = 上一年 × 1.05”。
- 但在函数章里，如果不顺手压成 `y = 1000 × 1.05^t`，模型对照还不够干净。

### 3. `§9.2` 和 `§9.3` 还缺两个高价值细节

- `§9.2` 说了“众数可能不止一个”，但练习之前没真正训练这一点。
- `§9.3` 的方差符号来得略早，应用答案也还不够展示比较过程。

## 本轮修复

- `07-geometry-deepening/07-transformations.typ`
  - 在 blueprint 开头加入“同一个三角形怎样被平移 / 对称 / 旋转”的共用样本。
  - 先让不变量被看见，再读分类。
- `08-function-models/04-rate-change-models.typ`
  - 补上滚动增长的紧凑表达式 `y = 1000 × 1.05^t`。
  - 明写它和 `y = 1000 + 50t` 的对照：一个守固定倍率，一个守固定差。
- `09-data-statistics/02-central-tendency.typ`
  - 把一个 routine item 改成“双众数”例子。
- `09-data-statistics/03-variability.typ`
  - 先呈现算题步骤，再把 `S^2` 当成压缩记法收下。
  - 在机器稳定性答案里补上简短数值比较过程。

## 本轮涉及文件

- `typst/07-geometry-deepening/07-transformations.typ`
- `typst/08-function-models/04-rate-change-models.typ`
- `typst/09-data-statistics/02-central-tendency.typ`
- `typst/09-data-statistics/03-variability.typ`

## 下一轮计划

最后一轮聚焦**review 文件**：把复习题从“再算一次”提升成“再判断一次、再翻译一次、再选择一次方法”。
