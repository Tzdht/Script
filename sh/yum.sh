#!/bin/bash

rm -rf /etc/yum.repos.d/*
mkdir /mnt/iso
echo '/dev/sr0	/mnt/iso	iso9660	defaults	0 0' >> /etc/fstab
mount /dev/sr0 /mnt/iso &> /dev/null
touch /etc/yum.repos.d/local.repo
echo '[local-BaseOS]
name=local-BaseOS
baseurl=file:///mnt/iso/BaseOS
enabled=1
gpgcheck=0
[local-AppStream]
name=local-AppStream
baseurl=file:///mnt/iso/AppStream
enabled=1
gpgcheck=0' >> /etc/yum.repos.d/local.repo
yum clean all &> /dev/null
yum repolist all
