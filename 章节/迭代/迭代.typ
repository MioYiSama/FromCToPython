#quote[*迭代*]（Iteration）指重复执行一组代码的过程。比如，在C语言中遍历数组：

#rect[
  ```c
  int a[5];
  for(int i = 0; i < 5; ++i)
    printf("%d\n", a[i]);
  ```
]

每一次循环都可以被看作是对数组的一次迭代。在Python里有许多种可以被迭代的变量，它们被统称为#quote[*可迭代对象*]（Iterable）。最常见的可迭代对象就是列表，它和C语言的数组类似，但是它有许多独特的功能和特性（详情请阅读后面的序列章节）。

=== for循环

所有可迭代对象都可以使用for循环遍历，其语法为#quote[`for 元素 in 可迭代对象`]。比如：

#rect[
  ```py
  for i in [4,5,6]:
    print(i)
  ```
]

输出结果为：

#rect[
  ```
  4
  5
  6
  ```
]

=== yield关键字与生成器

有的时候，我们希望函数可以返回多个值，这个时候就可以使用#quote[`yield`]关键字。比如：

#rect[
  ```py
  def f():
    yield 1
    yield 2
    yield 3
  ```
]

`yield`和`return`类似，都可以让函数返回一个值，但不同的是`yield`不会让函数停止执行，因此我们可以借助它让函数返回多个值。

调用有yield的函数之后，它会返回一个名为#quote[*生成器*]（Generator）的对象。顾名思义，#quote[生成器]就是可以生成多个值的对象。
由于它存储了多个值，因此它可以被遍历，属于可迭代对象。
我们可以用`for`循环遍历生成器生成的值。比如：

#rect[
  ```py
  for i in f():
    print(i)
  ```
]

输出结果为：

#rect[
  ```
  1
  2
  3
  ```
]

#pagebreak()

=== 生成器的简化写法

生成器还有一个简化写法：

#rect[
  ```py
  (表达式 for 变量 in 可迭代对象)
  # 比如 (i * i for i in [1, 2, 3]) 结果为 1, 4, 9
  ```
]

这种写法从前往后被分为两部分：*表达式部分*和*循环部分*。表达式部分就是需要生成的值，循环部分就是表达式中的循环变量。

生成器中的#quote[循环部分]还可以是多重循环，比如：

#rect[
  ```py
  (i + j for i in [1, 2] for j in [3, 4]) # 生成结果为4, 5, 5, 6
  ```
]

#quote[循环部分]的后面还可以加入`if`判断进行元素筛选：

#rect[
  ```py
  (i for i in [1, 2, 3, 4] if i % 2 == 0) # 生成结果为2, 4
  ```
]

=== 惰性求值

假如你尝试输出（`print`）一个生成器，会发现输出结果为#quote[`<generator object <genexpr> at ...>`]。
实际上，生成器并不会立刻生成出所有值，而是只有被迭代的时候才会生成值。这种特性被称为#quote[*惰性求值*]（Lazy Evaluation），意思是它不会积极地求出值，而是只有等到被需要的时候再求。
