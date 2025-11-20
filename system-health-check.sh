#!/bin/bash

# ==============================
# 🩺 System Health Check Script
# ==============================

# Log file location
LOGFILE="/var/log/systemhealth.log"

# Create log directory if it doesn't exist
mkdir -p "$(dirname "$LOGFILE")"

# Current timestamp
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

# Collect system stats
DISK_USAGE=$(df -h)
MEMORY_USAGE=$(free -m)
CPU_LOAD=$(uptime)

# Write results to log file
{
  echo "=============================="
  echo "📅 System Health Check - $TIMESTAMP"
  echo "=============================="
  echo
  echo "💾 Disk Usage:"
  echo "$DISK_USAGE"
  echo
  echo "🧠 Memory Usage:"
  echo "$MEMORY_USAGE"
  echo
  echo "⚙️  CPU Load:"
  echo "$CPU_LOAD"
  echo
} >> "$LOGFILE"

# Display success message
echo "✅ System health check completed. Log saved to: $LOGFILE"

