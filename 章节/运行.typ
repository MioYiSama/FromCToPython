#import "../lib.typ": SeeAlso, table_align

#table(
  align: table_align(rows: (0,), columns: (0,)),
  columns: (18%, 41%, 41%),
  table.header([运行], [C], [Python]),
  [*预处理*（Preprocessing）],
  [
    C语言属于*编译型语言*，需要通过*编译器*（Compiler），*编译*（Compile）成二进制的机器指令才能运行
  ],
  [
    Python属于*解释型语言*，不需要*编译*（Interpret），但需要通过*解释器*（Interpreter）运行
  ],

  [*入口点*（Entrypoint）],
  [
    `main()`函数
  ],
  [
    从源文件的第一行开始运行
  ],

  [（终端）*运行*],
  [
    ```bash
    # gcc为C语言的编译器
    gcc -i main.c -o main.exe
    main.exe
    ```
  ],
  [
    ```bash
    # python3为Python的解释器
    python3 main.py
    ```
  ],
)

注：

- #SeeAlso(l: <InstallPython>, name: "附录")

- #SeeAlso(l: <REPL>, name: "附录")
