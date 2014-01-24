#!/bin/sh

wget http://downloads.sourceforge.net/libpng/libpng-1.6.8.tar.xz
tar xf libpng-1.6.8.tar.xz
cd libpng-1.6.8
./configure --prefix=/usr --disable-static && make
make install && mkdir -v /usr/share/doc/libpng-1.6.8 && cp -v README libpng-manual.txt /usr/share/doc/libpng-1.6.8
cd .. && rm -rf libpng-1.6.8*
