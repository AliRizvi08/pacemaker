#!/bin/bash

yum install chrony -y
systemctl enable chrony
cat <<"EOT"> /etc/chrony.conf
server 0.ca.pool.ntp.org
server 1.ca.pool.ntp.org
server 2.ca.pool.ntp.org
server 3.ca.pool.ntp.org
EOT
timedatectl set-timezone America/Toronto
timedatectl set-ntp true
systemctl restart chronyd
firewall-cmd --add-service=ntp --permanent
firewall-cmd --reload
