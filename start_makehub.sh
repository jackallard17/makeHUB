#start apache server and open it in chromium (both will run in background)
cd interface
php -S localhost:8000 &
chromium-browser --kiosk http://localhost:8000

#start octoprint server in background
../packages/OctoPrint/venv/bin/octoprint &

#start ardublockly server in background
python ../packages/ardublockly/start_server.py &
