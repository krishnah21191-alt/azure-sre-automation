#!/bin/bash

DISK_USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')
echo "Current Root Disk Usage: ${DISK_USAGE}%"

if [ "$DISK_USAGE" -gt 80 ]; then
  echo "CRITICAL: Disk usage is above 80%! Triggering alert..."
else
  echo "HEALTHY: Disk usage is within safe limits."
fi
