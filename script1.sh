#!/bin/bash
# Script 1: System Identity Report
# Author: Priyanshi

STUDENT_NAME="Priyanshi"
SOFTWARE_CHOICE="Git"

KERNEL=$(uname -r)
USER_NAME=$(whoami)

UPTIME=$(uptime 2>/dev/null || echo "Not available")

if command -v lsb_release &> /dev/null; then
    DISTRO=$(lsb_release -d | cut -f2)
else
    DISTRO="Windows (Git Bash Environment)"
fi

DATE=$(date)

echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Software: $SOFTWARE_CHOICE"
echo "Distro: $DISTRO"
echo "Kernel: $KERNEL"
echo "User: $USER_NAME"
echo "Uptime: $UPTIME"
echo "Date: $DATE"
echo "License: GPL (Linux Kernel)"
