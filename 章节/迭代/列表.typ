#import "../../lib.typ": None, table_align, Line, SeeAlso

列表创建#SeeAlso(l: <Var>, name: "章节")

与集合相同或相似的方法：

#table(
  align: center + horizon,
  columns: 3,
  table.header([列表], [集合], [备注]),
  [`append(obj)`], [`add(obj)`], [#None],
  [`clear()`], [`clear()`], [#None],
  [`copy()`], [`copy()`], [#None],
  [`remove(value)`], [`remove(value)`], [#None],
  [`extend(other)`], [`update(other)`], [#None],
)

与字典相同或相似的方法：

#table(
  align: center + horizon,
  columns: 3,
  table.header([列表], [字典], [备注]),
  [`pop(index=-1)`], [`pop(key)`], [列表的`pop()`没有`default`参数],
)

列表的的常用方法和操作：

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
    sort(
      # 是否降序排序
      reverse=False,
      # 排序依据（将元素映射为其他值）
      key=None
    )
    ```
  ],
  [
    ```py
    def f(x): return -x
    a = [3, 1, 4, 2, 5]
    a.sort(); print(a)
    a.sort(reverse=True); print(a)
    a.sort(key=f); print(a)
    ```
  ],
  [
    ```py


    [1, 2, 3, 4, 5]
    [5, 4, 3, 2, 1]
    [5, 4, 3, 2, 1]
    ```
  ],
)

#Line

创建列表的时候，可以借助简化的生成器表达式来指定列表内的元素。比如：

#rect[
  ```py
  a = [i*i for i in [1, 2, 3]]
  # 等价于 a = [1, 4, 9]
  ```
]

这种列表创建方式被称为#quote[*列表推导式*]（List Comprehension）。

类似地，集合（Set）和字典也可以使用这种生成式写法。
