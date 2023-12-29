#!/bin/bash

# Get the system uptime
uptime=$(uptime)

# Get the CPU usage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')

# Get the memory usage
memory_usage=$(free -h | grep "Mem" | awk '{print $3}')

# Get the disk usage
disk_usage=$(df -h | grep "/" | awk '{print $5}')

# Get the network traffic
network_traffic=$(ifconfig | grep "eth0" | awk '{print $2}')

# Print the system health information
echo "System Uptime: $uptime"
echo "CPU Usage: $cpu_usage"
echo "Memory Usage: $memory_usage"
echo "Disk Usage: $disk_usage"
echo "Network Traffic: $network_traffic"