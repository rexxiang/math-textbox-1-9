# Wave 6 视觉系统化 — 完成统计

| 项目 | 实际数量 |
|---|---|
| draw-number-line 替换 | 0（helper 已建，等 Wave 7 批量迁移） |
| draw-coord-plane 替换 | 0（helper 已建，等 Wave 7 批量迁移） |
| equal-angle 用例 | 8 |
| fletcher 用例 | 3 |
| knowledge-card 替换 | 10 |
| proof-step 替换 | 6 |
| 图 label 数 | 33（30 处现有图加 label + 3 处新增 fletcher 图） |
| 展示式改写数 | 10 |
| crisis [!] 前缀 | 全书（theme-v2.typ 全局生效）|

## 文件变更清单

- `typst/lib/geometry-helpers.typ` — 新增 draw-number-line / draw-coord-plane
- `typst/lib/theme-v2.typ` — crisis [!] 前缀 / 新增 knowledge-card / proof-step
- `typst/lib/chapter-kit.typ` — 更新 import（含 knowledge-card / proof-step / 几何 helpers）
- `typst/4-capstone/01-shared-invention-tree-review/01-shared-tools-and-bridges.typ` — fletcher 主链图（fig-main-chain）
- `typst/3b-geometry-proof/02-advanced-criteria-and-proof-writing/02-two-step-proof-chain.typ` — fletcher 证明结构图（fig-proof-structure）+ proof-step 替换 ×2 + equal-angle 替换 ×2 + 图 label ×2
- `typst/3b-geometry-proof/02-advanced-criteria-and-proof-writing/01-asa-aas-ssa-counterexample.typ` — equal-angle 替换 ×4
- `typst/0-orientation/02-symbols-invention-tree-repair-routes/02-invention-tree-and-backfill.typ` — fletcher 六阶段链图（fig-invention-chain）
- `typst/3b-geometry-proof/01-congruence-and-basic-criteria/02-sss-sas-criteria.typ` — proof-step 替换 ×2 + equal-angle 替换 ×2 + 图 label ×2
- `typst/3b-geometry-proof/03-similarity-scale-parallel-line-geometry/01-parallel-lines-and-angle-lemmas.typ` — proof-step 替换 ×1 + 图 label ×2
- `typst/3b-geometry-proof/04-quadrilateral-family/01-quadrilateral-family.typ` — proof-step 替换 ×1 + 图 label ×2
- 多个 99-review.typ（10 个章节）— knowledge-card 替换
- 多个章节文件 — 30 张关键图加 fig-label + 正文引用
- 多处 blueprint / 探索文 — 10 处行内分式改展示式
