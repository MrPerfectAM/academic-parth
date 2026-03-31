#!/bin/bash
# Author: parth (24BAC10020)
# Purpose: System Identity Report

echo "================================================================================"
echo "                   MySQL AUDIT - SYSTEM IDENTITY                   "
echo "================================================================================"

echo "Linux Distribution: $(lsb_release -ds)"
echo "Kernel Version:     $(uname -r)"
echo "Current User:       $(whoami)"
echo "Home Directory:     $(pwd)"
echo "System Uptime:      $(uptime -p)"
echo "Current Date/Time:  $(date)"

echo "--------------------------------------------------------------------------------"
echo "Message: This system runs on Open Source software, providing freedom to study, change, and distribute."
echo "================================================================================"