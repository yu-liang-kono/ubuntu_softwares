#!/bin/sh

apt-get update

apt-get install -y ttf-mscorefonts-installer
apt-get install -y build-essential openjdk-7-jdk openjdk-7-jre
apt-get install -y apache2 apache2-mpm-itk libapache2-mod-php5 libapache2-mod-wsgi
apt-get install -y php5 php5-mysql php5-common php5-xmlrpc php5-curl php-pear
apt-get install -y git gitg

# Editors
apt-get install -y vim sublime-text

# Shell
apt-get install -y fishfish xclip curl synaptic python-software-properties p7zip-full p7zip-rar
apt-get install -y filezilla s3cmd ssh openssh-server htop
apt-get install -y apt-transport-https ca-certificates
apt-get install -y spotify-client

# Compiz
apt-get install -y compiz compizconfig-settings-manager compiz-plugins gnome-tweak-tool

# For python lxml package
apt-get install -y python-dev libxslt1-dev

# Databases
apt-get install -y mongodb-org mysql-server mysql-client

# Poppler
apt-get install -y libfontconfig1-dev libcairo2-dev libjpeg-turbo8-dev libopenjpeg-dev libtiff5-dev libghc-zlib-dev

# Passenger
apt-get install -y libapache2-mod-passenger
a2enmod passenger
service apache2 restart
