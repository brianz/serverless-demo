#!/bin/bash

cd /tmp
mkdir leptonica
cd leptonica
wget http://www.leptonica.com/source/leptonica-1.73.tar.gz
tar -zxvf leptonica-1.73.tar.gz
cd leptonica-1.73
./configure
make
sudo make install
