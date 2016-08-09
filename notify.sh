#!/bin/bash

# Update the cron's limited enviroment variables
PATH=$PATH:/usr/local/bin

osascript -e 'display notification "'"$1"'"  sound name "Ping.aiff" with title "Excuse me" '
