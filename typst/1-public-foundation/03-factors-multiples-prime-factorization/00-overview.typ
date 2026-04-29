#import "../../lib/theme-v2.typ": chapter-nav, chapter-route, side-hack

== 因数、倍数、整除与质因数分解 <ch:factors-multiples-prime-factorization>

试试看：用 $2 times 1$ 的砖块去铺一间 $7 times 7$ 的小房间，能不能刚好铺满、一块不剩？你可能会动手摆来摆去，却怎么也铺不完。这不是手笨——而是 $49$ 这个数的内部结构在"说不"。整数远不止是一个个光秃秃的数字，每一个数内部都藏着一张"零件清单"，拆开它，就是本章的核心任务。

#chapter-nav[
  *难度*：★★☆☆☆ \
  *核心问题*：乘法结构为什么能帮助我们"看进"一个整数的内部，而不是只把它当成一个整体？ \
  *需要先会*：知道乘法在表示若干个相同小组，除法在把整体按结构拆开。 \
  *知识地图位置*：公共基础 / 整数内部结构
]

#chapter-route[
  + 先从"能不能整齐分开"入手，看清因数、倍数与常用整除线索。
  + 再把整数继续往里拆，分出质数、合数与质因数分解。
  + 最后用这些内部结构总结出最大公因数和最小公倍数。
]

#side-hack[
  *入章自检*——以下几道小题只用你已有的生活经验。如果觉得吃力，不用担心——慢慢读就好。

  + $7 times 8 = ?$
  + $56 div 7 = ?$，有没有余数？
  + $30$ 能不能被 $6$ 整除？你怎么判断的？
]

#include "01-factors-multiples-divisibility.typ"
#include "02-primes-and-factorization.typ"
#include "03-gcd-lcm-structure.typ"
