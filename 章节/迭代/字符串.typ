#import "../../lib.typ": None, table_align

字符串的常用方法和操作：

#table(
  align: table_align(rows: (0,), columns: (0,)),
  columns: (16%, 30%, 35%, 19%),
  table.header([功能], [参数], [举例], [结果]),
  [连接],
  [#None],
  [
    ```py
    'Hello' + 'World'
    ```
  ],
  [
    ```py
    'HelloWorld'
    ```
  ],

  [重复],
  [#None],
  [
    ```py
    'Hello' * 3
    ```
  ],
  [
    ```py
    'HelloHelloHello'
    ```
  ],

  [分割字符串],
  [
    ```py
    # sep: 分隔符（默认为空白符，包含空格、\n、\r、\t等）
    # maxsplit：最多分割几次（默认为无限次）
    split(sep, maxsplit)
    ```
  ],
  [
    ```py
    'A B C'.split()
    'A,B,C'.split(',')
    'A,B,C'.split(',', 1)
    ```
  ],
  [
    ```py
    ['A', 'B', 'C']
    ['A', 'B', 'C']
    ['A', 'BC']
    ```
  ],

  [大小写转换],
  [
    ```py
    lower() # 全部转小写
    upper() # 全部转大写
    ```
  ],
  [
    ```py
    'ABCdef'.lower()
    'abcDEF'.upper()
    ```
  ],
  [
    ```py
    'abcdef'
    'ABCDEF'
    ```
  ],

  [统计某字符串#linebreak()出现次数],
  [
    ```py
    # sub：字符串
    # start：开始索引（默认为0）
    # end：结束索引（默认为最后一个索引）
    count(sub)
    count(sub, start)
    count(sub, start, end)
    ```
  ],
  [
    ```py
    'abcabcabc'.count('abc')
    'abcabcabc'.count('abc', 1)
    'abcabcabc'.count('abc', 1, 7)
    ```
  ],
  [
    ```py
    3
    2
    1
    ```
  ],

  [移除首尾字符],
  [
    ```py
    # chars：要移除的字符，默认为空格
    strip(chars)
    ```
  ],
  [
    ```py
    '   abc   '.strip()
    'aabbccbbaa'.strip('ab')
    ```
  ],
  [
    ```py
    'abc'
    'cc'
    ```
  ],

  [
    （方法风格）

    格式化
  ],
  [
    ```py
    # args: 用于替换的参数
    format(*args)
    ```
  ],
  [
    ```py
    'Hello, {}!'.format('world')
    # 0表示第一个参数，1同理
    '{0}{1}{0}'.format('x', 'y')
    'pi = {:.2f}'.format(3.14159)
    ```
  ],
  [
    ```py
    'Hello, world!'

    'xyx'
    'pi = 3.14'
    ```
  ],

  [
    （C风格）

    格式化
  ],
  [#None],
  [
    ```py
    'Hello, %s!' % 'world'
    '%s %s' % ('x', 'y')
    'pi = %.2f' % 3.14159
    ```
  ],
  [
    ```py
    'Hello, world!'
    'x y'
    'pi = 3.14'
    ```
  ],

  [
    （字面量风格）

    格式化#footnote[又被称为f-string，即在字符串字面量前面加上前缀#quote[`f`]]
  ],
  [#None],
  [
    ```py
    name = 'world'
    x, y = 1, 2
    pi = 3.14159

    f'Hello, {name}!'
    f'Point({x}, {y})'
    f'pi = {pi:.2f}'
    ```
  ],
  [
    ```py




    'Hello, world!'
    'Point(1, 2)'
    'pi = 3.14'
    ```
  ],

  [拼接可迭代对象 #footnote[以字符串本身作为分隔符]],
  [
    ```py
    # iterable：可迭代对象
    join(iterable)
    ```
  ],
  [
    ```py
    ','.join([1, 2, 3])
    '+'.join([1, 2, 3])
    ```
  ],
  [
    ```py
    '1,2,3'
    '1+2+3'
    ```
  ],

  [查找字符串 #footnote[找到则返回第一次出现的开始索引，找不到返回-1]],
  [
    ```py
    # sub：字符串
    # start：开始索引（默认为0）
    # end：结束索引（默认为最后一个索引）
    find(sub)
    find(sub, start)
    find(sub, start, end)
    ```
  ],
  [
    ```py
    'Hello, world!'.find('world')
    'Hello, world!'.find('世界')
    'Hello, world!'.find('world', 8)
    ```
  ],
  [
    ```py
    7
    -1
    -1
    ```
  ],

  [替换字符串],
  [
    ```py
    # old：原字符串
    # new：新字符串
    # count：最大替换次数（默认为无限次）
    replace(old, new, count)
    ```
  ],
  [
    ```py
    'Hello'.replace('l', 'x')
    'Hello'.replace('l', 'x', 1)
    ```
  ],
  [
    ```py
    'Hexxo'
    'Hexlo'
    ```
  ],

  [特性判断],
  [
    ```py
    # 是否以prefix开头
    startswith(prefix)

    # 是否以suffix结尾
    endswith(suffix)

    # 是否只包含：
    isalpha() # 字母
    isdigit() # 数字
    isalnum() # 字母和数字
    islower() # 小写字母
    isupper() # 大写字母
    isspace() # 空格
    ```
  ],
  [
    ```py
    'www.baidu.com'.startswith('www')
    'file.txt'.endswith('.txt')
    'abc'.isalpha()
    '123'.isdigit()
    '123abc'.isalnum()
    'abc'.islower()
    'ABC'.isupper()
    '  '.isspace()
    ```
  ],
  [
    ```py
    True
    True
    True
    True
    True
    True
    True
    True
    ```
  ],
)
