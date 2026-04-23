#import "../../lib/theme-v2.typ": blueprint, side-hack, secref

=== 查漏指引手册 <tool:cp02-repair-route-playbook>

卡住是*正常*的。问题不是“卡了”，而是“卡住之后*下一步到底做什么*”。本节给出 6 条典型的补缺样板线——凡遇到类似症状，照着线头补缺即可。

#blueprint[
  *通用补缺流程*（三问法）

  + 我*当前*在用哪个方法？它在哪节引入的？
  + 这个工具*依赖*哪个更底层的前面学过的知识？（看它发明时“需要先会的知识”列的第一项。）
  + 那个前面学过的知识我*现在*能当场默写一遍吗？不能就回那一节，5–10 分钟复读 + 1 道小题，再回来接原题。

  *每次只回一层*。一口气回太多层会丧失对当前题目的感觉。
]

#blueprint[
  *样板补缺线 1：不会做勾股应用题*

  症状：给了直角三角形两条边，要求第三条，但你写不出 $a^2 + b^2 = c^2$ 到底该怎么移项。

  $ "ge04 勾股"(#secref("ge04-pythagorean")) "←" "cb06 平方根"(#secref("cb06-square-and-square-root")) "←" "pf02 运算律"(#secref("pf02-order-laws")) $

  *建议*：先回 #secref("cb06-square-and-square-root")，把“$x^2 = 25 => x = 5$”手写十次，再回来做原题。大多数勾股题卡点其实在*平方根*，不在定理本身。
]

#blueprint[
  *样板补缺线 2：一元二次方程卡在配方*

  症状：$x^2 + 6 x + 5 = 0$，老师让“配方”，但你看着 $6 x$ 不知道怎么补成完全平方。

  $ "al05 求根"(#secref("al05-quadratic-solving")) "←" "al02 完全平方"(#secref("al02-special-identities")) "←" "al01 乘法"(#secref("al01-multiply-polynomials")) "←" "cb04 字母代数"(#secref("cb04-letters-represent-numbers")) $

  *建议*：回 #secref("al02-special-identities") 把 $(x + a)^2 = x^2 + 2 a x + a^2$ 正向展开三次，再*反向*从 $x^2 + 2 a x$ 补齐 $a^2$ 做三次。配方本质是“反用完全平方”。
]

#blueprint[
  *样板补缺线 3：函数图像判不出族*

  症状：给你一张 $(x, y)$ 表，要你写出公式，你第一反应是“啊有很多形状都像”。

  $ "fn11 模型选择"(#secref("fn11-model-choice")) "←" "fn01 表视角"(#secref("fn01-table-as-function-view")) "←" "pf02 运算律" $

  *建议*：回 #secref("fn11-model-choice") 的“差 → 积 → 比 → 二阶差”四步判定法；再把 #secref("fn01-table-as-function-view") 的 3 个例子重新判一遍。*大多数“看不出族”的根因是没按顺序算四个指标*。
]

#blueprint[
  *样板补缺线 4：相似题卡在“哪两条边配哪两条”*

  症状：两三角形相似但字母写法让你对不上边，$(A B) / (A' B') = ?$

  $ "ge02 相似"(#secref("ge02-similarity-aa-ratio")) "←" "ge01 全等对应"(#secref("ge01-congruence-correspondence")) "←" "cb01 比"(#secref("cb01-ratio-basics")) $

  *建议*：回 #secref("ge01-congruence-correspondence")，那一节讲的是“字母顺序必须对应”。相似直接继承了全等的这一约定。*相似不会做，几乎都卡在全等的对应关系没稳*。
]

#blueprint[
  *样板补缺线 5：频率分布直方图算不对组距*

  症状：给一组原始数据让你画直方图，你分不清“组距 / 频数 / 频率 / 频率/组距”。

  $ "dt05 直方图"(#secref("dt05-histograms")) "←" "dt04 频率分布"(#secref("dt04-frequency-distributions")) "←" "pf04 分数"(#secref("pf04-fraction-arithmetic")) "←" "pf05 单位"(#secref("pf05-units-measurement")) $

  *建议*：回 #secref("dt04-frequency-distributions") 把“频率 $=$ 频数 / 总数”的 3 个基本例子写一次；再回 #secref("pf05-units-measurement") 看“频率/组距”的单位——后者带 *1/x* 单位，才是直方图 y 轴真正代表的量。
]

#blueprint[
  *样板补缺线 6：应用题设未知数就卡住*

  症状：题目长、信息杂，光是*设 $x$ 为什么*就让你动不了笔。

  $ "al04 建模"(#secref("al04-modeling-word-problems")) "←" "cb04 关系模板"(#secref("cb04-relationship-templates")) "←" "pf02 运算顺序" $

  *建议*：回 #secref("cb04-relationship-templates") 的“总价 $=$ 单价 $times$ 数量”“行程 $=$ 速度 $times$ 时间”“工作 $=$ 效率 $times$ 时间”三张模板。大多数*设元卡点*都是因为你没把题目先套到一张关系模板上。
]

#side-hack[
  *一条总原则*

  - 读题卡 → 回 *关系模板 / 字母代数*（cb04）。
  - 列式卡 → 回 *运算律 / 恒等变形*（pf02, al02）。
  - 解出来的数不合理 → 回 *估算与合理性检查*（#secref("pf05-estimation-reasonableness")）。
  - 几何证明卡 → 回 *证明链三步*（#secref("ge01-two-step-proof-chain")）。

  把以上四句贴在草稿纸角上，就是大多数题的急救包。
]
