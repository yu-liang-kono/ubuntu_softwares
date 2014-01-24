#!/bin/sh

# install dependencies
./install_libpng.sh
./install_glib.sh
./install_pixman.sh

wget http://cairographics.org/releases/cairo-1.12.16.tar.xz
tar xf cairo-1.12.16.tar.xz
cd cairo-1.12.16
./configure --prefix=/usr --disable-static && make
make install
cd .. && rm -rf cairo-1.12.16*
