#!/bin/bash

# Add colors for better readability
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
RESET='\033[0m'

# Section: CPU Temperature
echo -e "${CYAN}=============================================${RESET}"
echo -e "${YELLOW}Your boy is burning hawt at:${RESET}"
echo -e "${CYAN}=============================================${RESET}"
sensors | grep temp1
echo

# Section: Free Memory
echo -e "${CYAN}=============================================${RESET}"
echo -e "${GREEN}Free memory status:${RESET}"
echo -e "${CYAN}=============================================${RESET}"
free -h | grep "Mem"
echo

# Section: Top CPU Processes
echo -e "${CYAN}=============================================${RESET}"
echo -e "${RED}Top fat processes, kill them:${RESET}"
echo -e "${CYAN}=============================================${RESET}"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
echo

# Section: Live Network Speed
echo -e "${CYAN}=============================================${RESET}"
echo -e "${YELLOW}The jugaad Ookla for live network speed:${RESET}"
echo -e "${CYAN}=============================================${RESET}"
ifstat 1 1
echo

# Section: Top Network-Consuming Processes
echo -e "${CYAN}=============================================${RESET}"
echo -e "${GREEN}The top 5 network greedies:${RESET}"
echo -e "${CYAN}=============================================${RESET}"
sudo netstat -tupn | grep ESTABLISHED | sort -k6 -n -r | head -n 5
