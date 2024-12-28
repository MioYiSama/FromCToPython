#import "../lib.typ": None

#table(
  align: (x, y) => (
    (
      if x == 0 or x == 1 or y == 0 { center } else { left }
    )
      + horizon
  ),
  columns: (20%, 20%, 40%, 20%),
  table.header([*函数*], [*功能*], [*举例*], [*结果*]),
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
      # 需要输出的参数
      *args,
      # 参数之间的分隔符
      sep=' ',
      # 结尾字符
      end='\n'
    )
    ```
  ],
  [向终端输出],
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
  [求绝对值#linebreak() 四舍五入#footnote[严格来说不是四舍五入，但是被人们广泛称作四舍五入]],
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
    def f(x):
      print(isinstance(x, int))

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
    len(x)
    ```
  ],
  [获取序列或字符串长度],
  [
    ```py
    len('Hello')
    len([1, 2, 3])
    ```
  ],
  [
    ```py
    5
    3
    ```
  ],

  [
    ```py
    max(iterable)
    max(*args)
    min(iterable)
    min(*args)
    ```
  ],
  [获取最大/小值],
  [
    ```py
    max([1, 2, 3])
    max(4, 5)
    min([1, 2, 3])
    min(4, 5, 6)
    ```
  ],
  [
    ```py
    3
    5
    1
    4
    ```
  ],

  [
    ```py
    sum(iterable)
    ```
  ],
  [对序列求和],
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
    sorted(
      # 序列
      iterable,
      # 是否降序排序
      reverse=False,
      # 排序关键字
      key=None
    )
    ```
  ],
  [返回排序后的序列],
  [
    ```py
    sorted([3, 1, 5, 2, 4])
    sorted([3, 1, 5, 2, 4], reverse=True)

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
  [打开文件#linebreak() （详情见#quote[#link(<file>)[文件读写]]）],
  [
    ```py
    open('1.txt', 'r', encoding='utf-8')
    ```
  ],
  [#None],
)
