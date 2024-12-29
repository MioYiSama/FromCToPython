#import "lib.typ": *

/* 字体 */
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
#show raw.where(block: true): set text(size: 10pt)
#show raw.where(block: false): set text(size: 11pt)

#set page(
  margin: 1cm,
  background: Watermark,
)
#set heading(numbering: heading_numbering)
#show table: set align(center)
#set table.cell(breakable: false)
#show table.cell.where(y: 0): set text(weight: "bold")
#show image: set align(center)
#set rect(stroke: 0.3mm)

// ------------------------------------------------------------

#include "封面.typ"

#set page(numbering: "1 / 1")

#include "引入.typ"

#pagebreak()

= 运行

#include "章节/运行.typ"

= 部分语法

#include "章节/语法.typ"

#pagebreak()

= 变量

== 变量总览<Var>

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

#set page(columns: 2)

= 运算符

== 算术运算符

#include "章节/运算符/算术运算符.typ"

== 逻辑运算符

#include "章节/运算符/逻辑运算符.typ"

#colbreak()

== 关系运算符

#include "章节/运算符/关系运算符.typ"

== 位运算符

#include "章节/运算符/位运算符.typ"

#set page(columns: 1)

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

== 变量作用域

#include "章节/函数/变量作用域.typ"

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

== 区别

#include "章节/结构体和类/区别.typ"

#pagebreak()

== 基础语法

#include "章节/结构体和类/基础语法.typ"


== 继承

#include "章节/结构体和类/继承.typ"

#pagebreak()

= 序列

== 概念

#include "章节/序列/概念.typ"

== 通用功能

#include "章节/序列/通用.typ"

#pagebreak()

== 字符串

#include "章节/序列/字符串.typ"

#pagebreak()

== 区间

#include "章节/序列/区间.typ"

#pagebreak()

== 列表和元组

#include "章节/序列/列表和元组.typ"

#pagebreak()

== 集合

#include "章节/序列/集合.typ"

#pagebreak()

== 字典<Dict>

#include "章节/序列/字典.typ"

#pagebreak()

= 内存

== 区别

#include "章节/内存/区别.typ"

== 实际参数与形式参数

#include "章节/内存/参数.typ"

== 缓存

#include "章节/内存/缓存.typ"

#pagebreak()

= 库与模块

== 概念

#include "章节/库/概念.typ"

== 导入

#include "章节/库/导入.typ"

== 举例

#include "章节/库/举例.typ"

#pagebreak()

== 文件操作<file>

#include "章节/库/文件.typ"

#pagebreak()

== 常用标准库

#include "章节/库/常用标准库.typ"

== 安装第三方库

要想安装第三方库，可以在终端中运行以下命令：

#rect[
  ```bash
  pip install 库名
  ```
]

比如，有一个专门用于发起网络请求的库requests，就可以运行：

#rect[
  ```bash
  pip install requests
  ```
]

然后就可以在代码中使用这个库：

#rect[
  ```py
  import requests # 导入
  r = requests.get('https://baidu.com') # 请求baidu.com
  print(r.text) # 输出网页内容
  ```
]

#Line

由于Python的第三方库的下载网站位于国外，访问速度会受到限制。可以在终端中运行下面的命令，将下载网站改为国内网站：

#rect[
  ```bash
  pip config set global.index-url https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple
  ```
]

#pagebreak()

= 异常与with

== 异常的概念

#include "章节/异常与with/异常的概念.typ"

== 抛出异常

#include "章节/异常与with/抛出异常.typ"

#pagebreak()

== 捕获异常

#include "章节/异常与with/捕获异常.typ"

== with

#include "章节/异常与with/with.typ"

#pagebreak()

= 附录

#include "附录/附录.typ"
