#!/bin/bash
yum install expect -y
systemctl stop firewalld 
systemctl disable firewalld
systemctl status firewalld
chmod +x ./sshGen.sh
chmod +x ./hosts.sh
chmod +x ./openJDK.sh
chmod +x ./hadoop.sh
chmod +x ./*.sh
