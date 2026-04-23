#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

== 代数分支的知识地图 <meta:al-invention-tree>

#blueprint[
  *主干：从“字母代替数”到“方程与不等式”*

  整个代数支由一条主干生长：

  + *字母代替数*（#secref("cb04-letters-represent-numbers")）：把“待定的数”写成记号，运算规则原样保留。
  + *代数式与同类项*（#secref("al01-terms-like")、#secref("al01-add-subtract-polynomials")、#secref("al01-multiply-polynomials")）：字母与数的“加减乘”组合怎样化简？
  + *乘法公式与因式分解*（#secref("al02-distributive-rewrite")、#secref("al02-special-identities")、#secref("al02-factorization-as-reverse")）：分配律正用 → 乘开；反用 → 提公因式与识别公式。
  + *分式*（#secref("al03-rational-expression-structure")、#secref("al03-common-denominator-operations")）：允许“除以未知量”——需要约分 / 通分 / 验分母非零。
  + *分式方程与增根*（#secref("al03-rational-equations-and-extraneous-roots")）：第一次出现“代数上成立但原方程不成立”的陷阱。
  + *一元一次方程与方程组*（#secref("al04-linear-one-variable")、#secref("al04-systems-linear")）：等式性质让我们把“方程”变成“标准五步”的机械流程。
  + *建模*（#secref("al04-modeling-word-problems")）：把一段自然语言翻译成等量关系、解之、检验。
  + *二次方程*（#secref("al05-quadratic-solving")）：未知量出现平方——五步不够，引入配方法与求根公式。
  + *韦达定理*（#secref("al05-vieta")）：从“根”反问“系数”，把对称式、构造方程、判根捆在一起。
  + *一元一次不等式与 $|x|$*（#secref("al05-linear-inequalities")）：等式性质几乎都保留——唯一坏掉那条（乘除负数）把方向翻转；$|x|$ 作为“数轴距离”让一类不等式秒可读。
]

#blueprint[
  *知识地图表：每一步因何被发明出来*

  #table(
    columns: (1fr, 1.5fr, 1.5fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*工具*], [*被发明的理由*], [*下一步带来什么*],
    [字母代替数 #secref("cb04-letters-represent-numbers")], [想写“任意一个数”时，数字不够用], [让“运算律”可以普适陈述],
    [代数式 / 同类项 #secref("al01-terms-like")], [要像整数那样做“加减”，得先有“同类”概念], [去括号、合并成为基本动作],
    [整式乘法 #secref("al01-multiply-polynomials")], [面积、计数、体积模型都需要“乘开”], [平方差、完全平方公式自然露面],
    [分配律双向 #secref("al02-distributive-rewrite")], [公路两侧都能走：展开 + 提公因式], [因式分解的第一步],
    [乘法公式 #secref("al02-special-identities")], [高频结构打包成“公式”以备反用], [配方法与平方差分解的原料],
    [因式分解流程 #secref("al02-factorization-as-reverse")], [“先提 → 再看公式 → 再匹配中间项”给出统一流程], [分式约分、二次方程、恒等变形],
    [分式 #secref("al03-rational-expression-structure")], [要允许“除以未知量”], [约分、通分需要分子分母能因式分解],
    [通分与分式运算 #secref("al03-common-denominator-operations")], [把“异分母相加减”这件事机械化], [为分式方程做准备],
    [分式方程 & 增根 #secref("al03-rational-equations-and-extraneous-roots")], [分母含未知量时，去分母扩大了定义域], [“验根”成为不能省略的一步],
    [一元一次方程五步 #secref("al04-linear-one-variable")], [复杂系数下解法要机械化], [为建模和不等式提供同一套流程],
    [方程组 #secref("al04-systems-linear")], [多条件多未知量时，一条方程锁不住解], [代入 / 加减消元两条路线],
    [建模 #secref("al04-modeling-word-problems")], [要把自然语言翻成等量关系], [“设元 → 译句 → 检验”三步统一入口],
    [一元二次方程 #secref("al05-quadratic-solving")], [未知量出现平方——五步不够], [配方法 → 求根公式 → 判别式],
    [韦达定理 #secref("al05-vieta")], [想从系数读出根的对称性质], [对称式、构造方程、判根分三用],
    [不等式与 $|x|$ #secref("al05-linear-inequalities")], [等号可以换成不等号——等式性质大体通但需要方向], [数轴上的“解集”语言第一次出现],
  )
]

#side-hack[
  *知识地图的三组横向联系*

  - 代数式 → 乘法公式 → 因式分解：*乘开 / 提回*是同一条分配律公路的双向走法。
  - 分式方程 → 一元一次 / 二次方程：都在用“去分母把方程化成整式方程”这一步把定义域扩大，于是“验根”成为共同刚需。
  - 方程 → 不等式：*等式性质里只有一条在不等式上反转*——乘除负数时方向反。别的三条都同样适用。

  *一条核心阅读线*

  如果你只能挑出这部分的两条“最抗遗忘”的话，建议挑：
  - “分配律公路双向走”（#secref("al02-distributive-rewrite")）；
  - “方程的每一步动作都对应一条等式性质”（#secref("al04-linear-one-variable")）。

  前者是代数恒等变形的根，后者是方程类题目的骨。
]
