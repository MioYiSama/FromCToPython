#let None = align(center + horizon)[无]
#let Line = line(length: 100%)
#let Watermark = rotate(
  -calc.atan(calc.sqrt(2)),
  text(72pt, fill: gray.lighten(80%))[
    *澪依 © 版权所有*
  ],
)

#let SeeAlso(l: label, name: str) = {
  context {
    let body = query(l).first().body

    [另见#name：#link(l)[*#body*]]
  }
}

#let heading_numbering(..nums) = {
  let (x, ..a) = nums.pos()

  if (a.len() == 0) {
    return "第" + numbering("一", x) + "章"
  } else {
    return sym.section + nums.pos().map(str).join(".")
  }
}

#let table_align(rows: array, columns: array) = (x, y) => {
  (if x in columns or y in rows { center } else { left }) + horizon
}

