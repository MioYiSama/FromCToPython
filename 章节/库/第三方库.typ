要想*安装*第三方库，可以在终端中运行以下命令：

#rect[
  ```bash
  pip install 库名
  ```
]

比如，有一个专门用于发起网络请求的库：requests，要想安装它就可以运行：

#rect[
  ```bash
  pip install requests
  ```
]

然后就可以在代码中*使用*这个库：

#rect[
  ```py
  import requests # 导入
  r = requests.get('https://baidu.com') # 请求baidu.com
  print(r.text) # 输出网页内容
  ```
]

#Line

由于Python的第三方库的下载网站位于国外，访问速度会受到限制。可以在终端中运行下面的命令，将下载网站改为国内网站：

#rect[
  ```bash
  pip config set global.index-url https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple
  ```
]
