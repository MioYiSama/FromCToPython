#import "../../lib.typ": table_align

#table(
  align: table_align(rows: (0,), columns: (0,)),
  columns: 3,
  table.header([分支], [C], [Python]),
  [如果],
  [
    ```c
    if (x) {
    }
    ```
  ],
  [
    ```py
    if x:
      pass
    ```
  ],

  [亦或是],
  [
    ```c
    else if (x) {
    }
    ```
  ],
  [
    ```py
    elif x:
      pass
    ```
  ],

  [否则],
  [
    ```c
    else {
    }
    ```
  ],
  [
    ```py
    else:
      pass
    ```
  ],

  [选择 #footnote[需要Python 3.10及以上版本]],
  [
    ```c
    switch(x) {
      case 0:
        break
      default:
        break;
    }
    ```
  ],
  [
    ```py
    match x:
      case 0:
        pass
      case _:
        pass
    ```
  ],
)
