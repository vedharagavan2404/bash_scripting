#!/bin/bash

LOG_FILE="$HOME/log-practice/error-logs/"
DEST_FILE="error_report_$(date +%Y-%m-%d_%H-%M-%S).txt"
touch "$DEST_FILE"

{
if [ -d $LOG_FILE ]; then
	echo "Searching for errors in directory: $LOG_FILE.."
	find "$LOG_FILE" -type f -name "*.log" -exec grep -iEH "error|warning" {} \;
else
	echo "$LOG_FILE not found"
fi
} > "$DEST_FILE"

echo "Report saved to $DEST_FILE"
