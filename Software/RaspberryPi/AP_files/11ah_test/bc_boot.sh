#!/bin/bash

echo 11ah auto start

# move our directory
cd /home/pi/11ah_test

# start 
./ap.sh


#./stream100k.sh

while true
do
    sleep 60
done
