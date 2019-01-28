#!/bin/bash
##################################################
# Title: GNU Radio Env Setup Scripts (Install DVBT2 Blocks)
# Author: Suman Kumar Das
# Generated: Wed Nov  1 11:52:29 2017
##################################################
sudo apt-get update

git clone https://github.com/drmpeg/gr-dvbt2.git
cd gr-dvbt2

mkdir build
cd build
cmake ../
make
sudo make install
sudo ldconfig

echo "Done"


