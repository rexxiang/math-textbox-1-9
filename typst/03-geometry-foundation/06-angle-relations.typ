#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall
#import "../lib/diagram-packages.typ": cetz

== §3.7 角之间的关系：互余、互补与对顶角 <sec-3-7>

#vocab[互余 complementary angles / 互补 supplementary angles / 对顶角 vertical angles]

#crisis[
  修门框时，一个角如果不是直角，另一边就会歪；两条直线一交叉，又总会冒出一对“看起来一样大”的角。

  *角和角之间，也有稳定关系。*
]

#history-note[
  很多早期测量并不是先量长度，而是先抓稳定角关系。互余、互补和对顶角，就是最早能直接帮助读图和推理的角关系。
]

#discovery[
  - 如果两个角刚好拼成一个直角，它们合起来是 $90 degree$。
  - 如果两个角刚好拼成一条直线，它们合起来是 $180 degree$。
  - 两条直线相交时，不相邻的一对角总会一样大。

  这些关系能让“一个角已知、另一个角未知”的题立刻动起来。
]

#tryit[
  *先自己判断*：

  + $37 degree$ 的余角是多少？
  + $37 degree$ 的补角是多少？
  + 两条直线相交，一个角是 $65 degree$，与它相对的那个角是多少？
]

#blueprint[
  - *互余*：两个角的和等于 $90 degree$
  - *互补*：两个角的和等于 $180 degree$
  - *对顶角*：两条直线相交时，不相邻的一对角；它们相等

  常用计算：

  - 余角 $= 90 degree -$ 原角
  - 补角 $= 180 degree -$ 原角

  #align(center, cetz.canvas(length: 2cm, {
    import cetz.draw: *
    line((-2, -1.3), (2, 1.3), stroke: 0.7pt)
    line((-2, 1.3), (2, -1.3), stroke: 0.7pt)
    content((0.6, 0.2), [$angle 1$])
    content((-0.6, 0.2), [$angle 2$])
    content((-0.6, -0.2), [$angle 3$])
    content((0.6, -0.2), [$angle 4$])
  }))

  例如：若 $angle 1 = 65 degree$，则 $angle 3 = 65 degree$，而 $angle 2 = angle 4 = 115 degree$。
]

#side-hack[
  *先拿两把尺子*：

  - 想到直角就用 $90 degree$
  - 想到直线就用 $180 degree$
]

#pitfall[
  ❌ 把互余和互补搞混
  → ✓ 余角看直角，补角看平角。

  ❌ 把“对顶角相等”误当成“任意对着的角都相等”
  → ✓ 必须是两条直线相交形成的那一对。
]

#mastery[
  *基础*

  + 求 $28 degree$ 的余角和补角。
  + 两条直线相交，一个角为 $112 degree$，其对顶角和邻补角分别是多少？
  + 判断：两个角和为 $90 degree$，它们是什么关系？

  *应用*

  + 一条直线上两个相邻角中，一个为 $43 degree$，另一个是多少？
  + 两条直线相交，一个角为 $x$，它的补角比它大 $36 degree$。求 $x$。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + 余角 $62 degree$，补角 $152 degree$
  + 对顶角 $112 degree$，邻补角 $68 degree$
  + 互余
  + $180 degree - 43 degree = 137 degree$
  + 设这个角为 $x$，则补角为 $180 degree - x$。$180 degree - x = x + 36 degree$，所以 $x = 72 degree$
]
