// chapter-kit.typ — 知识节 & 章首汇总导入
//
// 在知识节 *.typ 文件中，用一行 import 替代原先的两行：
//
//   深度 3（typst/SECTION/file.typ）：
//     #import "../lib/chapter-kit.typ": crisis, discovery, ...
//
//   深度 4（typst/SECTION/CHAPTER/file.typ）：
//     #import "../../lib/chapter-kit.typ": crisis, discovery, ...
//
// 章首 00-overview.typ 用法示例：
//   #import "../../lib/chapter-kit.typ": chapter-nav, chapter-route, side-hack, secref
//   — 或 —
//   #import "../../lib/chapter-kit.typ": chapter-overview, secref
//   #chapter-overview(route: [+ ...], selfcheck: [...])[概览内容]

#import "theme-v2.typ": chapter-nav, chapter-route, chapter-overview, crisis, discovery, blueprint, mastery, tryit, pitfall, history-note, side-hack, vocab, lab, secref, secrange, answer-cut, self-check, knowledge-card, proof-step
#import "diagram-packages.typ": cetz
#import "components.typ": diagnostic-table
#import "geometry-helpers.typ": equal-angle, draw-number-line, draw-coord-plane
