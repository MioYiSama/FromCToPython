C语言中，根据作用域的不同，变量#footnote[暂不考虑静态变量]被分为局部变量（Local Variable）和全局变量（Global Variable）。在代码块内声明的变量均为局部变量，否则是全局变量。一个变量只能在作用域内被访问。

在Python中，情况较为复杂。Python变量的作用域和代码块无关，而与#quote[*闭包*]（Closure）相关。#quote[闭包]是指一个封闭的代码区域。在闭包中创建的变量，作用域会被限制在闭包中，一旦离开闭包，变量就无法被再次访问。Python最主要的闭包就是函数体，以及后文将会提到的#quote[方法]。在闭包内创建的变量均为局部变量，反之为全局变量。

看下面的代码：
#rect[
  ```py
  def f():
    print(x)

  x = 0
  f() # 输出0
  ```
]
`x`没有位于闭包内，所以为全局变量。在函数`f()`中`print(x)`会访问全局变量`x`。

但是，一旦函数内出现了赋值操作（不论在函数的哪个位置），这个变量就会变成局部变量：

#rect[
  ```py
  def f():
    x = 1
    print(x)

  x = 0
  f() # 输出1
  print(x) # 输出0
  ```
]

但是有的时候我们想修改全局变量，而非创建局部变量，这个时候就需要使用#quote[`global`]关键字，在函数内声明该变量为全局变量：

#rect[
  ```py
  def f():
    global x # 声明x为全局变量
    x = 1
    print(x)

  x = 0
  f() # 输出1
  print(x) # 输出1
  ```
]
