#!/bin/bash

cd ~/libs mkdir tesseract && cd tesseract
wget http://tesseract-ocr.googlecode.com/files/tesseract-ocr-3.02.02.tar.gz
tar -zxvf tesseract-ocr-3.02.02.tar.gz
cd tesseract-ocr
./autogen.sh
./configure
make
sudo make install
sudo ldconfig
