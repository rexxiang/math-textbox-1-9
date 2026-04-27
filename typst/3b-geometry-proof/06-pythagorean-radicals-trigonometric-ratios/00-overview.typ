#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

== 勾股·根式·三角比 <ch:pythagorean-radicals-trigonometric-ratios>

四千多年前，埃及工匠在尼罗河边拉起一根打了 12 个等距结的绳子，按 3-4-5 折成三角形——每次都能得到一个精确的直角。他们并不知道为什么管用，但你马上就会知道。这一章的主角，就是直角三角形三条边之间那条惊人的等式。

#blueprint[
  *难度*：★★★★★ \
  *核心问题*：直角三角形的三条边到底有什么“能算”的规律？边长必须是整数吗——$sqrt(2)$、$sqrt(3)$ 这类无理长度从哪冒出来？对于 $30 degree$、$45 degree$、$60 degree$ 这几个“常用角”，要不要每次都重算？ \
  *需要先会*：#secref("pf07-perimeter-area")、#secref("pf08-triangles-angle-sum")、#secref("ge01-sss-sas")、#secref("ge02-similarity-aa-ratio")、#secref("ge03-circle-basics-inscribed")、#secref("cb06-square-and-square-root")。 \
  *本章在全书的位置*：几何分支第 $6$ 章——把“直角 + 相似”落成一条可计算的边长公式（勾股定理），再把它定格到两族*特殊直角三角形*上，得出 $30 degree$/$45 degree$/$60 degree$ 的三角比。 \
  *忘了可以回到*：平方根与根式化简请回 #secref("cb06-square-and-square-root")；相似判定请回 #secref("ge02-similarity-aa-ratio")。
]

#side-hack[
  *本章路线*

  + §1 先证*勾股定理*：直角三角形中 $a^2 + b^2 = c^2$；再证*勾股逆定理*：三边平方关系一旦成立，这个三角形必是直角三角形；最后接受“边长可以是 $sqrt(2)$、$sqrt(3)$、$sqrt(5)$”这一新常态。
  + §2 把直角三角形定格到两族*特殊角度*：$45 degree$–$45 degree$–$90 degree$ 与 $30 degree$–$60 degree$–$90 degree$。它们的*边长比*是固定的，由此引出 $sin$、$cos$、$tan$ 三个比值——本章只处理这几个特殊角。
  + §3 用前两节处理仰角 / 俯角与坡度 / 坡角的实际测量问题。所有题目都只需特殊角。

  *这章通向哪里*

  - 第 7 章坐标几何：两点距离公式 $sqrt((x_2 - x_1)^2 + (y_2 - y_1)^2)$ 就是勾股定理。
  - 3c 域函数分支：一次函数的倾斜度由 $tan$ 连回坐标斜率。
  - 高中三角：本章只开了 $3$ 个特殊角的口子；一般角的 $sin$、$cos$ 由单位圆统一起来，是高中的工作。
]

#side-hack[
  *入章自检*——以下几道小题只用前面章节学过的知识。如果卡住，请先按上面"忘了可以回到"的指引补一补。

  + $sqrt(16) = ?$
  + 两个三角形满足 AA 相似，它们的对应边之比一定相等吗？
  + 一个三角形的三个内角之和是多少度？
]

#include "01-pythagorean-theorem-and-radical-lengths.typ"
#include "02-special-right-triangles-and-trig-ratios.typ"
#include "03-applications-elevation-depression-and-slopes.typ"
