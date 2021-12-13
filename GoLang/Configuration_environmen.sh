#!/bin/bash

# 安装axel下载工具
sudo apt install axel -y
# 下载go解释器
axel -n 20  https://studygolang.com/dl/golang/go1.17.4.linux-amd64.tar.gz  

tar -xf go1.17.4.linux-amd64.tar.gz 
sudo cp -rf go /usr/local  

tee >> .profile << EOF

# GoLang Config
export GOROOT=/usr/local/go
export GOPATH=/home/m/Work/GoLang/
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOPATH/bin
export GOBIN="$HOME/go/bin"
export GO111MODULE=on
export GOPROXY=https://goproxy.cn,direct

EOF
# 使其配置文件临时生效
source .profile 
# 验证
go version
