#!/bin/bash

cd scripts/startup/

./start_phpserver.sh

./start_ardublockly_server.sh

./start_octoprint_server.sh

./launch_interface.sh
