#import "../lib/theme-v2.typ": blueprint, mastery, side-hack, secref

== §7.7 几何基础总结：把证明地基收紧 <meta:d-foundation-summary>

#blueprint[
  *基础段速查卡*

  #grid(columns: (1fr, 1fr), gutter: 12pt,
    block[
      *证明入口*（#secref("d01-congruence-definition")、#secref("d04-sss-criterion")、#secref("d07-asa-criterion")、#secref("d10-similar-triangles")）
      - 全等先讲清“对应”和证明链，再分两步学会把三角形锁死
      - `SSS / SAS / ASA / AAS / HL` 都是为“锁定形状”服务；`SSA` 不能乱用
      - 相似负责把“形状不变”接成“比例稳定”
    ],
    block[
      *性质网络*（#secref("d14-quadrilateral-angle-sum")、#secref("d20-radius-linking")）
      - 四边形常借三角形关系证明性质
      - 圆题常先连半径，再找同弧、等弦、圆周角
      - 复杂图形也要尽量压回“边、角、弧”这几类稳定关系
    ],
  )
]

#side-hack[
  *证明地基先收束*：

  到这里，几何路线已经把“为什么成立”的骨架立稳了。先把这副骨架收好：看到图形，先找对应；需要证明时，先想能不能锁定三角形；图再复杂，也尽量往边、角、弧这些稳定关系上压回去。
]

#mastery[
  *过桥自检*

  + 一道题如果目标是证明两条线段相等，你会优先想“全等”“相似”还是“四边形 / 圆的性质”？请说出你的第一步判断标准。

  + 为什么很多圆题一看到弦、圆心或圆周角，就会先回到“连半径”这一步？

  + 请用一句话说明：#secref("d14-quadrilateral-angle-sum") 的四边形题为什么常常需要借用 #secref("d04-sss-criterion")、#secref("d07-asa-criterion") 或 #secref("d10-similar-triangles") 的三角形工具？

  + 如果一张图里同时出现三角形、四边形和圆，你会先从哪一类线索下手：对应关系、比例关系，还是边角弧性质？请说出你的第一眼判断。

  + *【跨章回顾】* 在 #secref("b26-complementary") 里，你见过"同位角相等""内错角相等""同旁内角互补"（当两线平行时）。在 #secref("d01-congruence-definition") 到 #secref("d14-quadrilateral-angle-sum") 的全等/相似/四边形证明里，这些角关系被反复用到：
    - 举一个在四边形证明（#secref("d14-quadrilateral-angle-sum")）里用到"对角线被平分"时，背后依赖了哪条 ch3 角关系定理？（提示：平行四边形的对角线…）
    - 在证明等腰三角形两底角相等（#secref("d07-asa-criterion")）时，用到了什么"对称性"工具——那种工具在 ch3 哪里初次出现？
]
