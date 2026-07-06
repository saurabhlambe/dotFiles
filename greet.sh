#!/bin/bash

# Print current date and time
echo "Date: $(date '+%A, %B %d, %Y')"
echo "Time: $(date '+%I:%M %p')"
echo ""

# Ask for the username
read -p "Enter your name: " username

# Get the current hour (24-hour format)
hour=$(date '+%H')

# Greet based on time of day
if [ "$hour" -ge 5 ] && [ "$hour" -lt 12 ]; then
    echo ""
    echo "Good morning, $username!"
elif [ "$hour" -ge 12 ] && [ "$hour" -lt 17 ]; then
    echo ""
    echo "Good afternoon, $username!"
elif [ "$hour" -ge 17 ] && [ "$hour" -lt 21 ]; then
    echo ""
    echo "Good evening, $username!"
else
    echo ""
    echo "Good night, $username!"
fi
