#import "../../lib.typ": table_align

#table(
  align: table_align(rows: (0, 1, 2), columns: (0,)),
  columns: (50%, 50%),
  table.header([C], [Python]),
  [
    C语言中的变量，必须先*声明*（Declare），再*赋值*（Assign），最后*使用*。
  ],
  [
    Python的变量#footnote[函数和类同理]不需要声明，但是必须先*赋值*，再*使用*。 #footnote[可以理解为赋值的同时也声明了这个变量]
  ],

  [
    C语言的变量在声明时必须指明类型，且之后类型永远不会改变。#footnote[因此C属于静态类型语言]
  ],
  [
    Python不需要指明变量类型，并且变量的类型可以发生改变。#footnote[因此Python属于动态类型语言]
  ],
)
