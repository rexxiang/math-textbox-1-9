#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab

== §1.6 运算律 <sec-1-6>

#crisis[
  心算比赛！请在 10 秒内算出：

  $25 times 37 times 4 = ?$

  按顺序硬算？$25 times 37 = 925$，然后 $925 times 4 = ?$……太慢了！

  *有没有巧妙的办法？*
]

#history-note[
  高斯 10 岁时，老师让全班算 $1 + 2 + 3 + dots.h + 100$。高斯几秒钟就给出了答案 $5050$——他发现首尾配对：$1 + 100 = 2 + 99 = dots.h = 101$，共 50 对，$50 times 101 = 5050$。这就是结合律的极致运用。
]

#side-hack[
  「找朋友」凑整法——找出能凑成 $10$、$100$、$1000$ 的数对。比如 $25 times 4 = 100$，$125 times 8 = 1000$。
]

#discovery[
  观察这几组算式：

  $3 + 5 = 5 + 3 = 8$ ← 交换顺序，结果不变！

  $(2 + 3) + 4 = 2 + (3 + 4) = 9$ ← 先算谁都行！

  乘法也有同样的规律。所以刚才那道题：

  $25 times 37 times 4 = 25 times 4 times 37 = 100 times 37 = 3700$

  交换一下顺序，瞬间简单了！
]

#blueprint[
  五条运算律：

  #table(
    columns: (auto, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*加法交换律*], [$a + b = b + a$],
    [*加法结合律*], [$(a + b) + c = a + (b + c)$],
    [*乘法交换律*], [$a times b = b times a$],
    [*乘法结合律*], [$(a times b) times c = a times (b times c)$],
    [*乘法分配律*], [$a times (b + c) = a times b + a times c$],
  )

  分配律是最强大的工具——它把乘法「分配」给括号里的每一项。
]

#mastery[
  *基础（巧算）*

  + $99 times 37 + 37$（提示：$99 times 37 + 1 times 37$）
  + $125 times 32$（提示：$125 times 8 times 4$）
  + $73 + 54 + 27 + 46$（提示：找能凑 $100$ 的朋友）

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + $99 times 37 + 37 = (99 + 1) times 37 = 100 times 37 = 3700$（分配律）
  + $125 times 32 = 125 times 8 times 4 = 1000 times 4 = 4000$（结合律）
  + $(73 + 27) + (54 + 46) = 100 + 100 = 200$（交换律 + 结合律）
]
