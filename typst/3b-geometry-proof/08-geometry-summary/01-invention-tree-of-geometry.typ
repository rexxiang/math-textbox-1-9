#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

=== 几何分支的知识地图 <meta:ge-invention-tree>

#blueprint[
  *主干：从“图形直观”到“坐标化 & 变换”*

  几何由一条主干生长，每一章都回答*上一章解决不了的那件事*：

  + *图形直观*（#secref("pf06-polygons-and-circle")、#secref("pf06-simple-solids")、#secref("pf07-angles")、#secref("pf08-triangles-angle-sum")）：什么是点、线、面、角、多边形、圆；三角形内角和 $= 180 degree$。
  + *全等与对应*（#secref("ge01-congruence-correspondence")）：把“两图相等”从图感升级为*可写下来的对应关系*。
  + *全等判定家族*（#secref("ge01-sss-sas") / #secref("ge01-asa-aas-ssa")）：SSS / SAS / ASA / AAS——三条信息就能判一次全等。
  + *证明链的书写*（#secref("ge01-two-step-proof-chain")）：把“已知 → 推出 → 结论”落成可追溯的两步链。
  + *平行线与三类角*（#secref("ge02-parallel-line-angles")）：同位角、内错角、同旁内角把“平行 $<=>$ 角相等 / 互补”串起来。
  + *相似的 AA 判定与相似比*（#secref("ge02-similarity-aa-ratio")）：从“全等”松到“形状相同”——只看比例不看大小。
  + *放缩与比例尺*（#secref("ge02-scale-and-measurement")）：相似给出“同比放缩”的统一语言——模型、地图、图纸共用。
  + *四边形家族*（#secref("ge03-quadrilateral-family")）：把四边形按“加约束”排成一棵继承树，从平行四边形到正方形。
  + *圆基础与圆周角定理*（#secref("ge03-circle-basics-inscribed")）：圆心角、圆周角、Thales——把“圆”变成可证明的结构。
  + *内接 / 外接圆*（#secref("ge03-inscribed-circumscribed")）：三角形外心 / 内心、正多边形 $R^2 = r^2 + (a slash 2)^2$。
  + *勾股定理 & 根式边长*（#secref("ge04-pythagorean")）：直角三角形三边一条公式；接纳 $sqrt(2)$、$sqrt(3)$、$sqrt(5)$ 这类合法长度。
  + *特殊直角三角形 & 三角比*（#secref("ge04-special-right-triangles")）：$30$–$60$–$90$、$45$–$45$–$90$ 的固定边比；$sin$、$cos$、$tan$ 的定义（这部分只处理特殊角）。
  + *仰角 / 俯角 / 坡度*（#secref("ge04-elevation-slope")）：实际测量落成直角三角形建模。
  + *刚体变换族*（#secref("ge05-rigid-transforms")）：平移 / 旋转 / 反射同属保距变换；两图全等 $<=>$ 存在一组刚体变换叠合。
  + *坐标几何 & 变换公式*（#secref("ge05-coordinate-transforms")）：距离、中点、三类变换全写成坐标公式。
  + *立体三视图*（#secref("ge05-orthographic-views")）：立体 $<->$ 纸上三张平面图；长方体表面积 $= 2 times$ 三视图面积之和。
]

#blueprint[
  *知识地图表：每一步因何被发明出来*

  #table(
    columns: (1fr, 1.5fr, 1.5fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*工具*], [*被发明的理由*], [*下一步带来什么*],
    [全等的对应关系 #secref("ge01-congruence-correspondence")], [“看起来像”不能写进证明], [字母顺序 $=$ 对应表],
    [全等判定 SSS/SAS/ASA/AAS #secref("ge01-sss-sas") / #secref("ge01-asa-aas-ssa")], [要用“最少信息”确定全等], [为所有“找全等”类证明奠基],
    [证明链 #secref("ge01-two-step-proof-chain")], [口头推理不可追溯], [书面证明有统一格式],
    [平行线与三类角 #secref("ge02-parallel-line-angles")], [角相等 / 互补需要一条“通用翻译”], [后续相似、圆、坐标全用得到],
    [相似（AA 判定） #secref("ge02-similarity-aa-ratio")], [只有“全等”无法处理不同尺寸但同形的图], [边比就是新的“长度语言”],
    [放缩与比例尺 #secref("ge02-scale-and-measurement")], [地图、模型需要“同比复制”的显式语言], [比例在图形之间自由搬迁],
    [四边形家族 #secref("ge03-quadrilateral-family")], [四边形太多，需要一棵继承树], [每加一条约束就打包一串性质],
    [圆周角定理 #secref("ge03-circle-basics-inscribed")], [圆心角、圆周角要一条主定理串起来], [弦、弧、角的换算全靠它],
    [外接 / 内切圆 #secref("ge03-inscribed-circumscribed")], [“谁在外谁在内”要一个通用视角], [正多边形的 $R$、$r$、边长统一],
    [勾股定理 #secref("ge04-pythagorean")], [直角三角形三边要一条通用式], [根号边长合法化],
    [$30$/$45$/$60$ 三角比 #secref("ge04-special-right-triangles")], [特殊角的边比一次定下来直接用], [$sin$/$cos$/$tan$ 登场],
    [仰角 / 俯角 / 坡度 #secref("ge04-elevation-slope")], [实际测量要“角 + 水平距离”换算高度], [几何真正走进生活],
    [刚体变换族 #secref("ge05-rigid-transforms")], [“全等”需要一个运动学解释], [平移 / 旋转 / 反射同属保距],
    [坐标几何 & 变换公式 #secref("ge05-coordinate-transforms")], [几何要嵌进代数], [距离、中点、变换全公式化],
    [三视图 #secref("ge05-orthographic-views")], [立体怎样画在纸上], [工程制图、$3$D 直觉的入口],
  )
]

#side-hack[
  *知识地图的三组横向联系*

  - *全等 → 相似*：把“三条边相等”松到“三条边按同一比例”即得相似。AA 判定是其中最省事的一版（两角对应相等 $=>$ 第三角自动对应相等）。
  - *勾股 ↔ 坐标距离*：两点距离公式 $sqrt((Delta x)^2 + (Delta y)^2)$ 就是勾股。坐标系把几何问题翻成代数问题，但本质长度来自勾股。
  - *全等 ↔ 刚体变换*：两图全等 $<=>$ 存在一组刚体变换让它们叠合。这是“全等”的*运动学*再解释。

  *一条核心阅读线*

  如果你只能挑出几何里最抗遗忘的两件事，建议挑：
  - “两图全等 $<=>$ 对应边对应角相等 $<=>$ 可以用一组刚体变换叠合”（#secref("ge01-congruence-correspondence") $+$ #secref("ge05-rigid-transforms")）；
  - “直角三角形：$a^2 + b^2 = c^2$；特殊角给出定边比”（#secref("ge04-pythagorean") $+$ #secref("ge04-special-right-triangles")）。

  前者是证明类题目的骨，后者是计算类题目的骨。
]
