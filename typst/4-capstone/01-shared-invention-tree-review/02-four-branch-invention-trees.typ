#import "../../lib/theme-v2.typ": blueprint, side-hack, secref
#import "../../lib/diagram-packages.typ": fletcher

=== 四支分支的发明树并排回看 <meta:cp-four-branch-trees>

到这里，四条分支各自的发明树你都已走过一遍：

- 代数 #secref("meta:al-invention-tree")：字母 → 代数式 → 因式分解 → 分式 → 一元一 / 二次方程 → 不等式。
- 几何 #secref("meta:ge-invention-tree")：图形直观 → 全等与证明链 → 相似 → 四边形 / 圆 → 勾股 / 三角比 → 变换与坐标。
- 函数 #secref("meta:fn-invention-tree")：关系模板 → 三视图 → 一次 / 反比例 / 二次 → 模型选择 → 长期排名。
- 数据 #secref("meta:dt-invention-tree")：整理 → 中心 / 离散 → 频率分布 / 方差 → 样本空间 / 概率 → 抽样 / 估计。

四条树各自独立生长，但它们在更高的抽象层上*共用*着同一组动作：*命名 → 选规则 → 验证 → 推广*。这一节把四条树并排放在一起，让它们的“共同骨架”浮出水面。

#blueprint[
  *四条主干并排表*

  #table(
    columns: (auto, 1fr, 1fr, 1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    align: (left, left, left, left, left),
    [*阶段*], [*代数*], [*几何*], [*函数*], [*数据*],
    [*命名*\ 给对象起符号], [字母代替数 #secref("cb05-letters-represent-numbers")], [全等 / 相似的字母对应表 #secref("ge01-congruence-correspondence")], [关系模板 / 三视图 #secref("cb05-relationship-templates")、#secref("fn01-table-as-function-view")], [总体 / 样本 / $bar x$ / $s^2$ #secref("dt10-population-vs-sample")],
    [*选规则*\ 每族的判定法], [因式分解三步 #secref("al02-factorization-as-reverse")], [SSS / SAS / ASA / AAS / AA #secref("ge01-sss-sas")、#secref("ge02-similarity-aa-ratio")], [模型选择四问 #secref("fn11-model-choice")], [古典概率 / 相对频率 #secref("dt08-probability-language")],
    [*验证*\ 反过来核对], [验根（分式 / 二次） #secref("al03-rational-equations-and-extraneous-roots")], [证明链 #secref("ge01-two-step-proof-chain")], [图 / 表 / 公式互验 #secref("fn02-graph-as-function-view")], [估计后查偏差 / 样本量 #secref("dt12-estimation")],
    [*推广*\ 把工具搬到下一层], [一次 → 二次方程 → 不等式 #secref("al05-quadratic-solving")、#secref("al05-linear-inequalities")], [全等 → 相似 → 变换 #secref("ge05-rigid-transforms")], [短期 → 长期排名 #secref("fn12-function-comparison")], [描述 → 推断 #secref("dt11-sampling-bias")],
  )

  四列横看：每一行都是“同一个动作在不同分支里换了套衣服”。
]

#blueprint[
  *四支分支主干流程图*

  #figure(
    {
      import fletcher: diagram, node, edge
      let cAl = rgb("#FFE0B2")
      let cGe = rgb("#C8E6C9")
      let cFn = rgb("#BBDEFB")
      let cDt = rgb("#F8BBD0")
      let lab(name) = text(size: 8pt)[#name]
      diagram(
        node-stroke: 0.6pt,
        node-inset: 4pt,
        spacing: (1.4em, 1.4em),
        node((0,0), text(weight: "bold")[代数 al], shape: rect, fill: cAl),
        node((1,0), lab("字母 → 代数式"), shape: rect, fill: cAl),
        node((2,0), lab("因式分解 / 分式"), shape: rect, fill: cAl),
        node((3,0), lab("方程 / 不等式"), shape: rect, fill: cAl),
        node((0,1), text(weight: "bold")[几何 ge], shape: rect, fill: cGe),
        node((1,1), lab("全等 / 证明链"), shape: rect, fill: cGe),
        node((2,1), lab("相似 / 四边形圆"), shape: rect, fill: cGe),
        node((3,1), lab("勾股 / 变换 / 坐标"), shape: rect, fill: cGe),
        node((0,2), text(weight: "bold")[函数 fn], shape: rect, fill: cFn),
        node((1,2), lab("三视图 / 关系模板"), shape: rect, fill: cFn),
        node((2,2), lab("一次 / 反比例 / 二次"), shape: rect, fill: cFn),
        node((3,2), lab("模型选择 / 长期排名"), shape: rect, fill: cFn),
        node((0,3), text(weight: "bold")[数据 dt], shape: rect, fill: cDt),
        node((1,3), lab("整理 / 中心 / 离散"), shape: rect, fill: cDt),
        node((2,3), lab("频率 / 方差"), shape: rect, fill: cDt),
        node((3,3), lab("概率 / 抽样 / 估计"), shape: rect, fill: cDt),
        edge((1,0), (2,0), "->"), edge((2,0), (3,0), "->"),
        edge((1,1), (2,1), "->"), edge((2,1), (3,1), "->"),
        edge((1,2), (2,2), "->"), edge((2,2), (3,2), "->"),
        edge((1,3), (2,3), "->"), edge((2,3), (3,3), "->"),
      )
    },
    caption: [四支分支主干并排：每一行都是“命名 → 选规则 → 验证 / 推广”这套共同动作的一种实现],
  ) <fig-four-branches>
]

#side-hack[
  *为什么四支看起来都长这样*

  这并不巧合：人类发明数学工具时反复在做同样的几件事——*给现象起符号、为每族打包判定法、用反向运算或反例验证、把工具搬去更难的场合*。每一支分支只是把这套动作搬进了不同的对象（代数关注*未知量*、几何关注*形状关系*、函数关注*变化*、数据关注*不确定*）。

  这意味着：当你在某一支卡住时，可以*跨支借力*——例如代数验根的“反向核对”意识，搬到几何就是“反推已知条件是否齐”、搬到函数就是“代回检验”、搬到数据就是“估完查偏差”。
]

#blueprint[
  *跨分支练手三问*

  + *命名一致性*：你能否把同一段现实场景*同时*翻译成代数式 / 几何图 / 函数关系 / 数据表？例如“某厂日产量随班次变化”。
  + *选规则一致性*：四支各自的“判定法 / 流程”是否都能不查书复述？（因式分解三步、全等五法、模型四问、概率三规）
  + *验证一致性*：你解完一道题，是否*主动*选了反向核对的方式（验根 / 反例 / 代回 / 偏差检查）？
]
