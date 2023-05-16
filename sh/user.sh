#!/bin/bash
#创建用户
read -p '请输入用户名: ' username
read -p '请输入密码: ' password

useradd $username &> /dev/null && echo '用户创建成功'
echo "$password" | passwd --stdin $username &> /dev/null  && echo '密码创建成功'
