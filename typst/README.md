# Typst 数学自学教材

面向中国 1-9 年级学生的中文数学自学教材，使用 Typst 排版。

## 目录结构

- `main.typ` — 全书入口文件，按章节顺序 `#include` 所有内容
- `lib/theme-v2.typ` — 页面布局、页眉页脚、主题框函数样式
- `lib/diagram-packages.typ` — 图形包导入（`cetz`、`fletcher` 等）
- `lib/geometry-helpers.typ` — 几何辅助函数（如等角标记）
- `0-orientation/` — 导读与使用导航
- `1a-number-sense/` — 数感与运算
- `1b-shapes/` — 图形直观
- `2-foundation-transition/` — 基础收束与分支起步
- `3a-symbols/` — 符号与方程
- `3b-geometry-proof/` — 几何推理
- `3c-functions/` — 函数与变化
- `3d-data/` — 数据与不确定性
- `4-capstone/` — 终章综合
- `smoke/` — 构建烟雾测试与包锁检查

## 构建

```bash
make pdf    # 生成 PDF → output/math-textbook.pdf
make check  # 工具链验证 + 主书 + smoke 文件编译检查
make clean  # 清理构建产物
```

构建需要 Docker，使用仓库根目录的 `Dockerfile` 构建包含 CJK 字体的 Typst 镜像。
