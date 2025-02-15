#!/bin/bash

PORT=22


for i in {1..7}; do
    SERVER="pufferbox$i"
    
    echo "Checking connection to $SERVER..."
    
    nc -z -w 5 "$SERVER" "$PORT" > /dev/null 2>&1
    
    if [ $? -eq 0 ]; then
        echo "Connection to $SERVER is successful."
	echo  -e "\a"
    else
        echo "Failed to connect to $SERVER."
    fi
    
    echo
done
