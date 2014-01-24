#!/bin/sh

wget http://download.osgeo.org/libtiff/tiff-4.0.3.tar.gz
tar xf tiff-4.0.3.tar.gz
cd tiff-4.0.3
sed -i '/glDrawPixels/a glFlush();' tools/tiffgt.c &&
./configure --prefix=/usr --disable-static &&
make
make install
cd .. && rm -rf tiff-4.0.3*
