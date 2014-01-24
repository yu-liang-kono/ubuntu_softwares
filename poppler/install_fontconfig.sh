#!/bin/sh

wget http://www.freedesktop.org/software/fontconfig/release/fontconfig-2.11.0.tar.gz
tar xf fontconfig-2.11.0.tar.gz
cd fontconfig-2.11.0
./configure --prefix=/usr \
            --sysconfdir=/etc \
            --localstatedir=/var \
            --docdir=/usr/share/doc/fontconfig-2.11.0 \
            --disable-docs \
            --disable-static
make
make install
cd .. && rm -rf fontconfig-2.11.0*
