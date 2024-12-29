#import "../../lib.typ": None, table_align

集合在元组的基础上，多了一个“元素不重复”的特点，并且集合中的元素永远保持有序#footnote[指排好序了]。但是集合无法使用索引和下标等相关功能。

#line(length: 100%)

与列表相同或相似的方法：

#table(
  align: center + horizon,
  columns: (25%, 25%, 50%),
  table.header([集合], [列表], [备注]),
  [add], [append], [#None],
  [clear], [clear], [#None],
  [copy], [copy], [#None],
  [
    discard
    #linebreak()
    pop
    #linebreak()
    remove
  ],
  [remove],
  [
    discard：元素不存在不会导致报错
    #linebreak()
    pop：随机#footnote[并非完全随机]移除一个元素
    #linebreak()
  ],

  [update], [extend], [update会保证集合元素无重复],
)

集合独有的常用方法：

#table(
  align: table_align(rows: (0,), columns: (0,)),
  columns: (12%, 44%, 30%, 14%),
  table.header([功能], [参数], [举例], [结果]),
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
)
