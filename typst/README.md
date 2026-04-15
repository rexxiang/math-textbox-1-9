# Typst 数学自学教材

面向中国 1-9 年级学生的中文数学自学教材，使用 Typst 排版。

## 目录结构

- `main.typ` — 入口文件
- `lib/theme.typ` — 页面布局、字体、lesson-box 样式
- `lib/diagram-packages.typ` — 图形包导入
- `chapters/` — 章节内容（5 个模块，45+ 个文件）
- `smoke/` — 构建烟雾测试

## 构建

```bash
make pdf    # 生成 PDF → output/math-textbook.pdf
make check  # 工具链验证 + 包锁定检查
make clean  # 清理构建产物
```

构建需要 Docker，使用 `Dockerfile` 构建包含 CJK 字体的 Typst 镜像。
