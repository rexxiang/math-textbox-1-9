#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall, secref
#import "../../lib/diagram-packages.typ": cetz

=== 一元一次方程的标准五步 <tool:al04-linear-one-variable>

#vocab[去分母 clearing denominators][去括号 distribution][移项 transposition][合并同类项 combining like terms][系数化 1 normalizing leading coefficient]

#crisis[
  在桥梁章 #secref("cb05-solving-linear") 里，你已经能够稳稳地处理 $2 x + 3 = 11$ 这类题目。但一旦方程里同时出现括号、分母，并且未知量在两边同时出现，口算"倒推"就开始慌：

  $ frac(x - 1, 2) - frac(x + 3, 6) = 1 $

  这里既有分数，又有需要合并的项。*不同题的步骤顺序应该一样*，否则每题都得想一遍要先干什么，很容易出错。

  本节的任务：把“该先做什么”这件事*机械化*——给出一套适用于任意一元一次方程的固定流程；让每一步都清清楚楚地对应一条*等式性质*。
]

#history-note[
  “代数”（Algebra）这个词来自花拉子密（约公元 820 年）所著的 _Al-Jabr_，原意正是“把一边的项*挪到*另一边”——也就是今天所说的“移项”。“算法”（Algorithm）一词则源自他的名字。一个人同时命名了两个现代概念。
]

#discovery[
  *每一步都能对应一条等式性质*

  一元一次方程的标准形是

  $ a x + b = c quad (a != 0), $

  通解是 $x = (c - b) / a$。但现实里的方程不会这么干净——括号、分母、两边混合是常态。所以我们把“解”拆成五个动作，每一步都可以用桥梁章 #secref("cb05-equality-properties") 的等式性质解释它为什么*不会破坏平衡*。

  #table(
    columns: (0.5fr, 1.2fr, 1.3fr),
    inset: 6pt,
    stroke: 0.4pt,
    [*步骤*], [*做什么*], [*背后靠哪条等式性质*],
    [1. 去分母], [两边同乘分母的最小公倍数], [两边同乘非零数 → 等式保持],
    [2. 去括号], [用分配律展开括号], [括号内外展开本身不是等式动作，它是左右两侧各自的化简],
    [3. 移项], [含未知量移到一边、常数移到另一边（*变号*）], [两边同加/同减 → 等式保持],
    [4. 合并同类项], [每一侧内部把同类项写到一起], [左右两侧各自化简，不动等号],
    [5. 系数化 1], [两边同除 $a$（$a != 0$）], [两边同除非零数 → 等式保持],
  )

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      // === Top balance: 2x + 3 = 11 ===
      let ful-x = 14
      let ful-y = 0
      // Fulcrum triangle
      line((ful-x - 1.2, ful-y), (ful-x + 1.2, ful-y), (ful-x, ful-y + 1.5), close: true,
           fill: rgb("#BDBDBD"), stroke: 0.8pt + rgb("#616161"))
      // Beam
      line((ful-x - 10, ful-y + 1.5), (ful-x + 10, ful-y + 1.5), stroke: 1.5pt + rgb("#424242"))
      // Left pan: 2x block
      rect((ful-x - 9.5, ful-y + 1.5), (ful-x - 5, ful-y + 4.2),
           fill: rgb("#BBDEFB"), stroke: 1pt + rgb("#1565C0"), radius: 3pt)
      content((ful-x - 7.25, ful-y + 2.85), text(size: 9pt, weight: "bold", fill: rgb("#0D47A1"))[$2 x$])
      // Left pan: +3 block
      rect((ful-x - 4.5, ful-y + 1.5), (ful-x - 1.5, ful-y + 4.2),
           fill: rgb("#C8E6C9"), stroke: 1pt + rgb("#2E7D32"), radius: 3pt)
      content((ful-x - 3, ful-y + 2.85), text(size: 9pt, weight: "bold", fill: rgb("#1B5E20"))[$3$])
      // Right pan: 11 block
      rect((ful-x + 2.5, ful-y + 1.5), (ful-x + 8, ful-y + 4.2),
           fill: rgb("#FFCDD2"), stroke: 1pt + rgb("#C62828"), radius: 3pt)
      content((ful-x + 5.25, ful-y + 2.85), text(size: 9pt, weight: "bold", fill: rgb("#B71C1C"))[$11$])
      // Equals at fulcrum
      content((ful-x, ful-y + 5), text(size: 10pt, weight: "bold")[$2 x + 3 = 11$])

      // Arrow down
      line((ful-x, ful-y - 0.5), (ful-x, ful-y - 2.5), stroke: 1.2pt + rgb("#757575"),
           mark: (end: "stealth", fill: rgb("#757575"), scale: 0.6))
      content((ful-x + 5, ful-y - 1.5), text(size: 7pt, fill: rgb("#616161"))[两边同减 $3$（移项）])

      // === Bottom balance: 2x = 8 ===
      let by = -8
      // Fulcrum
      line((ful-x - 1.2, by), (ful-x + 1.2, by), (ful-x, by + 1.5), close: true,
           fill: rgb("#BDBDBD"), stroke: 0.8pt + rgb("#616161"))
      // Beam
      line((ful-x - 10, by + 1.5), (ful-x + 10, by + 1.5), stroke: 1.5pt + rgb("#424242"))
      // Left pan: 2x only
      rect((ful-x - 8, by + 1.5), (ful-x - 3.5, by + 4.2),
           fill: rgb("#BBDEFB"), stroke: 1pt + rgb("#1565C0"), radius: 3pt)
      content((ful-x - 5.75, by + 2.85), text(size: 9pt, weight: "bold", fill: rgb("#0D47A1"))[$2 x$])
      // Right pan: 8
      rect((ful-x + 3.5, by + 1.5), (ful-x + 8, by + 4.2),
           fill: rgb("#FFCDD2"), stroke: 1pt + rgb("#C62828"), radius: 3pt)
      content((ful-x + 5.75, by + 2.85), text(size: 9pt, weight: "bold", fill: rgb("#B71C1C"))[$8$])
      // Label
      content((ful-x, by + 5), text(size: 10pt, weight: "bold")[$2 x = 8$])
    }),
    caption: [天平演示"移项"：两边同减 $3$，左边只剩 $2 x$，右边变为 $8$],
  )

  五步中真正“动等号”的只有 1、3、5；2、4 是每一侧内部的等值改写。搞清这一点，就不会再把移项和合并同类项混为一谈。

  *例*：解 $frac(x - 1, 2) - frac(x + 3, 6) = 1$。

  步骤 1（去分母，两边同乘 $6$）：$3(x - 1) - (x + 3) = 6$。\
  步骤 2（去括号）：$3 x - 3 - x - 3 = 6$。\
  步骤 3+4（移项并合并）：$2 x = 12$。\
  步骤 5（系数化 1）：$x = 6$。

  *代回检验不是“只有分式方程才做”*

  很多同学以为只有分式方程（#secref("al03-rational-equations-and-extraneous-roots")）才需要验根——其实不然。*代回原方程*是确认你上面 5 步里没有抄错号、没漏乘项的最可靠方式。分式方程额外多一条“还要验分母非零”，但普通一元一次方程也值得花 10 秒回代。

  *退化情况：什么时候不是“唯一解”？*

  五步走完后，如果得到的是：

  - $0 dot x = 0$（或 $k = k$）：对任何 $x$ 都成立——方程*有无穷多解*，是恒等式。
  - $0 dot x = c$（$c != 0$）：对任何 $x$ 都不成立——*无解*。

  这两种情况不是“算错”，而是原题本身就不是一个能锁死解的方程。如果在应用题里遇到，往往说明*题目条件少了一个*或*题目条件自相矛盾*。
]

#side-hack[
  五步不必每题都全跑一遍——没有分母就直接跳过第 1 步，没有括号就跳过第 2 步。*顺序固定*就行；能省的步骤自然省。
]

#tryit[
  先不要看下面的方法总结，按五步自己写：

  + 解 $5 x + 3 = 2 x - 9$（没有分母也没有括号）。
  + 解 $3 (2 x - 1) = 4 (x + 2)$（只有括号）。
  + 解 $frac(3 x - 1, 2) - frac(x + 2, 3) = 2$（分母和括号都有）。
]

#blueprint[
  *工具一：解一元一次方程的标准五步*

  + *去分母*：两边同乘各分母的最小公倍数；每一项都要乘。
  + *去括号*：分配律展开；减号后的每一项都要变号。
  + *移项*：含未知量的项挪到一边、常数项挪到另一边；*挪过去的项要变号*。
  + *合并同类项*：左右两侧各自把同类项合成一项。
  + *系数化 1*：两边同除未知量的系数（系数 $!= 0$）。

  每题做完，*代回原方程检验*：把算出来的值塞回等号两边，看是否相等。

  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let box-h = 3
      let box-w = 5.5
      let gap = 1.8
      let y0 = 0
      let colors = (
        rgb("#1565C0"), rgb("#E65100"), rgb("#2E7D32"), rgb("#6A1B9A"), rgb("#C62828"),
      )
      let fills = (
        rgb("#BBDEFB"), rgb("#FFE0B2"), rgb("#C8E6C9"), rgb("#E1BEE7"), rgb("#FFCDD2"),
      )
      let labels = ("① 去分母", "② 去括号", "③ 移项", "④ 合并", "⑤ 系数化1")

      for i in range(5) {
        let x0 = i * (box-w + gap)
        rect((x0, y0), (x0 + box-w, y0 + box-h),
             fill: fills.at(i), stroke: 1.2pt + colors.at(i), radius: 4pt)
        content((x0 + box-w / 2, y0 + box-h / 2),
                text(size: 7pt, weight: "bold", fill: colors.at(i))[#labels.at(i)])
        if i < 4 {
          let ax = x0 + box-w + 0.2
          line((ax, y0 + box-h / 2), (ax + gap - 0.4, y0 + box-h / 2),
               stroke: 1pt + rgb("#757575"),
               mark: (end: "stealth", fill: rgb("#757575"), scale: 0.5))
        }
      }

      // Return arrow: "代回检验"
      let total-w = 5 * box-w + 4 * gap
      let arr-y = y0 - 1.5
      line((total-w, y0 - 0.2), (total-w, arr-y), (0, arr-y), (0, y0 - 0.2),
           stroke: 1pt + rgb("#D84315"),
           mark: (end: "stealth", fill: rgb("#D84315"), scale: 0.5))
      content((total-w / 2, arr-y - 0.8), text(size: 7pt, fill: rgb("#D84315"), weight: "bold")[代回检验])
    }),
    caption: [一元一次方程五步流程：从去分母到系数化 1，最后代回检验],
  )

  *例 A*：$5 x + 3 = 2 x - 9$ → 移项合并：$3 x = -12$ → 系数化 1：$x = -4$。代回：$5 dot (-4) + 3 = -17$，$2 dot (-4) - 9 = -17$ ✓。

  *例 B*：$3 (2 x - 1) = 4 (x + 2)$ → 去括号：$6 x - 3 = 4 x + 8$ → 移项合并：$2 x = 11$ → $x = 11 / 2$。代回即验证。

  *例 C*：$frac(3 x - 1, 2) - frac(x + 2, 3) = 2$ → 两边 $times 6$：$3 (3 x - 1) - 2 (x + 2) = 12$ → 去括号：$9 x - 3 - 2 x - 4 = 12$ → 合并：$7 x - 7 = 12$ → 移项：$7 x = 19$ → $x = 19 / 7$。

  *工具二：代回检验作为“自我确认”*

  代回不是“检查题目会不会有增根”，而是把 5 步里的抄写风险（漏乘、漏变号）一次性兜住。养成习惯后，你的错题率会明显下降。

  *工具三：化简后的退化情况*

  - 若化简为 $k = k$ 这种恒成立形式 → 原方程有*无穷多解*。
  - 若化简为 $k = k'$（$k != k'$）这种矛盾形式 → 原方程*无解*。

  在应用题里遇到这两种情况，要停下来检查自己的设元与“等量关系”是否出了问题。
]

#pitfall[
  *高频错误*

  ✗ 去分母时只乘含分式的项，漏乘独立的常数 $1$
  → ✓ 每一项都要乘以公分母——包括右边单独写着的数 $1$，它要乘成 $6$。

  ✗ 去括号时，减号后的项忘了变号
  → ✓ $- (x + 3)$ 应写成 $-x - 3$，不要写成 $-x + 3$。

  ✗ 移项时不变号，照搬数字过去
  → ✓ 从 $3 x - 7 = 2 x + 5$ 到 $3 x - 2 x = 5 + 7$，挪过去的项*变号*。

  ✗ 得到 $0 = 0$ 就写“$x = 0$”
  → ✓ $0 = 0$ 是恒等式，说明原方程有无穷多解，不是“$x = 0$”这个具体值。
]

#mastery[
  *基础*

  + 解方程：
    - $4 x - 9 = 2 x + 3$
    - $2 (x - 3) = x + 4$
    - $frac(x + 2, 3) = frac(2 x - 1, 4)$

  *应用*

  + 解方程：$frac(2 x - 1, 3) - frac(x - 2, 2) = 1$。
  + 已知关于 $x$ 的方程 $2 x + a = 3 (x - a)$ 的解是 $x = 8$，求 $a$。
  + 化简 $(x - 3) / 2 + 1 = 4$，按标准五步写出每一步，并代回检验。

  *挑战 ☞ 选做*

  + 讨论方程 $(k - 1) x = 3$ 在 $k = 1$ 和 $k != 1$ 两种情况下分别有几个解；在 $k = 1$ 时它属于“无解”还是“恒等式”？说明理由。
  + 解关于 $x$ 的方程 $3 (x - m) = 2 x + m$（$m$ 是常数），并写出解关于 $m$ 的表达式。
  + 解 $frac(x, 0.7) - frac(0.17 - 0.2 x, 0.03) = 1$。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_

  *基础*
  + $2 x = 12$，$x = 6$。
  + $2 x - 6 = x + 4 => x = 10$。
  + 两边乘 $12$：$4 (x + 2) = 3 (2 x - 1) => 4 x + 8 = 6 x - 3 => -2 x = -11 => x = 11 / 2$。

  *应用*
  + 两边乘 $6$：$2 (2 x - 1) - 3 (x - 2) = 6 => 4 x - 2 - 3 x + 6 = 6 => x + 4 = 6 => x = 2$。
  + 把 $x = 8$ 代入：$16 + a = 3 (8 - a) = 24 - 3 a$；$4 a = 8$，$a = 2$。
  + $(x - 3) / 2 = 3 => x - 3 = 6 => x = 9$；代回 $(9 - 3) / 2 + 1 = 4$ ✓。

  *挑战 ☞ 选做*
  + $k != 1$：$x = 3 / (k - 1)$，唯一解；$k = 1$：化为 $0 dot x = 3$，形如“$0 = 3$”，是*矛盾*——*无解*，不是恒等式。
  + 去括号：$3 x - 3 m = 2 x + m => x = 4 m$。
  + 两边乘 $2.1$（即 $21/10$）：$3 x - 70 (0.17 - 0.2 x) = 2.1 => 3 x - 11.9 + 14 x = 2.1 => 17 x = 14 => x = 14 / 17$。
]
