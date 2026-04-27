#import "../../lib/theme-v2.typ": blueprint, mastery, side-hack, secref

== 本章回顾 <meta:pythagorean-radicals-trigonometric-ratios>

#blueprint[
  *知识速查卡*

  #table(
    columns: (1fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*主题*], [*一句话小结*],
    [勾股定理], [直角三角形中 $a^2 + b^2 = c^2$（$c$ 是斜边）。],
    [勾股逆定理], [三边满足 $a^2 + b^2 = c^2 =>$ 该三角形是直角三角形，$c$ 对直角。],
    [根号边长], [边长可以是 $sqrt(2)$、$sqrt(3)$、$sqrt(5)$ 等；写答案时化到最简。],
    [$45$–$45$–$90$], [边比 $1 : 1 : sqrt(2)$。],
    [$30$–$60$–$90$], [边比 $1 : sqrt(3) : 2$（$30 degree$ 对 $1$）。],
    [$sin$ / $cos$ / $tan$], [对边 / 邻边相对斜边或彼此的比；本章只用 $30 degree$/$45 degree$/$60 degree$ 三个特殊角。],
    [特殊角表], [$sin 30 degree = 1 slash 2$、$cos 30 degree = sqrt(3) slash 2$、$tan 45 degree = 1$…… 见 §2。],
    [仰角 / 俯角], [从*水平线*量起的角；对应直角三角形中的锐角。],
    [坡度 $1 : m$], [铅直 $1$、水平 $m$；坡角 $beta$ 满足 $tan beta = 1 slash m$。],
  )
]

#mastery[
  *混合自测*

  + 直角三角形两直角边 $8$、$15$。求斜边。
  + 三边为 $sqrt(5)$、$sqrt(7)$、$sqrt(12)$ 的三角形是直角三角形吗？若是，直角对着哪条边？
  + 正方形边长 $= 4$，求它的对角线长。
  + 直角三角形 $A B C$，$angle C = 90 degree$、$angle A = 60 degree$、斜边 $A B = 10$。求 $A C$、$B C$。
  + 计算 $sin 30 degree + tan 60 degree dot cos 60 degree$。
  + 在离一棵树水平距离 $= 15$ 米处仰望树顶，仰角 $30 degree$。求树高（最简根号）。
  + 一段坡道坡度 $= 1 : sqrt(3)$，坡长 $= 12$ 米。求铅直上升的高度。
  + 等边三角形边长 $= 10$。求它的高 $h$ 与面积 $S$。
  // 跨章回顾
  + 利用相似三角形（#secref("ge02-similarity-aa-ratio")）解释：为什么在直角三角形中，斜边上的高把三角形分成的两个小三角形都与原三角形相似？
  // 跨章回顾
  + 化简根式 $sqrt(12) + sqrt(27) - sqrt(48)$（#secref("cb07-square-and-square-root")），然后说明结果是否为有理数。
  + 小红解题：一个直角三角形两直角边分别为 $3$ 和 $4$，她说斜边为 $3 + 4 = 7$。她的做法对吗？找出错误并用勾股定理给出正确答案。

  *参考答案*

  + 斜边 $= sqrt(64 + 225) = sqrt(289) = 17$。
  + $5 + 7 = 12$ $=>$ $(sqrt(5))^2 + (sqrt(7))^2 = (sqrt(12))^2$，成立 $=>$ 是直角三角形，直角对着 $sqrt(12)$。
  + 对角线 $= 4 sqrt(2)$。
  + $angle A = 60 degree$ 的对边是 $B C$，为长直角边；斜边 $= 2 k => k = 5$。故 $A C$（对 $30 degree$ 的短直角边）$= 5$，$B C$（对 $60 degree$ 的长直角边）$= 5 sqrt(3)$。
  + $1 slash 2 + sqrt(3) dot (1 slash 2) = 1 slash 2 + sqrt(3) slash 2 = (1 + sqrt(3)) slash 2$。
  + 树高 $= 15 tan 30 degree = 15 dot sqrt(3) slash 3 = 5 sqrt(3)$ 米。
  + 坡度 $1 : sqrt(3) =>$ $tan beta = sqrt(3) slash 3 =>$ $beta = 30 degree$。铅直 $= 12 sin 30 degree = 6$ 米。
  + $h = (sqrt(3) slash 2) dot 10 = 5 sqrt(3)$；$S = 1 slash 2 dot 10 dot 5 sqrt(3) = 25 sqrt(3)$。
  + 设直角三角形 $A B C$，$angle C = 90 degree$，斜边 $A B$ 上的高 $C H$ 落在 $H$ 处。在 $triangle A C H$ 与 $triangle A B C$ 中：$angle A$ 公共、$angle A H C = angle A C B = 90 degree$，由 AA 得 $triangle A C H tilde triangle A B C$。同理 $triangle B C H tilde triangle B A C$（$angle B$ 公共 $+$ 直角）。
  + $sqrt(12) = 2 sqrt(3)$，$sqrt(27) = 3 sqrt(3)$，$sqrt(48) = 4 sqrt(3)$。故 $2 sqrt(3) + 3 sqrt(3) - 4 sqrt(3) = sqrt(3)$。$sqrt(3)$ 是无理数，不是有理数。
  + 错误。勾股定理：$c = sqrt(3^2 + 4^2) = sqrt(25) = 5$，不是 $3 + 4 = 7$。直角三角形的斜边是两直角边的*平方和再开方*，不是直接相加。
]

#blueprint[
  *巩固复习*

  - 回看 #secref("ge02-similarity-aa-ratio")：两个*锐角相等*的直角三角形必然相似，这正是“$sin alpha$、$cos alpha$、$tan alpha$ 只依赖 $alpha$”这件事的逻辑源头。
  - 回看 #secref("ge03-circle-basics-inscribed")：直径所对的圆周角 $= 90 degree$，所以弦 $+$ 直径总能拼出直角三角形并使用勾股。
  - 回看 #secref("cb07-square-and-square-root")：$sqrt(8) = 2 sqrt(2)$、$sqrt(12) = 2 sqrt(3)$ 等化简是本章答题的基本功。
  - 衔接下一章：两点距离公式 $sqrt((x_2 - x_1)^2 + (y_2 - y_1)^2)$ 就是坐标系里的勾股定理。
]

#side-hack[
  *☞ 高中桥 / 继续往前*

  _以下是预告，现在看不懂完全正常 — 等到高中再回来。_

  - 一般角的 $sin$、$cos$、$tan$：本章只开了 $30 degree$/$45 degree$/$60 degree$ 三个口子。高中用*单位圆*把三角比推广到任意角（甚至负角、$> 360 degree$），并建立 $sin^2 + cos^2 = 1$、和差公式、倍角公式等恒等式。
  - 正弦与余弦相关的一般三角形定理：把“直角”这个前提拿掉后，任意三角形的三边与三角依然可以由高中的两条主定理联系起来。本章只处理直角情形。
  - 三角函数图像：$sin alpha$、$cos alpha$ 作为 $alpha$ 的函数画出来就是正弦波——连接 3c 域函数与物理里的周期运动。
]
