#!/bin/bash

if [ $(whoami) != 'root' ];
then
  echo 'Please run as root'
  exit 1
fi

apt update
apt full-upgrade -y
apt install python python-pip git -y
apt-get clean
pip install git+https://github.com/shadowsocks/shadowsocks.git@master

# run
./run

# display network stats
netstat -antp
