#import "../../lib.typ": None
注：

- Python的等于和不等关系的运算符可以*连用*。比如`1 < 2 < 3`，`2 != 3 != 5`

#table(
  align: center,
  columns: 3,
  table.header([运算符], [C], [Python]),
  [大于],
  [
    ```c
    x > y;
    ```
  ],
  [
    ```py
    x > y
    ```
  ],

  [大于等于],
  [
    ```c
    x >= y
    ```
  ],
  [
    ```py
    x >= y
    ```
  ],

  [小于],
  [
    ```c
    x < y;
    ```
  ],
  [
    ```py
    x < y
    ```
  ],

  [小于等于],
  [
    ```c
    x <= y;
    ```
  ],
  [
    ```py
    x <= y
    ```
  ],

  [等于],
  [
    ```c
    x == y;
    ```
  ],
  [
    ```py
    x == y
    ```
  ],

  [不等于],
  [
    ```c
    x != y;
    ```
  ],
  [
    ```py
    x != y
    ```
  ],

  [属于],
  [#None],
  [
    ```py
    x in y
    ```
  ],

  [不属于],
  [#None],
  [
    ```py
    x not in y
    ```
  ],

  [地址相同 @explain],
  [
    ```c
    &x == &y;
    ```
  ],
  [
    ```py
    x is y
    ```
  ],

  [地址不同 @explain],
  [
    ```c
    &x != &y;
    ```
  ],
  [
    ```py
    x is not y
    ```
  ],
)
