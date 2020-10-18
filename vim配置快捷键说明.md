# Vim配置快捷键说明
## 文档目的

项目目录中的.vimrc文件是作者基于Vundle(the plug-in manager for Vim，一个Vim包管理器)的Vim配置文件。

## 安装：
+ 安装Vundle
+ 将.vimrc和.ycm_extra_conf.py文件放入$HOME目录下
+ 运行"vim +PluginInstall"命令

注：其中有一些插件，如YouComplete，Ack等访问对应的开源仓库或者网上教程进行安装，也很容易。

## 插件说明
+ Plugin 'gmarik/Vundle.vim'
+ Plugin 'tmhedberg/SimpylFold'
+ Plugin 'Valloric/YouCompleteMe'
+ Plugin 'Raimondi/delimitMate'
+ Plugin 'scrooloose/nerdtree'
+ Plugin 'Xuyuanp/nerdtree-git-plugin'
+ Plugin 'Lokaltog/powerline'
+ Plugin 'scrooloose/nerdcommenter'
+ Plugin 'NLKNguyen/papercolor-theme'
+ Plugin 'fatih/vim-go'
+ Plugin 'Tagbar'
+ Plugin 'ludovicchabant/vim-gutentags'
+ Plugin 'Blackrush/vim-gocode'
+ Plugin 'honza/vim-snippets'
+ Plugin 'SirVer/ultisnips'
+ Plugin 'frazrepo/vim-rainbow'
+ Plugin 'jisaacks/GitGutter'
+ Plugin 'mileszs/ack.vim'

## 使用此配置Vim快捷键总结
+ ":Ack [content]" 全局搜索
+ \<C-}>: 跳转到函数定义，\<C-o>: 跳转回到原位置
+ "F9"键：打开TagBar
+ "F6"键：插入模式下，代码自动补全提示
+ ";cc"：注释可视化模式下选中的代码或当前行代码, ";cu": 对已经注释的内容反注释, ";ca": 切换注释的符号
+ "\<C-n>": 打开或关闭目录树 
