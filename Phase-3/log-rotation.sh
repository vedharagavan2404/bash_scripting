#!/bin/bash

dest_dir="/tmp/log_archive"
mkdir -p $dest_dir
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

find ~/log-practice -type f -name "*.log" -mtime +20 ! -mtime +30 -print | tar czvf $dest_dir/backup-$timestamp.log -T -

if [ $? -eq 0 ]; then
	echo "Files older than 20 to 30 days are archived and saved in $dest_dir/backup-$timestamp.log"
	find ~/log-practice -type f -name "*.log" -mtime +20 ! -mtime +30 -exec rm -f {} \;
	echo "Old log files have been deleted"
else
	echo "error in archiving the older files"
fi

