# Structure Iteration 02 — Resolution Note

**Task:** `task-010`  
**Reviewed artifact:** `docs/review/20260419-structure-quality-review/12-structure-iteration-02.md`  
**Worktree:** `/Users/rexxiang/workspace/practice/math-textbox-1-9/.worktrees/structure-quality-20260419`

## Scope touched

- `typst/02-fraction-ratio-foundation/*`
- `typst/03-geometry-foundation/*`
- `typst/04-number-line-algebra-bridge/*`
- `typst/05-foundation-gate/*`
- `typst/06-algebra-deepening/*`
- `typst/07-geometry-deepening/*`
- `typst/08-function-models/*`
- `typst/09-data-statistics/*`
- `typst/10-capstone/*`
- `typst/smoke/*`

## Structural outcomes

| Area | Outcome | Note |
|---|---|---|
| `§2.1` | SPLIT | `§2.1` 保留因数 / 倍数 / 整除；新增 `§2.2` `最大公因数 Greatest Common Divisor / GCD`、`最小公倍数 Least Common Multiple / LCM`；原 `§2.2-§2.5` 顺延为 `§2.3-§2.6`。 |
| `§3.1` | SPLIT | 拆为 `§3.1` 基本图形、`§3.2` 周长、`§3.3` 点线面；原面积体积顺延到 `§3.4`。 |
| `§3.3` | SPLIT | 原角章节拆为 `§3.5` 角的概念 / 类型 与 `§3.6` 角之间的关系；平行垂直、坐标顺延为 `§3.7-§3.8`。 |
| `§4.1` | SPLIT | `§4.1` 保留数轴 / 正负方向 / 有理数入口；新增 `§4.2` 相反数 / 绝对值 / 有理数运算；原 `§4.2-§4.4` 顺延为 `§4.3-§4.5`。 |
| `§7.8` | PRUNE (corrective pass) | 进一步删去可见/不可见线、常见立体大全与额外扩展，只保留 `正投影`、`三视图`、`对齐读图` 三个真实工具层级；主视图 / 俯视图 / 左视图仅作三视图内部组件。 |
| `§7.2` | PRUNE | 增补显式本地 `#vocab`，以“相似 / 相似比 / 相似判定”为三根。 |
| `§7.4` | PRUNE (corrective pass) | 改写为三条真实工具链：`先连半径`、`圆周角定理`、`垂径性质`；删除把圆内术语清单当成独立发明根的写法。 |
| `§9.4` | DEFERRED AFTER PRUNE | 补出显式本地 `#vocab`，将结构根收束为三项，未再做二次拆章。 |
| `§9.5` | DEFERRED AFTER PRUNE | 补出显式本地 `#vocab`，将结构根收束为三项，未再做二次拆章。 |

## Cross-file consistency repair

- 更新 `typst/main.typ` 以接入新增二级章节文件。
- 同步修正 02 / 03 / 04 分支的 `00-overview.typ` 与 review 文件。
- 修复 `05` 闸门、`08` / `09` 分支概览与 `10` 终章中受重编号影响的 `#secref(...)`。
- 同步修复 smoke entrypoints，使独立章节编译链包含新增分章文件，并补上 `typst/smoke/10-capstone.typ` 对 `10-capstone/review.typ` 的缺失 include。

## Max-3 cleanup outcomes

- 直接压缩显式术语根到 `<=3` 的章节：
  - `§1.3`
  - `§6.4`
  - `§6.5`
  - `§6.6`
  - `§7.1`
  - `§7.5`
  - `§7.7`
  - `§7.8`
  - `§8.4`
  - `§9.6`
- 其中 corrective pass 又进一步把 `§3.1`、`§7.4`、`§7.8` 压回“正文真实工具负载”而不是只压 `#vocab` 数量；`§7.1` 仍保留 SSS / SAS / ASA / AAS / HL / SSA 的首次英文展开说明。

## Acceptance-criteria check

| AC | Result | Note |
|---|---|---|
| AC-01 — mandatory split/prune set completed | PASS | `§2.1` / `§3.1` / `§3.3` / `§4.1` 已拆；`§7.8` 经 corrective pass 后按真实窄化而非假压缩处理。 |
| AC-02 — touched branches kept structurally consistent | PASS | `main.typ`、相关 overview / review / smoke 入口与跨章 `#secref` 已同步；`10-capstone` smoke 已补齐 review include。 |
| AC-03 — max-3 enforcement on touched/watchlist roots | PASS | `§3.1`、`§7.4`、`§7.8` 已按正文真实工具负载压回 `<=3`；`§7.2` / `§9.4` / `§9.5` 维持 iteration-02 的窄化结论。 |
| AC-04 — glossary / abbreviation compliance on touched roots | PASS | GCD / LCM 与全等判定缩写首见展开已补齐。 |
| AC-05 — six-stage structure preserved | PASS | 仅在既有顶层分支内增补二级章节；顶层 `00-10` spine 未改。 |
| AC-06 — verification green | PASS | `make check` 通过，主书与 smoke entrypoints 均成功编译。 |

## Verification

- `make check` ✅

## Final note

Iteration 02 在 corrective pass 后，完成了 reviewer 指定的剩余阻塞项：`§3.1`、`§7.4`、`§7.8` 的真实 max-3 收束，`§5.2` 的局部导流修正，以及 `10-capstone` smoke 缺失入口补齐。顶层章节骨架保持不变，iteration-01 修复未被回退。
