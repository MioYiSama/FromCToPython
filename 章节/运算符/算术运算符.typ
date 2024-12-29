#import "../../lib.typ": None

注：

- Python的“*除*”的结果永远为*浮点数*

- Python的“*整除*”的结果永远为*整数*（结果为*保留整数部分*的商）

#table(
  align: center,
  columns: 3,
  table.header([运算符], [C], [Python]),
  [加],
  [
    ```c
    x + y;
    ```
  ],
  [
    ```py
    x + y
    ```
  ],

  [减],
  [
    ```c
    x - y;
    ```
  ],
  [
    ```py
    x - y
    ```
  ],

  [乘],
  [
    ```c
    x * y;
    ```
  ],
  [
    ```py
    x * y
    ```
  ],

  [除],
  [
    ```c
    x * 1.0 / y;
    ```
  ],
  [
    ```py
    x / y
    ```
  ],

  [整除],
  [
    ```c
    (int)x / (int)y;
    ```
  ],
  [
    ```py
    x // y
    ```
  ],

  [取余],
  [
    ```c
    x % y;
    ```
  ],
  [
    ```py
    x % y
    ```
  ],

  [乘方 #footnote[C语言代码仅用于理解]<explain>],
  [
    ```c
    pow(x, y);
    ```
  ],
  [
    ```py
    x ** y
    ```
  ],
)
