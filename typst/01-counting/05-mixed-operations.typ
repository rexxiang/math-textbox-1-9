#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab

== §1.5 混合运算 <sec-1-5>

#crisis[
  便利店购物：3 包薯片每包 5 元，再加 1 瓶水 3 元。

  小明算：$3 + 5 times 3 = 8 times 3 = 24$ 元

  小红算：$3 times 5 + 3 = 15 + 3 = 18$ 元

  两人算法不同，答案也不同！*到底应该先算哪个？*
]

#side-hack[
  读题时画圈——先把乘除法圈出来，它们优先计算。有括号的更优先！
]

#discovery[
  薯片的价格是 $3 times 5 = 15$ 元，这是一个整体。正确算法：

  $3 times 5 + 3 = 15 + 3 = 18$ 元

  为了避免歧义，数学家约定了一套*运算顺序*规则：

  + 先算*括号*里的
  + 再算*乘除*
  + 最后算*加减*
  + 同级运算从左往右算

  如果想先算加法呢？用括号！$(3 + 5) times 3 = 24$
]

#blueprint[
  运算顺序规则：
  + *括号最优先*：先算小括号 $()$，再算中括号 $[]$
  + *先乘除，后加减*
  + *同级从左到右*

  例：$2 + 3 times 4 - 6 div 2 = 2 + 12 - 3 = 11$
]

#mastery[
  *基础*

  + $24 - 8 div 4 + 3 times 2$
  + $5 times (3 + 7) - 20 div 4$
  + $(80 - 56) div [2 times (9 - 5)]$

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + $24 - 2 + 6 = 28$
  + $5 times 10 - 5 = 50 - 5 = 45$
  + $24 div [2 times 4] = 24 div 8 = 3$
]
