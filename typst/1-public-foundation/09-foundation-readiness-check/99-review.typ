#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

== 本章回顾：你已经准备好进入共通桥梁 <meta:foundation-readiness-check-review>

#blueprint[
  *参考答案：自测诊断（§9.1）*

  === 诊断 1
  + $0.875 = 7/8$。
  + $12 + 48 div 6 times 2 - 5 = 12 + 16 - 5 = 23$。
  + 剩下 $4.5 - 1.8 = 2.7$ 千克。

  === 诊断 2
  + $3/4 = 0.75$，所以 $3/4 > 0.72 > 0.7$。
  + $2/5 = 0.4$；$0.125 = 125$ 个千分之一。
  + $7/4 = 1.75 > 1.6$，所以第一根更长。

  === 诊断 3
  + 周长 $= 2 times (12 + 7) = 38$ 厘米；面积 $= 12 times 7 = 84$ 平方厘米。
  + 内错角相等，另一个仍是 $48°$。
  + 平移后 $(-3, 4-6) = (-3, -2)$。

  === 诊断 4
  + 体积 $= 5^3 = 125$ 立方分米 $= 125$ 升。
  + $2.4$ 米 $= 240$ 厘米；$3.5$ 米 + $45$ 厘米不能直接写成 $3.95$ 米，因为 $45$ 厘米 $= 0.45$ 米，总和应为 $3.95$ 米——恰好能写成 $3.95$ 米的前提是先统一单位，不能直接把数字当同类相加。
]

#side-hack[
  *自评口径*

  - 全部答对 → 直接进入下一部分——共通桥梁（Part II）。
  - 只错 1–2 题 → 按 §9.2 的“查漏表”定点补缺后再前进。
  - 错 $>= 3$ 题 → 不要硬往前。先按补缺表回看相关节，隔一两天再做一次自测。
]

#blueprint[
  *通过信号小卡*

  ☞ 能分清四条主干：算术与结构 / 部分与整体 / 形状与命名 / 度量与位置 \
  ☞ 能把分数与小数看成"同一量的不同写法" \
  ☞ 能在图上稳定区分相邻 / 相交 / 平行，并算出基本角 \
  ☞ 会按“先横后纵”读写坐标，并不混“平方”“立方”单位 \
  ☞ 做错时能立刻说清自己该回看哪一节

  #line(length: 100%, stroke: 0.3pt + luma(200))

  以上五条都能打勾，就正式进入共通共通桥梁 —— 比 / 数轴 / 坐标 / 字母 / 方程 / 平方根 正等着你。
]

==== 巩固复习入口

+ 如果诊断 1 卡住：回到 #secref("pf02-order-laws") 与 #secref("pf04-fraction-equivalence")。
+ 如果诊断 2 卡住：回到 #secref("pf04-fraction-comparison") 与 #secref("pf05-decimals-conversion")。
+ 如果诊断 3 卡住：回到 #secref("pf07-perimeter-area")、#secref("pf08-parallel-transversal") 与 #secref("pf08-coordinate-intuition")。
+ 如果诊断 4 卡住：回到 #secref("pf05-units-measurement") 与 #secref("pf07-volume")。

==== 跨章混合练习

以下几道题有意把不同章节的知识搅在一起——自学时正需要这种"不告诉你该用哪章"的练习。

+ 一块长方形菜地长 $12$ 米、宽 $8$ 米，四周围了一圈篱笆。篱笆每米造价 $3.5$ 元。先算周长（#secref("pf07-perimeter-area")），再算总花费（#secref("pf05-decimals-conversion")）。
+ 把 $24$ 块巧克力平均分给 $6$ 个人，每人得几块？再把其中 $2$ 块切成 $3$ 等份分给 $3$ 个小朋友，每人得多少块？用分数表示（#secref("pf02-mul-div-structure") + #secref("pf04-fraction-equivalence")）。
+ 一个三角形三个内角之比为 $1 : 2 : 3$，求三个角各是多少度？最大的角是什么角？（#secref("pf08-triangles-angle-sum") + #secref("pf03-factors-multiples")）
+ 教室的黑板长 $4.2$ 米，学生量的时候把尺子放歪了，量出 $4.5$ 米。估算误差大约百分之几？（#secref("pf05-estimation-reasonableness") + #secref("pf04-fraction-arithmetic")）
+ 一个正方体棱长 $5$ 厘米，它的一个面的面积是多少？六个面的总面积呢？体积呢？（#secref("pf07-perimeter-area") + #secref("pf07-volume")）
