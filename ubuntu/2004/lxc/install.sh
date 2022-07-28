#!/bin/bash

echo 'deb https://www.ui.com/downloads/unifi/debian stable ubiquiti' | tee /etc/apt/sources.list.d/100-ubnt-unifi.list
wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ui.com/unifi/unifi-repo.gpg 

apt update && apt install ca-certificates openjdk-8-jdk apt-transport-https unifi -y

apt clean

systemctl status unifi.service


