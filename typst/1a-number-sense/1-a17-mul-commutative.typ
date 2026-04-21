#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall

== 乘法运算律与分配：先成整，再展开 <tool:a17-mul-commutative>

#vocab[乘法交换律 commutative law of multiplication / 乘法结合律 associative law of multiplication / 乘法分配律 distributive law]

#crisis[
  心算比赛！请在 10 秒内算出：

  $25 times 37 times 4 = ?$

  还有：

  $99 times 37 + 37 = ?$

  按顺序硬算当然能做，但都不够顺手。*能不能先把容易成整的部分抱到一起，再决定要不要展开？*
]

#history-note[
  商人清点货物时，常会先把 $25$ 个一包和 $4$ 包一组的货重新配成 $100$ 个，再算总数；木匠遇到 $99$ 根同样长的木条再加 1 根，也会直接想成 100 根。运算律不是“偷步”，而是把同一批数量换一种更省力的组织方式。
]

#side-hack[
  「先成整，再展开」——看到 $25 times 4$、$125 times 8$ 这样的好朋友，先凑成 $100$ 或 $1000$；看到 $99 times a + a$、$8 times 27 + 2 times 27$，就想想能不能把同样的因数收回来。
]

#discovery[
  先看第一题：

  $25 times 37 times 4 = 25 times 4 times 37 = 100 times 37 = 3700$

  这里先换了顺序，再把能成整的两个因数放到一起。

  再看第二题：

  $99 times 37 + 37 = 99 times 37 + 1 times 37 = (99 + 1) times 37 = 100 times 37$

  这一步不是乱合并，而是因为两个算式里都带着同一个因数 $37$。
]

#tryit[
  *先自己试试*：

  + 快速算 $125 times 37 times 8$
  + 再想 $19 times 6 + 6$ 能不能改写成一个更整齐的式子

  提示：第一题先找能凑整的因数；第二题先把第二项看成 $1 times 6$。
]

#blueprint[
  三条乘法运算律：

  #table(
    columns: (auto, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*乘法交换律*], [$a times b = b times a$],
    [*乘法结合律*], [$(a times b) times c = a times (b times c)$],
    [*乘法分配律*], [$a times (b + c) = a times b + a times c$],
  )

  分配律也可以反过来用：

  $ a times b + a times c = a times (b + c) $
]

#pitfall[
  *高频错误*

  ❌ 分配律展开时漏乘第二项：$a times (b + c) = a times b + c$
  → ✓ 括号里的*每一项*都要乘到：$a times (b + c) = a times b + a times c$

  ❌ 看见 $99 times 37 + 37$，却没有把第二项写成 $1 times 37$
  → ✓ 想做“合并同因数”时，先把式子看完整：$99 times 37 + 1 times 37 = (99 + 1) times 37$
]

#mastery[
  *基础（先成整，再展开）*

  + $125 times 32$
  + $99 times 37 + 37$
  + $8 times 27 + 2 times 27$

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + $125 times 32 = 125 times 8 times 4 = 1000 times 4 = 4000$（交换律 + 结合律）
  + $99 times 37 + 37 = 99 times 37 + 1 times 37 = (99 + 1) times 37 = 3700$（分配律反过来用）
  + $8 times 27 + 2 times 27 = (8 + 2) times 27 = 10 times 27 = 270$（分配律反过来用）

  *挑战*

  + 小明说：$4 times (5 - 2) = 4 times 5 - 4 times 2 = 12$，所以分配律也适用于减法。小红说：$4 times (5 - 2) = 20 - 2 = 18$（她先算了 $4 times 5$ 再减 $2$，而不是减 $4 times 2$）。这两种说法哪个对？写出正确的计算过程并解释小红哪里出错了。

  + 用乘法分配律，计算 $37 times 99 + 37$，不借助竖式。写出利用分配律的步骤。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _挑战参考答案：_

  第一题：小明对。$4 times (5-2) = 4 times 3 = 12$，也等于 $4 times 5 - 4 times 2 = 20 - 8 = 12$，说明分配律适用于减法。小红的错误是：先算了 $4 times 5 = 20$，再减了 $2$（而不是 $4 times 2 = 8$），把"减去的整块"算错了。

  第二题：$37 times 99 + 37 = 37 times 99 + 37 times 1 = 37 times (99 + 1) = 37 times 100 = 3700$。（这里先用分配律逆向——把加法提出公因子 $37$，再凑整成 $37 times 100$。）
]
