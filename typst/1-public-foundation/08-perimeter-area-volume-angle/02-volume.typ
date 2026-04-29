#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, answer-cut, secref
#import "../../lib/diagram-packages.typ": cetz

=== 体积：用单位立方体堆出来 <tool:pf07-volume>

#vocab[体积 volume][单位立方体 unit cube][立方单位 cubic unit]

#crisis[
  面积能告诉你“地上能铺多少草皮”，但当你要装水、装沙、搬家装箱子时，你关心的是“这个空间能装下多少东西”。

  如果你还是只数“铺满底面几块方格”，就会漏掉一件关键的事：*盒子有多高。*

  有没有办法给“这个空间能装多少”一个精确的数？
]

#tryit[
  先动手试试，下面再读。

  + 一个长方体长 5 厘米、宽 4 厘米、高 3 厘米。它的体积是多少？
]


#discovery[
  *先用旧工具试试。* 我们已经有面积——底面能铺多少块单位正方形。一个长 4、宽 3 的盒子底面积是 $4 times 3 = 12$ 平方单位。用底面积来回答"这个盒子能装多少沙子"？两个盒子都是 $4 times 3$ 的底面，按底面积，两者"装沙能力"一样。

  试着推下去——

  盒子 A 高 2，盒子 B 高 5，底面积都是 12。实际灌沙子：A 装 $12 times 2 = 24$ 铲，B 装 $12 times 5 = 60$ 铲，差了 2.5 倍。按底面积 12 = 12 下单购买沙子，B 会严重不够用。更极端：高 10 的同底盒子能装 120 铲，面积还是 12，用面积完全看不出差别。

  *这里卡住了。* 面积只量了底面这一层，完全忽略了"有几层"这件事——我们需要一种能把三个维度都算进去、描述"三维内部填充量"的新度量方式。

  把一个长 4、宽 3、高 2 的长方体，想象成用边长 1 的小立方块堆出来。

  - 先铺一层：底面是 $4 times 3 = 12$ 块小立方体。
  - 再堆 2 层高：整堆一共有 $12 times 2 = 24$ 块小立方体。


  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let light = rgb("#BBDEFB")

      // Isometric-style cube stack 4×3×2
      let dx = 1.3
      let dy = 0.8
      let dz = 1.3

      for z in range(2) {
        for y in range(3) {
          for x in range(4) {
            let bx = x * dx + y * 0.5
            let by = z * dz + y * 0.3

            // Top face
            let top = ((bx, by + dz), (bx + dx, by + dz), (bx + dx + 0.5, by + dz + 0.3), (bx + 0.5, by + dz + 0.3))
            line(..top, close: true, fill: light, stroke: 0.4pt + blue)

            // Front face
            let front = ((bx, by), (bx + dx, by), (bx + dx, by + dz), (bx, by + dz))
            line(..front, close: true, fill: rgb("#E3F2FD"), stroke: 0.4pt + blue)

            // Right face
            let right = ((bx + dx, by), (bx + dx + 0.5, by + 0.3), (bx + dx + 0.5, by + dz + 0.3), (bx + dx, by + dz))
            line(..right, close: true, fill: rgb("#90CAF9"), stroke: 0.4pt + blue)
          }
        }
      }

      // Dimension labels
      content((2.6, -1), text(size: 8pt)[长 = 4], anchor: "north")
      content((-1.5, 1.3), text(size: 8pt)[高 = 2], anchor: "east")
      content((6.5, 0.5), text(size: 8pt)[宽 = 3], anchor: "west")
    }),
    caption: [用小立方体堆出长方体：$4 times 3 times 2 = 24$ 块],
  )

  所以长方体体积 $= "长" times "宽" times "高" = 4 times 3 times 2 = 24$ 立方单位。

  这是“面积 × 高”的自然延伸：

  - 面积量“铺一层要多少块”；
  - 体积量“一共堆了多少块”。

  所以体积 $=$ 底面积 $times$ 高，这个关系对长方体、正方体、圆柱都成立。
]

#history-note[
  《九章算术》（约公元 1 世纪）“商功”章用“底面积乘以高”来算仓库容量和土方量。公元 263 年，刘徽在注解中给出了严格的推导，并发明了“牟合方盖”模型来逼近球体积。稍早的阿基米德（Archimedes，约公元前 250 年）也用“截面法”证明了球体积等于外接圆柱体积的 $2\/3$——这个结果他引以为傲，甚至要求刻在自己的墓碑上。
]

#side-hack[
  看到“装得下多少”“能装多少水”“有多大空间”——默认都是体积题，单位要带“立方”。
]

#tryit[
  + 一个边长 2 分米的正方体，体积是多少？
]

#blueprint[
  - *体积*：用单位立方体堆满图形所用的块数，单位是立方单位（立方厘米、立方分米、立方米……）。
  - *长方体体积* $= "长" times "宽" times "高"$。
  - *正方体体积* $= "边长"^3$。
  - 通用关系：*体积* $=$ *底面积* $times$ *高*。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let green = rgb("#4CAF50")

      // Simple labeled rectangular prism
      let w = 8
      let h = 5
      let d = 3

      let A = (0, 0)
      let B = (w, 0)
      let C = (w, h)
      let D = (0, h)
      let E = (d * 0.7, d * 0.7)
      let F = (w + d * 0.7, d * 0.7)
      let G = (w + d * 0.7, h + d * 0.7)
      let H = (d * 0.7, h + d * 0.7)

      // Fill front face
      line(A, B, C, D, close: true, fill: rgb("#C8E6C920"), stroke: 1pt + green)

      // Hidden edges
      line(A, E, stroke: (dash: "dashed", paint: green, thickness: 0.6pt))
      line(E, F, stroke: (dash: "dashed", paint: green, thickness: 0.6pt))
      line(E, H, stroke: (dash: "dashed", paint: green, thickness: 0.6pt))

      // Visible edges
      line(A, B, stroke: 1pt + green)
      line(B, C, stroke: 1pt + green)
      line(C, D, stroke: 1pt + green)
      line(D, A, stroke: 1pt + green)
      line(B, F, stroke: 1pt + green)
      line(C, G, stroke: 1pt + green)
      line(D, H, stroke: 1pt + green)
      line(F, G, stroke: 1pt + green)
      line(G, H, stroke: 1pt + green)

      // Labels with values
      content((w / 2, -0.8), text(weight: "bold", size: 9pt)[长 $a$], anchor: "north")
      content((-1.2, h / 2), text(weight: "bold", size: 9pt)[高 $c$], anchor: "east")
      content((w + d * 0.35 + 0.8, d * 0.35 - 0.5), text(weight: "bold", size: 9pt)[宽 $b$], anchor: "north")

      // Formula
      content((w / 2 + d * 0.35, h + d * 0.7 + 1.2), text(size: 9pt)[$V = a times b times c$], anchor: "south")
    }),
    caption: [长方体体积公式：$V = "长" times "宽" times "高"$],
  )

  - 常用换算：$1 "立方分米" = 1 "升" = 1000 "立方厘米" = 1000 "毫升"$。
]

#pitfall[
  *高频错误*

  ✗ 计算体积时忘了带“立方”这一级单位
  → ✓ 体积单位必须是立方单位；如果答案写“平方厘米”，那还是面积。

  ✗ 把长、宽、高用不同单位直接相乘
  → ✓ 先统一单位，再相乘。长 30 厘米、宽 20 厘米、高 0.5 米，要么全部化成厘米，要么全部化成米。

  ✗ 把“容积”和“体积”当成完全不同的两件事
  → ✓ 对空心容器而言，能装下多少东西（容积）就是它*内部*的体积；算法一样，只是量的是里面的空间。
  名字不一样让人以为是两套独立的概念，其实是同一件事换了个角度看。
]

#mastery[
  *基础*

  + 长 10、宽 6、高 4（单位：厘米）的长方体体积是多少立方厘米？
  + 边长 3 分米的正方体，体积是多少立方分米？合多少升？
  + 一个长方体的底面积是 25 平方厘米，高 8 厘米。求它的体积。
  + 判断对错并改正："体积的单位是平方厘米。"
  + 面积和体积都用乘法算，但它们的区别是什么？一个量的是什么，另一个量的是什么？

  *应用*

  + 一个水箱长 80 厘米、宽 50 厘米、高 40 厘米。它最多能装多少升水？
  + 一本教材长 26 厘米、宽 18 厘米、厚 1.5 厘米。它占的空间是多少立方厘米？
  + 把一个边长 2 分米的正方体切成 8 个一样大小的小正方体，每个小正方体边长多少？体积多少？

  *挑战 ☞ 选做*

  + 一个长方体的长、宽、高分别是 $a$、$b$、$c$ 厘米。如果把三条边都变成原来的 2 倍，体积会变成原来的几倍？从“堆多少块立方体”的角度解释。
  + 一个圆柱的底面积是 $S$，高是 $h$，体积是多少？这是用了本节哪条通用关系？
  + *[反直觉]* 长方体长 $4$、宽 $3$、高 $2$（厘米）。把宽变成 $3$ 倍、高变成 $1/3$、长不变，体积变了吗？再把长缩成 $1/2$，最终体积是原来的几倍？
  + *[跨知识点]* 一个正方体的表面积是 $54$ 平方厘米，求它的体积。先用 #secref("tool:pf07-perimeter-area") 的面积反推边长，再立方算体积。
  + *[构造题]* 构造两个不同的长方体，长宽高都是正整数，体积都是 $24$ 立方厘米，但表面积不同。给出长宽高并验证。
  + *[找 Bug]* 小亮说："底面积 $30$ 平方厘米、高 $5$ 厘米的容器，体积 $150$ 立方厘米，所以最多装 $150$ 升水。" 哪里错了？实际装多少升？

  #answer-cut[
  + $10 times 6 times 4 = 240$ 立方厘米。（长方体体积 $= $ 长 $times$ 宽 $times$ 高）
  + $3^3 = 27$ 立方分米 $= 27$ 升。（正方体体积 $=$ 边长³；$1$ 立方分米 $= 1$ 升）
  + $25 times 8 = 200$ 立方厘米。（体积 $= $ 底面积 $times$ 高）
  + 错。体积的单位是*立方*厘米（cm³），不是*平方*厘米（cm²）。平方厘米是面积单位。（体积带“立方”，面积带“平方”）
  + 面积量的是“铺满一层要多少个单位正方形”（二维），体积量的是“堆满空间要多少个单位立方体”（三维）。面积用面积单位，体积用立方单位。（面积 = 二维铺满，体积 = 三维堆满）
  + 第一步：体积 $= 80 times 50 times 40 = 160000$ 立方厘米。第二步：换算 $160000 div 1000 = 160$ 升。（$1$ 升 $= 1000$ 立方厘米）
  + $26 times 18 times 1.5 = 702$ 立方厘米。（长方体体积公式，长 $times$ 宽 $times$ 高）
  + 每条边切一半：$2 div 2 = 1$ 分米。每个小正方体体积 $= 1^3 = 1$ 立方分米。验证：$8 times 1 = 8 = 2^3$ ✓。
  + 新体积 $= 2a times 2b times 2c = 8 times (a times b times c) = 8 times$ 原体积。从“堆块”角度看：每条边上的块数翻倍，三个方向都翻倍，所以总块数 $= 2 times 2 times 2 = 8$ 倍。
  + 体积 $= S times h$。依据：本节的通用关系“体积 = 底面积 × 高”，对圆柱同样适用——先铺一层（底面积 $S$），再堆 $h$ 层高。
  + 新体积 $= 4 times (3 times 3) times (2 times 1/3) = 4 times 9 times 2/3 = 24$ 立方厘米；原体积 $4 times 3 times 2 = 24$ 立方厘米——居然没变！宽变 $3$ 倍、高变 $1/3$ 互相抵消。再让长变 $1/2$，体积变成 $1/2 times 24 = 12$，是原来的 $1/2$。反直觉点：体积比由三条边的变化系数*相乘*决定，单看某一边的"变大变小"判断不出方向。
  + 正方体六面相等，单面面积 $54 div 6 = 9$，所以边长 $sqrt(9) = 3$ 厘米；体积 $3^3 = 27$ 立方厘米（呼应 #secref("tool:pf07-perimeter-area")：先从面积反推边长，再立方算体积）。
  + 例 1：$1 times 1 times 24$，表面积 $2(1 + 24 + 24) = 98$ 平方厘米；例 2：$2 times 3 times 4$，表面积 $2(6 + 8 + 12) = 52$ 平方厘米。两者体积都是 $24$ 立方厘米但表面积差近一倍——体积不决定表面积（同体积可有不同形状与不同表面积）。
  + 错在单位换算：$1$ 升 $= 1000$ 立方厘米，所以 $150$ 立方厘米 $= 0.15$ 升，不是 $150$ 升。实际装 $0.15$ 升（升 ≠ 立方厘米，呼应 #secref("tool:pf05-units-measurement")）。
  ]
]
