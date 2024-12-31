#import "../../lib.typ": None, table_align

*字典*（Dictionary）存储的元素为一个值到另一个值的*映射*（Mapping）关系。比如对于下面的字典a：

#rect[
  ```py
  a = {
    "name": "Mike",
    "age": 18
  }
  ```
]

`"name"`被映射为了`"Mike"`，`"age"`被映射为`18`。并且我们把映射前的值称作#quote[*键*]（Key），映射后的值称为#quote[*值*]（Value），由它们二者组成的整体被称为#quote[*键值对*]（Key-Value Pair）。因此我们也可以把字典看成由键值对组成的集合（Collection）。

字典和数学中的（单值）函数类似，一个键只能被映射成一个值（当然不同的键可以被映射为同一个值），因此字典中存储的键是不重复的，并且我们可以用“键”作为*索引*来访问“值”。

与集合（Set）相同或相似的方法：

#table(
  align: center + horizon,
  columns: 3,
  table.header([字典], [集合], [备注]),
  [`clear()`], [`clear()`], [#None],
  [`copy()`], [`copy()`], [#None],
  [`popitem()`#linebreak()`pop(key, default=None)`],
  [`pop()`],
  [
    字典的`popitem()`和集合的`pop()`功能一样；
    #linebreak()
    字典的`pop`有参数`key`和`default`，
    #linebreak()
    它的`pop`会删除`key`所对应的键值对，并返回对应的值。
    #linebreak()
    如果该键不存在则返回`default`
  ],

  [`update(other)`], [`update(other)`], [添加字典`other`中的所有键值对。#linebreak()如果键已存在则*覆盖*原有的值],
)

字典的常用方法和操作：

#table(
  align: table_align(rows: (0,), columns: (0,)),
  columns: (14%, 33%, 23%, 30%),
  table.header([功能], [参数], [举例], [结果]),
  [添加元素（映射）],
  [
    ```py
    a[key] = value
    ```
  ],
  [
    ```py
    a = {}
    a[1] = 2
    print(a)
    ```
  ],
  [
    ```py


    {1: 2}
    ```
  ],

  [获取字典中的所有元素],
  [
    ```py
    # 获取所有键值对
    items()
    # 获取所有键
    keys()
    # 获取所有值
    values()
    ```
  ],
  [
    ```py
    dic = {
      1: 2,
      2: 3
    }
    dic.items()
    dic.keys()
    dic.values()
    ```
  ],
  [
    ```py




    dict_items([(1, 2),(2, 3)])
    dict_keys(['name', 'age'])
    dict_values(['S', 18])
    ```
  ],

  [获取值或默认值],
  [
    ```py
    get(
      # 键
      key,
      # 键不存在时返回的默认值
      default=None
    )
    ```
  ],
  [
    ```py
    dic = {1:'1', 2:'2'}

    dic.get(0, 99)
    dic.get(1, 99)
    ```
  ],
  [
    ```py


    99
    '1'
    ```
  ],

  [设置默认值],
  [
    ```py
    setdefault(
      key,
      # 键不存在时让键映射为default
      default=None
    )
    ```
  ],
  [
    ```py
    dic = {1:'1', 2:'2'}
    dic.setdefault(0, 5)
    print(dic)
    dic.setdefault(1, 5)
    print(dic)
    ```
  ],
  [
    ```py


    {0:5, 1:'1', 2:'2'}

    {0:5, 1:'1', 2:'2'}
    ```
  ],
)
