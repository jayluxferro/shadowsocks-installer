#!/bin/bash

if [ $(whoami) != 'root' ];
then
  echo 'Please run as root'
  exit 1
fi

apt update
apt full-upgrade -y
apt install curl python -y
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py 
apt-get clean
pip install git+https://github.com/shadowsocks/shadowsocks.git@master

# run
./run

# display network stats
netstat -antp
