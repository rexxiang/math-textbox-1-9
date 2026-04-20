#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall

== §d07 刚性判定（二）：角也能把形状锁住 <tool:d07-asa-criterion>

#vocab[角边角 Angle-Side-Angle (ASA) / 角角边 Angle-Angle-Side (AAS) / 斜边直角边 Hypotenuse-Leg (HL)]

#crisis[
  有时候题目先给你的不是三条边，而是两个角，或者一个直角三角形里的斜边和一条直角边。这些信息看起来不如“边边边”扎实，可它们也真的能把形状锁住吗？

  *角多起来以后，哪些组合已经够了？直角三角形又为什么能多出一条专用捷径？*
]

#history-note[
  人们整理全等判定时，很快就发现：不一定非得先拿到三条边。因为三角形三个角的总和固定是 $180 degree$，只要角的信息足够，边的信息就会被逼到只剩下一种可能。直角三角形则更特别——那个直角本身已经免费送出一个强条件。
]

#discovery[
  *第一步：两个角已经把方向定得很紧。*

  三角形里若有两个角定了，第三个角也就跟着定了。所以这时只要再补上一条合适的边，大小也会被锁住。

  *第二步：夹边和非夹边都可能够用。*

  若给的是两角和夹边，就会落到 `ASA`；若给的是两角和其中一角的对边，就会落到 `AAS`。

  *第三步：直角三角形能再走一条快捷路。*

  对直角三角形来说，两个三角形都已经自带一个直角。于是只要斜边和一条直角边对应相等，形状就已经锁住，这就是 `HL`。
]

#tryit[
  先自己判断：

  + 两个三角形有两角分别相等，且夹边也相等，能不能判全等？
  + 两个三角形有两角分别相等，且其中一角的对边也相等，能不能判全等？
  + 两个直角三角形斜边分别相等、其中一条直角边也分别相等，够不够？
]

#side-hack[
  *见到角多，就先数“第三个角是不是已经跟着定了”*：

  - 两角 + 夹边：想 `ASA`
  - 两角 + 非夹边：想 `AAS`
  - 题目明确是直角三角形时，别忘了还有 `HL`
]

#blueprint[
  *一、角边角（Angle-Side-Angle，`ASA`）*

  若两个三角形两角分别相等，且夹边也分别相等，就能判定它们全等。这叫*角边角*判定，记作 `ASA`。

  *二、角角边（Angle-Angle-Side，`AAS`）*

  若两个三角形两角分别相等，且其中一角的对边也分别相等，就能判定它们全等。这叫*角角边*判定，记作 `AAS`。

  因为两角一旦给出，第三个角就自动确定，所以这一条也足够把大小锁住。

  *三、斜边直角边（Hypotenuse-Leg，`HL`）：直角三角形专用捷径*

  在两个直角三角形中，若斜边和一条对应直角边分别相等，就能判定它们全等。这叫*斜边直角边*判定，记作 `HL`。

  这条只对直角三角形使用，离开直角情形就不能照搬。

  *例 1*：在 $triangle A B C$ 和 $triangle D E F$ 中，已知

  - $angle A = angle D$
  - $angle B = angle E$
  - $A B = D E$

  则两三角形全等（`ASA`）。

  *例 2*：在 $triangle A B C$ 和 $triangle D E F$ 中，已知

  - $angle A = angle D$
  - $angle C = angle F$
  - $B C = E F$

  则两三角形全等（`AAS`）。

  *例 3*：两个直角三角形的斜边都长 $10$，并且一条对应直角边都长 $6$。则它们全等（`HL`）。
]

#pitfall[
  *陷阱 1：两角相等还不够。*

  这只能说明“形状一样”，还可能只是相似，不一定全等。

  *陷阱 2：`HL` 只能在直角三角形里用。*

  若题目没有直角，就不能偷用这条专用捷径。
]

#mastery[
  *基础*

  + 判断下列条件能否直接判定全等，并说明理由：
    - 两角和夹边分别相等
    - 两角和其中一角的对边分别相等
    - 两个角分别相等，但没有任何边信息

  + 说明为什么 `AAS` 不会和“只会相似”混在一起。

  + 两个直角三角形斜边分别长 $13$，一条对应直角边分别长 $5$。说明为什么它们全等。

  *应用*

  + 已知 $triangle A B C$ 与 $triangle D E F$ 中，$angle A = angle D$，$angle B = angle E$，$A B = D E$。求证：$A C = D F$。

  + 已知两个三角形中，$angle A = angle D$，$angle C = angle F$，$B C = E F$。说明为什么能判全等。

  + 已知两个直角三角形的斜边相等，且一组对应直角边相等。求证：另一组对应直角边也相等。

  *挑战*

  + *挑战 1（AAS 证明）*：已知 $triangle A B C$ 中 $angle B = angle C$，且 $B D perp A C$ 于 $D$，$C E perp A B$ 于 $E$。证明 $B D = C E$。

    （提示：先找到两个包含 $B D$ 和 $C E$ 的三角形，证明它们全等，再用对应元素相等得出结论。考虑 $triangle B D C$ 和 $triangle C E B$。）

  + *挑战 2（HL 证明）*：两个直角三角形 $triangle A B C$ 和 $triangle D E F$，$angle B = angle E = 90 degree$，斜边 $A C = D F$，且直角边 $A B = D E$。
    - 用 HL 判定说明 $triangle A B C tilde.eq triangle D E F$
    - 由此能得出什么结论？（对应元素还相等哪些？）

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*

  + 能，`ASA`。能，`AAS`。不能，因为这时还可能只是相似。

  + 因为两角确定后，第三角也跟着确定；再给出一条对应边，就把大小也锁住了。

  + 因为它们都是直角三角形，且斜边和一条对应直角边分别相等，所以全等（`HL`）。

  *应用*

  + 两角和夹边分别相等，所以 $triangle A B C tilde.eq triangle D E F$（`ASA`），因此 $A C = D F$。

  + 因为两角分别相等，且一条对应边 $B C = E F$，所以可用 `AAS` 判全等。

  + 由 `HL` 先得两三角形全等，再用全等对应边相等得到另一组对应直角边也相等。

  *挑战*

  挑战 1 答案：考虑 $triangle B D C$ 和 $triangle C E B$：
  - $angle B D C = angle C E B = 90 degree$（直角，因为 $B D perp A C$、$C E perp A B$）
  - $B C = C B$（公共边）
  - $angle D B C = angle E C B$（即 $angle B = angle C$，已知）

  由 AAS 知 $triangle B D C tilde.eq triangle C E B$，所以 $B D = C E$（对应边）。

  挑战 2 答案：$angle B = angle E = 90 degree$（直角），$A C = D F$（斜边相等），$A B = D E$（直角边相等），满足 HL，所以 $triangle A B C tilde.eq triangle D E F$。由此 $B C = E F$（对应直角边也相等）、$angle A = angle D$、$angle C = angle F$。
]
