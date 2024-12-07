#!/bin/bash

echo "Your boy is burning hawt at:"
sensors | grep temp1


echo "Free memory status:"
free -h | grep "Mem"

echo ""

echo "Top fat processes, kill them:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

echo ""

echo "The jugaad Ookla for live network speed"
ifstat 1 1

echo ""

echo "The top 5 network greedies:"
sudo netstat -tupn | grep ESTABLISHED | sort -k6 -n -r | head -n 5
