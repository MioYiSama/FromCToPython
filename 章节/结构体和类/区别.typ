#import "../../lib.typ": SeeAlso, table_align

#table(
  align: center + horizon,
  columns: 3,
  table.header([区别], [C], [Python]),
  [属性], [在定义的时候就必须明确和固定], [可以在任何时候添加和删除],
  [方法], [没有], [有],
  [初始化#linebreak()（Initialize）], [只能由用户手动初始化], [主要通过`__init__`方法],
)

