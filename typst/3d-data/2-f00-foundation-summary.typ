#import "../lib/theme-v2.typ": blueprint, mastery, side-hack, secref

== 数据基础总结：先把“整理—描述—分布”这条线收束 <meta:f-foundation-summary>

#blueprint[
  *基础段速查卡*

  #grid(columns: (1fr, 1fr), gutter: 12pt,
    block[
      *整理与描述*（#secref("f01-frequency-count")、#secref("f04-mean")）
      - 先收集、分类、列表，再决定用哪种图表说话
      - 平均数看整体水平，中位数看中间位置，众数看最常见情况
      - 工具的价值在“哪一种最能回答当前问题”
    ],
    block[
      *波动与分布*（#secref("f07-range")、#secref("f09-frequency-distribution-table")）
      - 平均数接近，不代表稳定程度接近
      - 大量数据先分组，再看频率分布和集中区间
      - 直方图帮你读“整体长什么样”，不只是在报一个单独数字
    ],
  )
]

#side-hack[
  *先把数据主线收好*：

  到这里，数据路线的基础半程已经把“收集、整理、描述、看分布”这条主线拉直了。先把这条主线收好：面对一批数据，知道怎样先整理，再选合适的图表和代表值，最后补看波动与分布，避免只盯一个数字就下结论。
]

#mastery[
  *过桥自检*

  + 面对一份调查结果时，你会按什么顺序决定：先列表、还是先画图、还是先算代表值？

  + 为什么“平均数相同”还不够，你常常还要继续看波动程度或分布形状？

  + 请用一句话说明：#secref("f09-frequency-distribution-table") 的分组和直方图，为什么是处理大量数据时的必要压缩工具？

  + 如果两组数据平均数差不多，你会再补看哪两类信息，才不至于太早下结论？请用一句话说明。
]
