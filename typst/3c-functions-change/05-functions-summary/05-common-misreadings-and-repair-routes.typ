#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

=== 函数学完后的常见误读与查漏指引 <meta:fn-repair-routes>

#blueprint[
  *函数最容易出现的 $10$ 类误读*

  #table(
    columns: (1.3fr, 1.5fr, 1fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*误读*], [*背后是哪条概念没稳*], [*忘了可以回到*],
    [图像没过原点 $=>$ 一定不是正比例], [正比例的判定标准是 $y = k x$ 且 $k != 0$；过原点是*结论*而非*判定方法*——还需要 $y / x$ 恒], [#secref("fn04-direct-variation")、#secref("fn05-linear-function")],
    [反比例图像“只在第一象限”], [$y = k / x$ 在 $k > 0$ 时分布在 I、III 两支；$k < 0$ 时分布在 II、IV 两支——*永远是两支*], [#secref("fn07-inverse-proportion")],
    [二次函数顶点公式记反，把 $-b / (2 a)$ 写成 $b / (2 a)$], [配方法的代数过程：$y = a (x - h)^2 + k$，其中 $h = -b / (2 a)$], [#secref("fn08-quadratic-function")],
    [拿到 $(x, y)$ 表只算“相邻差”，差不恒就直接断言“非线性”], [模型选择流程要*四问全过*：差 / 积 / 比 / 二阶差], [#secref("fn11-model-choice")],
    [乘法增长当成二次函数（看着前几项很像 $x^2$）], [短期被表象骗——必须*算相邻比*，比恒定才是乘法增长], [#secref("fn10-additive-vs-multiplicative-growth")、#secref("fn11-model-choice")],
    [比较 $y = 50 x$ 与 $y = 2^x$ 时，看到 $x = 5$ 处线性更大就断定线性永远更大], [短期 vs 长期的混淆——长期排名靠族不靠系数], [#secref("fn12-function-comparison")],
    [斜率算成 $(Delta x) / (Delta y)$（分子分母颠倒）], [斜率是“$y$ 的变化÷$x$ 的变化”——它问的是“每多 $1$ 个 $x$，$y$ 多多少”], [#secref("fn06-slope-as-rate")],
    [给两点求一次函数时，先算斜率却忘了再代回求截距 $b$], [一次函数有*两个*待定参数：$k$ 与 $b$，少求一个就只剩半个解], [#secref("fn05-linear-function")],
    [函数定义没把“一个 $x$ 对应*唯一一个* $y$”读进去（拿到一对多的散点也写函数式）], [函数的“唯一对应”是骨架——多对一可以，一对多不行], [#secref("fn01-table-as-function-view")、#secref("fn03-formula-as-function-view")],
    [二次函数 $y = a x^2 + b x + c$ 看到 $a > 0$ 就说“一定有最大值”], [开口方向：$a > 0$ 开口向上，顶点处取*最小值*；$a < 0$ 才是最大值], [#secref("fn08-quadratic-function")],
  )
]

#side-hack[
  *只补短板，不整章重刷*

  - 每错一道题，先问自己：“我在哪一条误读上踩了雷？”——定位到上表一行。
  - 按那行*忘了可以回到*列标注的章节，*只重读*对应那节的方法总结与常见陷阱，然后做一遍该节的应用两到三道。
  - 做完再回到 #secref("meta:functions-mixed-self-test") 的混合自测试一次；如果还卡，再按新卡点查上表。

  这套循环比“重刷一整本”要快得多，也更容易暴露真正的问题点。
]

#blueprint[
  *分支过关的信号*

  能同时做到以下五条，函数分支就算正式过关：

  + 拿到任意 $(x, y)$ *表*，能按*四问流程*（差 / 积 / 比 / 二阶差）稳定定族；卡在哪一族就报哪一族。
  + 拿到任意一个一次函数 / 反比例 / 二次函数*公式*，能写出图像的关键特征：截距、零点、对称轴、顶点、所在象限。
  + 拿到任意两点能稳定写出一次函数 $y = k x + b$，并能解释 $k$ 与 $b$ 各自代表什么*现实意义*。
  + 拿到任意两个 / 三个函数，能在*短期*与*长期*两个尺度上*分别*回答它们的大小关系，不混淆。
  + 拿到任意一段“随时间变化”的现象，能判断它属于*加法增长*还是*乘法增长*，并写出对应的函数式。
]

#side-hack[
  *函数与其他分支的衔接*

  - 往代数去：求函数的*零点* $f(x) = 0$ 就是解方程（#secref("al04-linear-one-variable") / #secref("al05-quadratic-solving")）；解 $f(x) > c$ 就是解不等式（#secref("al05-linear-inequalities")）。函数的*定义域*往往由分式与平方根的非负 / 非零条件决定，这也是代数工具。
  - 往几何去：直线 $y = k x + b$ 的*斜率* $k$ 就是直角三角形里 $tan$ 的几何意义（#secref("ge04-special-right-triangles")）；图像的平移 / 反射就是 #secref("ge05-rigid-transforms") 里的刚体变换。
  - 往数据去：散点分布的“集中趋势”最常用一次函数拟合（拟合工具不在初中，但思路是一致的）；增长 / 衰减模型与频率分布有共同直觉来源。
]
