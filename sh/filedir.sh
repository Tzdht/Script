#!/bin/bash
read -p "请输入文件或目录地址: " df
if [ -e $df ];then
	if [ -d $df ];then
		echo "$df 为目录"
	elif [ -f $df ];then
		echo "$df 为普通文件"
	else
		echo "$df 既不是目录,也不是普通文件,可能是个几巴"
	fi
	else
		echo "文件或目录不存在"
fi
