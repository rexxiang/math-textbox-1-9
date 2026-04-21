# Trigger Boundaries (Validation Prompts)

The following prompts are used to validate whether this skill should trigger.

## Should Trigger

1. `请把这段 Typst 公式改成带 cases 的分段函数。`
2. `帮我在 Typst 里画一个带角度弧线标注的几何图。`
3. `给 Typst 项目补一个 Docker + Make 的 PDF 构建链路。`
4. `Typst 的 show/set 规则冲突了，帮我定位并修复。`
5. `请给我一个 Typst 教材章节模板，含目录和盒子样式。`

## Should Not Trigger

6. `请把这个 LaTeX 全量自动迁移成 Typst，并设计映射规则。`
7. `帮我写一篇数学教学法论文，不需要 Typst 排版。`
8. `修复这个 React 组件的状态管理问题。`

Boundary interpretation:
- #6 is intentionally out of scope for this skill because it is migration mapping work.
- #1~#5 are Typst-native authoring/toolchain requests and should trigger this skill.
