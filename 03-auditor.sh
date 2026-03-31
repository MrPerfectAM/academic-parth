#!/bin/bash
# Author: parth (24BAC10020)
# Purpose: Disk and Permission Auditor

dirs=(/etc /var/log /usr/bin /var/lib/mysql /etc/mysql)

echo "================================================================================"
for dir in "${dirs[@]}"; do
  if [ -d "$dir" ]; then
    echo "Directory: $dir"
    echo "Size: $(du -sh $dir | awk '{print $1}')"
    echo "Permissions: $(stat -c %a $dir)"
    echo "Owner: $(stat -c %U $dir)"
    echo "--------------------------------------------------------------------------------"
  else
    echo "$dir does not exist"
  fi
done
echo "================================================================================"