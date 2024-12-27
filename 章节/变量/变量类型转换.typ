#import "../lib.typ": None

#table(
  table.header([*转换*], [*C*], [*Python*]),

  [浮点数 转 整数],
  [
    ```c
    (int)x
    ```
  ],
  [
    ```py
    int(x)
    ```
  ],

  [整数 转 浮点数],
  [
    ```c
    (float)x
    ```
  ],
  [
    ```py
    float(x)
    ```
  ],

  [整数 转 字符串 #footnote[C语言需要 `#include <stdio.h>`]],
  [
    ```c
    char s[256];
    sprintf(s, "%d", x); // 十进制
    // 无法直接进行二进制转换
    sprintf(s, "%o", x); // 八进制
    sprintf(s, "%X", x); // 十六进制
    ```
  ],
  [
    ```py
    str(x) # 十进制
    bin(x) # 二进制
    oct(x) # 八进制
    hex(x) # 十六进制
    ```
  ],

  [字符串 转 整数 #footnote[C语言需要 `#include <stdlib.h>`]],
  [
    ```c
    strtol(x, NULL, 10); // 十进制
    strtol(x, NULL, 2); // 二进制
    strtol(x, NULL, 8); // 八进制
    strtol(x, NULL, 16); // 十六进制
    ```
  ],
  [
    ```py
    int(x) # 十进制
    int(x, 2) # 二进制
    int(x, 8) # 八进制
    int(x, 16) # 十六进制
    ```
  ],

  [序列 转 列表],
  [#None],
  [
    ```py
    list(x)
    ```
  ],

  [序列 转 元组],
  [#None],
  [
    ```py
    tuple(x)
    ```
  ],

  [序列 转 集合],
  [#None],
  [
    ```py
    set(x)
    ```
  ],

  [序列 转 字典 #footnote[需要满足特定格式的序列，如`[['k1', 1], ['k2', 2]]`]],
  [#None],
  [
    ```py
    dict(x)
    ```
  ],
)
