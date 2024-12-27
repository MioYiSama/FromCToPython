
#table(
  table.header([函数], [C], [Python]),

  [无参数无返回值],
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

  [无参数有返回值],
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

  [有参数无返回值],
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

  [有参数有返回值],
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

  [多个参数],
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
  ]
)