#import "../../lib.typ": None, table_align

*字典*就是由*键值对*（Key-Value Pair）组成的序列。#quote[键值对]指由#quote[*键*]（Key）和#quote[*值*]（Value）配对而成的一对元素。比如，对于#quote[`'age': 18`]来说，
#quote[`age`]为#quote[键]，
#quote[`18`]为#quote[值]。

字典在集合的基础上，把存储元素变成了键值对。但是字典保证的是*#quote[键]不重复*，并且字典以#quote[键]作为*索引*。

与列表或集合相同或相似的方法：

#table(
  align: center + horizon,
  columns: 3,
  table.header([集合], [列表或集合], [备注]),
  [`clear`], [`clear`], [#None],
  [`copy`], [`copy`], [#None],
  [`pop(key, default=None)`],
  [列表的`pop`],
  [
    `pop`可以添加参数`default`。
    #linebreak()
    若该键对应的元素不存在则返回`default`
  ],

  [`popitem()`], [集合的`pop()`], [#None],
  [`update(other)`], [集合的`update`], [添加字典`other`中的所有键值对。#linebreak()如果键已存在则*覆盖*原有的值],
)


字典独有的常用方法：

#table(
  align: table_align(rows: (0,), columns: (0,)),
  columns: (10%, 27%, 23%, 40%),
  table.header([功能], [参数], [举例], [结果]),
  [获取字典中的元素],
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
      'name': 'S',
      'age': 18
    }

    dic.items()
    dic.keys()
    dic.values()
    ```
  ],
  [
    ```py





    dict_items([('name','S'),('age',18)])
    dict_keys(['name', 'age'])
    dict_values(['S', 18])
    ```
  ],

  [获取值],
  [
    ```py
    get(
      # 键
      key,
      # 键不存在的默认值
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

  [设置值],
  [
    ```py
    # 键不存在时设置为default
    setdefault(key, default=None)
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
