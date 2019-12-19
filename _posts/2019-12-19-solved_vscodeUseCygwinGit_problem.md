---
layout: post
title: Vscode集成Cygwin安装的Git时无法使用问题
categories: [problem, tools]
description: vscode使用cygwin中的git无法识别
keywords: vscode, cygwin, git
---

### 问题描述

当我使用 vscode 集成了 cygwin 的 bash 作为终端的时候，我发现在 WSL 环境下在 vscode 中的 Git 可以正常使用，然而到了 windows 端却无法使用。

我检查了在 cygwin 环境下也好，cmd 环境下也好都是可以正常使用的。

### 解决方案

1. 卸载在 cygwin 环境下安装的 Git。
2. 重新安装 windows 版本的 Git 并添加到系统路径（cygwin也能正常使用）。
3. 重新配置一下自己的 Git 账户和用户名
   ```
    git config --global user.name "username"
    git config --global user.email "username@mail.com"
   ```
4. 在 vscode 的配置文件中更改 `"git.path"` 为 Git 安装路径。
5. 在系统 `C:\Users\username\.ssh` 路径下添加自己的私钥（username 为自己的用户名）。

最后一步是需要使用 ssh 的时候才需要的，完成之后重启 vscode 就能生效。

