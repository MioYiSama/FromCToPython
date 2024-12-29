#quote[*序列*]指由一串元素组成的数据结构。以下均为序列，但有若干区别：

#table(
  columns: (20%, 40%, 40%),
  align: center + horizon,
  table.header([类型], [组成元素], [可变性]),
  [*字符串*（String）], [字符], [不可变],
  [*区间*（Range）], [整数], [不可变],
  [*列表*（List）], [任意], [可变],
  [*元组*（Tuple）], [任意], [不可变],
  [*集合*（Set）], [任意且不重复], [可变],
  [*字典*（Dictionary）], [任意元素组成的*键值对*], [可变],
)

其中，“键值对”指由“键”和“值”配对而成的一对元素。
比如，对于#quote[`'age': 18`]来说，
#quote[age]为#quote[键]，
#quote[18]为#quote[值]。
字典就是由键值对组成的序列。
