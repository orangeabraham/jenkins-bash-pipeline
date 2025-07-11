#!/bin/bash

# Threshold in percentage
THRESHOLD=14

# Dynamically get all physical mount points (exclude tmpfs, overlay, etc.)
MOUNT_POINTS=$(df -hT | awk '$2 ~ /ext[2-4]|xfs|btrfs/ {print $7}')

# Loop through each mount point
for MOUNT in $MOUNT_POINTS; do
    USAGE=$(df "$MOUNT" | awk 'NR==2 {gsub(/%/, "", $5); print $5}')

    echo "Disk usage for $MOUNT: $USAGE%"

    if [ "$USAGE" -ge "$THRESHOLD" ]; then
        echo "Disk usage on $MOUNT is above $THRESHOLD%. Running cleanup..."
        /usr/bin/python3 /home/ubuntu/scripts/retain2.py "$MOUNT"
    else
        echo "Disk usage on $MOUNT is below $THRESHOLD%. No action needed."
        exit 0
    fi
done
