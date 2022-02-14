#!/bin/bash
echo Starting Kloxo-MR install...
read -p "press [enter] to start..."
yum update -y
yum install yum-utils yum-priorities vim-minimal subversion curl zip unzip -y
yum install telnet wget -y
cd /tmp
rpm -ivh https://github.com/mustafaramadhan/rpms/raw/master/mratwork/release/neutral/noarch/mratwork-release-0.0.1-1.noarch.rpm
cd /
yum clean all
yum update mratwork-* -y
yum install kloxomr7 -y
sh /script/upcp

read -p "Install done! Reboot VPS once done!" 
