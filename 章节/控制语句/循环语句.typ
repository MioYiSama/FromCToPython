#import "../../lib.typ": table_align, SeeAlso

注：

- C语言的`for`只是`while`的变体

- 关于Python的`for`的详情，#SeeAlso(l: <Iterate>, name: "章节")

#table(
  align: table_align(rows: (0,), columns: (0,)),
  columns: 3,
  table.header([循环], [C], [Python]),
  [`for`],
  [
    ```c
    for (int i = 0; i < n; ++i) {
    }
    ```
  ],
  [
    ```py
    for i in range(n):
      pass
    ```
  ],

  [`while`],
  [
    ```c
    while (x) {
    }
    ```
  ],
  [
    ```py
    while x:
      pass
    ```
  ],
)

