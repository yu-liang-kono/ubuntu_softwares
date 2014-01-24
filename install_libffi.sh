#!/bin/sh

wget ftp://sourceware.org/pub/libffi/libffi-3.0.13.tar.gz
wget http://www.linuxfromscratch.org/patches/blfs/svn/libffi-3.0.13-includedir-1.patch
tar xf libffi-3.0.13.tar.gz
cd libffi-3.0.13
patch -Np1 -i ../libffi-3.0.13-includedir-1.patch &&
./configure --prefix=/usr --disable-static &&
make
make install
cd .. && rm -rf libffi-3.0.13*
