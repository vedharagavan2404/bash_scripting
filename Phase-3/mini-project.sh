#!/bin/bash

echo "Entered arguments are: $@"

TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)

health_report="/var/log/health-report-$TIMESTAMP.log"

mkdir -p /tmp/backups

backup(){
tar czf "/tmp/backups/dir-backup-$TIMESTAMP.tar.gz" "/etc"
if [ $? -eq 0 ]; then
	echo "Backup saved successfully"
else
	echo "Backup is failed"
fi
}

monitor(){
{
echo "System Health Report generated at $TIMESTAMP"
echo "Disk Usage:"
echo "$(df -h)"

echo "Memory Space:"
echo "$(free -m)"

echo "CPU Load:"
echo "$(uptime)"
} > $health_report
}

report(){
echo "Generating summary report"
echo "Latest health reports and backup files"
echo
ls -lh /var/log/health-report-* 2>/dev/null | tail -3
ls -lh /tmp/backups/dir-backup-* 2>/dev/null | tail -3
}

for arg in "$@"
do
	if [[ "$arg" == "backup" ]]; then 
		echo "Executing backup function"
		backup;
	elif [[ "$arg" == "monitor" ]]; then
                echo "Executing monitor function"
                monitor;
	elif [[ "$arg" == "report" ]]; then
                echo "Executing report function"
                report;
	else
		echo "Unknown Arguments: $arg"
	fi
done   
