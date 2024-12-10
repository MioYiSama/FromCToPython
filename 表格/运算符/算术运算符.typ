#import "../lib.typ": None

注：
- Python的“除”的结果永远为浮点数
- Python的“整除”的结果永远为整数（结果为只保留整数部分的商）

#table(
  table.header([*运算符*], [*C*], [*Python*]),

  [加 #footnote[可用于Python的字符串]<str>],
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

  [乘 @str],
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

  [除 #footnote[由于C语言的类型问题，C语言没有完全对应的运算符。]<div>],
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

  [整除 @div],
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

  [乘方 @a],
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