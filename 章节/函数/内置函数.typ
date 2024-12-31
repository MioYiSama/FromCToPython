#import "../../lib.typ": None, table_align, SeeAlso

#table(
  align: table_align(rows: (0,), columns: (0, 1)),
  columns: (21%, 19%, 40%, 20%),
  table.header([函数], [功能], [举例], [结果]),
  [
    ```py
    input(
      prompt=None
    )
    ```
  ],
  [从终端读入字符串],
  [
    ```py
    input()

    input('请输入数字：')
    ```
  ],
  [
    `> hello`
    ```py
    'hello'
    ```
    `> 请输入数字：123`
    ```py
    '123'
    ```
  ],

  [
    ```py
    print(
      # 需要输出的值
      *args,
      # 值之间的分隔符
      sep=' ',
      # 结尾字符
      end='\n'
    )
    ```
  ],
  [向终端输出内容],
  [
    ```py
    print(1)
    print(1, 2, 3)
    print(1, 2, 3, sep=',')
    print(1, 2, 3, end='$')
    ```
  ],
  [
    ```text
    1
    1 2 3
    1,2,3
    1 2 3$
    ```
  ],

  [
    ```py
    abs(x)
    round(x)
    ```
  ],
  [求绝对值#linebreak() 四舍五入#footnote[严格来说不是四舍五入，但是被广泛认作是四舍五入]],
  [
    ```py
    abs(-1)
    round(3.14)
    ```
  ],
  [
    ```py
    1
    3
    ```
  ],

  [
    ```py
    ord(x)
    chr(x)
    ```
  ],
  [字符转ASCII值 #linebreak() ASCII值转字符],
  [
    ```py
    ord('a')
    chr(97)
    ```
  ],
  [
    ```py
    97
    'a'
    ```
  ],

  [
    ```py
    eval(x)
    exec(x)
    ```
  ],
  [
    计算表达式#linebreak()执行语句
  ],
  [
    ```py
    eval('1 + 2')
    exec('print(1 + 2)')
    ```
  ],
  [
    ```py
    3
    3
    ```
  ],

  [
    ```py
    id(x)
    ```
  ],
  [获取x的地址],
  [
    ```py
    x = 1
    id(x)
    ```
  ],
  [
    ```py

    140725698102184
    ```
  ],

  [
    ```py
    isinstance(x, t)
    ```
  ],
  [判断x的类型#linebreak()是否为t],
  [
    ```py
    def f(x): print(isinstance(x, int))
    f(1)
    f('1')
    ```
  ],
  [
    ```py

    True
    False
    ```
  ],

  [
    ```py
    max(*args)
    min(*args)
    ```
  ],
  [获取最大/小值],
  [
    ```py
    max(4, 5)
    min(4, 5, 6)
    ```
  ],
  [
    ```py
    5
    4
    ```
  ],

  [
    ```py
    type(x)
    ```
  ],
  [获取x的类型],
  [
    ```py
    type(1.23)
    ```
  ],
  [
    ```py
    float
    ```
  ],

  [
    ```py
    open(
      # 文件路径
      filename,
      # 打开模式
      mode='r',
      # 编码
      encoding
    )
    ```
  ],
  [打开文件（#SeeAlso(l:<file>, name:"章节")）],
  [
    ```py
    open('1.txt', 'r', encoding='utf-8')
    ```
  ],
  [#None],
)

#pagebreak()

与可迭代对象相关的内置函数：

#table(
  align: table_align(rows: (0,), columns: (0, 1)),
  columns: (19%, 25%, 36%, 20%),
  table.header([函数], [功能], [举例], [结果]),
  [
    ```py
    all(iterable)
    any(iterable)
    ```
  ],
  [
    是否所有元素都为`True` #footnote[会先通过`bool()`将元素转换为布尔值后再判断]<bool>
    #linebreak()
    是否有元素为`True` @bool
  ],
  [
    ```py
    max([1, 2, 3])
    min([1, 2, 3])
    ```
  ],
  [
    ```py
    3
    1
    ```
  ],

  [
    ```py
    max(iterable)
    min(iterable)
    ```
  ],
  [获取最大/小值],
  [
    ```py
    max([1, 2, 3])
    min([1, 2, 3])
    ```
  ],
  [
    ```py
    3
    1
    ```
  ],

  [
    ```py
    sum(iterable)
    ```
  ],
  [对所有元素*求和*],
  [
    ```py
    sum([1, 2, 3])
    ```
  ],
  [
    ```py
    6
    ```
  ],

  [
    ```py
    filter(
      # 过滤函数
      function,
      # 可迭代对象
      iterable
    )
    ```
  ],
  [*过滤*元素 #footnote[返回的是生成器。为了便于看到函数的执行结果，举例中将生成器转换为了列表]<generator>],
  [
    ```py
    def f(x): return x % 2 == 0
    list(filter(f, range(7)))
    ```
  ],
  [
    ```py

    [0, 2, 4, 6]
    ```
  ],

  [
    ```py
    map(
      # 映射函数
      function,
      # 可迭代对象
      iterable
    )
    ```
  ],
  [把每一个元素*映射*成另一个值 @generator],
  [
    ```py
    def f(x): return x * x
    list(map(f, range(4)))
    ```
  ],
  [
    ```py

    [0, 1, 4, 9]
    ```
  ],

  [
    ```py
    reversed(
      # 可迭代对象
      iterable
    )
    ```
  ],
  [返回*翻转*后的可迭代对象 @generator],
  [
    ```py
    list(reversed([1, 2, 3]))
    ```
  ],
  [
    ```py
    [3, 2, 1]
    ```
  ],

  [
    ```py
    sorted(
      iterable,
      # 是否降序排序
      reverse=False,
      # 排序依据
      key=None
    )
    ```
  ],
  [以列表形式得到对所有元素*排序*后的可迭代对象],
  [
    ```py
    sorted([3,1,5,2,4])
    sorted([3,1,5,2,4],reverse=True)

    def f(x): return -x
    sorted([3, 1, 5, 2, 4], key=f)
    ```
  ],
  [
    ```py
    [1, 2, 3, 4, 5]
    [5, 4, 3, 2, 1]


    [5, 4, 3, 2, 1]
    ```
  ],
)
