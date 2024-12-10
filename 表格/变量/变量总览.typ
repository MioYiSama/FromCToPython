#import "../lib.typ": None

注：
- 虽然Python没有数组，但是Python有功能比数组更强大的各种序列（列表，元组，集合，字典）

#table(
  columns: (20%, 34%, 34%, 12%),
  table.header(
    [*类型*],
    [*C*],
    [*Python*],
    [*Python名*],
  ),

  [整数],
  [
    ```c
    short x = 1;
    int x = 1;
    long long x = 1;
    unsigned short x = 1;
    unsigned int x = 1;
    unsigned long long x = 1;
    ```
  ],
  [
    ```py
    x = 1
    ```
  ],
  [`int`],

  [浮点数],
  [
    ```c
    float x = 3.14;
    double x = 3.14;
    long double x = 3.14;
    ```
  ],
  [
    ```py
    x = 3.14
    ```
  ],
  [`float`],

  [字符],
  [
    ```c
    char x = 'a';
    ```
  ],
  [#None],
  [#None],

  [布尔 #footnote[并非C语言原生类型，且需要`#include <stdbool.h>`]],
  [
    ```c
    bool x = true;
    ```
  ],
  [
    ```py
    x = True
    ```
  ],
  [`bool`],

  [字符串],
  [
    ```c
    char x[] = "Hello\nWorld";
    char* x = "Hello\nWorld";
    ```
  ],
  [
    ```py
    x = "Hello\nWorld"
    ```
  ],
  [`str`],

  [数组],
  [
    ```c
    int x[] = {1, 2, 3};
    ```
  ],
  [#None],
  [#None],

  [（整数）区间 #footnote[C语言并没有区间，代码仅用作理解使用]],
  [
    ```c
    for (int i = 0; i < 5; i += 1);
    for (int i = 2; i < 5; i += 1);
    for (int i = 0; i < 5; i += 2);
    for (int i = 5; i > 0; i += -1);
    ```
  ],
  [
    ```py
    x = range(5)
    x = range(2, 5)
    x = range(0, 5, 2)
    x = range(5, 0, -1)
    ```
  ],
  [`range`],

  [列表],
  [#None],
  [
    ```py
    x = [1, 2, 3]
    ```
  ],
  [`list`],

  [元组],
  [#None],
  [
    ```py
    x = (1, 2, 3)
    x = (1,) # 仅有一个元素的元祖
    ```
  ],
  [`tuple`],

  [集合],
  [#None],
  [
    ```py
    x = {1, 2, 3}
    ```
  ],
  [`set`],

  [字典],
  [#None],
  [
    ```py
    x = {
      "name": "Mike",
      "age": 18
    }
    ```
  ],
  [`dict`],

  [指针],
  [
    ```c
    int* p = &x;
    ```
  ],
  [#None],
  [#None],

  [空 #footnote[C语言并没有“空”这个类型，NULL只是功能类似于None，此处仅用于理解；NULL位于 `#include <stddef.h>` 中]],
  [
    ```c
    NULL
    ```
  ],
  [
    ```py
    None
    ```
  ],
  [`NoneType`],
)

#table(
  columns: (20%, 30%, 50%),
  table.header([*字面量* #footnote[指一个固定值的表示法]], [*C*], [*Python*]),
  [整数 #footnote[C语言的二进制整数字面量需要C11及以上版本]],
  [
    ```c
    123 // 十进制
    0b1011 // 二进制
    075 // 八进制
    0x7F // 十六进制
    ```
  ],
  [
    ```py
    123 # 十进制
    0o75 # 二进制
    0b1011 # 八进制
    0x7F # 十六进制
    ```
  ],

  [字符串],
  [
    ```c
    "Hello"
    ```
  ],
  [
    ```py
    # 单行字符串
    "Hello\nWorld"
    'Hello\nWorld'
    # 多行字符串
    """Hello
    World"""
    '''Hello
    World'''
    ```
  ],
)