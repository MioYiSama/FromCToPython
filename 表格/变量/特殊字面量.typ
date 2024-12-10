字面量指一个固定值的表示方法

注：Python和C语言一样支持转义字符

#table(
  columns: (20%, 30%, 50%),
  table.header([*字面量*], [*C*], [*Python*]),
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