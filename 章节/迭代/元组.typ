#import "../../lib.typ": SeeAlso

元组和列表相比，几乎唯一的区别就是元组是*不可变*#footnote[指元组的长度和元素不能发生改变]（Immutable）的。
因此元组仅拥有列表的`count`和`index`方法以及#quote[连接（`+`）]和#quote[重复（`*`）]的操作。

元组的创建#SeeAlso(l: <Var>, name: "章节")
