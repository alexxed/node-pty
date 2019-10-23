#!/bin/sh

. /etc/os-release

cd /node-pty
rm -rf node_modules

npm install --only=prod --ignore-scripts

apt-get install -y g++-multilib gcc-multilib
prebuild -t 12.4.0 -t 10.16.3 -a x64
prebuild -t 6.0.10 -r electron -a x64
