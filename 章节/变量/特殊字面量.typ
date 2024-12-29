#import "../../lib.typ": None, table_align

注：

- *字面量*（Literal Value）指一个固定值的表示方法

- Python和C语言一样支持*转义字符*（Escape Character）

#table(
  align: table_align(rows: (0,), columns: (0, 3)),
  columns: (10%, 25%, 20%, 45%),
  table.header([字面量], [C], [Python], [备注]),
  [整数],
  [
    ```c
    0b1011 // 二进制
    075 // 八进制
    0x7F // 十六进制
    ```
  ],
  [
    ```py
    0b1011 # 二进制
    0o75 # 八进制
    0x7F # 十六进制
    ```
  ],
  [C语言的二进制字面量需要C11及以上版本],

  [浮点数],
  [
    ```c
    1e9
    ```
  ],
  [
    ```py
    1e9
    ```
  ],
  [#quote[e9]表示#quote[$times 10^9$]],

  [字符串],
  [
    ```c
    "Hello\nWorld"
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
  [#None],
)
