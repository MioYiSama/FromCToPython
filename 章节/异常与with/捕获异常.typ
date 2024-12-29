有的时候，我们不希望程序遇到异常就终止执行；还有的时候我们希望由我们自己来处理异常，而不是让Python自行处理。这时就需要在代码中主动捕获异常。

语法如下：

#rect[
  ```py
  try:
    代码块 # 可能出现异常的代码
  except 异常类型1 as 变量名: # 捕获异常类型1，执行代码块
    代码块
  except 异常类型2 as 变量名: # 捕获异常类型1，执行代码块
    代码块
  except 异常类型3 | 异常类型4 as 变量名: # 捕获异常类型3或4，执行代码块
    代码块
  finally: # 执行完try或except的代码块后，执行该代码块
    代码块
  ```
]

其中#quote[`异常类型`]可以省略，表示捕获任何异常；`as 变量名`也可以省略。

举例：

#rect[
  ```py
  def f(x, y):
    return x / y

  try:
      f('1', 1)
      f(1, 0)
  except ZeroDivisionError:
      print('出现了除数为0的错误')
  except TypeError as e:
      print('出现了类型错误:', e)
  except RuntimeError | SyntaxError:
      print('无法运行代码')
  finally:
      print('Done')
  ```
]

运行结果：

#rect[
  ```
  出现了类型错误: unsupported operand type(s) for /: 'str' and 'int'
  Done
  ```
]
