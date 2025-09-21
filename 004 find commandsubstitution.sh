#!/bin/bash

#Get the current date and store it
CURRENT_DATE=$(date)
echo "The script ran at $CURRENT_DATE"

#Get the list of users and count them
USER_COUNT=$(wc -l < /etc/passwd)
echo "There are $USER_COUNT user accounts on this system."

#Nesting commands with $() is clear
CURRENT_KERNEL=$(uname -r)
#Nesting with backticks is messy and error-prime
CURRENT_KERNAL_LEGACY='uname -r'

#A more complex example: find files modified in the last 7 days and count them.
RECENT_FILE_COUNT=$(find /home -type f -mtime -7 | wc -l)
echo "Found $RECENT_FILE_COUNT files modified in the last weekk."
