#!/bin/sh

# install dependencies
./install_nasm.sh

wget http://downloads.sourceforge.net/libjpeg-turbo/libjpeg-turbo-1.3.0.tar.gz
tar xf libjpeg-turbo-1.3.0.tar.gz
cd libjpeg-turbo-1.3.0
./configure --prefix=/usr \
            --mandir=/usr/share/man \
            --with-jpeg8 \
            --disable-static &&
sed -i -e '/^docdir/ s/$/\/libjpeg-turbo-1.3.0/' \
       -e '/^exampledir/ s/$/\/libjpeg-turbo-1.3.0/' Makefile &&
make
make install
cd .. && rm -rf libjpeg-turbo-1.3.0*
