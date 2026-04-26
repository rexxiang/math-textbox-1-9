#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref
#import "../../lib/diagram-packages.typ": cetz

=== 关系模板：把常见情景写成能反复套用的公式 <tool:cb04-relationship-templates>

#vocab[公式 formula][周长模板][面积模板][距离—速度—时间]

#crisis[
  同一个长方形，你可能今天要算周长、明天要算面积；同一段路程，可能已知速度和时间，也可能已知路程和速度。

  靠“每次重新想一遍”会不稳定。*我们要把这些反复出现的关系固定下来，用字母写成可直接套用的模板。*
]

#history-note[
  把常用关系写成字母公式，是中小学数学和物理共用的传统：一条公式背后其实是“这个量如何被别的几个量共同决定”，一旦认下来，碰到类似的场景就能直接套用。
]

#discovery[
  *周长与面积模板*

  - 长方形：周长 $C = 2(a + b)$，面积 $S = a b$（$a$ 长、$b$ 宽）。
  - 正方形：$C = 4 a$，$S = a^2$。
  - 三角形：$S = 1/2 times a times h$（$a$ 底、$h$ 高）。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *
      // Rectangle with labeled sides
      let w = 12
      let h = 6
      rect((0, 0), (w, h), fill: rgb("#E3F2FD"), stroke: 1.5pt + rgb("#1565C0"), radius: 2pt)
      // Side labels
      content((w / 2, -0.8), text(size: 9pt, weight: "bold", fill: rgb("#1565C0"))[$a$], anchor: "north")
      content((-0.8, h / 2), text(size: 9pt, weight: "bold", fill: rgb("#1565C0"))[$b$], anchor: "east")
      // Formulas inside
      content((w / 2, h / 2 + 0.8), text(size: 8pt, fill: rgb("#0D47A1"))[$C = 2(a + b)$])
      content((w / 2, h / 2 - 0.8), text(size: 8pt, fill: rgb("#0D47A1"))[$S = a b$])
      // Triangle next to it
      let tx = w + 5
      let tw = 8
      let th = 5
      line((tx, 0), (tx + tw, 0), (tx + tw * 0.4, th), close: true,
           fill: rgb("#FFF9C4"), stroke: 1.5pt + rgb("#F9A825"))
      // Base label
      content((tx + tw / 2, -0.8), text(size: 9pt, weight: "bold", fill: rgb("#F57F17"))[$a$], anchor: "north")
      // Height dashed line
      line((tx + tw * 0.4, 0), (tx + tw * 0.4, th),
           stroke: (dash: "dashed", paint: rgb("#F57F17"), thickness: 1pt))
      content((tx + tw * 0.4 - 0.8, th / 2), text(size: 9pt, weight: "bold", fill: rgb("#F57F17"))[$h$], anchor: "east")
      // Formula
      content((tx + tw / 2, th + 1.0), text(size: 8pt, fill: rgb("#F57F17"))[$S = 1/2 a h$], anchor: "south")
    }),
    caption: [长方形与三角形的面积模板],
  )

  *距离—速度—时间模板*

  $ s = v times t $

  它还能反解出两条“倒过来用”的模板：

  $ t = s / v, quad v = s / t quad (v != 0 "，"t != 0) $

  *总价—单价—数量模板*

  $ "总价" = "单价" times "数量" $

  每条模板都只是一次代数式的命名——只要你把具体量换上去，就立刻能算；反过来，任意两个量已知时，也能用反向模板解另一个。解出未知量的过程，就是下一章“解方程”的直接预告。
]

#side-hack[
  读到题目先问两件事：*谁是未知量*？*有没有现成模板能套*？不要每次都重推公式。
]

#tryit[
  + 一辆车以 $60$ 千米/小时行驶 $4.5$ 小时，走了多远？用哪条模板？
  + 一张长 $1.2$ 米、宽 $0.8$ 米的桌子，桌面的周长和面积各是多少？
  + 一本书共 $360$ 页，小明每天读 $24$ 页。多少天能读完？用哪条模板？
]

#blueprint[
  - *模板*：把常见关系 $y$ 由若干已知量决定写成带字母的公式，未知量也能出现在左边或右边。
  - *长方形*：$C = 2(a + b)$，$S = a b$。
  - *正方形*：$C = 4 a$，$S = a^2$。
  - *三角形*：$S = 1/2 a h$。
  - *匀速位移*：$s = v t$；反向：$t = s / v$、$v = s / t$。
  - *总价结构*：总价 $=$ 单价 $times$ 数量。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *
      // s = v × t triangle
      let cx = 8
      let cy = 3
      let r = 4.5
      // Triangle
      let top = (cx, cy + r * 0.8)
      let bl = (cx - r, cy - r * 0.5)
      let br = (cx + r, cy - r * 0.5)
      line(top, bl, br, close: true, fill: rgb("#E8F5E9"), stroke: 1.5pt + rgb("#388E3C"))
      // Horizontal divider
      let mid-y = cy + r * 0.15
      line((cx - r * 0.7, mid-y), (cx + r * 0.7, mid-y), stroke: 1pt + rgb("#388E3C"))
      // Vertical divider below
      line((cx, cy - r * 0.5), (cx, mid-y), stroke: 1pt + rgb("#388E3C"))
      // Labels
      content((cx, mid-y + (cy + r * 0.8 - mid-y) / 2),
        text(size: 11pt, weight: "bold", fill: rgb("#1B5E20"))[$s$])
      content((cx - r * 0.35, mid-y - (mid-y - cy + r * 0.5) / 2),
        text(size: 11pt, weight: "bold", fill: rgb("#1B5E20"))[$v$])
      content((cx + r * 0.35, mid-y - (mid-y - cy + r * 0.5) / 2),
        text(size: 11pt, weight: "bold", fill: rgb("#1B5E20"))[$t$])
      // Formula label
      content((cx, cy - r * 0.5 - 1.0),
        text(size: 8pt, fill: rgb("#555"))[$s = v times t$，遮住一个就能读出另一个关系], anchor: "north")
    }),
    caption: [速度—时间—路程三角：遮住 $s$ 则 $s = v t$，遮住 $v$ 则 $v = s / t$],
  )
]

#pitfall[
  *高频错误*

  ✗ 把三角形面积写成 $S = a h$（漏掉 $1/2$）
  → ✓ 三角形是“把一个相应的长方形切一半”，必须保留 $1/2$。

  ✗ 套用 $t = s / v$ 时忘了单位
  → ✓ $s$、$v$、$t$ 三者的单位要一致（千米与小时配、米与秒配）。

  ✗ 把“未知量”直接写成答案
  → ✓ 模板给出的是关系；具体值还得代入。
]

#mastery[
  *基础*

  + 一正方形边长 $7$ 厘米，求周长、面积。
  + 用代数式写出宽 $w$、长 $w + 5$ 的长方形的面积。
  + 一辆车以 $80$ 千米/小时行驶 $t$ 小时，走了多少千米？

  *应用*

  + 一三角形的底 $a = 10$、高 $h = 6$，求面积。
  + 一辆自行车从 $8:00$ 出发，以 $12$ 千米/小时的速度行驶，到 $10:30$ 它走了多远？
  + 每本笔记本 $4.5$ 元。用 $x$ 表示数量，写出总价的代数式，并在 $x = 8$ 时求总价。

  *挑战 ☞ 选做*

  + 一个长方形的长比宽多 $2$ 米，周长是 $20$ 米。写出长、宽的代数式并解出它们。（提示：先设未知量、再套用周长模板，下一章我们会正式解方程）
  + 甲车以 $v$ 的速度走了 $t$ 小时，乙车以 $2 v$ 的速度走了 $t/2$ 小时。用模板比较两人走的路程。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + 周长 $28$ 厘米；面积 $49$ 平方厘米。
  + $S = w (w + 5)$ 平方单位。
  + $80 t$ 千米。
  + $1/2 times 10 times 6 = 30$ 平方单位。
  + $12 times 2.5 = 30$ 千米。
  + 总价 $= 4.5 x$；$x = 8$ 时总价 $= 36$ 元。
  + 设宽 $w$，长 $w + 2$；周长 $2(2 w + 2) = 20$，得 $w = 4$，长 $6$（正式求解方式见下一章）。
  + 甲路程 $v t$；乙路程 $2 v times t / 2 = v t$。两人相等。
]

#side-hack[
  *☞ 这会在后面哪里再出现*

  - 代数分支的一元一次、二元一次方程应用题几乎全部套用本节的模板作为设置。
  - 函数分支里 $y = k x$（正比例）就是 $s = v t$ 的图形化。
  - 数据分支中“总量 $=$ 样本大小 $times$ 均值”同样是总价模板的推广。
]
