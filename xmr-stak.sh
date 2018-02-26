#!/bin/bash

apt-get update
apt-get -y install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev
git clone https://github.com/fireice-uk/xmr-stak.git
mkdir xmr-stak/build
cd xmr-stak/build
cmake -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF ..
make install
cd ~/xmr-stak/build/bin
wget https://raw.githubusercontent.com/Incrades/Incrades/master/config.txt
screen ./xmr-stak