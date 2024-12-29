#import "../../lib.typ": None, table_align

=== 列表

#table(
  align: table_align(rows: (0,), columns: (0,)),
  columns: 4,
  table.header([功能], [参数], [举例], [结果]),
  [连接],
  [#None],
  [
    ```py
    [1] + [2]
    ```
  ],
  [
    ```py
    [1, 2]
    ```
  ],

  [重复],
  [#None],
  [
    ```py
    [1] * 3
    ```
  ],
  [
    ```py
    [1, 1, 1]
    ```
  ],

  [添加元素],
  [
    ```py
    # obj：元素
    append(obj)
    ```
  ],
  [
    ```py
    a = [1, 2]
    a.append(3)
    print(a)
    ```
  ],
  [
    ```py


    [1, 2, 3]
    ```
  ],

  [清空列表],
  [
    ```py
    clear()
    ```
  ],
  [
    ```py
    a = [1, 2, 3]
    a.clear()
    print(a)
    ```
  ],
  [
    ```py


    []
    ```
  ],

  [复制列表],
  [
    ```py
    copy()
    ```
  ],
  [
    ```py
    a = [1, 2, 3]
    b = a.copy()
    print(b)
    ```
  ],
  [
    ```py


    [1, 2, 3]
    ```
  ],

  [统计元素个数],
  [
    ```py
    # value：元素
    count(value)
    ```
  ],
  [
    ```py
    a = [1, 1, 3]
    print(a.count(1))
    ```
  ],
  [
    ```py

    2
    ```
  ],

  [扩充列表],
  [
    ```py
    # iterable：序列
    extend(iterable)
    ```
  ],
  [
    ```py
    a = [1, 2]
    a.extend([3, 4])
    print(a)
    ```
  ],
  [
    ```py


    [1, 2, 3, 4]
    ```
  ],

  [获取元素下标],
  [
    ```py
    index(
      value, # 元素
      start=0, # 开始索引
      stop=2**63-1 # 结束索引
    ) # 仅返回第一个相等元素的下标
    ```
  ],
  [
    ```py
    a = [2, 1, 3, 4, 1]
    print(a.index(1))
    ```
  ],
  [
    ```py

    1
    ```
  ],

  [插入元素],
  [
    ```py
    insert(
      index, # 插入位置的索引
      obj # 元素
    )
    ```
  ],
  [
    ```py
    a = [1, 2]
    a.insert(0, 100)
    print(a)
    ```
  ],
  [
    ```py


    [100, 1, 2]
    ```
  ],

  [删除元素],
  [
    ```py
    # index：需要删除的元素的索引
    pop(index=-1) # 返回被删除的元素
    # value：需要删除的元素
    remove(value) # 仅删除第一个
    ```
  ],
  [
    ```py
    a = [1, 2]
    print(a.pop(0))
    print(a)
    a.remove(2)
    print(a)
    ```
  ],
  [
    ```py

    1
    [2]

    []
    ```
  ],

  [翻转列表],
  [
    ```py
    reverse()
    ```
  ],
  [
    ```py
    a = [1, 2]
    a.reverse()
    print(a)
    ```
  ],
  [
    ```py


    [2, 1]
    ```
  ],

  [排序],
  [
    ```py
    # 参数解释同sorted函数
    sort(key=None,reverse=False)
    ```
  ],
  [
    ```py
    a = [3, 1, 4, 2, 5]
    a.sort()
    print(a)
    ```
  ],
  [
    ```py


    [1, 2, 3, 4, 5]
    ```
  ],
)

=== 元组

元组和列表相比，几乎唯一的区别就是元组是*不可变*#footnote[指元组的长度和元素不能发生改变]（Immutable）的。
因此元组仅拥有列表的`count`和`index`方法
以及#quote[连接（`+`）]和#quote[重复（`*`）]的操作。
