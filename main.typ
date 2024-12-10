#set page(
  margin: 1cm,
  numbering: "1 / 1",
)

#set heading(numbering: (..nums) => {
  let (x, ..a) = nums.pos()

  if (a.len() == 0) {
    return "第" + numbering("一", x) + "章"
  } else {
    return sym.section + nums.pos().map(str).join(".")
  }
})

#set text(
  lang: "cn",
  font: "Noto Serif CJK SC",
)

#show raw: set text(font: (
  "DejaVu Sans Mono",
  "Noto Serif CJK SC",
))

#show image: set align(center)

#set table(
  align: (x, y) => (
    (
      if x == 0 or y == 0 or x > 2 { center } else { left }
    ) + horizon
  ),
  columns: (20%, 40%, 40%),
)

#set table.cell(breakable: false)

#include "封面.typ"

#pagebreak()

#outline(
  title: [目录],
  indent: 2em,
)

#pagebreak()

= 运行

#include "表格/运行.typ"

= 语法

#include "表格/语法.typ"

#pagebreak()

= 变量

== 变量总览

#include "表格/变量/变量总览.typ"

#pagebreak()

== 变量类型转换

#include "表格/变量/变量类型转换.typ"

== 变量的声明、赋值和使用

#include "表格/变量/变量的声明、赋值和使用.typ"

== 特殊赋值方式

#include "表格/变量/特殊赋值方式.typ"

#pagebreak()

= 运算符

== 算术运算符

#include "表格/运算符/算术运算符.typ"

== 逻辑运算符

#include "表格/运算符/逻辑运算符.typ"

== 关系运算符

#include "表格/运算符/关系运算符.typ"

== 位运算符

#include "表格/运算符/位运算符.typ"

#pagebreak()

= 控制语句

== 分支语句

#include "表格/控制语句/分支语句.typ"

== 循环语句

#include "表格/控制语句/循环语句.typ"

== 跳转语句

#include "表格/控制语句/跳转语句.typ"

#pagebreak()

= 函数

== 基础语法

#include "表格/函数/基础语法.typ"

#pagebreak()

== Python专有语法

#include "表格/函数/Python专有语法.typ"

#pagebreak()

== 内置函数

#pagebreak()

= 结构体与类

== 区别

#include "表格/结构体和类/区别.typ"

== 基础语法

#include "表格/结构体和类/基础语法.typ"

#pagebreak()

== 字符串的方法

#include "表格/结构体和类/字符串的方法.typ"

#pagebreak()

== 列表与元组

== 集合

== 字典

#pagebreak()

= 库

Python中的库是通过#quote[*模块*]组织的，一个Python文件就可以是一个模块。

== 导入

注：标识符指变量、函数、类等

#table(
  align: (x, y) => (
    (
      if y == 0 or x > 2 { center } else { left }
    ) + horizon
  ),
  columns: (50%, 50%),
  table.header([*C*], [*Python*]),
  [
    ```c
    #include "头文件.h"
    ```
  ],
  [
    ```py
    import 模块
    import 模块 as 别名

    import 模块.子模块.子模块
    import 模块.子模块.子模块 as 别名

    from 模块 import 标识符
    from 模块 import 标识符 as 别名

    from 模块 import 标识符1, 标识符2, 标识符3
    ```
  ],
)

== 第一方库

#include "表格/库/文件读写.typ"

#pagebreak()

= 异常与`with`

注：#quote[异常]仅存在于Python中，不存在于C语言中

== 抛出异常

== 捕获异常

```py
try:
  f()
except:
  pass
finally:
  pass
```

#pagebreak()

= 附录

#include "附录.typ"