---
layout: post
title: Build Neovim in WSL(ubuntu)
categories: [WSL, tools]
description: building neovim in wsl
keywords: neovim, WSL, build
---

## WSL (ubuntu) 环境下编译安装 Neovim

平时开虚拟机电脑性能不够，所以使用 WSL 环境来编程。 今天想使用到一个插件 `coc` 发现 WSL 安装的 neovim 版本太低因此需要下载源码进行编译。

### 编译步骤

1. 下载源码

   从官方 git 仓库找到 release 中的 Lasted release 版本下载源码(source code) tar.gz 包。
   使用命令 `wget https://github.com/neovim/neovim/archive/v0.4.3.tar.gz` 下载（当前最新稳定版）

2. 安装一些依赖

    - 编译需要使用 cmake
        
        `sudo apt-get install cmake`

    -  报错 Could NOT find PkgConfig (missing: PKG_CONFIG_EXECUTABLE)

        `sudo apt-get install pkg-config`
    
    - 报错 libtoolize/libtool: not found
    
        `sudo apt install libtool-bin libtool`

    - 报错 Could not find an 'unzip' program. Tried: unzip

        `sudo apt install unzip`

    - 报错 Unable to locate package aclocal
        
        `sudo apt-get install automake`

    - 报错  One of these is required:  gm4 gnum4 m4
        
        `sudo apt-get install m4`

    - 报错 Could NOT find Gettext
    
        `sudo apt-get install gettext`

3. 按照官方说明进行编译安装

    `make CMAKE_BUILD_TYPE=RelWithDebInfo`

    `sudo make install`

### 总结
    
编译过程还算比较简单，总之就是缺啥补啥，安装成功可能会因为之前的软连接报错，重新进行 bash 环境或者重启一下就能解决啦 ：）
