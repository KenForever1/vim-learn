# VimSpace配置C++环境

## 安装VimSpace
首先按照官网的说明安装spaceVim
```
curl -sLf https://spacevim.org/install.sh | bash -s -- --install vim
```

## 配置VimSpace
+ 修改配置文件 ~/.SpaceVim.d/init.toml(快捷键SPC f v d)

```
#=============================================================================
# dark_powered.toml --- dark powered configuration example for SpaceVim
# Copyright (c) 2016-2020 Wang Shidong & Contributors
# Author: Wang Shidong < wsdjeg at 163.com >
# URL: https://spacevim.org
# License: GPLv3
#=============================================================================

# All SpaceVim option below [option] section
[options]
    # set spacevim theme. by default colorscheme layer is not loaded,
    # if you want to use more colorscheme, please load the colorscheme
    # layer
    colorscheme = "gruvbox"
    colorscheme_bg = "dark"
    # Disable guicolors in basic mode, many terminal do not support 24bit
    # true colors
    enable_guicolors = true
    # Disable statusline separator, if you want to use other value, please
    # install nerd fonts
    statusline_separator = "arrow"
    statusline_iseparator = "arrow"
    buffer_index_type = 4
    enable_tabline_filetype_icon = true
    enable_statusline_mode = false
    relativenumber = false

# Enable autocomplete layer
[[layers]]
name = 'autocomplete'
auto_completion_return_key_behavior = "complete"
auto_completion_tab_key_behavior = "smart"

[[layers]]
name = 'shell'
default_position = 'top'
default_height = 30

[[layers]]
name="lang#c"
enable_clang_syntax_highlight = true
[layer.clang_std]
   cpp = "c11"

[[layers]]
  name = "lsp"
  filetypes = [
    "c",
    "cpp"
  ]
  [layers.override_cmd]
    c = ["clangd"]

[[layers]]
  name = "format"
```

## 安装clangd
```
sudo bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-11 100
```
注意： clangd版本不一定,如果安装地址为/usr/bin/clangd-11,则直接执行以上命令。如果为/usr/bin/clangd-12则以上命令中改为/usr/bin/clangd-12

## 安装universal ctags
### 安装
```
sudo apt install autoconf
cd /tmp
git clone https://github.com/universal-ctags/ctags
cd ctags
./autogen.sh
./configure --prefix=/opt/software/universal-ctags  # 安装路径，可自行调整。
make -j8
sudo make install
```

```
# 链接universal-ctags到$Path：
sudo ln -s /opt/software/universal-ctags/bin/ctags /usr/bin/ctags
```
### 使用ctags
+ cd ~/work/opencv   # 随便进入到一个你的c++工程目录
+ ctags -R .  #递归地生成.tags文件
+ 然后在vim中用Ctrl+](跳转到函数定义)和Ctrl+t(跳出定义)。

## 工程文件跳转
SpaceVim 提供了一个内置的工程文件跳转插件，默认的命令为 `:A`。
### 设置
首先在项目目录下创建.project_alt.json
```
{
  "src/buffer/*.cpp": {"alternate": "src/include/buffer/{}.h"},
  "src/include/buffer/*.h": {"alternate": "src/buffer/{}.cpp"}
}
```
## 常用操作

### 代码浏览
+ F2：打开语法树，F3：打开文件树
+ SPC '：打开 shell
+ Ctrl ]：查找定义（有 tags 文件时）
+ Ctrl o：返回上一次位置
+ SPC e l：打开代码检查错误窗口
+ SPC e L：打开代码检查错误窗口并聚焦

### 窗口光标
+ 各个窗口可以用鼠标进行操作
+ SPC j l 跳转到特定的行
+ SPC j j 跳转到特定的字符

###  vimfiler 窗口文件操作（F3打开，目录树）
+ N：新建文件
+ .：切换显示隐藏文件
+ yY：复制文件
+ yy：复制文件路径
+ P：粘贴文件
+ i：显示文件夹历史
+ sg：垂直分屏打开文件
+ Ctrl+r：刷新文件树

### 其他操作
+ \y 复制, \p 粘贴 （比 "+y, "+p 方便）

### 参考：
https://anson2416.github.io/posts/15d5d397/

## gtags
... todo
