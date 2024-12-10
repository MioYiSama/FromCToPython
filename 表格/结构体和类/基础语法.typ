#import "../lib.typ": None

#table(
  table.header([*结构体与类*], [*C*], [*Python*]),

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

  [创建方法 #footnote[C语言没有方法的概念。此处代码仅用作理解使用]],
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
    struct Point x = {
      .x = 1,
      .y = 2
    };
    ```
  ],
  [
    ```py
    x = Point(1, 2)
    ```
  ],

  [使用方法],
  [
    ```c
    Point_add(&x);
    ```
  ],
  [
    ```py
    x.add()
    ```
  ],
)