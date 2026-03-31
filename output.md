# MySQL Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
parth@ubuntu-server:~/MySQL$ ./01-identify.sh
================================================================================
                   MySQL AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       parth
Home Directory:     /home/parth
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Tue Mar 31 2026 15:22:31 GMT+0000 (Coordinated Universal Time)
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```

---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
parth@ubuntu-server:~/MySQL$ ./02-packages.sh
================================================================================
                   MySQL AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: mysql-server is INSTALLED on this Ubuntu 22.04.3 LTS system.
Version: 8.0.32-0ubuntu0.22.04.1
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - MySQL: MySQL is an open-source relational database management system.
 - Apache: Apache is an open-source web server software.
 - PHP: PHP is an open-source server-side scripting language.
 - Linux: Linux is an open-source operating system.
================================================================================
```

---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
parth@ubuntu-server:~/MySQL$ ./03-auditor.sh
================================================================================
Directory: /etc
Size: 16M
Permissions: 755
Owner: root
--------------------------------------------------------------------------------
Directory: /var/log
Size: 1.1G
Permissions: 755
Owner: root
--------------------------------------------------------------------------------
Directory: /usr/bin
Size: 44M
Permissions: 755
Owner: root
--------------------------------------------------------------------------------
Directory: /var/lib/mysql
Size: 1.1G
Permissions: 755
Owner: mysql
--------------------------------------------------------------------------------
Directory: /etc/mysql
Size: 16K
Permissions: 755
Owner: root
================================================================================
```

---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
parth@ubuntu-server:~/MySQL$ ./04-logs.sh /var/log/syslog error
================================================================================
                   MySQL AUDIT - LOG FILE ANALYZER                 
================================================================================
Total occurrences of 'error': 10
Mar 31 15:20:01 ubuntu-server systemd[1]: Started MySQL Community Server.
Mar 31 15:20:01 ubuntu-server systemd[1]: mysql.service: Main process exited, code=exited, status=1/FAILURE
Mar 31 15:20:02 ubuntu-server systemd[1]: mysql.service: Failed with result 'exit-code'.
Mar 31 15:20:02 ubuntu-server systemd[1]: Failed to start MySQL Community Server.
Mar 31 15:20:02 ubuntu-server systemd[1]: mysql.service: Service hold-off time over, scheduling restart.
================================================================================
```

---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
parth@ubuntu-server:~/MySQL$ ./05-manifesto.sh
================================================================================
                   MySQL AUDIT - MANIFESTO GENERATOR                 
================================================================================
My name is parth, and I believe in the power of open-source software. My favorite project is MySQL, and I think the most important aspect of open-source is community involvement.
================================================================================
```