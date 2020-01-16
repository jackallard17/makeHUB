#!/bin/bash

#variables
RED='\e[1;31m'
ENDCOLOR='\e[0m'

PREBUILT_PACKAGES='chromium-browser curl python'

#update apt
echo -e "${RED} ==makeHUB: UPDATING PACKAGE LIST== ${ENDCOLOR}"
sudo apt update

#check for core libraries and install if nessecary
echo -e "${RED} ==makeHUB: CHECKING AND INSTALLING PREBUILT DEPENDENCIES== ${ENDCOLOR}"
sudo apt-get install $PREBUILT_PACKAGES

#install scratch for arduino
echo -e "${RED} ==makeHUB: INSTALLING AND CONFIGURING ARDUINO== ${ENDCOLOR}"
cd packages/arduino-1.8.10
sudo ./install.sh
curl https://github.com/bromagosa/Snap4Arduino/releases/download/5.1.0/Snap4Arduino_desktop-gnu-64_5.1.0.tar.gz --output ardunio_snap.tar.gz

#install octoprint

exit