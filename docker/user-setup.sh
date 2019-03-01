#!/bin/bash

# fix PATH
echo "PATH=\"\$HOME/stoke/bin:\$PATH\"" >> ~/.bashrc

# compile stoke
./configure.sh

echo "[user-setup.sh] TRAVIS=$TRAVIS"
if [ $TRAVIS == "1" ] ; then
  sed -i "s/haswell/sandybridge/g" .stoke-config
  make tests
else
  make
fi

