
#table(
  table.header([*运行*], [*C*], [*Python*]),
  [预处理],
  [
    C语言属于*编译型语言*，需要通过*编译器，**编译*成二进制的机器指令才能运行
  ],
  [
    Python属于*解释型语言*，不需要*编译*,但需要通过*解释器*运行
  ],

  [入口点],
  [
    `main()`函数
  ],
  [
    从源文件的第一行开始运行
  ],

  [（终端）运行],
  [
    ```bash
    # gcc为编译器
    gcc -i main.c -o main.exe
    main.exe
    ```
  ],
  [
    ```bash
    # python3为解释器
    python3 main.py
    ```
  ]
)

另见：

- #link(<InstallPython>)[*附录：安装Python*]

- #link(<REPL>)[*附录：REPL*]
