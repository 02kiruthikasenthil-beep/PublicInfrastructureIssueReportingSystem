# Design Diagrams

| Diagram | Image | Editable source | Edit with |
|---|---|---|---|
| System architecture | `architecture.png` | `architecture.dot` | Graphviz (`dot`) / any Graphviz editor |
| Entity-relationship | `er-diagram.png` | `er-diagram.dbml`, `er-diagram.dot` | paste `.dbml` into dbdiagram.io |
| Class / module | `class-diagram.png` | `class-diagram.dot` | Graphviz |

Re-render: `dot -Tpng -Gdpi=110 <name>.dot -o <name>.png`. The class diagram mirrors the real packages
(`controller → service → repository → entity`); update the diagrams whenever the code structure changes
(due: Day 11 v1, Day 41 as-built, Day 60 with the enhancement).
If your guide insists on draw.io/dbdiagram exports, import these sources and export PNG.
