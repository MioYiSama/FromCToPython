#import "../../lib.typ": None, table_align

注：

- Python的整数理论上没有大小范围，浮点数的绝对值的大小范围约为$[2.225 times 10^(-308), 1.8 times 10^(308)]$

- 虽然Python没有*数组*，但是Python有功能比数组更强大的*列表*#footnote[将在后文详细介绍]

#table(
  align: table_align(rows: (0,), columns: (0, 3)),
  columns: 4,
  table.header([类型], [C], [Python], [Python名]),
  [*整数*（Integer）],
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

  [*浮点数*#linebreak()#text(size: 9.5pt)[(Floating Point Number)]],
  [
    ```c
    float x = 3.14;
    double x = 3.14;
    ```
  ],
  [
    ```py
    x = 3.14
    ```
  ],
  [`float`],

  [*复数*#linebreak()（Complex Number）],
  [#None],
  [
    ```py
    x = complex(1, 2) # 1 + 2i
    ```
  ],
  [`complex`],

  [*字符*（Character）],
  [
    ```c
    char x = 'a';
    ```
  ],
  [#None],
  [#None],

  [*布尔*#footnote[并非C语言原生类型，需要`#include <stdbool.h>`]（Boolean）],
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

  [*字符串*（String）],
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

  [*数组*（Array）],
  [
    ```c
    int x[3] = {1, 2, 3};
    ```
  ],
  [#None],
  [#None],

  [*列表*（List）],
  [#None],
  [
    ```py
    x = [1, 2, 3]
    ```
  ],
  [`list`],

  [*元组*（Tuple）],
  [#None],
  [
    ```py
    x = (1, 2, 3)
    x = (1,) # 仅有一个元素的元组
    ```
  ],
  [`tuple`],

  [*集合*（Set）],
  [#None],
  [
    ```py
    x = {1, 2, 3}
    ```
  ],
  [`set`],

  [*字典*（Dictionary）],
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

  [*区间*#footnote[C语言并*没有*区间，此处仅用于理解。区间特指*整数区间*]（Range）],
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

  [*指针*（Pointer）],
  [
    ```c
    int* p = &x;
    ```
  ],
  [#None],
  [#None],

  [*空* #footnote[C语言并没有#quote[空]这个类型，此处仅用于理解；需要`#include <stddef.h>` ]],
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
