#!/bin/sh

echo "" | tee -a system_monitor.log

echo "System Monitor Script Running..." | tee -a system_monitor.log 

echo "----- System Monitor Log: $(date) -----" | tee -a system_monitor.log    # Log timestamp

echo "CPU" | tee -a system_monitor.log
top -l 1 | grep "CPU usage" | tee -a system_monitor.log  # Get CPU usage details from the 'top' command, filtering only the relevant line

echo "" | tee -a system_monitor.log

echo "RAM" | tee -a system_monitor.log
vm_stat | grep "Pages free" | awk '{printf "Free RAM: %.2f MB\n", $NF * 4 / 1024}' | tee -a system_monitor.log  # Get available RAM (free memory pages)

echo "" | tee -a system_monitor.log

echo "Disk Usage" | tee -a system_monitor.log
df -h | grep "/dev/disk3s1" | tee -a system_monitor.log  # Get disk usage in human-readable format (GB/MB)

echo "" | tee -a system_monitor.log
