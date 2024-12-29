观察下面的代码：

#rect[
  ```py
  a = []
  for i in range(5):
    a.append(i)
  print(a)
  ```
]

`a`最后会变成`[0, 1, 2, 3, 4]`。
很明显，`a`中的元素是有规律的，这个时候就可以用*列表生成式*（List Comprehension）简化`a`的创建：

#rect[
  ```py
  a = [i for i in range(5)]
  ```
]

列表生成式从前往后被分为两部分：*表达式部分*和*循环部分*。
上面的代码中，#quote[`i`]就是表达式部分，#quote[`for i in range(5)`]就是循环部分。
列表生成式的原理就是Python会执行后面的循环代码，并在每次循环中计算表达式的值并放入列表中。

如果继续深入，实际上#quote[`i for i in range(5)`]是*生成器*（Generator）。生成器就是会生成出多个值的表达式，其本质上也是一个序列。它可以被`tuple()`、`set()`等方式转换成其他序列，也可以赋值给变量。比如：

#rect[
  ```py
  a = (i for i in range(5))
  print(a) # <generator object <genexpr> at ...>
  print(tuple(a)) # (0, 1, 2, 3, 4)
  ```
]

在上例中，列表生成式就是将生成器产生的值变成了列表的元素。实际上，列表也可以换成集合和字典。

生成器中的#quote[循环部分]还可以是多重循环，比如：

#rect[
  ```py
  a = [(i, j) for i in range(2) for j in range(3)]
  # a = [(0, 0), (0, 1), (0, 2), (1, 0), (1, 1), (1, 2)]
  ```
]

#quote[循环部分]还可以加入`if`判断进行元素筛选：

#rect[
  ```py
  a = [i for i in range(10) if i % 2 == 0]
  # a = [0, 2, 4, 6, 8]
  ```
]
