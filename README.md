# bash_monitor
## A script to monitor your linux machine, running on server-only

A bash script that has been build for the purpose of monitoring the main components of a lnux machine.
ANSI escape codes to add color and a few decors are added in the > _monitor_decor.sh_.

This script comprimises of 
1. `free -h` : Commandlet to display memory usage
2. `ps`: Processes are shown in a magical but static way.
3. `netstat`: A tool for checking the status of the connection.
4. `ifstat`: A realtime network speed indicator. 
5. `sensors`: Gives you the sensor status(used for temperature here).

## Command to install the all the tools:

> sudo apt install ifstat net-tools lm-sensors

## reminder to make the file executable ;)

> sudo chmod +x filename.sh
