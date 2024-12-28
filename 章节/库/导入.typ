注：*标识符*指变量、函数、类等

#table(
  align: (x, y) => (
    (
      if y == 0 or x > 2 { center } else { left }
    )
      + horizon
  ),
  columns: (50%, 50%),
  table.header([*C*], [*Python*]),
  [
    ```c
    #include "头文件.h"
    ```
  ],
  [
    ```py
    import 模块
    import 模块 as 别名

    import 模块.子模块.子模块
    import 模块.子模块.子模块 as 别名

    from 模块 import 标识符
    from 模块 import 标识符 as 别名

    from 模块 import 标识符1, 标识符2, 标识符3
    from 模块 import * # 导入所有标识符
    ```
  ],
)
