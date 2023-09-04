#!bin/bash

files-to-be-deleted=$(find /home/centos/shell-script-logs -type f -name "*.log" -mtime +14)