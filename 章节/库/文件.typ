#import "../../lib.typ": None, table_align

=== 打开和关闭文件

#table(
  align: table_align(rows: (0,), columns: (0,)),
  columns: (15%, 40%, 45%),
  table.header([操作], [C], [Python]),
  [打开文件],
  [
    ```c
    FILE* f = fopen("1.txt", "r");
    FILE* f = fopen("1.txt", "w");
    ```
  ],
  [
    ```py
    f = open('1.txt', 'r', encoding='utf-8')
    f = open('1.txt', 'w', encoding='utf-8')
    ```
  ],

  [关闭文件],
  [
    ```c
    fclose(f);
    ```
  ],
  [
    ```py
    f.close()
    ```
  ],
)

=== 读取文件

#table(
  align: table_align(rows: (0,), columns: (0, 1)),
  columns: (20%, 20%, 20%, 40%),
  table.header([方法], [功能], [举例], [结果]),
  [
    ```py
    read()
    ```
  ],
  [读取全部内容],
  [
    ```py
    f.read()
    ```
  ],
  [
    ```py
    '123\n456\n789\n'
    ```
  ],

  [
    ```py
    readline()
    ```
  ],
  [读取一行内容],
  [
    ```py
    f.readline()
    ```
  ],
  [
    ```py
    '123\n'
    ```
  ],

  [
    ```py
    readlines()
    ```
  ],
  [按行读取全部内容],
  [
    ```py
    f.readlines()
    ```
  ],
  [
    ```py
    ['123\n', '456\n', '789\n']
    ```
  ],
)

=== 写入文件

#table(
  align: table_align(rows: (0,), columns: (0, 1)),
  columns: (20%, 20%, 20%, 40%),
  table.header([方法], [功能], [举例], [结果]),
  [
    ```py
    write(s)
    ```
  ],
  [写入字符串s],
  [
    ```py
    f.write('Hello')
    ```
  ],
  [
    ```
    Hello
    ```
  ],

  [
    ```py
    writelines(lines)
    ```
  ],
  [按行写入字符串],
  [
    ```py
    f.writelines([
      '123',
      '456',
      '789'
    ])
    ```
  ],
  [
    ```
    123
    456
    789
    ```
  ],
)
