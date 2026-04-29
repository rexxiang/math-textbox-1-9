#import "../../lib/theme-v2.typ": blueprint, side-hack, secref
#import "../../lib/diagram-packages.typ": fletcher

=== 公共基础与共通桥梁的跨分支复用 <tool:cp01-shared-tools-crossref>

全书分成 6 个大块：公共基础、共通桥梁、代数、几何、函数、数据。四支分支各自独立生长，但它们*都建在公共基础与共通桥梁这 25 个基础概念上*。本节把哪些基础概念被*几个*分支同时使用排成一张可复查的表。

==== 接力节点：分数 → 比 → 方程 → 函数

回望全书走过的路，有一条贯穿数千年的"主轴"：人类一代代发明出来的几样工具，环环相扣，让人类一点一点学会了定量描述世界。

最早的需要是*分数*（#secref("pf04-fraction-equivalence")）。古埃及尼罗河泛滥后的土地丈量、古巴比伦把"一头牛"分给三个继承人——只要"整体"开始被分割，自然数就再也不够用。分数提供了"整体的一部分"这把第一性的小尺子。

紧接着浮现的是*比*（#secref("cb01-ratio-basics")）。一旦能描述"几分之几"，下一个问题立刻冒出来："这块地与那块地的宽窄之比"——把*两个量*一起放在天平上看。维特鲁威记下的"灰 : 沙 $= 1 : 3$"，《九章算术》"衰分"章的按比例分粮，都是同一种思想：抛开总量、只关心比例本身。

可"比"还是静态的。生活里更频繁地出现*约束*：某个未知的数量必须满足某种关系。这就催生了*方程*（#secref("cb06-equation-as-balance")）——把未知量当作可以参与运算的对象，用等号*声明约束*而不是宣布结果。花拉子米的天平法、《九章算术》的"方程"章，都在做同一件事：把"哪个值能让两边平衡"变成可以系统推导的问题。

方程描述的是*静止的约束*。可现实总在变化：水位随时间上涨、温度随海拔下降、价格随产量起伏。当我们关心的是*"输入变了，输出怎么跟着变"*时，工具又被迫升级一次——这就是*函数*（#secref("fn01-table-as-function-view")）。莱布尼茨、欧拉给"那条随曲线变化的量"起名 $f(x)$，狄利克雷把它锁死为"每个输入唯一对应一个输出"——人类终于能用一行符号统一处理"变化"这件事。

分数 $->$ 比 $->$ 方程 $->$ 函数，这四个工具就是数千年来定量思维的脊梁。从尼罗河的丈量绳到现代物理的微分方程，所有更高级的数学都生在这条主轴之上。能读到这里的你，已经在这段学习里重走了人类走了几千年的路；接下来，代数、几何、函数、数据这四条分支，会带你看到这条主轴在各自方向上能伸到多远。

如图 @fig-main-chain 所示，这条主链可以用一张接力图概括：

#figure(
  {
    import fletcher: diagram, node, edge
    diagram(
      node-stroke: 0.8pt,
      node-fill: rgb("#E3F2FD"),
      spacing: (4em, 2em),
      node((0,0), [*分数*\ #text(size: 8pt)[§pf04]], shape: rect),
      node((1,0), [*比*\ #text(size: 8pt)[§cb01]], shape: rect),
      node((2,0), [*方程*\ #text(size: 8pt)[§cb06]], shape: rect),
      node((3,0), [*函数*\ #text(size: 8pt)[§fn01]], shape: rect),
      edge((0,0), (1,0), "->", label: [部分/整体]),
      edge((1,0), (2,0), "->", label: [约束化]),
      edge((2,0), (3,0), "->", label: [动态化]),
    )
  },
  caption: [主链接力：分数 $->$ 比 $->$ 方程 $->$ 函数（括号内为对应章节）],
) <fig-main-chain>

#blueprint[
  *跨分支复用清单（节选）*

  #table(
    columns: (auto, 1fr, 1fr, 1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    align: (left, center, center, center, center),
    [*工具 / 概念*], [*代数 al*], [*几何 ge*], [*函数 fn*], [*数据 dt*],
    [字母代替数 #secref("cb05-letters-represent-numbers")], [✓ 建模], [✓ 设未知边], [✓ 写公式], [✓ 写期望 / 均值],
    [等式性质 #secref("cb06-equality-properties")], [✓ 解方程], [✓ 代数求边], [✓ 求零点], [✓ 估计式 #secref("dt12-estimation")],
    [比与比例 #secref("cb01-ratio-basics") / #secref("cb01-proportion")], [✓ 分式同比化简], [✓ 相似比 (#secref("ge02-similarity-aa-ratio"))], [✓ 正比例函数 (#secref("fn04-direct-variation"))], [✓ 频率 / 百分比 (#secref("dt01-organizing-data"))],
    [平面直角坐标系 #secref("cb04-rectangular-system")], [—], [✓ 坐标几何 (#secref("ge05-coordinate-transforms"))], [✓ 画图像 (#secref("fn02-graph-as-function-view"))], [✓ 散点与直方图 (#secref("dt05-histograms"))],
    [实数与数轴 #secref("cb07-real-number-line")], [✓ 不等式 (#secref("al05-linear-inequalities"))], [✓ 根号边长 (#secref("ge04-pythagorean"))], [✓ 连续变量], [✓ 连续数据分箱],
    [平方与平方根 #secref("cb07-square-and-square-root")], [✓ 求根公式 (#secref("al05-quadratic-solving"))], [✓ 勾股 (#secref("ge04-pythagorean"))], [✓ 二次函数 (#secref("fn08-quadratic-function"))], [✓ 方差 (#secref("dt06-variance"))],
    [四则运算律 #secref("pf02-order-laws")], [✓ 恒等变形], [✓ 面积 / 周长拆合], [✓ 公式化简], [✓ 均值化简],
    [分数运算 #secref("pf04-fraction-arithmetic")], [✓ 分式 (#secref("al03-common-denominator-operations"))], [✓ 面积比 / 体积比], [✓ 反比例 (#secref("fn07-inverse-proportion"))], [✓ 频率 / 古典概率],
    [角与内角和 #secref("pf07-angles") / #secref("pf08-triangles-angle-sum")], [—], [✓ 平行 / 全等 / 相似], [—], [—],
    [周长面积体积 #secref("pf07-perimeter-area") / #secref("pf07-volume")], [✓ 应用题], [✓ 四边形 / 圆 / 立体], [✓ 长方形面积型二次], [—],
    [坐标直觉 #secref("pf08-coordinate-intuition")], [—], [✓ 坐标几何], [✓ 画图像], [✓ 散点图],
  )

  *读这张表的方式*：哪一行打了多个 ✓，说明那个工具是*跨分支的公共基础设施*——卡在任何一支里都可能因为它没稳住而卡住。
]

主链只是脊梁的"接力棒"。如果把全书每个关键工具都摆在桌面上，再画出谁靠谁吃饭，得到的不是一条直线，而是一张三层的依赖网。下面这张图把*公共基础（绿）→ 共通桥梁（蓝）→ 分支主线（橙）*三层平铺，绿色一行在最下方、橙色一行在最上方。箭头大多自下层指向上层，表示"上层那件工具是踩在下层这件工具上的"；同一层内偶尔出现的箭头表示这层内部也有先后关系（例如桥梁里"字母代数"先于"方程"，"比例"也先于"方程"）。

#figure(
  scale(x: 92%, y: 92%, reflow: true, {
    import fletcher: diagram, node, edge
    let cF = rgb("#E8F5E9")
    let cB = rgb("#E3F2FD")
    let cT = rgb("#FFF3E0")
    let lab(name, code) = text(size: 8pt)[*#name* #h(0.2em) #text(size: 6.5pt, fill: rgb("#555"))[§#code]]
    diagram(
      node-stroke: 0.6pt,
      node-inset: 4pt,
      spacing: (1.0em, 2.4em),
      // Foundation layer (y=2, bottom): 5 nodes spread across cols 0..6
      node((0,2), lab("自然数", "pf01"), shape: rect, fill: cF),
      node((1,2), lab("四则律", "pf02"), shape: rect, fill: cF),
      node((3,2), lab("分数", "pf04"), shape: rect, fill: cF),
      node((5,2), lab("周长面积", "pf07"), shape: rect, fill: cF),
      node((6,2), lab("角三角形", "pf08"), shape: rect, fill: cF),
      // Bridge layer (y=1, middle): 6 nodes
      node((0,1), lab("数轴", "cb02"), shape: rect, fill: cB),
      node((1,1), lab("比例", "cb01"), shape: rect, fill: cB),
      node((2,1), lab("字母代数", "cb05"), shape: rect, fill: cB),
      node((3,1), lab("方程", "cb06"), shape: rect, fill: cB),
      node((5,1), lab("坐标系", "cb04"), shape: rect, fill: cB),
      node((6,1), lab("平方根", "cb07"), shape: rect, fill: cB),
      // Branch layer (y=0, top): 6 nodes
      node((0,0), lab("方差", "dt06"), shape: rect, fill: cT),
      node((2,0), lab("求根公式", "al05"), shape: rect, fill: cT),
      node((3,0), lab("斜率", "fn06"), shape: rect, fill: cT),
      node((4,0), lab("二次函数", "fn08"), shape: rect, fill: cT),
      node((5,0), lab("相似", "ge02"), shape: rect, fill: cT),
      node((6,0), lab("勾股定理", "ge04"), shape: rect, fill: cT),
      // Foundation -> Bridge
      edge((0,2), (0,1), "->"),       // 自然数 -> 数轴
      edge((1,2), (2,1), "->"),       // 四则 -> 字母
      edge((1,2), (3,1), "->"),       // 四则 -> 方程
      edge((1,2), (6,1), "->"),       // 四则 -> 平方根
      edge((3,2), (1,1), "->"),       // 分数 -> 比例
      edge((6,2), (5,1), "->"),       // 角三角形 -> 坐标系
      // Bridge -> Bridge
      edge((0,1), (5,1), "->"),       // 数轴 -> 坐标系
      edge((2,1), (3,1), "->"),       // 字母 -> 方程
      edge((1,1), (3,1), "->"),       // 比例 -> 方程
      // Bridge -> Branch
      edge((3,1), (2,0), "->"),       // 方程 -> 求根公式
      edge((6,1), (2,0), "->"),       // 平方根 -> 求根公式
      edge((6,1), (6,0), "->"),       // 平方根 -> 勾股
      edge((1,1), (5,0), "->"),       // 比例 -> 相似
      edge((5,1), (3,0), "->"),       // 坐标系 -> 斜率
      edge((1,1), (3,0), "->"),       // 比例 -> 斜率
      edge((6,1), (4,0), "->"),       // 平方根 -> 二次函数
      edge((5,1), (4,0), "->"),       // 坐标系 -> 二次函数
      edge((6,1), (0,0), "->"),       // 平方根 -> 方差
      // Branch -> Branch
      edge((2,0), (4,0), "->"),       // 求根公式 -> 二次函数
      // Foundation -> Branch (skip-level)
      edge((3,2), (0,0), "->"),       // 分数 -> 方差
      edge((6,2), (5,0), "->"),       // 角三角形 -> 相似
      edge((1,2), (6,0), "->"),       // 四则 -> 勾股
      edge((5,2), (4,0), "->"),       // 周长面积 -> 二次函数（面积型）
    )
  }),
  caption: [全书工具依赖 DAG：公共基础（绿，底层）→ 共通桥梁（蓝，中层）→ 分支主线（橙，顶层）。跨层箭头表示"上层工具依赖下层工具"；同层箭头表示该层内部的先后依赖。],
) <fig-tool-dag>

#side-hack[
  *看图三问*：① 哪个底层节点*射出的箭头最多*？它就是全书最被反复倚重的公共基础——卡在它上面，会同时拖住好几支分支。② 哪个分支工具*接收的箭头最多*？它就是综合度最高的"集大成"工具——一旦学起来吃力，多半是它依赖的某条前置链没接稳。③ 哪条桥梁*同时给两支以上分支供货*？它就是真正的"枢纽桥梁"，值得在分支推进前再回头确认一遍。带着这三个问题再扫一遍图 @fig-tool-dag，比硬记每条箭头有用得多。
]

#blueprint[
  *四支分支的“核心新工具”与它依赖的前面学过的知识*

  每一支的新工具都可以分解成“把已有工具重新组合”。下表列出各支最具标志性的一个工具，及它的地基：

  #table(
    columns: (auto, 1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    align: left,
    [*分支*], [*代表工具*], [*直接依赖*],
    [代数 al], [一元二次方程求根公式 (#secref("al05-quadratic-solving"))], [等式性质 (#secref("cb06-equality-properties"))、平方根 (#secref("cb07-square-and-square-root"))、配方法],
    [几何 ge], [勾股定理 (#secref("ge04-pythagorean"))], [全等 (#secref("ge01-congruence-correspondence"))、面积拼合 (#secref("pf07-perimeter-area"))、平方根],
    [函数 fn], [斜率 (#secref("fn06-slope-as-rate"))], [坐标系 (#secref("cb04-rectangular-system"))、比 (#secref("cb01-ratio-basics"))、变化率直觉],
    [数据 dt], [方差 (#secref("dt06-variance"))], [均值 (#secref("dt03-center-and-spread"))、平方 (#secref("cb07-square-and-square-root"))、分数],
  )

  你会发现：每一支的“标志性发明”其实是“前面学过的知识按新方式组合后产生的一张新图”。*没有哪一支是凭空出现的*。
]

#side-hack[
  *一句话总览*：公共基础与共通桥梁是地基，四支分支是上层建筑。卡在任何一支，先问自己：*地基还稳吗？*
]
