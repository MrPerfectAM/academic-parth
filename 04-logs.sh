#!/bin/bash
# Author: parth (24BAC10020)
# Purpose: Log File Analyzer
# Suggested log path: /var/log/mysql/error.log

LOG_FILE=$1
KEYWORD=$2
echo "================================================================================"
echo "                   MySQL AUDIT - LOG FILE ANALYZER                "
echo "================================================================================"

count=0
while read -r line; do
  if [[ $line == *$KEYWORD* ]]; then
    ((count++))
  fi
done < $LOG_FILE
echo "Total occurrences of '$KEYWORD': $count"

tail -n 5 $LOG_FILE | grep $KEYWORD
echo "================================================================================"