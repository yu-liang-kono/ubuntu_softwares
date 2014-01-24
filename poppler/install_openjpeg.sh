#!/bin/sh

wget http://openjpeg.googlecode.com/files/openjpeg-1.5.1.tar.gz
tar xf openjpeg-1.5.1.tar.gz
cd openjpeg-1.5.1
./configure --prefix=/usr --disable-static && make
make install
cd .. && rm -rf openjpeg-1.5.1*
