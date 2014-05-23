#!/bin/sh

# Add ppa
add-apt-repository -y ppa:zanchey/fishfish-snapshot
add-apt-repository -y ppa:chris-lea/node.js
add-apt-repository -y ppa:webupd8team/sublime-text-2

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 561F9B9CAC40B2F7
echo 'deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main' | sudo tee /etc/apt/sources.list.d/passenger.list

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
echo 'deb http://repository.spotify.com stable non-free' | sudo tee /etc/apt/sources.list.d/spotify.list
