#!/bin/bash

IP=$(ifconfig | grep inet | grep -v inet6 | awk '{print $2}' | grep -v 127.0.0.1)
NAME=$(hostname)
M1=$(free -h | grep Mem | awk '{print $2}')
M2=$(free -h | grep Mem | awk '{print $3}')
M3=$(free -h | grep Mem | awk '{print $4}')
CPUN=$(cat /proc/cpuinfo | grep "model name" | awk -F: '{print $2}')
CPUC=$(cat /proc/cpuinfo | grep "cpu cores" | awk -F: '{print $2}')
echo "您的主机名为: $NAME"
echo "您的IP地址为: $IP"
echo "您的总内存为: $M1 ,已使用: $M2 ,未使用: $M3"
echo "您的CPU型号为: $CPUN"
echo "您的CPU核心数为: $CPUC"
