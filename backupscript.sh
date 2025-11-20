#!/bin/bash

timestamp=$(date +%Y-%m-%d_%H:%M:%S)

mkdir -p /tmp/backups

tar czvf /tmp/backups/cron_backup_$timestamp.tar.gz /etc

if [ $? -eq 0 ]; then
	echo "Backup is created"
else
	echo "Backup is failed"
fi
