#!/bin/bash

#variables
RED='\e[1;31m'
ENDCOLOR='\e[0m'

PREBUILT_PACKAGES='
chromium-browser  
python 
'

#update apt
echo -e "${RED} ==makeHUB: UPDATING PACKAGE LIST== ${ENDCOLOR}"
sudo apt update

#check for core libraries and install if nessecary
echo -e "${RED} ==makeHUB: CHECKING AND INSTALLING PREBUILT DEPENDENCIES== ${ENDCOLOR}"
sudo apt-get install $PREBUILT_PACKAGES

curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt-get install -y nodejs

#install arduino
echo -e "${RED} ==makeHUB: INSTALLING AND CONFIGURING ARDUINO== ${ENDCOLOR}"
cd packages/arduino-1.8.10
sudo ./install.sh

#install cura 
sudo apt-get install cura



exit