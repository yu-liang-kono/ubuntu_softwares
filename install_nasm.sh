#!/bin/sh

wget http://www.nasm.us/pub/nasm/releasebuilds/2.11/nasm-2.11.tar.xz
tar xf nasm-2.11.tar.xz
cd nasm-2.11
./configure --prefix=/usr && make
make install
cd .. && rm -rf nasm-2.11*
