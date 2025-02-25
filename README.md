# System Monitor Script

## Description
A Shell script that monitors CPU, RAM, and Disk usage. It logs system stats to `system_monitor.log` while displaying real-time output in the terminal.

## Features
- Monitors CPU, RAM, and Disk usage  
- Logs system stats to `system_monitor.log`  
- Displays real-time output while logging  
- Can be automated with `cron`  

## Installation & Usage
```sh
# 1. Clone the Repository
git clone https://github.com/your-username/system_monitor.git
cd system_monitor

# 2. Make the Script Executable
chmod +x system_monitor.sh

# 3. Run the Script Manually
./system_monitor.sh

# 4. Automate with cron (Optional)
crontab -e
echo "0 8 * * 1 /path/to/system_monitor.sh" >> mycron   (Example)
crontab mycron
rm mycron

# Example Output

System Monitor Script Running...
----- System Monitor Log: Mon Feb 26 08:00:00 UTC 2025 -----
CPU
CPU usage: 3.80% user, 10.47% sys, 85.71% idle

RAM
Free RAM: 1.02 GB

Disk Usage
/dev/disk3s1     228Gi   181Gi    18Gi    92%    708k  187M    0%   /System/Volumes/Data
