#!/bin/bash -eux
yum update -y
yum upgrade -y
yum install -y ntp
chkconfig ntpd on
adduser -G wheel centos
echo '%wheel        ALL=(ALL)       NOPASSWD: ALL' >> /etc/sudoers
echo 'mkdir /home/centos/.ssh' >> /etc/rc.local
echo 'curl -s http://169.254.169.254/latest/meta-data/public-keys/0/openssh-key > /home/centos/.ssh/authorized_keys' >> /etc/rc.local
echo 'chmod 600 /home/centos/.ssh/authorized_keys' >> /etc/rc.local
echo 'chown -R centos.centos /home/centos/.ssh' >> /etc/rc.local
