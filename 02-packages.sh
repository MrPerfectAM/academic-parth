#!/bin/bash
# Author: parth (24BAC10020)
# Purpose: FOSS Package Inspector

# Detect OS and define package name
if [ -x "$(command -v apt)" ]; then
  PACKAGE_MANAGER="apt"
  PACKAGE_NAME="mysql-server"
elif [ -x "$(command -v yum)" ]; then
  PACKAGE_MANAGER="yum"
  PACKAGE_NAME="mysql-server"
else
  echo "Unsupported package manager"
  exit 1
fi

# Check installation status and extract version
if $PACKAGE_MANAGER list --installed | grep -q $PACKAGE_NAME; then
  echo "================================================================================"
  echo "                   MySQL AUDIT - PACKAGE INSPECTOR                "
  echo "================================================================================"
  echo "Status: $PACKAGE_NAME is INSTALLED on this $(lsb_release -ds) system."
  echo "Version: $(dpkg -l | grep $PACKAGE_NAME | awk '{print $3}')"
  echo "--------------------------------------------------------------------------------"
  echo "FOSS Philosophy Notes:"
  echo " - MySQL: MySQL is an open-source relational database management system."
  echo " - Apache: Apache is an open-source web server software."
  echo " - PHP: PHP is an open-source server-side scripting language."
  echo " - Linux: Linux is an open-source operating system."
  echo "================================================================================"
else
  echo "$PACKAGE_NAME is NOT installed"
fi