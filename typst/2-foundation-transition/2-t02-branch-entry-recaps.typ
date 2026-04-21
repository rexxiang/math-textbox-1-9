#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, tryit, pitfall, secref

== 分支入口回看：带着哪些旧工具继续前进 <meta:branch-entry-recaps>

#crisis[
  同样是继续往后走，有人进 06 会卡在整理式子，有人进 07 会卡在角关系，有人进 08 会把图象和关系割裂，有人进 09 会把“占整体多少”和“彼此相比多少”混成一团。

  *分支不是随便挑一条喜欢的路走，而是要先确认手边哪组旧工具已经够稳。*
]

#history-note[
  真正的分流不是把同一本书硬切成几条互不相干的线，而是先看清：每条线其实都在重用共同地基里的不同旧办法。入口回看存在的意义，就是在出发前把这些旧办法重新想起来。
]

#discovery[
  06 代数深化最吃加法重组、乘法分配、字母模板和平衡观；07 几何深化最吃比例、角关系和平行垂直；08 函数模型最吃比例、坐标、正负方向和关系式；09 数据统计最吃表格、百分数和部分 / 整体意识。

  所以这页不是新课目录，而是一张“进分支前的小检查”：看清你已经会用什么，还有哪一块得先补稳。
]

#tryit[
  先不要往下抄 checklist，先自己回答：

  + 如果现在让你选一条分支，你最有把握的是哪一条？最担心的是哪一条？
  + 你能立刻说出那条分支最常调用的两三个旧工具吗？
  + 如果答不上来，就说明你需要先做下面的入口回看，再决定往哪边走。
]

#blueprint[
  *四条分支的入口钥匙*

  #grid(columns: (1fr, 1fr), gutter: 12pt,
    block[
      *进入 06 代数深化前*
      - 加法里的换顺序、先配对，能不能继续用在整理式子上（#secref("a15-add-commutative")）
      - 乘法里的先成整、再展开，能不能继续用在整理式子上（#secref("a17-mul-commutative")）
      - 比例与倍数关系能不能写进式子（#secref("a44-ratio")）
      - 能不能把”每个多少、总共多少”写成含字母的式子（#secref("c01-variable")）
      - 能不能用”左右一样多”解释方程（#secref("c04-equation")）
    ],
    block[
      *进入 07 几何深化前*
      - 能不能先找同一标准，而不是只凭眼睛猜（#secref("a44-ratio")）
      - 面积、拼补和分割的直觉还在不在（#secref("b13-area")）
      - 角、平行、垂直和方向关系能不能读顺（#secref("b26-complementary"), #secref("b29-parallel-lines")）
      - 坐标和位置能不能准确说清（#secref("b36-coordinate-system")）
      - #secref("a55-irrational-number") 的无理数和平方根，在勾股定理的计算结果里会频繁出现
    ],
  )

  #grid(columns: (1fr, 1fr), gutter: 12pt,
    block[
      *进入 08 函数模型前*
      - 能不能认出“一个量跟着另一个量变”的比例直觉（#secref("a44-ratio")）
      - 能不能在方格纸上稳稳定位点（#secref("b36-coordinate-system")）
      - 能不能在数轴和坐标平面里读出正负方向、左右高低与相差多少（#secref("a49-number-line")）
      - 能不能先用字母把两个量的关系写出来（#secref("c01-variable")）
    ],
    block[
      *进入 09 数据统计前*
      - 能不能在分数、小数、百分数之间切换同一个量（#secref("a47-decimal-fraction-conversion")）
      - 能不能从总量和部分量出发，把”占整体多少”算清楚（#secref("a13-order-of-operations"), #secref("a44-ratio")）
      - 能不能分清”占整体多少”和”两部分相比较”不是一回事（#secref("a44-ratio")）
      - #secref("b36-coordinate-system") 的坐标读图，频率直方图的横纵轴就是坐标系
    ],
  )

  入口回看只做一件事：*先想起旧工具*。这里不提前讲新分支内容，只确认你手边的地基是不是已经拿顺手。
]

#pitfall[
  *选分支前最常见的三个误区：*

  - 只凭兴趣选，不看旧工具是否够稳
  - 把“会一点点”误当成“可以直接进主线”
  - 还没补稳旧工具，就想靠后面新课反向救场
]

#mastery[
  #side-hack[
    *进入 06 代数深化前，先打勾*：
    - 我能把加法里的换顺序、先配对继续用在整理式子上（#secref("a15-add-commutative")）
    - 我能把乘法里的先成整、再展开继续用在整理式子上（#secref("a17-mul-commutative")）
    - 我能把比和倍数关系顺手写进同一个式子里（#secref("a44-ratio")）
    - 我能把”每个多少、总共多少”写成含字母的式子（#secref("c01-variable")）
    - 我能用”左右一样多”解释方程，不只会套步骤（#secref("c04-equation")）
    - 如果有哪项不稳，就先回 #secref("a15-add-commutative")、#secref("a17-mul-commutative")、#secref("a44-ratio")、#secref("c01-variable")、#secref("c04-equation") 补稳，再进入 06。
  ]

  #side-hack[
    *进入 07 几何深化前，先打勾*：
    - 我能在比较图形时先找同一标准，而不是只凭眼睛猜（#secref("a44-ratio")）
    - 我还记得面积、拼补和分割的直觉，能用它们继续拆图、比较和判断关系（#secref("b13-area")）
    - 我能读顺角关系，知道哪些角可以由图上的关系一步步推出（#secref("b26-complementary")）
    - 我能分清平行、垂直和方向关系（#secref("b29-parallel-lines")）
    - 我能把图上的位置写成坐标，知道先横后纵（#secref("b36-coordinate-system")）
    - 我对无理数和平方根不陌生，能处理勾股定理算出来的根号结果（#secref("a55-irrational-number")）
    - 如果有哪项不稳，就先回 #secref("a44-ratio")、#secref("b13-area")、#secref("b26-complementary")、#secref("b29-parallel-lines")、#secref("b36-coordinate-system")、#secref("a55-irrational-number") 补稳，再进入 07。
  ]

  #side-hack[
    *进入 08 函数模型前，先打勾*：
    - 我能认出“一个量跟着另一个量变”的比例直觉（#secref("a44-ratio")）
    - 我能在方格纸上定位点，知道坐标是先横后纵（#secref("b36-coordinate-system")）
    - 我能在数轴和坐标平面里读出正负方向、左右高低与相差多少（#secref("a49-number-line")）
    - 我能先用字母把两个量的关系写出来（#secref("c01-variable")）
    - 如果有哪项不稳，就先回 #secref("a44-ratio")、#secref("b36-coordinate-system")、#secref("a49-number-line")、#secref("c01-variable") 补稳，再进入 08。
  ]

  #side-hack[
    *进入 09 数据统计前，先打勾*：
    - 我能在分数、小数、百分数之间切换同一个量（#secref("a47-decimal-fraction-conversion")）
    - 我能从总量和部分量出发，把“占整体多少”算清楚（#secref("a13-order-of-operations"), #secref("a44-ratio")）
    - 我能分清”部分占整体多少”和”两部分相比较”不是一回事（#secref("a44-ratio")）
    - 我能读坐标系的横纵轴，频率直方图的横轴是数据区间、纵轴是频率（#secref("b36-coordinate-system")）
    - 如果有哪项不稳，就先回 #secref("a47-decimal-fraction-conversion")、#secref("a13-order-of-operations")、#secref("a44-ratio")、#secref("b36-coordinate-system") 补稳，再进入 09。
  ]
]
