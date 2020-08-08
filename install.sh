#!/bin/bash

if [ $(whoami) != 'root' ];
then
  echo 'Please run as root'
  exit 1
fi

apt update
apt full-upgrade -y
apt install curl python git -y
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py 
apt-get clean
pip install -U git+https://github.com/shadowsocks/shadowsocks.git@master

# run
./run

# display network stats
apt clean
netstat -antp
