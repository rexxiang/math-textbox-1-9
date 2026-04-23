#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

== 分支学完后的常见误读与查漏指引 <meta:ge-repair-routes>

#blueprint[
  *几何支最容易出现的 $10$ 类误读*

  #table(
    columns: (1.3fr, 1.5fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*误读*], [*背后是哪条概念没稳*], [*忘了可以回到*],
    [写 $triangle A B C tilde.eq triangle D E F$ 时字母顺序乱, 导致后面边角结论错位], [全等里“字母顺序 $=$ 对应表”没内化], [#secref("ge01-congruence-correspondence")],
    [看到“两边相等 $+$ 一非夹角相等”（SSA）就下“全等”结论], [SSA 不是判定法（存在双解反例）], [#secref("ge01-asa-aas-ssa")],
    [证明只写结论、不写“由 …… 得 ……” 的因果], [证明链书写没成习惯], [#secref("ge01-two-step-proof-chain")],
    [把“同位角”和“内错角”识别错], [平行线三类角的位置还没稳], [#secref("ge02-parallel-line-angles")],
    [相似题忘了*“按对应顶点”* 写比例], [相似对应关系靠顶点顺序], [#secref("ge02-similarity-aa-ratio")],
    [把“矩形对角线相等”当成“所有平行四边形对角线相等”], [四边形继承树的层次感没稳], [#secref("ge03-quadrilateral-family")],
    [看到“$angle A C B = 90 degree$” 马上套 Thales，不管顶点是不是在圆上], [Thales 的前提是顶点在圆上且 $A B$ 为直径], [#secref("ge03-circle-basics-inscribed")],
    [求直角边时漏写“斜边最长”这条约束，写成 $a = sqrt(b^2 - c^2)$ 中 $b < c$ 仍硬算], [勾股定理中斜边、直角边角色颠倒], [#secref("ge04-pythagorean")],
    [对非特殊角硬写 $sin$、$cos$、$tan$ 的精确值], [前面“特殊角”约束没守住], [#secref("ge04-special-right-triangles")],
    [坐标变换时把*逆时针*写成*顺时针*；把“关于 $x$-轴反射”和“关于 $y$-轴反射”互换], [坐标公式的*方向*没内化], [#secref("ge05-coordinate-transforms")],
  )
]

#side-hack[
  *只补短板，不整章重刷*

  - 每错一道题，先问自己：“我在哪一条误读上踩了雷？”——定位到上表一行。
  - 按那行的忘了可以回到，*只重读*对应那节的这节的方法与常见陷阱，然后做一遍该节的“应用”两到三道。
  - 做完再回到 #secref("meta:ge-synthesis-problems") 的综合题试一次；如果还卡，再按新卡点查上表。

  这套循环比“重刷一整本”要快得多，也更容易暴露真正的问题点。
]

#blueprint[
  *分支过关的信号*

  能同时做到以下五条，几何支就算正式过关：

  + 拿到任意*全等 / 相似题*，能先把*对应表*写清，再从 SSS / SAS / ASA / AAS 或 AA 中选出判定法，并按两步证明链写下来。
  + 拿到任意*四边形 / 圆*相关的性质题，能在继承树上找到对应位置、或指向圆周角定理 / Thales 作首要工具。
  + 拿到任意*直角三角形*问题，能立刻回答“要求的是斜边还是直角边”“需不需要用 $30$/$45$/$60$ 的固定边比”。
  + 拿到任意*仰角 / 俯角 / 坡度题*，能画出水平线、视线、铅直线组成的直角三角形，并套特殊角的三角比。
  + 拿到任意*坐标 / 变换题*，能正确写出距离、中点公式，以及三类刚体变换的坐标公式（方向一致）。
]

#side-hack[
  *这部分与其它分支的接口*

  - 往代数去：设未知边 / 角后列方程，就是代数支的 #secref("al04-linear-one-variable") / #secref("al05-quadratic-solving")；答案为“长度”时要*舍去负根*。
  - 往函数去：直线 $y = k x + b$ 的*斜率* $k$ 就是直角三角形里的 $tan$；图象的平移 / 反射就是前面学的刚体变换。
  - 往数据去：散点图的两点距离、重心位置要用前面学的坐标公式；几何题里的“分布”“平均”给数据支提供直观来源。
]
