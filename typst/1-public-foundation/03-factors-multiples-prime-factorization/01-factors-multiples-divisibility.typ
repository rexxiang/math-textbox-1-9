#import "../../lib/theme-v2.typ": crisis, discovery, blueprint, mastery, history-note, side-hack, vocab, tryit, pitfall
#import "../../lib/diagram-packages.typ": cetz

=== 因数、倍数与整除线索 <tool:pf03-factors-multiples>

#vocab[因数 factor][倍数 multiple][整除 divisibility]

#crisis[
  24 个学生要平均分组做实验，要求每组人数相同、不能有人落单。

  哪些分法可以，哪些分法不行？如果人数变大了，又怎样快速看出它能不能被 2、3、5 这些常见数字整齐分开？
]

#history-note[
  研究“能不能整齐分”并不只是游戏。分组、包装、切分、约分，背后都需要先看清一个整数内部有哪些整齐结构。
]

#discovery[
  把 24 写成乘法：

  $ 24 = 1 times 24 = 2 times 12 = 3 times 8 = 4 times 6 $

  这说明 1、2、3、4、6、8、12、24 都能整齐分进 24，它们就是 24 的因数。


  #figure(
    cetz.canvas(length: 0.4cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let light = rgb("#E3F2FD")

      // Show factor pairs of 24 as rectangular arrays
      let pairs = ((1, 24, 0), (2, 12, 5), (3, 8, 9), (4, 6, 12.5))

      for (a, b, xoff) in pairs {
        // Draw small rectangles as array a × b (scaled)
        let w = calc.min(b, 12) * 0.35
        let h = a * 0.9
        rect((xoff, 0), (xoff + w, h), fill: light, stroke: 0.8pt + blue)

        // Grid lines
        for i in range(1, calc.min(b, 12)) {
          line((xoff + i * 0.35, 0), (xoff + i * 0.35, h), stroke: 0.3pt + luma(180))
        }
        for j in range(1, a) {
          line((xoff, j * 0.9), (xoff + w, j * 0.9), stroke: 0.3pt + luma(180))
        }

        content((xoff + w / 2, -0.8), text(size: 8pt, weight: "bold")[$#a times #b$], anchor: "north")
      }

      content((8, 5), text(size: 9pt)[都等于 24], anchor: "south")
    }),
    caption: [24 的因数对：$1 times 24$、$2 times 12$、$3 times 8$、$4 times 6$],
  )

  反过来看，24 是这些数的整倍结果，所以 24 是它们的倍数。

  对一些常用数字，我们还总结出了快线索：

  - 末位是 0、2、4、6、8，就能被 2 整除
  - 末位是 0 或 5，就能被 5 整除
  - 各位数字和能被 3 整除，原数就能被 3 整除
]

#side-hack[
  找因数时，从小数试起，并且一旦找到一个因数，常常能同时得到配对的另一个因数。
]

#tryit[
  先自己试试：

  + 写出 18 的所有因数。
  + 126 能不能被 2、3、5 整除？
  + 为什么 36 同时是 4 和 9 的倍数？
]

#blueprint[
  - 若 $a = b times c$，则 b、c 是 a 的*因数*，a 是 b、c 的*倍数*。
  - “能整齐分开”就是在看能否整除。
  -
  #figure(
    cetz.canvas(length: 0.45cm, {
      import cetz.draw: *

      let blue = rgb("#2196F3")
      let red = rgb("#F44336")

      // Number line showing multiples of 6
      line((-1, 0), (22, 0), stroke: 1.2pt + luma(80), mark: (end: ">"))

      for i in range(6) {
        let x = i * 4
        line((x, -0.5), (x, 0.5), stroke: 1pt + luma(60))
        content((x, -1.4), text(weight: "bold", size: 9pt, str(i * 6)), anchor: "north")
        if i > 0 {
          // Arc showing +6
          bezier((x - 4, 0.4), (x, 0.4), (x - 2, 2.2),
                 stroke: 1pt + blue, mark: (end: ">"))
        }
      }

      content((10, 3), text(fill: blue, size: 8pt)[每次 +6], anchor: "south")
    }),
    caption: [6 的倍数在数轴上：0, 6, 12, 18, 24, 30……等间隔排列],
  )

  - 常用整除线索：
    - 2：看末位是否为偶数
    - 5：看末位是否为 0 或 5
    - 3：看各位数字之和是否能被 3 整除
]

#pitfall[
  *高频错误*

  ✗ 把因数和倍数说反：说“3 是 24 的倍数”
  → ✓ 因为 $24 = 3 times 8$，所以 3 在 24 里面，是 24 的因数；24 才是 3 的倍数。

  ✗ 只写出一半因数就停下
  → ✓ 因数常成对出现，找到 3，也别忘了和它配对的 8。
]

#mastery[
  *基础*

  + 写出 24 和 30 的所有因数。
  + 写出 6 的前 5 个正倍数。
  + 判断 135、248、410 分别能被 2、3、5 中哪些数整除。

  *应用*

  + 40 个橘子要平均装袋，不留剩余，每袋可能装几个？
  + 为什么 48 人既能排成每排 6 人，也能排成每排 8 人？

  *挑战 ☞ 选做*

  + 如果一个数能被 2 和 3 整除，它一定能被 6 整除吗？请先用几个例子试试看。
  + “一个数是另一个数的倍数”和“一个数比另一个数大”有什么不同？请举例说明。

  #line(length: 100%, stroke: 0.3pt + luma(200))
  _参考答案：_
  + 24 的因数：$1, 2, 3, 4, 6, 8, 12, 24$；30 的因数：$1, 2, 3, 5, 6, 10, 15, 30$。
  + $6, 12, 18, 24, 30$。
  + 135 能被 3、5 整除；248 能被 2 整除；410 能被 2、5 整除。
  + 1、2、4、5、8、10、20、40。
  + 因为 48 同时是 6 和 8 的倍数。
  + 对整数来说是的，可以先试 12、18、24；因为既有因数 2 又有因数 3，也就能整齐分成 6。
  + “倍数”强调整倍关系，不只是大或小；例如 12 比 7 大，但 12 不是 7 的倍数。
]
