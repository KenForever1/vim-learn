## 基于SpaceVim的扩展--以rust为例

本教程配合[My-Linux-config]("https://github.com/kktao/My-Linux-config)使用，基于[Martins3/My-Linux-config]("https://github.com/Martins3/My-Linux-config")更改，自己使用。

### 如何扩展
1. 修改./plug/coc.vim文件，添加rust language sever的配置

```bash
"languageserver": {
  "rust": {
    "command": "rust-analyzer",
    "filetypes": ["rust"],
    "rootPatterns": ["Cargo.toml"]
  }
}
```

![image](https://user-images.githubusercontent.com/31560259/126873115-bdaabfa2-1206-485a-bb7e-2fc2e9041b81.png)


![image](https://user-images.githubusercontent.com/31560259/126873097-21c46611-7aff-48ed-b761-14bd57abf98e.png)

参考：[coc-nvim配置rust]("https://github.com/neoclide/coc.nvim/wiki/Language-servers#rust")

2. 安装rust-analyzer，以及build from source

+ 安装rust-analyzer
```bash
rustup component add rust-src
```

```bash
git clone https://github.com/rust-analyzer/rust-analyzer.git && cd rust-analyzer

# 如果你没有使用VsCode，那么仅仅只需要安装LSP server
cargo xtask install --server
```
注意：在执行cargo xtask install 时，如果使用了npm淘宝源，可能会报错找不到需要安装的modules，建议报错时换成npm默认源，即

```
npm set registry https://registry.npmjs.org/
```

参考： [rust-analyzer 使用手册]("https://rust-analyzer.github.io/manual.html#vimneovim")

### 效果

![image](https://user-images.githubusercontent.com/31560259/126872898-67c5ccbd-587a-45e6-9509-c9cffcf9bb01.png)

![image](https://user-images.githubusercontent.com/31560259/126872929-710e5eb9-979d-4316-9301-c4910fea7e01.png)


### 原理

+ 使用coc-nvim配置了rust-analyzer language server, coc-rust-analyzer是coc.nvim的扩展，用于和rust-analyzer language server交互。

### 使用
+ gd 跳转到函数定义
+ gr 跳转到函数引用
+ K  查看注释
