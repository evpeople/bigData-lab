#!/bin/bash

#Author :evpeople
yum install expect -y
systemctl stop firewalld 
systemctl disable firewalld
systemctl status firewalld
chmod +x ./*.sh
echo "已安装expect，关闭了防火墙，并赋予了其他脚本可执行权限"
