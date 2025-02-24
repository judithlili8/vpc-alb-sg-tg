#!/bin/bash
sudo su
yum update -y
Sudo yum install httpd -y
Sudo systemctl start httpd
systemctl enable httpd
echo "<html><head><style>body { background-color: purple; color: white; }
Sudo groupadd cloud
Sudo useradd serge -g cloud