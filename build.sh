#!/bin/bash

#variables
RED='\e[1;31m'
ENDCOLOR='\e[0m'

PREBUILT_PACKAGES='
chromium-browser  
python
python-pip
virtualenv
wmctrl
'

#update apt
echo -e "${RED} ==makeHUB: UPDATING PACKAGE LIST== ${ENDCOLOR}"
sudo apt update

#check for core libraries and install if nessecary
echo -e "${RED} ==makeHUB: CHECKING AND INSTALLING PREBUILT DEPENDENCIES== ${ENDCOLOR}"
sudo apt-get install $PREBUILT_PACKAGES

curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt-get install -y nodejs

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

#install arduino
echo -e "${RED} ==makeHUB: INSTALLING AND CONFIGURING ARDUINO== ${ENDCOLOR}"
sudo apt-get install arduino
cd packages/
git clone https://github.com/carlosperate/ardublockly.git

cd /ardublockly
rm start.py start_server.py

cd ../../scripts/python
cp start.py ../../packages/ardublockly
cp start_server.py ../../packages/ardublockly 

#install octoprint 
echo -e "${RED} ==makeHUB: INSTALLING AND CONFIGURING OCTOPRINT== ${ENDCOLOR}"
cd packages/
git clone https://github.com/foosel/OctoPrint.git
cd OctoPrint
virtualenv --python=python2.7 venv
./venv/bin/pip install .
pip install .

exit
