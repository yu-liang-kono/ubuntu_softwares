#!/bin/sh

# install pip
wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py
python get-pip.py
rm get-pip.py

apt-get -y install ipython-notebook \
                   python-matplotlib \
                   python-scipy \
                   python-pandas \
                   python-sympy \
                   python-nose
                   libxslt1-dev

pip install -r requirements.txt
