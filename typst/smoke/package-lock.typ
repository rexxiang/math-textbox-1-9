#import "../lib/diagram-packages.typ": diagram-package-lock-note

#set page(paper: "a5", margin: (x: 12mm, y: 12mm))
#set text(size: 10pt)

= Typst Package Lock Smoke Test

This file validates that pinned optional diagram packages can be resolved
independently of the chapter smoke suite.

#diagram-package-lock-note()
