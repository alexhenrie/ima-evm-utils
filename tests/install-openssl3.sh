#!/bin/sh

set -ex

# The latest version in July 2021
wget --no-check-certificate https://github.com/openssl/openssl/archive/refs/tags/openssl-3.0.0-beta1.tar.gz
tar --no-same-owner -xvzf openssl-3.0.0-beta1.tar.gz
cd openssl-openssl-3.0.0-beta1

./Configure --prefix=/opt/openssl --openssldir=/opt/openssl/ssl
make -j$(nproc) && sudo make install

cd ..
rm -rf openssl-3.0.0-beta1.tar.gz
rm -rf openssl-openssl-3.0.0-beta1
