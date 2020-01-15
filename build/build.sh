#!/bin/bash

#variables
RED='\e[1;31m'
ENDCOLOR='\e[0m'

PREBUILT_PACKAGES='chromium-browser curl'

#update apt
echo -e "${RED} ==makeHUB: UPDATING PACKAGE LIST== ${ENDCOLOR}"
sudo apt update

#check for core libraries and install if nessecary
echo -e "${RED} ==makeHUB: CHECKING AND INSTALLING PREBUILT DEPENDENCIES== ${ENDCOLOR}"
sudo apt-get install $PREBUILT_PACKAGES

#install scratch for arduino
echo -e "${RED} ==makeHUB: INSTALLING SCRATCH FOR ARDUINO== ${ENDCOLOR}"
sudo dpkg --add-architecture i386 
sudo apt-get update 
sudo apt-get install libx11-6:i386 
sudo apt-get install libgl1-mesa-glx:i386 
sudo apt-get install libfontconfig1:i386 
sudo apt-get install libssl1.0.0:i386
cd ../packages
curl http://s4a.cat/downloads/S4A16.deb --output S4A16.deb
sudo dpkg -i --force-architecture S4A16.deb

#install octoprint

exit
