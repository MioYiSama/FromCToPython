#set page(margin: 1cm)

#set heading(
  numbering: (..nums) => {
    let (x, ..a) = nums.pos()

    if (a.len() == 0) {
      return "第" + numbering("一", x) + "章"
    } else {
      return sym.section + nums.pos().map(str).join(".")
    }
  },
)

#set text(
  lang: "cn",
  font: "Noto Serif CJK SC",
)

#show raw: set text(
  font: (
    "Consolas",
    "Noto Serif CJK SC",
  ),
)

#show image: set align(center)

#set table(
  align: (x, y) => (
    (
      if x == 0 or y == 0 or x > 2 { center } else { left }
    )
      + horizon
  ),
  columns: (18%, 41%, 41%),
)

#set table.cell(breakable: false)

// ------------------------------

#include "封面.typ"

#set page(numbering: "1 / 1")

#include "目录.typ"

= 运行

#include "章节/运行.typ"

= 语法

#include "章节/语法.typ"

#pagebreak()

= 变量

== 变量总览

#include "章节/变量/变量总览.typ"

#pagebreak()

== 特殊字面量

#include "章节/变量/特殊字面量.typ"

== 变量类型转换

#include "章节/变量/变量类型转换.typ"

#pagebreak()

== 变量的声明、赋值和使用

#include "章节/变量/变量的声明、赋值和使用.typ"

== 特殊赋值方式

#include "章节/变量/特殊赋值方式.typ"

#pagebreak()

= 运算符

== 算术运算符

#include "章节/运算符/算术运算符.typ"

== 逻辑运算符

#include "章节/运算符/逻辑运算符.typ"

#pagebreak()

== 关系运算符

#include "章节/运算符/关系运算符.typ"

== 位运算符

#include "章节/运算符/位运算符.typ"

#pagebreak()

= 控制语句

== 分支语句

#include "章节/控制语句/分支语句.typ"

== 循环语句

#include "章节/控制语句/循环语句.typ"

== 跳转语句

#include "章节/控制语句/跳转语句.typ"

#pagebreak()

= 函数

== 基础语法

#include "章节/函数/基础语法.typ"

#pagebreak()

== Python专有语法

#include "章节/函数/Python专有语法.typ"

#pagebreak()

== 常用内置函数

#include "章节/函数/内置函数.typ"

#pagebreak()

= 结构体与类

== 基础概念

#include "章节/结构体和类/基础概念.typ"

== 方法

#include "章节/结构体和类/方法.typ"

#pagebreak()

== 区别

#include "章节/结构体和类/区别.typ"

== 基础语法

#include "章节/结构体和类/基础语法.typ"

#pagebreak()

== 常用方法

=== 字符串的方法

#include "章节/结构体和类/字符串的方法.typ"

=== 列表与元组

=== 集合

=== 字典

#pagebreak()

=== 文件<file>

#include "章节/结构体和类/文件.typ"

#pagebreak()

= 库

Python中的库是通过#quote[*模块*]组织的。

一个Python文件就可以是一个模块。

== 导入

#include "章节/库/导入.typ"

== 举例

#include "章节/库/举例.typ"

#pagebreak()

== 常用标准库

#include "章节/库/常用标准库.typ"

#pagebreak()

= 异常与`with`

== 异常的概念

#include "章节/异常与with/异常的概念.typ"

== 抛出异常

#include "章节/异常与with/抛出异常.typ"

#pagebreak()

== 捕获异常

#include "章节/异常与with/抛出异常.typ"

== `with`

#include "章节/异常与with/with.typ"

#pagebreak()

= 附录

#include "附录/附录.typ"
