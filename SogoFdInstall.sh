#!/bin/bash

sources=/etc/apt/sources.list

export DEBIAN_FRONTEND="noneinteractive"

#SOGO INSTALL
apt-key adv --keyserver keys.gnupg.net --recv-key 0x810273C4

apt-get update -yq
apt-get install -yq 

apt-get install apt-transport-https

echo "deb http://packages.inverse.ca/SOGo/nightly/4/debian/ jessie jessie" >> $sources

apt-get update -yq
apt-get install -yq  sogo

#FUSIONDIRECTORY

apt-get install -yq fusiondirectory
