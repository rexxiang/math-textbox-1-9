// 数学发明者手册 — V1/V2 双模式入口
// 通过 CLI --input v2-mode=true/false 切换版本

#let v2-mode = sys.inputs.at("v2-mode", default: "true") == "true"

#if v2-mode {
  include "v2/main-v2.typ"
} else {
  include "v1-content.typ"
}
