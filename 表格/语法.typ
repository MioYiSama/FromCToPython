注：
- Python的代码块由缩进决定，只有缩进相同的代码才在同一代码块内
- Python的代码块无法独立存在，只能在控制语句或函数后出现。并且代码块内必须有代码（若代码块内不需要执行任何东西，用关键字`pass`作为占位符）
#table(
  table.header([*语法*], [*C*], [*Python*]),

  [语句],
  [每条语句之间必须用*分号*分隔],
  [一般情况下，语句之间*按行*分隔，不需要通过分号分隔。

    但是如果需要在一行内同时写入多行代码，就需要使用分号分隔],

  [注释],
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

  [代码块],
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