#!/bin/bash

LOG_FILE="$HOME/log-practice/disk-alert.log"

THRESHOLD=60;

TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)

df -h | awk -v limit="$THRESHOLD" -v ts="$TIMESTAMP" -v logfile="$LOG_FILE" '
NR > 1 {
usage = $5 + 0
if (usage > limit){
	printf( "[%s] Warning: Your disk space on %s is %d%% exceeding the threshold \n", ts, $1, usage) >> logfile
}
}'
