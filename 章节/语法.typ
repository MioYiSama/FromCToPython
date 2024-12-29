#import "../lib.typ": SeeAlso, table_align

#table(
  align: table_align(rows: (0, 1), columns: (0,)),
  columns: (16%, 42%, 42%),
  table.header([语法], [C], [Python]),
  [*语句*#linebreak()（Statement）],
  [每条语句之间#linebreak()必须用*分号*（Semicolon）分隔],
  [
    一般情况下，语句之间*按行*分隔，不需要通过分号分隔。

    但是如果需要在同一行内同时写入多行代码，就需要使用分号分隔
  ],

  [*注释*#linebreak()（Comments）],
  [
    ```c
    // 单行注释

    /*
      多行注释
    */
    ```
  ],
  [
    ```py
    # 单行注释

    """
    多行注释
    """

    '''
    多行注释
    '''
    ```
  ],

  [*代码块*#linebreak()（Code Block）],
  [
    ```c
    {
    }
    ```
  ],
  [
    ```py
    statement:
      pass
    ```
  ],
)

注：

- Python的代码块由*缩进*（Indent）决定，只有缩进相同且相邻的代码才属于同一代码块

- Python的代码块无法独立存在，只能在特定语句#footnote[控制语句、函数实现等]后出现

- Python的代码块内必须有代码（若代码块内不需要执行任何代码，用关键字`pass`作为占位符）

- 如果Python的代码块内只有一行代码，可以将其和冒号写于同一行
