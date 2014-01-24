#!/bin/sh

wget http://cairographics.org/releases/pixman-0.32.4.tar.gz
tar xf pixman-0.32.4.tar.gz
cd pixman-0.32.4
./configure --prefix=/usr --disable-static && make
make install
cd .. && rm -rf pixman-0.32.4*
