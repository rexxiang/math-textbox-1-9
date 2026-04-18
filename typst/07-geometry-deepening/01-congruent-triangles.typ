#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, secref, tryit, pitfall

== §7.1 全等三角形：刚性与证明的起点 <sec-7-1>

#vocab[全等 congruent / 对应 corresponding / 证明 proof / 已知 given / 求证 prove]

#crisis[
  造桥时，工程师最关心的不是“这个三角架看上去差不多”，而是“这两个支撑件是不是*一定一样*”。如果图纸上给出的几条边和几个角已经确定，整块三角框架还能不能再被“掰成另一种形状”？

  *什么时候两个三角形不只是像，而是可以完全重合？又怎样把“看出来”写成真正的证明？*
]

#history-note[
  古代测量和建筑很早就知道三角形比四边形更“稳”。真正让这种经验变成系统知识的关键，是把“稳”翻译成了严格判定：当某些边角条件一旦确定，三角形就被锁死了。全等三角形就是几何证明里最早也最重要的一把钥匙。
]

#discovery[
  *第一步：三角形的刚性。*

  在 #secref("3.4") 里，你已经见过平行线会稳定地产生相等的角。现在再往前一步：如果一块三角形框架的边长和夹角被固定住，它几乎没有“变形余地”。这就是三角形适合做支撑结构的原因。

  *第二步：全等不只是“边差不多长”。*

  两个三角形全等，意思是它们能完全重合：对应边相等，对应角相等，大小和形状都一样。重点在“对应”——谁和谁对上，必须说清楚。

  *第三步：证明不是堆结论，而是搭链条。*

  一份最基础的几何证明，通常是这三段：

  - 先写*已知*了什么
  - 再说明由哪些判定得到全等
  - 最后用“全等对应元素相等”推出结论
]

#tryit[
  先别看蓝图，自己判断：

  + 若两个三角形三条边分别相等，它们还能不一样吗？
  + 若已知两边和一个*非夹角*相等，能不能保证全等？
  + 在等腰 $triangle A B C$ 中，若 $A B = A C$，你猜底角为什么会相等？
]

#side-hack[
  *做证明时先找“桥”*：

  - 想证边相等或角相等，先看看能不能先证两个三角形全等
  - 想证全等，优先找 SSS、SAS、ASA、AAS、HL
  - 写对应关系时，名字顺序别乱：$triangle A B C tilde.eq triangle D E F$ 表示 $A$ 对 $D$，$B$ 对 $E$，$C$ 对 $F$
]

#blueprint[
  *一、全等的定义*

  如果两个三角形可以完全重合，就叫*全等三角形*，记作

  $ triangle A B C tilde.eq triangle D E F $

  一旦全等，就有：

  - 对应边相等
  - 对应角相等

  这条原则常简称为：*全等对应元素相等*。

  *二、常用全等判定*

  - *SSS*：三边分别相等
  - *SAS*：两边和夹角分别相等
  - *ASA*：两角和夹边分别相等
  - *AAS*：两角和其中一角的对边分别相等
  - *HL*：直角三角形中，斜边和一条直角边分别相等

  *不能直接用的情况*：

  - *SSA*：两边和一个非夹角相等，通常不能保证全等

  *三、证明题里的标准写法*

  例如，要由条件推出 $B C = E F$，常见写法是：

  - 在 $triangle A B C$ 和 $triangle D E F$ 中
  - $A B = D E$，$A C = D F$，$angle A = angle D$
  - 所以 $triangle A B C tilde.eq triangle D E F$（SAS）
  - 因此 $B C = E F$

  *四、等腰三角形为什么底角相等*

  在等腰 $triangle A B C$ 中，若 $A B = A C$，作顶角 $angle A$ 的平分线 $A D$，交 $B C$ 于 $D$。

  在 $triangle A B D$ 和 $triangle A C D$ 中：

  - $A B = A C$
  - $angle B A D = angle D A C$
  - $A D = A D$

  所以 $triangle A B D tilde.eq triangle A C D$（SAS），于是

  - $angle B = angle C$
  - $B D = D C$
  - $A D perp B C$

  这就是等腰三角形里常见的“三线合一”现象。

  *五、全等常常怎样被制造出来*

  在几何题里，全等常来自三种情境：

  - 公共边或公共角
  - 平行线制造的相等角（回看 #secref("3.4")）
  - 等腰、垂直、角平分线、中点这些条件

  *例 1*：已知 $A B = D E$，$A C = D F$，$angle A = angle D$。判断 $triangle A B C$ 与 $triangle D E F$ 是否全等。

  解：满足两边和夹角分别相等，所以两三角形全等（SAS）。

  *例 2*：等腰 $triangle A B C$ 中，$A B = A C$，且 $angle A = 40 degree$。求 $angle B$ 与 $angle C$。

  解：由等腰三角形底角相等，设 $angle B = angle C = x$，则

  $ 40 degree + x + x = 180 degree $

  所以 $x = 70 degree$。因此 $angle B = angle C = 70 degree$。
]

#pitfall[
  *陷阱 1：SSA 不是全等判定。*

  已知两边和一个非夹角时，常常还可以摆出两种不同的三角形。做题时别把“几乎够了”当成“已经够了”。

  *陷阱 2：对应顺序乱了，结论就会乱。*

  若写成 $triangle A B C tilde.eq triangle D F E$，那就表示 $B$ 对 $F$、$C$ 对 $E$，对应边角也要跟着改。
]

#mastery[
  *基础*

  + 判断下列条件能否直接判定两三角形全等，并说明理由：
    - 三边分别相等
    - 两边和夹角分别相等
    - 两边和一个非夹角分别相等

  + 已知 $triangle A B C tilde.eq triangle D E F$，且 $angle A = 52 degree$，$angle B = 68 degree$。求 $angle F$。

  + 等腰 $triangle A B C$ 中，$A B = A C$，$angle A = 36 degree$。求 $angle B$ 和 $angle C$。

  *应用*

  + 已知在 $triangle A B C$ 和 $triangle D E F$ 中，$A B = D E$，$A C = D F$，$angle A = angle D$。求证：$B C = E F$。

  + 已知 $A D$ 平分 $angle A$，且 $A B = A C$。求证：$B D = D C$。

  + 一个直角三角形的斜边长为 $10$，一条直角边长为 $6$；另一个直角三角形的斜边也长为 $10$，对应直角边也长为 $6$。说明为什么这两个直角三角形全等。

  *挑战*

  + 已知 $triangle A B C$ 中，$A B = A C$。证明：从顶点 $A$ 向底边 $B C$ 作的角平分线，既是中线，也是高。

  + 已知 $triangle A B C$ 与 $triangle D E F$ 满足 $A B = D E$，$B C = E F$，$A C = D F$。证明：$angle B = angle E$。

  + 已知 $triangle A B C$ 中，$angle B = angle C$。证明：$A B = A C$。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*

  + 能；SSS。能；SAS。不能；SSA 不能保证全等。

  + $angle C = 180 degree - 52 degree - 68 degree = 60 degree$。全等对应角相等，所以 $angle F = 60 degree$。

  + 设底角都是 $x$，则 $36 degree + 2x = 180 degree$，故 $x = 72 degree$。

  *应用*

  + 两边和夹角分别相等，故 $triangle A B C tilde.eq triangle D E F$（SAS）。所以 $B C = E F$。

  + 在 $triangle A B D$ 与 $triangle A C D$ 中，$A B = A C$，$A D = A D$，$angle B A D = angle D A C$，所以两三角形全等（SAS），故 $B D = D C$。

  + 直角三角形中斜边和一条直角边分别相等，所以全等（HL）。

  *挑战*

  + 与蓝图中的证明相同：先证 $triangle A B D tilde.eq triangle A C D$，再推出 $B D = D C$ 与 $A D perp B C$。

  + 三边分别相等，故两三角形全等（SSS），所以对应角 $angle B = angle E$。

  + 因为 $angle B = angle C$，可作角平分线或利用反证法；最直接的做法是作中线后证两侧三角形全等，从而得到 $A B = A C$。这叫“等角对等边”。
]
