#!/bin/sh

# install dependencies
apt-get install libbz2-dev

wget http://downloads.sourceforge.net/pcre/pcre-8.34.tar.bz2
tar xf pcre-8.34.tar.bz2
cd pcre-8.34
./configure --prefix=/usr                     \
            --docdir=/usr/share/doc/pcre-8.34 \
            --enable-unicode-properties       \
            --enable-pcre16                   \
            --enable-pcre32                   \
            --enable-pcregrep-libz            \
            --enable-pcregrep-libbz2          \
            --enable-pcretest-libreadline     \
            --disable-static                 &&
make
make install                     &&
mv -v /usr/lib/libpcre.so.* /lib &&
ln -sfv ../../lib/$(readlink /usr/lib/libpcre.so) /usr/lib/libpcre.so
cd .. && rm -rf pcre-8.34*
