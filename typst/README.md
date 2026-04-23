# Typst 数学自学教材

面向中国 1-9 年级学生的中文数学自学教材，使用 Typst 排版。

## 目录结构

- `main.typ` — 全书入口文件，按章节顺序 `#include` 所有内容
- `lib/theme-v2.typ` — 页面布局、页眉页脚、主题框函数样式
- `lib/diagram-packages.typ` — 图形包导入（`cetz`、`fletcher` 等）
- `lib/geometry-helpers.typ` — 几何辅助函数（如等角标记）
- `0-orientation/` — 导读与使用导航
- `1-public-foundation/` — 公共基础（数、量、形、位置、基础总检）
- `2-common-bridges/` — 共通桥梁（比例 / 数轴 / 坐标 / 代数式 / 方程 / 平方根 / 桥梁 readiness）
- `3a-algebra-symbols/` — 代数与符号（整式 / 因式分解 / 分式 / 方程与不等式）
- `3b-geometry-proof/` — 几何与证明（全等 / 相似 / 四边形与圆 / 勾股与三角比 / 变换与视图）
- `3c-functions-change/` — 函数与变化（函数观 / 一次与正比例 / 反比例与二次 / 增长模型）
- `3d-data-uncertainty/` — 数据与不确定性（描述统计 / 频率分布 / 概率 / 抽样）
- `4-capstone/` — 终章综合（共同知识地图回看 / 跨域建模 / 下一阶段学习地图）
- `smoke/` — 按 8 个部件拆分的编译烟雾测试与包锁检查

## 构建

```bash
make pdf    # 生成 PDF → output/math-textbook.pdf
make check  # 工具链验证 + 主书 + smoke 文件编译检查
make clean  # 清理构建产物
```

构建需要 Docker，使用仓库根目录的 `Dockerfile` 构建包含 CJK 字体的 Typst 镜像。
