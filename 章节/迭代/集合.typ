#import "../../lib.typ": None, table_align, SeeAlso

集合（Set）和数学中的集合类似，不能有重复的元素。同时集合中的元素永远保持有序#footnote[指元素始终保持从小到大排序。对于无法直接排序的值，Python会将其转换为哈希值后再排序（哈希值：#link("https://baike.baidu.com/item/Hash")）]，但是集合*无法使用*索引等相关功能。

集合创建#SeeAlso(l: <Var>, name: "章节")

集合的常用方法：

#table(
  align: table_align(rows: (0,), columns: (0,)),
  columns: 4,
  table.header([功能], [参数], [举例], [结果]),
  [添加元素],
  [
    ```py
    # obj：元素
    add(obj)
    ```
  ],
  [
    ```py
    a = {1, 2}
    a.add(3)
    print(a)
    ```
  ],
  [
    ```py


    {1, 2, 3}
    ```
  ],

  [清空集合],
  [
    ```py
    clear()
    ```
  ],
  [
    ```py
    a = {1, 2, 3}
    a.clear()
    print(a)
    ```
  ],
  [
    ```py


    []
    ```
  ],

  [复制集合],
  [
    ```py
    copy()
    ```
  ],
  [
    ```py
    a = {1, 2, 3}
    b = a.copy()
    print(b)
    ```
  ],
  [
    ```py


    {1, 2, 3}
    ```
  ],

  [扩充集合],
  [
    ```py
    # iterable：可迭代对象
    update(iterable)
    ```
  ],
  [
    ```py
    a = {1, 2}
    a.update({3, 4})
    print(a)
    ```
  ],
  [
    ```py


    {1, 2, 3, 4}
    ```
  ],

  [删除元素],
  [
    ```py
    # value：元素
    remove(value)
    # 元素不存在不会导致报错
    discard(value)
    # 移除最小的元素并返回它
    pop()
    ```
  ],
  [
    ```py
    a = {1, 2}
    a.remove(2)
    print(a)
    print(a.pop())
    print(a)
    ```
  ],
  [
    ```py


    {1}
    1
    {}
    ```
  ],

  [集合运算],
  [
    ```py
    union(*others) # 求多个集合的并集
    intersection(*others) # 求多个集合的交集
    difference(*others) # 求多个集合的差集
    ```
  ],
  [
    ```py
    {1}.union({2}, {3})
    {1, 2}.intersection({2, 3})
    {1, 2}.difference({2, 3})
    ```
  ],
  [
    ```py
    {1, 2, 3}
    {2}
    {1}
    ```
  ],

  [集合关系],
  [
    ```py
    issubset(other) # 是否是other的子集
    issuperset(other) # 是否是other的超集
    ```
  ],
  [
    ```py
    {1, 2}.issubset({1, 2, 3})
    {1, 2, 3}.issuperset({1, 2})
    ```
  ],
  [
    ```py
    True
    True
    ```
  ],
)
