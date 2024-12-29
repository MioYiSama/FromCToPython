#import "../../lib.typ": None, table_align

注：

- Python的实例方法的第一个参数为实例自身，并且通常起名为#quote[self]

- Python的类的属性和Python的变量一样，都不需要声明，但需要先赋值后使用

#table(
  align: table_align(rows: (0,), columns: (0,)),
  columns: 3,
  table.header([结构体与类], [C], [Python]),
  [基础定义],
  [
    ```c
    struct Point {
      int x;
      int y;
    };
    ```
  ],
  [
    ```py
    class Point:
      def __init__(self, x, y):
        self.x = x
        self.y = y
    ```
  ],

  [创建实例方法 #footnote[C语言没有方法的概念。此处代码仅用作理解使用]],
  [
    ```c
    int Point_add(struct Point* self) {
      return self->x + self->y;
    }
    ```
  ],
  [
    ```py
    class Point:
      def __init__(self, x, y):
        self.x = x
        self.y = y

      def add(self):
        return self.x + self.y
    ```
  ],

  [创建变量],
  [
    ```c
    struct Point p = {
      .x = 1,
      .y = 2
    };
    ```
  ],
  [
    ```py
    p = Point(1, 2)
    ```
  ],

  [使用方法],
  [
    ```c
    Point_add(&p);
    ```
  ],
  [
    ```py
    p.add()
    ```
  ],
)
