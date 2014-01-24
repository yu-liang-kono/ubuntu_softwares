#!/bin/sh

# install dependencies
./install_libffi.sh
./install_pcre.sh

wget http://ftp.gnome.org/pub/gnome/sources/glib/2.38/glib-2.38.2.tar.xz
tar xf glib-2.38.2.tar.xz
cd glib-2.38.2
./configure --prefix=/usr --with-pcre=system && make
make install
cd .. && rm -rf glib-2.38.2*
