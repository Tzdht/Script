#!/bin/bash
mkdir /mnt/cdrom
echo "/dev/cdrom /mnt/cdrom iso9660 defaults 0 0" >> /etc/fstab
mount -a
echo '[local]
name=local
baseurl=file:///mnt/cdrom
enabled=1
gpgcheck=0' >> /etc/yum.repos.d/local.repo
touch /tmp/hello.txt
echo "Hello user" > /tmp/hello.txt
