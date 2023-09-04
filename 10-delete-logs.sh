#!bin/bash

files_to_be_deleted=$(find /home/centos/shell-script-logs -type f -name "*.log" -mtime +14)

echo "$files_to_be_deleted"