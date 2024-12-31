#import "../../lib.typ": SeeAlso

区间有三种创建方式：

#rect[
  ```py
  range(end)
  range(start, end)
  range(start, end, step)
  ```
]

其中start，end，step分别表示起始值，结束值和步长。步长指相邻两个数之间的变化量。并且start默认为0，step默认为1。

使用方法#SeeAlso(l: <Var>, name: "章节")
