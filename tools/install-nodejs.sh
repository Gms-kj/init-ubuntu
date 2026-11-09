#!/bin/bash

# 下载并安装 nvm：
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# 代替重启 shell
\. "$HOME/.nvm/nvm.sh"

# 下载并安装 Node.js：
nvm install 26

# 安装 Corepack：
npm install -g corepack

# 下载并安装 pnpm：
corepack enable pnpm

# 更换npm镜像源
pnpm config set registry https://registry.npmmirror.com
