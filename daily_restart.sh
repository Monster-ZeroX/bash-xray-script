#!/bin/bash

# Set the desired restart time (24-hour format)
restart_time="04:00"

# Calculate the current time in seconds since midnight
current_time_seconds=$(date +%s -d "today 00:00")

# Calculate the restart time in seconds since midnight
restart_time_seconds=$(date +%s -d "today $restart_time")

# Calculate the number of seconds until the next restart
seconds_until_restart=$((restart_time_seconds - current_time_seconds))
if (( seconds_until_restart < 0 )); then
    seconds_until_restart=$((seconds_until_restart + 86400))  # Add 24 hours if restart time is in the past
fi

# Schedule the restart
echo "sudo shutdown -r now" | at now + $seconds_until_restart seconds

# Add the script to crontab (if not already present)
crontab -l | grep -q "daily_restart.sh" || (crontab -l 2>/dev/null; echo "0 0 * * * /bash-xray-script/daily_restart.sh") | crontab -
