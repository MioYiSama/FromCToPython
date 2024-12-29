#import "../../lib.typ": None, table_align

#table(
  align: table_align(rows: (0,), columns: (0, 1, 4)),
  columns: (10%, 10%, 35%, 25%, 20%),
  table.header([从], [到], [C], [Python], [备注]),
  [浮点数],
  [整数],
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
  [#None],

  [整数],
  [浮点数],
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
  [#None],

  [整数],
  [字符串],
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
  [C语言需要`#include <stdio.h>`],

  [字符串],
  [整数],
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
  [C语言需要 `#include <stdlib.h>`],

  [序列],
  [列表],
  [#None],
  [
    ```py
    list(x)
    ```
  ],
  [#None],

  [序列],
  [元组],
  [#None],
  [
    ```py
    tuple(x)
    ```
  ],
  [#None],

  [序列],
  [集合],
  [#None],
  [
    ```py
    set(x)
    ```
  ],
  [#None],

  [序列],
  [字典],
  [#None],
  [
    ```py
    dict(x)
    ```
  ],
  [需要满足特定格式的序列，如#linebreak()`[['k1', 1], ['k2', 2]]`],
)
