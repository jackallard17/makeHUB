#!/bin/bash

rm -rf  /home/jack/.config/chromium

nohup chromium-browser --kiosk http://localhost:8000 &

exit
