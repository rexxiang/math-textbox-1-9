#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, secref, tryit, pitfall

== 平行四边形：两组对边平行的四边形 <tool:d14-quadrilateral-angle-sum>

#vocab[四边形 quadrilateral / 平行四边形 parallelogram / 对角线 diagonal]

#crisis[
  四边形家族里有成百上千种可能：边长不等、角度随意、形状千奇百怪。一般四边形根本没有什么固定规律可言——轻轻一推门框，它就会歪掉。

  *加上"两组对边都平行"这一个条件，会突然多出哪些保证？这些性质从哪里来，又能帮我们解决什么问题？*
]

#history-note[
  "平行四边形"这个名字来自希腊语"平行的线"，古希腊人很早就注意到：在平行线之间夹出来的四边形有着出乎意料的整齐性质。欧几里得《几何原本》第一卷的核心之一，就是系统整理这些性质。
]

#discovery[
  *第一步：四边形内角和。*

  从任一顶点向对角连一条对角线，把四边形分成两个三角形。每个三角形内角和是 $180 degree$，所以四边形内角和是

  $ 2 times 180 degree = 360 degree $

  *第二步：平行四边形的对边为什么相等？*

  在平行四边形 $A B C D$ 中，连对角线 $A C$。

  由 $A B parallel D C$，得 $angle B A C = angle D C A$（内错角）；

  由 $A D parallel B C$，得 $angle D A C = angle B C A$（内错角）；

  加上公共边 $A C$，由 ASA 得 $triangle A B C tilde.eq triangle C D A$。

  所以 $A B = C D$，$A D = B C$——*对边相等*。

  *第三步：对角线怎么了？*

  在同一个全等关系里，还能读出：$triangle A O D tilde.eq triangle C O B$（$O$ 是对角线交点），于是 $O A = O C$，$O B = O D$——*对角线互相平分*。
]

#tryit[
  先想一想，再动手算：

  + 平行四边形 $A B C D$ 中，$angle A = 65 degree$。求另外三个角各是多少度？
  + 平行四边形中，若两条对角线长度分别为 $10$ 和 $6$，交点 $O$ 将它们各分成多长？
  + 平行四边形 $A B C D$ 中，$A B = 7$，$B C = 4$。它的周长是多少？
]

#side-hack[
  *遇到平行四边形题，先画对角线。*

  对角线一画，立刻把平行四边形切成三角形，然后就可以用全等、平行线角性质（#secref("b29-parallel-lines")）这些旧工具来处理。
]

#blueprint[
  *工具 1：平行四边形的定义*

  两组对边分别平行的四边形叫做*平行四边形*，记作 $square A B C D$。

  条件：$A B parallel D C$ 且 $A D parallel B C$。

  *工具 2：平行四边形的性质*

  平行四边形 $square A B C D$ 中，必然同时满足：

  - 对边相等：$A B = C D$，$A D = B C$
  - 对角相等：$angle A = angle C$，$angle B = angle D$
  - 邻角互补：$angle A + angle B = 180 degree$
  - 对角线互相平分：$O A = O C$，$O B = O D$（$O$ 为对角线交点）

  *工具 3：平行四边形的判定*

  满足以下任意一条，就能断定四边形是平行四边形：

  - 两组对边分别平行（定义）
  - 两组对边分别相等
  - 一组对边既平行又相等
  - 对角线互相平分

  *例 1*：平行四边形 $A B C D$ 中，$angle A = 70 degree$。求其余三个角。

  解：邻角互补，$angle B = 180 degree - 70 degree = 110 degree$；对角相等，$angle C = 70 degree$，$angle D = 110 degree$。

  *例 2*：四边形 $A B C D$ 中，对角线 $A C$ 与 $B D$ 交于 $O$，且 $O A = O C = 5$，$O B = O D = 3$。判断它是否为平行四边形。

  解：对角线互相平分（$O A = O C$，$O B = O D$），满足判定条件第 4 条，所以是平行四边形。
]

#pitfall[
  *陷阱 1：邻角互补，不是对角互补。*

  平行四边形中是 $angle A + angle B = 180 degree$（相邻角），而不是 $angle A + angle C = 180 degree$（对角相等，不互补）。

  *陷阱 2：对角线互相平分，不是对角线相等。*

  平行四边形只保证对角线在交点处各自平分，不保证两条对角线等长。对角线等长是矩形的额外性质——下一节会讲。

  *陷阱 3：一组对边平行不够。*

  只有"一组对边平行"的四边形是梯形，不是平行四边形。必须*两组*对边都平行才行。
]

#mastery[
  *基础*

  + 四边形 $A B C D$ 中，$angle A = 95 degree$，$angle B = 80 degree$，$angle C = 105 degree$。求 $angle D$。

  + 平行四边形 $A B C D$ 中，$A B = 8$，$B C = 5$。求周长。

  + 判断正误：
    - 对角线互相平分的四边形一定是平行四边形。
    - 有两组对边相等的四边形一定是平行四边形。
    - 平行四边形的邻角一定互补。

  *应用*

  + 平行四边形 $A B C D$ 中，$angle A = 58 degree$，求 $angle B$、$angle C$、$angle D$。

  + 平行四边形 $A B C D$ 中，对角线 $A C = 14$，$B D = 10$，交点为 $O$。求 $O A$、$O B$。

  + 已知四边形 $A B C D$ 中 $A B = C D = 9$ 且 $A B parallel C D$。说明它是平行四边形，并说出用的是哪条判定。

  *挑战*

  + 已知四边形一组对边平行且相等（$A B parallel C D$ 且 $A B = C D$）。用全等三角形证明它是平行四边形。

  + 平行四边形 $A B C D$ 中，$E$、$F$ 分别是 $A B$、$C D$ 的中点。证明四边形 $A E F D$（顶点顺序：$A$、$E$、$F$、$D$）也是平行四边形。（提示：从 $A E parallel D F$ 和 $A E = D F$ 出发。）

  + 平行四边形 $A B C D$ 中，$angle A = 2 angle B$。求四个角各多少度？

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*

  + 四边形内角和是 $360 degree$，所以 $angle D = 360 degree - 95 degree - 80 degree - 105 degree = 80 degree$。

  + 周长 $= 2 times (8 + 5) = 26$。

  + 对；对角线互相平分是平行四边形判定之一。对；两组对边分别相等也是判定之一。对；邻角互补是平行四边形性质。

  *应用*

  + $angle B = 122 degree$，$angle C = 58 degree$，$angle D = 122 degree$。

  + $O A = 7$，$O B = 5$。

  + 用"一组对边既平行又相等"这条判定，即可断定是平行四边形。

  *挑战*

  + 连对角线 $B D$。由 $A B parallel C D$，内错角 $angle A B D = angle C D B$；$A B = C D$，$B D$ 公共边，ASA 全等得 $triangle A B D tilde.eq triangle C D B$，于是 $A D = C B$ 且 $A D parallel C B$，所以两组对边均平行，是平行四边形。

  + $A E = frac(1, 2) A B = frac(1, 2) C D = D F$，且 $A B parallel C D$ 推出 $A E parallel D F$，由"一组对边既平行又相等"知四边形 $A E F D$ 是平行四边形。

  + 邻角互补：$angle A + angle B = 180 degree$。又 $angle A = 2 angle B$，所以 $3 angle B = 180 degree$，$angle B = 60 degree$，$angle A = 120 degree$；$angle C = 120 degree$，$angle D = 60 degree$。

  _下一节预告：矩形和菱形是平行四边形的"加强版"——加上"四个角都相等"或"四条边都相等"，又会多出哪些性质？见 §7.5A。_
]
