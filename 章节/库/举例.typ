
假设有一个Python文件#quote[lib.py]：

#rect[
  ```py
  def add(x, y):
    return x + y

  def sub(x, y):
    return x - y
  ```
]

就可以在其他Python文件中用下面的方式导入它：

#rect[
  ```py
  import lib

  lib.add(1, 2)
  lib.sub(1, 2)
  ```
]

#rect[
  ```py
  import lib as l

  l.add(1, 2)
  l.sub(1, 2)
  ```
]

#rect[
  ```py
  from lib import add

  add(1, 2)
  ```
]

#rect[
  ```py
  from lib import add as f

  f(1, 2)
  ```
]

#rect[
  ```py
  from lib import add, sub

  add(1, 2)
  sub(1, 2)
  ```
]
