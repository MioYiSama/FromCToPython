#import "../lib.typ": None

#table(
  table.header([*运算符*], [*C*], [*Python*]),

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

  [地址相同 #footnote[C语言没有完全对应的运算符]<a>],
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

  [地址不同 @a],
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