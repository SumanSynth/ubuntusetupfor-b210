#!/bin/bash
##################################################
# Title: GNU Radio Env Setup Scripts (After Boot)
# Author: Suman Kumar Das
# Generated: Wed Nov  1 11:52:29 2017
##################################################
sudo apt-get update

#Building and installing UHD from source code

mkdir workarea-uhd
cd workarea-uhd


git clone https://github.com/EttusResearch/uhd
cd uhd

git tag -l

echo "Example: For UHD 3.9.5:"
echo "git checkout release_003_009_005"
echo -e "Please enter release version : "
read version
git checkout $version

cd host
mkdir build
cd build
cmake ../
make
make test
sudo make install
sudo ldconfig
export LD_LIBRARY_PATH=/usr/local/lib

echo "Done"


