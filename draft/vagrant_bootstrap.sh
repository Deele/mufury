#!/usr/bin/env bash

apt-get -qq update
apt-get -qy install apache2 nodejs npm git
ln -s /usr/bin/nodejs /usr/bin/node
npm config set strict-ssl false
npm config set loglevel warn
#npm install -g bower less less-plugin-clean-css

if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant/dist /var/www
fi