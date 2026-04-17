#import "../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall
#import "../lib/diagram-packages.typ": cetz
#import "../lib/geometry-helpers.typ": equal-angle

== §6.9 勾股定理 <sec-6-9>

#vocab[勾股定理 Pythagorean theorem / 斜边 hypotenuse / 直角边 leg]

#crisis[
  你在装修新房，准备铺地砖。师傅说：「先检查墙角是不是直角。」怎么检查？师傅拿出卷尺，沿一面墙量 $3$ 米，沿另一面墙量 $4$ 米，然后量对角线。

  *如果对角线恰好是 $5$ 米，墙角就是直角。为什么？*
]

#history-note[
  *赵爽弦图 vs 毕达哥拉斯*：西方将此定理归功于古希腊的毕达哥拉斯（约公元前 570—495 年），但中国数学家赵爽（约公元 3 世纪）在注释《周髀算经》时画出了著名的「弦图」——用四个全等直角三角形拼成一个大正方形，中间留出一个小正方形，从而给出了一个极为优美的面积证明。实际上，巴比伦泥板（约公元前 1800 年）上已经记录了勾股数组，说明这一关系的发现远早于毕达哥拉斯。中国称之为「勾股定理」（勾 = 短直角边，股 = 长直角边，弦 = 斜边），印度、中国、巴比伦各自独立发现了这一定理——它是全人类共同的数学遗产。
]

#discovery[
  *第一步*：观察规律。

  画一个直角三角形，三条边分别为 $a = 3$，$b = 4$，$c = 5$（$c$ 是斜边）。

  在每条边上分别画一个正方形：面积分别为 $9$、$16$、$25$。

  $9 + 16 = 25$——两个小正方形的面积之和恰好等于大正方形的面积！

  再试 $a = 5, b = 12, c = 13$：$25 + 144 = 169$。又对了！

#figure(
  cetz.canvas(length: 1.2cm, {
    import cetz.draw: *
    import cetz.angle: right-angle
    // Right triangle: right angle at A=(0,0), B=(4,0), C=(0,3)
    let A = (0, 0)
    let B = (4, 0)
    let C = (0, 3)
    line(A, B, stroke: 0.9pt)
    line(B, C, stroke: 0.9pt)
    line(C, A, stroke: 0.9pt)
    right-angle(A, B, C, stroke: 0.5pt)
    // Labels on triangle sides
    content((2, -0.3), text(9pt)[$b = 4$])
    content((-0.5, 1.5), text(9pt)[$a = 3$])
    content((2.4, 1.8), text(9pt)[$c = 5$])
    // Square on AB (downward, area 16)
    rect((0,-4),(4,0), fill: rgb("#E3F2FD"), stroke: 0.6pt)
    content((2, -2), text(10pt, fill: blue)[$4^2=16$])
    // Square on AC (leftward, area 9)
    rect((-3,0),(0,3), fill: rgb("#E8F5E9"), stroke: 0.6pt)
    content((-1.5, 1.5), text(10pt, fill: green)[$3^2=9$])
    // Square on BC (hypotenuse, area 25)
    // BC direction: from B(4,0) to C(0,3), vector (-4,3), length=5
    // perpendicular outward direction: (3/5, 4/5)
    // square vertices: B, C, C+(3,4), B+(3,4) = (4,0),(0,3),(3,7),(7,4)
    merge-path({
      line((4,0),(0,3),(3,7),(7,4))
    }, close: true, fill: rgb("#FFF3E0"), stroke: 0.6pt)
    content((3.5, 3.5), text(10pt, fill: orange)[$5^2=25$])
  }),
  caption: [$a^2 + b^2 = c^2$：$3^2 + 4^2 = 9 + 16 = 25 = 5^2$]
)

  *第二步*：赵爽弦图证明。

  取四个全等的直角三角形（直角边 $a$、$b$，斜边 $c$），放在一个边长为 $(a + b)$ 的大正方形的四个角上，中间留出一个倾斜的边长为 $c$ 的小正方形（如下图）。

  大正方形面积 $= (a + b)^2 = a^2 + 2 a b + b^2$。

  大正方形面积也 $= 4 times frac(1, 2) a b + c^2 = 2 a b + c^2$。

  两式相等：$a^2 + 2 a b + b^2 = 2 a b + c^2$，消去 $2 a b$，得 $a^2 + b^2 = c^2$。

#figure(
  cetz.canvas(length: 1.3cm, {
    import cetz.draw: *
    import cetz.angle: right-angle
    let sc = 0.65
    let a = 3.0 * sc  // 1.95
    let b = 4.0 * sc  // 2.60
    let s = 7.0 * sc  // 4.55
    // Outer square boundary
    rect((0,0),(s,s), stroke: 0.7pt)
    // Inner tilted square (blue) — drawn first so triangles appear on top
    merge-path({
      line((b,0),(s,b),(a,s),(0,a))
    }, close: true, fill: rgb("#BBDEFB"), stroke: 0.6pt + blue)
    content((s/2, s/2), text(10pt, fill: blue)[$c^2$])
    // Four right triangles (red)
    merge-path({line((0,0),(b,0),(0,a))}, close: true, fill: rgb("#FFCDD2"), stroke: 0.6pt)
    merge-path({line((s,0),(b,0),(s,b))}, close: true, fill: rgb("#FFCDD2"), stroke: 0.6pt)
    merge-path({line((s,s),(a,s),(s,b))}, close: true, fill: rgb("#FFCDD2"), stroke: 0.6pt)
    merge-path({line((0,s),(a,s),(0,b))}, close: true, fill: rgb("#FFCDD2"), stroke: 0.6pt)
    // Right angle marks
    right-angle((0,0),(b,0),(0,a), stroke: 0.4pt)
    right-angle((s,0),(b,0),(s,b), stroke: 0.4pt)
    right-angle((s,s),(a,s),(s,b), stroke: 0.4pt)
    right-angle((0,s),(a,s),(0,b), stroke: 0.4pt)
    // Side labels
    content((b/2, -0.25), text(8pt)[$b$])
    content((-0.3, a/2), text(8pt)[$a$])
    content((s+0.15, b/2), text(8pt)[$b$])
    // Label one triangle
    content((b/3, a/2.5), text(7pt, fill: red)[$frac(a b, 2)$])
  }),
  caption: [赵爽弦图：$(a+b)^2 = 4 times frac(a b, 2) + c^2$，故 $c^2 = a^2 + b^2$]
)

  *第三步*：逆定理。

  反过来也成立：如果三角形的三边满足 $a^2 + b^2 = c^2$，那么这个三角形就是直角三角形（$c$ 所对的角是直角）。

  这就是装修师傅检查直角的原理：$3^2 + 4^2 = 9 + 16 = 25 = 5^2$。
]

#tryit[
  先自己动手，再看蓝图：

  + 验证 $3$、$4$、$5$ 是勾股数：计算 $3^2 + 4^2$，看是否等于 $5^2$。
  + 一个直角三角形，两条直角边分别是 $5$ 和 $12$，求斜边的长度。（提示：$c = sqrt(a^2 + b^2)$）

  试着不查公式先算，完成后对照下面的蓝图。
]

#side-hack[
  *常见勾股数*（背下来能大幅提速）：

  - $3, 4, 5$（以及它的倍数：$6, 8, 10$；$9, 12, 15$；……）
  - $5, 12, 13$
  - $8, 15, 17$
  - $7, 24, 25$

  验证方法：$a^2 + b^2 = c^2$（$c$ 最大）。如果三边成比例关系（如 $6, 8, 10 = 2 times (3, 4, 5)$），也是勾股数组。
]

#blueprint[
  *勾股定理*

  直角三角形中，两条直角边 $a$、$b$ 的平方和等于斜边 $c$ 的平方：

  $ a^2 + b^2 = c^2 $

  *勾股定理的逆定理*

  若三角形三边 $a, b, c$（$c$ 最大）满足 $a^2 + b^2 = c^2$，则该三角形是直角三角形，$c$ 所对的角为 $90 degree$。

  *应用 1：求直角三角形的边长*

  - 已知两直角边 $a = 6$，$b = 8$，求斜边：$c = sqrt(a^2 + b^2) = sqrt(36 + 64) = sqrt(100) = 10$
  - 已知斜边 $c = 13$，一直角边 $a = 5$，求另一直角边：$b = sqrt(c^2 - a^2) = sqrt(169 - 25) = sqrt(144) = 12$

  *应用 2：平面上两点间的距离*

  在坐标平面上，$A(x_1, y_1)$ 和 $B(x_2, y_2)$ 之间的距离：

  $ d = sqrt((x_2 - x_1)^2 + (y_2 - y_1)^2) $

  *应用 3：长方体的体对角线*

  长方体的长、宽、高分别为 $a$、$b$、$c$，则体对角线长：

  $ d = sqrt(a^2 + b^2 + c^2) $

  *例 1*：一个梯子长 $5$ 米，底端距墙脚 $3$ 米，梯子顶端距地面多高？

  *解*：梯子、墙壁、地面构成直角三角形。$h = sqrt(5^2 - 3^2) = sqrt(25 - 9) = sqrt(16) = 4$（米）。

  *例 2*：判断三边为 $7, 24, 25$ 的三角形是否为直角三角形。

  *解*：$7^2 + 24^2 = 49 + 576 = 625 = 25^2$。满足勾股定理的逆定理，所以是直角三角形。

  *例 3*：求 $A(1, 2)$ 和 $B(4, 6)$ 之间的距离。

  *解*：$d = sqrt((4 - 1)^2 + (6 - 2)^2) = sqrt(9 + 16) = sqrt(25) = 5$。

  *例 4*：一个长方体的长、宽、高分别为 $3, 4, 12$，求体对角线长。

  *解*：$d = sqrt(3^2 + 4^2 + 12^2) = sqrt(9 + 16 + 144) = sqrt(169) = 13$。
]

#pitfall[
  *陷阱 1*：公式 $a^2 + b^2 = c^2$ 中，$c$ 必须是*斜边*（最长边），$a$ 和 $b$ 是两条直角边。不能把斜边放到等号左边，否则计算结果错误。

  #grid(columns: (1fr, 1fr), gutter: 8pt,
    block[*正确*：\ 直角边 $a = 3$，$b = 4$，\ 斜边 $c = sqrt(3^2 + 4^2) = 5$],
    block[*错误*：\ 把 $c = 4$ 代入 $3^2 + 4^2 = ?$ 当作斜边，\ 得到 $9 + 16 = 25$，误以为任意边都可以是「斜边」]
  )

  *陷阱 2*：逆定理的条件是「$a^2 + b^2 = c^2$（$c$ 最大）才是直角三角形」。只有最大边对应的平方和才能说明是直角，不能用任意两边来判断。
]

#mastery[
  *基础*

  + 直角三角形的两条直角边分别为 $9$ 和 $12$，求斜边。
  + 直角三角形的斜边为 $17$，一条直角边为 $8$，求另一条直角边。
  + 判断以下各组数能否构成直角三角形的三边：
    - $5, 12, 13$
    - $6, 7, 10$
    - $9, 40, 41$

  *应用*

  + 一棵树在 $3$ 米高处断裂，树的顶部落在离树根 $4$ 米的地面上。求树原来的高度。
  + 足球场是一个长 $100$ 米、宽 $70$ 米的矩形。从一个角踢到对角的距离是多少？（保留一位小数）
  + 求 $A(-2, 3)$ 和 $B(1, -1)$ 之间的距离。

  *挑战*

  + 在 $triangle A B C$ 中，$angle C = 90 degree$，$A C = 15$，$B C = 20$。点 $D$ 在 $A B$ 上，且 $C D perp A B$。求 $C D$。
  + 一个长方体的长、宽、高分别为 $1, 2, 3$，一只蚂蚁从一个顶点沿表面爬到对角顶点，最短路径是多少？（提示：展开长方体表面。）
  + 用面积法证明勾股定理：用边长为 $(a + b)$ 的大正方形，内嵌一个边长为 $c$ 的斜放正方形，四个角各填一个直角三角形。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + $c = sqrt(9^2 + 12^2) = sqrt(81 + 144) = sqrt(225) = 15$
  + $b = sqrt(17^2 - 8^2) = sqrt(289 - 64) = sqrt(225) = 15$
  + $5^2 + 12^2 = 25 + 144 = 169 = 13^2$，是。$6^2 + 7^2 = 36 + 49 = 85 != 100 = 10^2$，不是。$9^2 + 40^2 = 81 + 1600 = 1681 = 41^2$，是。

  *应用*
  + 断裂处到顶部的距离 $= sqrt(3^2 + 4^2) = 5$（米）。树原来的高度 $= 3 + 5 = 8$（米）。
  + $d = sqrt(100^2 + 70^2) = sqrt(10000 + 4900) = sqrt(14900) approx 122.1$（米）
  + $d = sqrt((1-(-2))^2 + ((-1)-3)^2) = sqrt(9 + 16) = 5$

  *挑战*
  + $A B = sqrt(15^2 + 20^2) = sqrt(225 + 400) = 25$。面积法：$S = frac(1, 2) times 15 times 20 = 150 = frac(1, 2) times 25 times C D$，$C D = frac(300, 25) = 12$。
  + 展开长方体表面，有多种展开方式。最短路径对应展开图上两点的直线距离。展开方式一：沿宽 $2$ 和高 $3$ 展开，路径 $= sqrt((1 + 2)^2 + 3^2) = sqrt(9 + 9) = 3 sqrt(2) approx 4.24$。展开方式二：沿长 $1$ 和高 $3$ 展开，路径 $= sqrt((2 + 1)^2 + 3^2) = 3 sqrt(2)$。展开方式三：沿长 $1$ 和宽 $2$ 展开，路径 $= sqrt((3 + 1)^2 + 2^2) = sqrt(20) = 2 sqrt(5) approx 4.47$。还有 $sqrt((3 + 2)^2 + 1^2) = sqrt(26) approx 5.10$。最短路径为 $3 sqrt(2) approx 4.24$。
  + 大正方形面积 $= (a + b)^2 = a^2 + 2 a b + b^2$。大正方形面积也 $= c^2 + 4 times frac(1, 2) a b = c^2 + 2 a b$。所以 $a^2 + 2 a b + b^2 = c^2 + 2 a b$，化简得 $a^2 + b^2 = c^2$。
]
