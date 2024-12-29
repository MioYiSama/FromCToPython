#import "../../lib.typ": table_align

#table(
  align: center,
  columns: 3,
  table.header([运算符], [C], [Python]),
  [与],
  [
    ```c
    x & y;
    ```
  ],
  [
    ```py
    x & y
    ```
  ],

  [或],
  [
    ```c
    x | y;
    ```
  ],
  [
    ```py
    x | y
    ```
  ],

  [取反],
  [
    ```c
    ~x;
    ```
  ],
  [
    ```py
    ~x
    ```
  ],

  [异或],
  [
    ```c
    x ^ y;
    ```
  ],
  [
    ```py
    x ^ y
    ```
  ],

  [左移],
  [
    ```c
    x << y;
    ```
  ],
  [
    ```py
    x << y
    ```
  ],

  [右移],
  [
    ```c
    x >> y;
    ```
  ],
  [
    ```py
    x >> y
    ```
  ],
)
