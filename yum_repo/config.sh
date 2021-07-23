#!/bin/bash
mkdir  /dvd
mount  /dev/cdrom    /dvd
echo "mount /dev/cdrom /dvd" >> /etc/rc.d/rc.local
chmod +x /etc/rc.d/rc.local
cp rhel8.repo /etc/yum.repos.d/rhel8.repo
dnf makecache
systemctl restart firewalld
setenforce 1
dnf install gcc -y
dnf install kernel-headers -y
dnf install kernel-devel -y
dnf install gcc perl make -y
dnf install elfutils-libelf-devel -y
