#import "../../lib/theme-v2.typ": blueprint, side-hack, tryit
#import "../../lib/diagram-packages.typ": cetz, fletcher

=== 知识地图与查漏路线

全书的知识结构是一棵树，不是一条直线。这不是比喻，而是字面意义上的：每一个新工具都从某些前面学过的知识"长"出来——它解决前面学过的知识解决不了的问题，同时成为下一个工具的基础。

理解这棵树，能帮助你：
- 知道"我现在在哪"
- 知道"往前走需要什么"
- 卡住时知道"往哪里回"

==== 知识地图的基本结构

#blueprint[
  *树根*：全书入口，也就是本导读章节。它建立阅读方法，不依赖任何前置知识。

  *树干（共同地基）*：数、量、形、位置、关系这五类基础知识。绝大多数后续章节都会使用这里的某几样。

  *过渡站（总结）*：在共同地基和专题深化之间的位置。用来确认前面学过的知识能连起来用，同时为进入专题深化做准备。

  *树枝（专题深化）*：代数、几何、函数、数据这四条深化路线，各自沿着自己的方向继续往深处走。

  *树冠（重新会合）*：终章把四条路线重新连成网。只有在树枝走够了之后，这里才看得出远距离呼应。
]

==== 怎样看知识地图的位置

每一章的"这节的方法"框里都有一行"知识地图位置"。这一行告诉你：

- 这一章的知识是从哪里长出来的
- 它的需要先会的知识是什么
- 学完后，你可以走向哪些下一步

第一次读这一行时，先记下来，不需要全部理解。等读完整章再回来看，通常会清晰很多。

每章的知识点节都按*同一条六阶段发明链*组织，如图 @fig-invention-chain 所示——卡住时也可以沿虚线回补到上一阶段：

#figure(
  {
    import fletcher: diagram, node, edge
    diagram(
      node-stroke: 0.8pt,
      spacing: (3.5em, 2em),
      node((0,0), [*crisis*\ 遇到困境], shape: rect, fill: rgb("#FFEBEE")),
      node((1,0), [*discovery*\ 探索发现], shape: rect, fill: rgb("#FFF8E1")),
      node((2,0), [*tryit*\ 动手试试], shape: rect, fill: rgb("#E8F5E9")),
      node((3,0), [*blueprint*\ 划重点], shape: rect, fill: rgb("#E3F2FD")),
      node((4,0), [*pitfall*\ 易错提醒], shape: rect, fill: rgb("#FCE4EC")),
      node((5,0), [*mastery*\ 练一练], shape: rect, fill: rgb("#F3E5F5")),
      edge((0,0), (1,0), "->"),
      edge((1,0), (2,0), "->"),
      edge((2,0), (3,0), "->"),
      edge((3,0), (4,0), "->"),
      edge((4,0), (5,0), "->"),
      edge((5,0), (0,0), "--", bend: 40deg, label: [回补]),
    )
  },
  caption: [六阶段发明链：crisis $->$ discovery $->$ tryit $->$ blueprint $->$ pitfall $->$ mastery（虚线：卡住时回补路径）],
) <fig-invention-chain>

==== 卡住时怎样顺着地图补缺

当你在某一章卡住，不知道该回哪里时，按下面这条路径走：

#blueprint[
  *第一步：看"需要先会的知识"。*在卡住的那一章的"这节的方法"框里，找到"需要先会的知识"一行。这一行列出了这章依赖的工具，也就是你最可能需要补的地方。

  *第二步：判断你缺的是哪一个。*用上一章介绍的三种卡住（概念空白、表示空白、练习空白）诊断，找到缺的那一个，不要把前置工具全部重学。

  *第三步：顺着书内引用跳转。*本书的每一节都有一个书内位置标记，可以直接翻到那一节，找到对应内容后补。补完后，回到原来卡住的地方继续。

  *第四步：确认补上了再往前走。*用一个具体例子检验你刚补的内容是否真的搞懂了。能熟练使用，再回到主线继续。
]

==== 查漏路线不是退路，是快捷方式

#side-hack[
  很多自学者觉得"回去补"是"走弯路"或"前功尽弃"。实际上恰恰相反：有针对性地补一个小点，比带着模糊理解硬撑往前走，到达同一个目的地的实际时间更短，而且走得更稳。
]

树状结构意味着：走对了方向，你可以把前面的工具全部带上。走到一条分叉时，先确认你手里有这条路需要的前面学过的知识，再选择进入。

#tryit[
  打开目录，找到一章你还没读过的章节，读它"这节的方法"框里的"需要先会的知识"和"知识地图位置"。你能在全书结构图里找到这章的位置吗？它依赖的前面学过的知识，你有多少已经学过了？
]


==== 数学发明时间轴

数学工具是一代代人接力发明的。下面的时间轴把本书涉及的几个关键历史节点排列出来，帮你感受这些工具从哪里来、又怎样一步步连接到下一代。

#figure(
  cetz.canvas(length: 0.5cm, {
    import cetz.draw: *

    // Vertical timeline axis
    let top = 28
    let bot = 0
    let x-axis = 6
    line((x-axis, bot), (x-axis, top), stroke: 0.8pt + rgb("#444"))

    // 9 milestones (year, year-label, description, color)
    let ancient = rgb("#8E5A2A")    // 古代（前 1650 — 250）
    let medieval = rgb("#1E6091")   // 中世纪（820）
    let early-modern = rgb("#2E7D32") // 近代早期（1591 — 1748）
    let modern = rgb("#6A1B9A")     // 近代（1812）

    let entries = (
      (26, "约前 1650 年", "莱因德纸草书：古埃及分数与方程", ancient),
      (23, "约前 300 年", "欧几里得《几何原本》：几何公理体系", ancient),
      (20, "约前 100 年", "《九章算术》：分数、方程组、勾股", ancient),
      (17, "约 250 年", "丢番图《算术》：最早的符号代数", ancient),
      (14, "约 820 年", "花拉子米《代数学》：系统化一次/二次方程", medieval),
      (11, "1591 年", "韦达《分析方法入门》：字母代数与通用公式", early-modern),
      (8,  "1637 年", "笛卡儿《几何学》：坐标系，代数与几何融合", early-modern),
      (5,  "1694 / 1748 年", "莱布尼茨与欧拉：函数概念与 $f(x)$ 记号", early-modern),
      (2,  "1812 年", "拉普拉斯《概率分析理论》：古典概率公式定型", modern),
    )

    for (y, year, desc, c) in entries {
      // dot
      circle((x-axis, y), radius: 0.2, fill: c, stroke: 0.6pt + c)
      // small horizontal tick
      line((x-axis - 0.5, y), (x-axis + 0.5, y), stroke: 0.6pt + c)
      // year label on left
      content((x-axis - 0.8, y), text(size: 7pt, weight: "bold", fill: c)[#year], anchor: "east")
      // description on right
      content((x-axis + 0.8, y), text(size: 7pt, fill: rgb("#222"))[#desc], anchor: "west")
    }

    // legend at bottom
    let lx = 0.5
    let ly = -2
    rect((lx, ly - 0.3), (lx + 30, ly + 1.0), stroke: 0.3pt + rgb("#999"), fill: rgb("#FAFAFA"))
    let lcols = (
      (ancient, "古代"),
      (medieval, "中世纪"),
      (early-modern, "近代早期"),
      (modern, "近代"),
    )
    for (i, item) in lcols.enumerate() {
      let (col, name) = item
      let cx = lx + 1 + i * 7
      circle((cx, ly + 0.4), radius: 0.18, fill: col, stroke: none)
      content((cx + 0.7, ly + 0.4), text(size: 6pt, fill: rgb("#333"))[#name], anchor: "west")
    }
  }),
  caption: [数学发明时间轴：本书涉及的九个历史节点],
)
