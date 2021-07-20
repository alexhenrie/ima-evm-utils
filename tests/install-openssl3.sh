#!/bin/sh

set -ex

# 3.0.0-beta1 is the latest version in July 2021
wget --no-check-certificate https://github.com/openssl/openssl/archive/refs/tags/openssl-3.0.0-beta1.tar.gz
tar --no-same-owner -xzf openssl-3.0.0-beta1.tar.gz
cd openssl-openssl-3.0.0-beta1

./Configure --prefix=/opt/openssl3 --openssldir=/opt/openssl3/ssl
make -j$(nproc)
# only install apps and library
sudo make install_sw

cd ..
rm -rf openssl-3.0.0-beta1.tar.gz
rm -rf openssl-openssl-3.0.0-beta1
