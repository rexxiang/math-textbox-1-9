#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, lab, self-check, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 圆的基础与圆周角定理 <tool:ge03-circle-basics-inscribed>

#vocab[圆心 center][半径 radius][弦 chord][弧 arc][圆心角 central angle][圆周角 inscribed angle][Thales 定理 Thales' theorem]

#crisis[
  圆是一个没有顶点的图形，内部的角该如何度量？三角形用三个顶点、三条边就能说完，圆却要用"所有到一点等距的点"这样一个*无穷多点*的条件。同一条弧对应的角，站在圆心看和站在圆上看，读出来的是同一个数吗？

  *本节要把圆从“一个很圆的形状”升级为一套可以做证明的语言——定义圆心、半径、弦、弧；把同一段弧对应的两类角（圆心角、圆周角）连接起来；并在最后拿到 Thales 定理这块放之四海的敲门砖。*
]

#tryit[
  圆 $O$ 中，$angle A O B = 80 degree$。求弧 $A B$（劣弧）所对的圆周角。
]

#discovery[
  圆心角是 $80°$，那圆周角会是多少？

  你可能会想：圆心角和圆周角"面对同一段弧"，也许它们互补？那就是 $180° - 80° = 100°$ 吧？

  让我们验证一下。取圆心角 $angle A O B = 60°$，在圆上两个不同位置 $C_1$、$C_2$ 量一量圆周角……结果都是 $30°$，而不是猜测的 $180° - 60° = 120°$。

  三角形内角和只能说"三个角加起来 $180°$"，根本无法直接比较圆心角和圆周角的大小关系；凭"互补"的直觉猜测没有任何几何依据，多画几张图，比例只是越看越像，却始终说不准是几比几。

  如图 @fig-thales-diameter-right-angle 所示。
  #figure(
    cetz.canvas(length: 1cm, {
      import cetz.draw: *
      circle((0, 0), radius: 2.2, stroke: 0.6pt)
      content((0, -0.25), $O$)
      circle((0, 0), radius: 0.05, fill: black)
      // diameter endpoints A, B
      let A = (-2.2, 0)
      let B = (2.2, 0)
      line(A, B, stroke: 0.4pt + luma(140))
      content((-2.5, 0), $A$)
      content((2.5, 0), $B$)
      // inscribed angle at C on circle
      let C = (1.5, 1.6)
      content((1.7, 1.85), $C$)
      line(A, C, stroke: 0.6pt)
      line(C, B, stroke: 0.6pt)
      // another inscribed angle at D
      let D = (-1.0, 1.96)
      content((-1.25, 2.2), $D$)
      line(A, D, stroke: 0.4pt + luma(160))
      line(D, B, stroke: 0.4pt + luma(160))
      // radius
      line((0, 0), C, stroke: 0.3pt + luma(160))
    }),
    caption: [同一条直径 $A B$ 所对的圆周角 $angle A C B$、$angle A D B$ 都是直角（Thales）。]
  ) <fig-thales-diameter-right-angle>

  *核心对象*

  给定平面一点 $O$ 和长度 $r > 0$：到 $O$ 距离等于 $r$ 的所有点组成一个*圆*，$O$ 叫*圆心*，$r$ 叫*半径*。

  - *弦*：圆上两点之间的线段。
  - *直径*：经过圆心的弦；长度 $= 2 r$，是最长的弦。
  - *弧*：圆周上两点间的一段圆周曲线（一对端点把圆周分成*优弧*与*劣弧*）。
  - *半圆*：直径把圆分成两条相等的弧，每条叫*半圆*。

  *两类角*

  - *圆心角*：顶点在圆心的角，两条边是半径。圆心角 $angle A O B$ 的大小约定 $=$ 它所对的弧 $A B$ 的度数（所以圆周度数 $360 degree$ 就是一圈）。
  - *圆周角*：顶点在圆上的角，两条边是弦。当顶点 $C$ 在圆上，两边分别过 $A$、$B$，记 $angle A C B$ 为弧 $A B$（不含 $C$ 的那一段）所对的圆周角。

  *同弧同角*

  给定一段弧，站在圆上任一位置看它所得的圆周角*都相等*。

  *圆周角定理*

  同一段弧所对的圆周角 $=$ 同一段弧所对的圆心角的*一半*。

  记作：若 $angle A O B$ 与 $angle A C B$ 都对着*同一段*弧 $A B$（$C$ 位于该弧同侧的圆弧上），则

  $ angle A C B = 1 / 2 angle A O B. $

  如图 @fig-inscribed-angle-half-central 所示。
  #figure(
    cetz.canvas(length: 1cm, {
      import cetz.draw: *
      let r = 2.2
      circle((0, 0), radius: r, stroke: 0.6pt)
      circle((0, 0), radius: 0.05, fill: black)
      content((0.25, -0.25), $O$)
      // Arc endpoints A, B
      let A = (-2.0, -0.92)
      let B = (1.5, -1.6)
      content((-2.3, -1.1), $A$)
      content((1.75, -1.85), $B$)
      // Central angle
      line((0, 0), A, stroke: 0.5pt + rgb("#B71C1C"))
      line((0, 0), B, stroke: 0.5pt + rgb("#B71C1C"))
      arc((0, 0), start: -47deg, stop: -155deg, radius: 0.6, stroke: 0.5pt + rgb("#B71C1C"))
      content((-0.4, -0.75), text(7pt, fill: rgb("#B71C1C"))[$2 alpha$])
      // Inscribed angle at C on major arc
      let C = (0.5, 2.15)
      content((0.5, 2.5), $C$)
      line(C, A, stroke: 0.6pt + rgb("#1976D2"))
      line(C, B, stroke: 0.6pt + rgb("#1976D2"))
      arc(C, start: -70deg, stop: -124deg, radius: 0.55, stroke: 0.5pt + rgb("#1976D2"))
      content((0.15, 1.7), text(7pt, fill: rgb("#1976D2"))[$alpha$])
    }),
    caption: [圆周角 $angle A C B = alpha$ 恰好是同弧圆心角 $angle A O B = 2 alpha$ 的一半。]
  ) <fig-inscribed-angle-half-central>

  *证明思路*（圆心在角内的情形）：连 $O C$。$O A = O C$（半径）$=>$ $triangle O A C$ 等腰，$angle O A C = angle O C A$；外角 $angle A O D = 2 angle O C A$（其中 $D$ 是 $O C$ 延长交 $A$ 侧的辅助点），对 $B$ 侧同理。把两段加起来即得。另外两种位置关系（圆心在角外或角的一条边上）由等腰三角形外角重复同一套推理。

  *两条直接推论*

  - *Thales 定理*：直径所对的圆周角 $= 90 degree$。证：直径对应的圆心角 $= 180 degree$，圆周角 $= 1 slash 2 times 180 degree = 90 degree$。
  - *同弧等角*：同一弧所对的所有圆周角相等（因为它们共享同一个圆心角）。
]

#self-check[
  停一下——读到这里你已经看到了"圆心角""圆周角""弧"三种相关角。
  + 哪两种角"等弧对相等"是显然的，哪一种需要证明？
  + 用自己的话写一句：圆周角和它对应的圆心角的关系是什么？
]

#side-hack[
  “圆里怎么算角”的通用流程：

  + 先看角的*顶点*在哪：圆心还是圆周？
  + 若顶点在圆周，把它对应的弧找出来；
  + 用“圆周角 $= 1 slash 2$ 圆心角”直接换算；或者利用“同弧等角”搬到一个更好算的位置；
  + 若题目条件里有*直径*，第一反应是 Thales：直径所对圆周角 $= 90 degree$。
]

#lab[
  *圆周角实测：同弧上的角真的都一样吗？*

  *材料*：圆规、直尺、量角器、白纸。

  *步骤*：

  + 用圆规在纸上画一个半径约 $5$ cm 的圆，标出圆心 $O$。
  + 在圆上取两个固定点 $A$、$B$（它们确定一段弧）。用直尺连 $O A$、$O B$，用量角器量出圆心角 $angle A O B$，记录。
  + 在*同侧*弧上（不含 $A$、$B$ 的那段）任取 $5$ 个点 $C_1, C_2, C_3, C_4, C_5$。对每个点，连 $A C_i$、$B C_i$，量出圆周角 $angle A C_i B$，记录到表格。
  + 比较 $5$ 个圆周角的度数——它们相等吗？它们和圆心角 $angle A O B$ 有什么数量关系？
  + *额外挑战*：在弧的*另一侧*取一个点 $D$，量 $angle A D B$。它和之前的圆周角一样吗？和圆心角的关系又是什么？

  *观察*：
  - 同弧上的圆周角是否都相等？
  - 圆周角大约是圆心角的几分之几？
  - 如果 $A B$ 恰好是直径，圆周角会变成多少度？亲手量一量！
]

#tryit[
  $A B$ 是圆 $O$ 的直径，$C$ 在圆上。已知 $angle B A C = 35 degree$。求 $angle A C B$ 与 $angle A B C$。
]

#history-note[
  泰勒斯（Thales of Miletus，约前 $624$—约前 $546$ 年）据说是第一个用严格论证证明"*半圆上的圆周角必为直角*"的人——这后来被称作 *Thales 定理*，是古希腊几何第一个被明确记录下来的"定理"。约前 300 年，欧几里得（Euclid）在《几何原本》第三卷进一步系统研究了圆的性质，证明了圆周角等于同弧圆心角的一半（命题 III.20）。而在中国，祖冲之（429–500 年）将圆周率精确计算到小数点后第七位（$3.1415926$ 到 $3.1415927$ 之间），这一纪录在世界上保持了近千年。
]

#blueprint[
  *工具一：圆与相关元素的定义*

  - 圆 $=$ “到一点等距的点的集合”；圆心、半径、弦、直径、弧、半圆如上。
  - 关键恒等式：所有半径相等；直径 $= 2 r$。

  *工具二：圆周角定理*

  同一弧所对的圆周角 $= 1 slash 2$ 对应圆心角；等价写法：

  - *同弧同角*：同一弧所对的任意两个圆周角相等。
  - *同圆弧角关系*：同弧 / 等弧对应相等的圆心角和圆周角。

  *常见用法*

  + 已知圆心角求圆周角：直接除 $2$。
  + 已知一个圆周角求其他同弧圆周角：直接相等。
  + 已知一个圆周角求圆心角：乘 $2$。

  *工具三：Thales 定理*

  若 $A B$ 是圆 $O$ 的直径，$C$ 在圆上且 $C != A$、$B$，则 $angle A C B = 90 degree$。

  反之亦成立：若 $angle A C B = 90 degree$，则 $C$ 在以 $A B$ 为直径的圆上。

  *综合例*：如图（同上），$A B$ 是圆 $O$ 直径，$C$、$D$ 在圆上且 $A D = B C$。证明 $angle A C B = angle B D A$，并求它们的大小。

  *证*：$A B$ 是直径 $=>$ 由 Thales，$angle A C B = angle A D B = 90 degree$。两者都等于 $90 degree$，自然相等。

  *综合例二*：圆 $O$ 中 $angle A O B = 120 degree$，$C$ 在优弧上，$D$ 在劣弧上（都不含端点）。求 $angle A C B$ 与 $angle A D B$。

  解：$C$ 站在优弧上看的是*劣弧* $A B$，$angle A C B = 1 slash 2 times 120 degree = 60 degree$。
  $D$ 站在劣弧上看的是*优弧* $A B$，其圆心角 $= 360 degree - 120 degree = 240 degree$，故 $angle A D B = 120 degree$。
  核对 $60 degree + 120 degree = 180 degree$，符合“圆内接四边形对角互补”的先兆——这将在第 3 节被系统化为圆内接四边形性质。
]

#pitfall[
  *高频错误*

  ✗ 把“圆心角”和“圆周角”的一半关系反了
  → ✓ *圆周角 $=$ 半个圆心角*。顶点在圆心的那个角比较“大”。
  只记住“一半”这个数字，没想清楚“谁是谁的一半”——结果反过来用了。

  ✗ 看错对应的弧（优弧 vs 劣弧）
  → ✓ 顶点 $C$ 站在圆上时看到的是“不含 $C$”的那段弧。绕圆一圈的两段弧对应的两个圆心角加起来是 $360 degree$，不是 $180 degree$。

  ✗ 一看到 $90 degree$ 就以为是 Thales；一看到直径就以为对边是 $90 degree$
  → ✓ Thales 要求“直径所对的圆周角”。角的*顶点*必须在圆上。若顶点不在圆上（例如是圆外一点），直径不再能直接给出 $90 degree$。

  ✗ 把圆心角当作圆周角来写比例
  → ✓ 只有*同一段*弧的圆周角彼此相等、且是圆心角的一半；不同弧的角不能直接比。
]

#mastery[
  *基础*

  + 圆心角 $130 degree$，求同弧所对的圆周角。

  + $A B$ 是圆 $O$ 直径，$C$ 在圆上，$angle A B C = 28 degree$。求 $angle A C B$ 与 $angle B A C$。

  + 同一段弧所对两个圆周角为 $4 x degree$ 与 $(x + 30) degree$。求 $x$。

  *应用*

  + 圆 $O$ 中 $A B$、$C D$ 是两条相交弦，交点 $P$ 在圆内。$angle A O C = 80 degree$、$angle B O D = 60 degree$。求 $angle A P C$。（提示：$angle A P C$ 是 $triangle A P D$（或 $triangle B P C$）的外角；$angle P A D + angle A D P$ 由 $1 slash 2 times$ 对应弧度给出。）

  + 圆 $O$ 的半径为 $5$，弦 $A B = 6$。求 $O$ 到 $A B$ 的距离（弦心距）。

  + $A B$ 是圆 $O$ 直径，$C$ 在圆上，$A C = 6$、$B C = 8$。求直径 $A B$。

  *挑战*

  + 证明：若四点 $A$、$B$、$C$、$D$ 满足 $angle A C B = angle A D B$ 且 $C$、$D$ 在 $A B$ 同侧，则它们共圆。（圆周角定理的逆。）

  + 圆 $O$ 中三条弦 $A B$、$A C$、$A D$ 按顺序排开，对应弧度依次为 $80 degree$、$60 degree$、$100 degree$。求 $angle B A C$、$angle C A D$、$angle B A D$。

  + 在半径 $= r$ 的圆上，任取三个不共线的点 $A$、$B$、$C$。证明：三角形 $A B C$ 的外接圆唯一且半径 $= r$。（与下一节“外接圆”做铺垫。）

  + *[反直觉]*：判断："圆内两条不同的弦，如果它们各自的*中点都恰好是圆心 $O$*，那么这两条弦平行。" 这条对吗？请给反例并改正——再用 #secref("tool:ge02-parallel-line-angles") 的"垂径定理"指出*真正*能保证平行的条件。

  + *[构造题]*：构造一个圆 $omega$ 与一条直线 $ell$，让 $ell$ *恰好与 $omega$ 相交于两点*；再在 $ell$ 上取一点 $P$，使 $P$ 到 $omega$ 上某弦中点的距离最小。给出几何构造步骤。

  + *[找 Bug]*：小张写："半径 $r = 5$ 的圆中，弦长 $A B = 6$，则弦心距 $d$ 等于 $sqrt(r + A B) = sqrt(11) approx 3.32$。" 他错在哪？正确弦心距用什么定理？数值是？

  #answer-cut[

  *基础*
  + $65 degree$（圆周角定理）。
  + Thales：$angle A C B = 90 degree$（泰勒斯定理）；$angle B A C = 90 degree - 28 degree = 62 degree$（三角形内角和）。
  + 同弧圆周角相等：$4 x = x + 30 => x = 10$。

  *应用*
  + 弧 $A C$ 度数 $= 80 degree$，弧 $B D$ 度数 $= 60 degree$。$angle A P C$（两弦相交角）$= 1 slash 2 ("弧 " A C + "弧 " B D) = 1 slash 2 (80 degree + 60 degree) = 70 degree$。
  + 过 $O$ 作 $O M perp A B$ 于 $M$，由垂径定理 $M$ 是 $A B$ 中点，$A M = 3$。$triangle O M A$ 为直角三角形，$O A = r = 5$，$A M = 3$，由直角三角形三边关系 $O M = sqrt(r^2 - A M^2) = sqrt(25 - 9) = 4$。（☞ 这条三边关系就是下一章要正式证明的*勾股定理*；本题先用它当已知结论。）
  + Thales：$triangle A C B$ 直角 $=>$ 直径 $A B$ 是斜边。$A C = 6$、$B C = 8$，由直角三角形三边关系 $A B = sqrt(36 + 64) = 10$。
  + 由 $angle A C B = angle A D B$ 及 $C$、$D$ 同侧，设 $A B$ 与 $C$ 决定的圆为 $omega$；若 $D$ 不在 $omega$ 上，则 $angle A D B$ 与 $angle A C B$ 的比较可由 $D$ 在 $omega$ 内或外的判别给出矛盾（经典“圆周角大小与弦外点关系”）。
  + $angle B A C = 30 degree$、$angle C A D = 50 degree$、$angle B A D = 80 degree$。
  + 三点不共线 $=>$ 可作 $A B$、$B C$ 的中垂线，它们的交点 $O'$ 到三点等距 $=>$ 唯一圆过三点。若要求半径 $= r$，须 $A$、$B$、$C$ 本来就在半径 $r$ 的圆上，外接圆即该圆。（为下节外接圆作铺垫。）
  + 错。"中点恰好是圆心 $O$"等价于"该弦经过圆心 $O$"——也就是直径。两条不同的直径都经过 $O$，必相交于 $O$，所以*不平行*。正确说法："两条平行弦的中点连线一定经过圆心 $O$，且这条连线垂直于两弦"——这正是 #secref("tool:ge02-parallel-line-angles") 与垂径定理的组合。
  + 例：取圆 $omega$ 心 $O$、半径 $5$；直线 $ell$ 距 $O$ 距离 $3$（小于半径），由勾股 $ell$ 与 $omega$ 的两交点距离为 $2 sqrt(5^2 - 3^2) = 8$，构成弦 $A B$。$P$ 取 $A B$ 上的中点 $M$（即 $O$ 在 $ell$ 上的投影），到 $A B$ 中点距离为 $0$，是最小值。这一构造在《几何与证明》后续章会反复使用。
  + 错。"弦心距"是从圆心 $O$ 到弦 $A B$ 的*垂直距离*，由垂径定理 $d^2 + (A B / 2)^2 = r^2$。代入：$d = sqrt(r^2 - (A B / 2)^2) = sqrt(25 - 9) = 4$。他把"垂径定理"误用成"加减开方"——少了平方且 $A B$ 没有取一半。
  ]
]
