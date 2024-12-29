我们知道，成功打开文件之后，代码的最后必须关闭文件。但是假如这之间出现了异常，就会导致程序直接终止，无法执行关闭文件的代码。因此我们需要用finally确保不论有没有异常都关闭文件：

#rect[
  ```py
  f = open('1.txt')

  try:
      print(f.read())
  finally:
      f.close()
  ```
]

从中我们可以发现，文件对象有一个特点：必须同时有创建对象（打开文件）和销毁对象（关闭文件）的操作，并且不应该被异常打断销毁操作。这时就可以用`with`简化代码逻辑：

#rect[
  ```py
  with open('1.txt') as f:
    print(f.read())
  ```
]

`with`也被称作#quote[上下文管理器]（Context Manager）。
`with`可以确保变量能够被销毁。
