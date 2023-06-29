#!/bin/bash

cd /home/pi/nrc_pkg/script/
./start.py 1 0 JP 

./cli_app set duty on 1000000 100000

iperf3 -s


