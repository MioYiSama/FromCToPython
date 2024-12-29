#import "../../lib.typ": None, table_align

#table(
  align: table_align(rows: (0,), columns: (0,)),
  columns: 3,
  table.header([跳转], [*C*], [*Python*]),
  [跳出循环],
  [
    ```c
    break;
    ```
  ],
  [
    ```py
    break
    ```
  ],

  [跳过一次循环],
  [
    ```c
    continue;
    ```
  ],
  [
    ```py
    continue
    ```
  ],

  [函数返回],
  [
    ```c
    return x;
    ```
  ],
  [
    ```py
    return x
    ```
  ],

  [代码跳转],
  [
    ```c
    goto label;
    ```
  ],
  [#None],
)
