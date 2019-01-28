#!/bin/bash
##################################################
# Title: USRP UHD driver env setup
# Author: Suman Kumar Das
# Generated: Wed Nov  1 11:52:29 2017
##################################################
echo " "
echo " Is USRP B210 connected to PC?"
echo " Enter 1 for Yes  "
echo " Enter 2 for No  "
echo " "
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo python /usr/local/lib/uhd/utils/uhd_images_downloader.py; echo "Done!"; uhd_usrp_probe; uhd_find_devices; break;;
        No ) exit;;
    esac
done

echo " "
echo " Reboot Now ?"
echo " Enter 1 for Yes  "
echo " Enter 2 for No  "
echo " "
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo reboot break;;
        No ) exit;;
    esac
done
