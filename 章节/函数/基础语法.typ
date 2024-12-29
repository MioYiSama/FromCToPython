#import "../../lib.typ": table_align

#table(
  align: table_align(rows: (0,), columns: (0, 1)),
  columns: 4,
  table.header([参数], [返回值], [C], [Python]),
  [无],
  [无],
  [
    ```c
    void f() {
    }

    void f() {
      return
    }
    ```
  ],
  [
    ```py
    def f():
      pass

    def f():
      return
    ```
  ],

  [无],
  [有],
  [
    ```c
    int f() {
      return 0;
    }
    ```
  ],
  [
    ```py
    def f():
      return 0
    ```
  ],

  [有],
  [无],
  [
    ```c
    void f(int x) {
    }
    ```
  ],
  [
    ```py
    def f(x):
      pass
    ```
  ],

  [有],
  [有],
  [
    ```c
    int f(int x) {
      return x;
    }
    ```
  ],
  [
    ```py
    def f(x):
      return x
    ```
  ],

  [多个],
  [无],
  [
    ```c
    void f(int x, int y) {
    }
    ```
  ],
  [
    ```py
    def f(x, y):
      pass
    ```
  ],
)
