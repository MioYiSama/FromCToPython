#import "../../lib.typ": SeeAlso

#quote[*序列*]（Sequence）指由*一列元素*组成的数据结构。以下几种均为序列，但有*区别*：

#table(
  columns: 3,
  align: center + horizon,
  table.header([类型], [组成元素], [可变性#footnote[指能否添加、删除元素]]),
  [*字符串*（String）], [字符], [不可变],
  [*区间*（Range）], [整数], [不可变],
  [*列表*（List）], [任意], [可变],
  [*元组*（Tuple）], [任意], [不可变],
  [*集合*（Set）], [任意且不重复], [可变],
  [*字典*（Dictionary）], [任意元素组成的*键值对* #footnote[#SeeAlso(l: <Dict>, name: "章节")]], [可变],
)
