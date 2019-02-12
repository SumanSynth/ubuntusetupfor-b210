#!/bin/bash
##################################################
# Title: GNU Radio Env Setup Scripts (GNU Radio Install)
# Author: Suman Kumar Das
# Generated: Wed Nov  1 11:52:29 2017
##################################################
sudo apt-get update
sudo apt-get install gnuradio
#Building and installing GNU Radio from source code

#mkdir workarea-gnuradio
#cd workarea-gnuradio

#git clone --recursive https://github.com/gnuradio/gnuradio
#cd gnuradio

#git tag -l

#echo "Example: For GNU Radiov 3.7.10.1:"
#echo "write v3.7.10.1"
#echo -e "Please enter release version : "
#read version
#git checkout $version

#mkdir build
#cd build

#cmake ../
#make
#make test
#sudo make install
#sudo ldconfig

#gnuradio-config-info --version
#gnuradio-config-info --prefix
#gnuradio-config-info --enabled-components


#gnuradio-companion
#export PYTHONPATH=/usr/local/lib/python2.7/dist-packages

#export LD_LIBRARY_PATH=/usr/local/lib

#sudo apt-get update
#configuring usb
#cd $HOME/workarea-uhd/uhd/host/utils
#sudo cp uhd-usrp.rules /etc/udev/rules.d/
#sudo udevadm control --reload-rules
#sudo udevadm trigger

echo "Done"


