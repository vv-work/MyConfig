#!/bin/bash
# Function to check for internet connectivity
check_internet() {
    wget -q --spider http://google.com

    if [ $? -eq 0 ]; then
        return 0
    else
        return 1
    fi
}

# Loop until internet connectivity is confirmed
until check_internet; do
    sleep 5
done

# Connect to ExpressVPN once internet is available
expressvpn connect
