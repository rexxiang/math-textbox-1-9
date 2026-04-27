#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref, answer-cut
#import "../../lib/diagram-packages.typ": cetz

=== 仰角·俯角·坡度的实际测量 <tool:ge04-elevation-slope>

#vocab[仰角 angle of elevation][俯角 angle of depression][坡角 slope angle][坡度（比） slope ratio][水平距离][铅直距离]

#crisis[
  要测一座塔的高度，没法爬上去拿尺子量。要知道一段山坡“陡不陡”，光靠眼睛看不够客观。工程师、测量员、也包括真正的登山者，都需要把“从某处看上去的角度”换算成“真实的距离或高度”。

  *怎么把“在地面观察到的一个角”加上“一条测得的水平距离”，转成真正要求的高度或坡长？*
]

#discovery[
  *仰角与俯角的定义*

  #figure(
    cetz.canvas(length: 1cm, {
      import cetz.draw: *
      // ground line
      line((-0.5, 0), (6, 0), stroke: 0.4pt)
      // observer at O
      circle((0, 0), radius: 0.08, fill: black)
      content((-0.25, -0.3), $O$)
      // tower
      line((5, 0), (5, 3), stroke: 0.6pt)
      content((5.3, 0), $B$)
      content((5.3, 3.2), $A$)
      // sight line from O to A
      line((0, 0), (5, 3), stroke: 0.5pt + luma(120))
      // horizontal dashed from observer
      line((0, 0), (4.5, 0), stroke: 0.4pt + rgb("#B71C1C"))
      content((2.5, -0.35), [水平视线])
      // elevation angle arc
      content((1.4, 0.35), [仰角 $alpha$])
      // height label
      content((5.4, 1.5), [高 $h$])
      content((2.5, 0.2), [])
      // horizontal distance
      content((2.5, 3.4), [视线])
    }),
    caption: [观察者在 $O$ 向塔顶 $A$ 看：仰角 $alpha$ 夹在*水平视线*与*视线 $O A$* 之间。高 $h = O B tan alpha$（本章要求 $alpha$ 取 $30 degree$/$45 degree$/$60 degree$ 之一）。]
  )

  - *仰角*：由*水平视线*向*上*转到视线时所扫出的角。
  - *俯角*：由*水平视线*向*下*转到视线时所扫出的角。

  无论仰角还是俯角，都是*从水平线量起*，而不是从铅直线量起——这是最常见的翻车点。

  *用特殊直角三角形解题*

  在上图中 $triangle O B A$ 是直角三角形：$angle O B A = 90 degree$。已知仰角 $alpha$、水平距离 $O B$，要求高度 $h = A B$。

  $ tan alpha = frac(A B, O B) => A B = O B tan alpha. $

  若 $alpha in {30 degree, 45 degree, 60 degree\}$，就能直接代入上节的特殊值。

  *坡度与坡角*

  一段斜坡的*坡角 $beta$* 是斜坡与水平面的夹角；*坡度*是“铅直上升 / 水平前进”的比值，即 $tan beta$。

  - 坡度写成 $1 : m$ 的形式时，指*铅直 $1$、水平 $m$*，故 $tan beta = 1 slash m$。
  - 坡长（斜坡本身长度）$= sqrt("水平"^2 + "铅直"^2)$——又是勾股定理。

  #figure(
    cetz.canvas(length: 1cm, {
      import cetz.draw: *
      // Ground line
      line((-0.5, 0), (7, 0), stroke: 0.4pt)
      // Slope
      let base = 5
      let rise = 2.5
      line((1, 0), (1 + base, 0), stroke: 0.7pt + rgb("#388E3C"))
      line((1 + base, 0), (1 + base, rise), stroke: 0.7pt + rgb("#1976D2"))
      line((1, 0), (1 + base, rise), stroke: 0.8pt + rgb("#B71C1C"))
      // Right angle mark
      rect((1 + base - 0.3, 0), (1 + base, 0.3), stroke: 0.3pt, fill: none)
      // Slope angle arc
      arc((1, 0), start: 0deg, stop: 27deg, radius: 1.0, stroke: 0.5pt)
      content((2.3, 0.25), text(8pt)[$beta$])
      // Labels
      content((3.5, -0.35), text(8pt, fill: rgb("#388E3C"))[水平距离])
      content((6.7, 1.25), text(8pt, fill: rgb("#1976D2"))[铅直])
      content((2.5, 1.6), text(8pt, fill: rgb("#B71C1C"))[坡长])
      // Ratio label
      content((3.5, -0.85), text(8pt)[坡度 $= tan beta =$ 铅直 $\/$ 水平])
    }),
    caption: [坡度 $= tan beta =$ 铅直上升 $\/$ 水平距离；坡长由勾股定理求出。]
  )

  *综合例*：仰角 $45 degree$、水平距离 $80$ 米，看塔顶。塔高 $= 80 tan 45 degree = 80$ 米。
]

#side-hack[
  *仰 / 俯角题目的“三条骨”*

  + 把题中的*水平线*画出来（通常是地面或观察者的平行视线）。
  + 把*仰角 / 俯角*标在*水平线*与*视线*之间，不要标到铅直线上。
  + 看看缺的是斜边、对边还是邻边，再对应写 $sin$、$cos$、$tan$。

  题目要求都落在 $30 degree$/$45 degree$/$60 degree$ 上时，直接查 §2 的三角比表。
]

#tryit[
  + 观察者水平望向塔底，然后抬头看塔顶，仰角 $45 degree$。已知观察者到塔底的水平距离 $= 60$ 米。求塔高。
  + 从一楼窗口水平向外看一处凹坑，俯角 $30 degree$，视线长（从窗口到凹坑）$= 12$ 米。求窗口高出凹坑的铅直距离。
]

#history-note[
  中国古代的《九章算术》（成书约前 1 世纪）第九章"勾股"收录了 24 道测高测远问题。三国时期数学家刘徽（约 225–295 年）在为《九章》作注时，进一步写出了《海岛算经》，用"重差术"——在两个不同地点各测一次仰角，就能算出海岛的高度和距离——这比欧洲的三角测量早了一千多年。在地上量一段，仰头测一个角，就能得到塔、山、河对岸建筑的高度或距离——数学第一次成为"可以帮人看到自己看不到的地方"的工具。
]

#blueprint[
  *工具一：仰角与俯角*

  - 仰角 $alpha$：水平视线 $->$ 向上 $->$ 视线；$alpha in (0 degree, 90 degree)$。
  - 俯角 $alpha$：水平视线 $->$ 向下 $->$ 视线；$alpha in (0 degree, 90 degree)$。

  在直角三角形模型里（塔底 $B$、塔顶 $A$、观察者 $O$，$angle O B A = 90 degree$）：

  $ tan alpha = frac(A B ("铅直"), O B ("水平")), quad sin alpha = frac(A B, O A ("视线")), quad cos alpha = frac(O B, O A). $

  *工具二：坡度与坡角*

  - 坡角 $beta$：斜坡与水平面的夹角。
  - 坡度（比）$i$：$i = "铅直上升" slash "水平距离" = tan beta$。
  - 坡度记作 $1 : m$，意思是铅直 $1$、水平 $m$，故 $tan beta = 1 slash m$。

  *工具三：测量题的“三角建模”通用步骤*

  + 画出水平线、视线 / 坡面、铅直线，组成直角三角形；
  + 标出已知的角（仰角 / 俯角 / 坡角）与已知的边；
  + 选 $sin$、$cos$、$tan$ 中最匹配的一个；
  + 本章中角都落在特殊角上 $=>$ 直接查 §2 的表代入；
  + 检查答案单位与物理合理性（长度 $>= 0$、俯角不会“给出负高度”等）。

  *综合例*：一棵树斜对着一段 $60$ 米长的水平草地。从树底水平延伸 $60$ 米站定，仰角量得 $30 degree$。求树高。

  *解*：$tan 30 degree = h slash 60 => h = 60 dot sqrt(3) slash 3 = 20 sqrt(3)$ 米 $approx 34.64$ 米。
]

#pitfall[
  *高频错误*

  ✗ 仰角标到*铅直线*一侧，数字相当于把互余的角用错了
  → ✓ 仰角永远从*水平线*量起。若题中给的是“与铅直方向的夹角”，要先用 $90 degree - alpha$ 换成与水平线的夹角再用。

  ✗ 坡度 $1 : sqrt(3)$ 被理解成“每走 $1$ 升 $sqrt(3)$”
  → ✓ 坡度 $1 : m$ 默认“铅直 $1$、水平 $m$”。故 $1 : sqrt(3)$ 的坡角 $beta$ 满足 $tan beta = 1 slash sqrt(3) = sqrt(3) slash 3$，即 $beta = 30 degree$（平缓），不是 $60 degree$（陡）。

  ✗ 把俯角加到仰角上当成“合角 $= 90 degree$”
  → ✓ 俯角本身就是角的“绝对值”，一般跟仰角不互余。是否互余取决于视线与水平线的几何关系，不能默认。

  ✗ 答案带根号但忘了化简
  → ✓ $sqrt(75) = 5 sqrt(3)$、$80 slash sqrt(3) = 80 sqrt(3) slash 3$。本章默认写到最简。
]

#mastery[
  *基础*

  + 仰角 $45 degree$、水平距离 $= 20$ 米，求塔高。
  + 俯角 $60 degree$、水平距离 $= 10$ 米，求观察者高出目标的铅直距离。
  + 坡度为 $1 : 1$ 的斜坡，坡角是多少？

  *应用*

  + 仰角 $30 degree$、水平距离 $= 90$ 米，求塔高（写到最简根号）。
  + 一段斜坡坡角 $= 30 degree$，水平距离 $= 12$ 米。求它的铅直上升与坡长。
  + 在离旗杆底 $10$ 米处测得旗杆顶仰角 $60 degree$。求旗杆高。

  *挑战 ☞ 选做*

  + 从一座高楼顶楼水平望出去，俯角 $45 degree$ 正好瞄到地面一处井盖。已知楼高 $= 40$ 米。求井盖到楼底的水平距离。
  + 一位测量员先在 $A$ 处测得山顶仰角 $30 degree$；他*向山脚方向走 $50$ 米*到 $B$ 处，再测得山顶仰角 $60 degree$。设山高 $h$。求 $h$。
  + 一段土坝高 $4$ 米、坡角 $45 degree$。求它的坡长与水平*底脚*宽度。

  #answer-cut[

  *基础*
  + 塔高 $= 20 tan 45 degree = 20$ 米（仰角/俯角模型）。
  + 铅直距离 $= 10 tan 60 degree = 10 sqrt(3)$ 米（仰角/俯角模型）。
  + 坡度 $1 : 1 =>$ $tan beta = 1 =>$ $beta = 45 degree$（坡度定义）。

  *应用*
  + 塔高 $= 90 tan 30 degree = 90 dot sqrt(3) slash 3 = 30 sqrt(3)$ 米。
  + 铅直上升 $= 12 tan 30 degree = 4 sqrt(3)$ 米；坡长 $= 12 slash cos 30 degree = 12 dot 2 slash sqrt(3) = 8 sqrt(3)$ 米。
  + 旗杆高 $= 10 tan 60 degree = 10 sqrt(3)$ 米。

  *挑战 ☞ 选做*
  + 俯角 $= 45 degree$、铅直 $= 40 =>$ 水平距离 $= 40 slash tan 45 degree = 40$ 米。
  + 山顶正下方在地面投影点设为 $F$；$A$、$B$ 都在 $F$ 的同侧水平线上，$A$ 远、$B$ 近。由仰角定义：$A F = h slash tan 30 degree = h sqrt(3)$，$B F = h slash tan 60 degree = h slash sqrt(3) = h sqrt(3) slash 3$。由 $A B = A F - B F$：$50 = h sqrt(3) - h sqrt(3) slash 3 = (2 sqrt(3) slash 3) h => h = 50 dot 3 slash (2 sqrt(3)) = 75 slash sqrt(3) = 25 sqrt(3)$ 米。
  + 坡角 $45 degree$、铅直 $4 =>$ 水平 $= 4$、坡长 $= 4 sqrt(2)$。故坡长 $= 4 sqrt(2)$ 米，底脚水平宽度 $= 4$ 米。
  ]
]
