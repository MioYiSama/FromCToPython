有的时候，某些不符合逻辑的地方我们也希望抛出异常，就可以使用`raise`关键字抛出自己的异常。

比如：

#rect[
  ```py
  def add(x, y):
    if type(x) != type(y):
      raise TypeError("变量x的类型与y不同")

    return x + y

  add('1', 1)
  ```
]

很明显，如果x和y的类型不同，就无法进行`x + y`的操作，因此我们在加法操作前加了一个`if`判断，并添加了`raise ...`语句。执行上面的代码会出现：

#rect[
  ```
  Traceback (most recent call last):
    File "main.py", line 7, in <module>
      add('1', 1)
      ~~~^^^^^^^^
    File "main.py", line 3, in add
      raise TypeError("变量x的类型与y不同")
  TypeError: 变量x的类型与y不同
  ```
]
