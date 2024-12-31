注：#quote[异常]仅存在于Python中，不存在于C语言中。

*异常*（Exception）指代码执行过程中出现的错误。
这种错误往往会导致程序直接终止运行。
比如，运行下面的代码：

#rect[
  ```py
  def f(x, y):
    return x / y

  a = f(1, 0)
  print(a)
  ```
]

就会出现下面的错误信息：

#rect[
  ```
  Traceback (most recent call last):
    File "main.py", line 4, in <module>
      a = f(1, 0)
    File "main.py", line 2, in f
      return x / y
  ZeroDivisionError: division by zero
  ```
]

错误信息包含了以下几点：

1. #quote[Traceback]指*代码的调用栈*，用于追溯代码发生异常的位置。此处就是执行`a = f(1, 0)`之后，执行`x / y`的过程中出现了异常。

2. #quote[ZeroDivisionError:]指*异常的类型*。此处的意思是零作除数的异常。

3. #quote[division by zero]指*错误消息*。错误消息可以帮助开发者更快了解异常的错误原因。

异常会直接终止程序，打断后续的代码的执行，因此后面的`print(a)`不会被执行。
