#!/bin/sh

# install dependencies
./install_fontconfig.sh
./install_cairo.sh
./install_libjpeg_turbo.sh

# install poppler
wget http://poppler.freedesktop.org/poppler-0.24.5.tar.xz
tar xf poppler-0.24.5.tar.xz
cd poppler-0.24.5/
./configure --prefix=/usr \
            --sysconfdir=/etc \
            --disable-static  \
            --enable-xpdf-headers
make
make install &&
install -v -m755 -d      /usr/share/doc/poppler-0.24.5 &&
install -v -m644 README* /usr/share/doc/poppler-0.24.5
cd .. && rm -rf poppler-0.24.5*

# install poppler data
wget http://poppler.freedesktop.org/poppler-data-0.4.6.tar.gz
tar xf poppler-data-0.4.6.tar.gz
cd poppler-data-0.4.6
make prefix=/usr install
cd .. && rm -rf poppler-data-0.4.6*
