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

#install arduino
echo -e "${RED} ==makeHUB: INSTALLING AND CONFIGURING ARDUINO== ${ENDCOLOR}"
cd packages/Arduino
sudo ./install.sh

#install octoprint

exit