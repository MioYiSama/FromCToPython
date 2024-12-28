由于Python中的变量实际上是对内存中的某个值的引用，因此在函数传递参数的过程中，传递的也是引用而非实际值。因此下面的代码会输出#quote[0]：

#rect[
  ```py
  def f(x): # x与a指向了同一个值“0”
    x = 1 # 在内存中创建整数“1”，并让x指向它，但外界代码中a依旧指向原来的“0”

  a = 0 # 在内存中创建整数“0”，并让a指向它
  f(a)
  print(a) # 输出“0”
  ```
]

而下面的代码会输出#quote[[0]]：

#rect[
  ```py
  def f(x): # x与a指向了内存中的同一个列表“[0]”
    x.append(0) # 让x指向的列表进行append操作

  a = []
  f(a)
  print(a) # 输出“[0]”
  ```
]
