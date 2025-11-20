#!/bin/bash

LOG_FILE="$HOME/log-practice/auth-logs/auth1.log"
Success_logins=$(grep -ic "Accepted password" "$LOG_FILE")
Failed_logins=$(grep -ic "Failed password" "$LOG_FILE")

grep -iE "failed|Accepted" "$LOG_FILE"

echo "Number of times logged in successfully: $Success_logins"
echo "Number of times failed to login: $Failed_logins"








