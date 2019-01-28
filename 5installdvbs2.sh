#!/bin/bash
##################################################
# Title: GNU Radio Env Setup Scripts (Install DVBS2 Blocks)
# Author: Suman Kumar Das
# Generated: Wed Nov  1 11:52:29 2017
##################################################
sudo apt-get update

git clone https://github.com/drmpeg/gr-dvbs2.git
cd gr-dvbs2

mkdir build
cd build
cmake ../
make
sudo make install
sudo ldconfig

echo "Done"


