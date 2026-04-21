#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, secref, tryit, pitfall

== §d04 刚性判定（一）：边把形状锁住 <tool:d04-sss-criterion>

#vocab[边边边 Side-Side-Side (SSS) / 边角边 Side-Angle-Side (SAS) / 等腰三角形 isosceles triangle]

#crisis[
  工匠做三角支架时，最怕的是“看起来差不多，实际上还能晃”。如果三条边已经定死，或者两条边连同夹角已经定死，这个三角形还能不能再摆成另一种样子？

  *哪些条件真的能把三角形锁住？又怎样把这种刚性立刻用到最熟悉的等腰三角形上？*
]

#history-note[
  三角形之所以比一般四边框更适合做支撑，不只是因为“经验上更稳”，而是因为它一旦被少数关键条件锁住，就几乎没有变形余地。最先被人抓住的，正是“三边都定了”和“两边连夹角都定了”这两种最直观的锁法。
]

#discovery[
  *第一步：三边都定了，形状就没法偷偷改变。*

  若两块三角板三条边分别一样长，你很难再把其中一块掰成另一种样子。这就是 `SSS` 的直觉来源。

  *第二步：两边加上夹角，也已经够了。*

  因为两条边先定出两根“杆”，夹角再把开口方向锁住，于是第三条边也会跟着被确定。这就是 `SAS` 的想法。

  *第三步：等腰三角形正适合拿来练这一把锁。*

  一旦把等腰三角形从顶点切成左右两个小三角形，`SAS` 往往会立刻出现，于是底角、底边中点和高之间的关系就会一起跳出来。
]

#tryit[
  先自己判断：

  + 两个三角形三条边分别相等，能不能直接判全等？
  + 两个三角形里，若各有两条边相等，且这两条边夹着的角也相等，够不够？
  + 等腰 $triangle A B C$ 中，若 $A B = A C$，你猜从顶点 $A$ 往底边作的角平分线，会不会把底边平分？
]

#side-hack[
  *先看“边有没有把口子锁死”*：

  - 三边都给了，先想 `SSS`
  - 两边和中间那个角给了，先想 `SAS`
  - 等腰题常把大三角形切成左右两个小三角形，再回头用 `SAS`
]

#blueprint[
  *一、边边边（Side-Side-Side，`SSS`）*

  若两个三角形三条对应边分别相等，就能判定这两个三角形全等。这叫*边边边*判定，记作 `SSS`。

  *二、边角边（Side-Angle-Side，`SAS`）*

  若两个三角形两条对应边分别相等，且这两条边的夹角也分别相等，就能判定它们全等。这叫*边角边*判定，记作 `SAS`。

  这里一定要盯住“夹角”两个字：角必须夹在那两条已知边之间，才真的能把形状锁住。

  *三、第一次把全等用到等腰三角形*

  在等腰 $triangle A B C$ 中，若 $A B = A C$，作顶角 $angle A$ 的平分线 $A D$，交 $B C$ 于 $D$。

  在 $triangle A B D$ 和 $triangle A C D$ 中：

  - $A B = A C$
  - $angle B A D = angle D A C$
  - $A D = A D$

  所以 $triangle A B D tilde.eq triangle A C D$（`SAS`），于是

  - $angle B = angle C$
  - $B D = D C$
  - $A D perp B C$

  也就是说，在这里角平分线顺手把“底角相等、平分底边、垂直到底边”一起带了出来。

  *例 1*：已知 $A B = D E$，$A C = D F$，$angle A = angle D$。判断 $triangle A B C$ 与 $triangle D E F$ 是否全等。

  解：满足两边和夹角分别相等，所以两三角形全等（`SAS`）。

  *例 2*：已知 $triangle A B C$ 与 $triangle D E F$ 满足

  - $A B = D E$
  - $B C = E F$
  - $A C = D F$

  则两三角形全等（`SSS`）。
]

#pitfall[
  *陷阱 1：`SAS` 里的角必须是夹角。*

  若角跑到了外侧，就不是这一条判定。

  *陷阱 2：等腰题里别忘了那条公共线段。*

  很多同学只看见两条腰和一个角，却漏写了 $A D = A D$ 这条公共边。
]

#mastery[
  *基础*

  + 判断下列条件能否直接判定两三角形全等，并说明理由：
    - 三边分别相等
    - 两边和夹角分别相等
    - 两边分别相等，但给的是其中一条边外侧的角

  + 已知 $triangle A B C tilde.eq triangle D E F$，且判定依据是 `SSS`。请你用一句话说明：这说明了什么样的“刚性”？

  + 等腰 $triangle A B C$ 中，$A B = A C$，$angle A = 40 degree$。求 $angle B$ 与 $angle C$。

  *应用*

  + 已知在 $triangle A B C$ 和 $triangle D E F$ 中，$A B = D E$，$A C = D F$，$angle A = angle D$。求证：$B C = E F$。

  + 已知 $A D$ 平分 $angle A$，且 $A B = A C$。求证：$B D = D C$。

  + 已知两个三角形三边分别为 $5, 6, 7$ 和 $5, 6, 7$。说明为什么它们全等。

  *挑战*

  + 已知 $triangle A B C$ 中，$A B = A C$。证明：从顶点 $A$ 向底边 $B C$ 作的角平分线，既是中线，也是高。

  + 已知 $triangle A B C$ 与 $triangle D E F$ 满足 $A B = D E$，$B C = E F$，$A C = D F$。证明：$angle B = angle E$。

  + 用你自己的话解释：为什么 `SSS` 和 `SAS` 都可以理解成“边把三角形锁住了”。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*

  + 能，`SSS`。能，`SAS`。不能，因为给的不是夹角。

  + 说明只要三条边长度一一对应地固定，三角形的形状和大小就已经被定死了。

  + 设底角都是 $x$，则 $40 degree + 2x = 180 degree$，所以 $x = 70 degree$。

  *应用*

  + 两边和夹角分别相等，故 $triangle A B C tilde.eq triangle D E F$（`SAS`）。所以 $B C = E F$。

  + 在 $triangle A B D$ 与 $triangle A C D$ 中，$A B = A C$，$A D = A D$，$angle B A D = angle D A C$，所以两三角形全等（`SAS`），故 $B D = D C$。

  + 因为三条对应边分别相等，所以全等（`SSS`）。

  *挑战*

  + 与蓝图中的证明相同：先证 $triangle A B D tilde.eq triangle A C D$，再推出 $B D = D C$ 与 $A D perp B C$。

  + 三边分别相等，故两三角形全等（`SSS`），所以对应角 $angle B = angle E$。

  + 因为它们都没有给三角形留下继续“掰一掰”的余地：`SSS` 把三条边都定死，`SAS` 则把两条边和开口方向一起定死。
]
