#!/bin/bash

while true
do
    screen -dmS minecraft java -Xmx20G -Xms2G -jar forge-1.16.5-36.2.39.jar nogui
    sleep 24h
    screen -S minecraft -p 0 -X stuff "stop^M"

    echo "If you want to completely stop the server process now, press Ctrl+C before the time is up!"
    echo "Rebooting in:"
    for i in 5 4 3 2 1
    do
        echo "$i..."
        sleep 1
    done
    echo "Rebooting now!"
done
