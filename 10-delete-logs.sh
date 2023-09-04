#!bin/bash
date=$(date +%F-%H-%M-%S)
script_name=$0
logfiles=/home/centos/shell-script-logs/$script_name-$date.log 
files_to_be_deleted=$(find /home/centos/shell-script-logs -type f -name "*.log" -mtime +14)

echo "$files_to_be_deleted"

while read line
do 
    echo "deleting $line" >>$logfiles


done <<<files_to_be_deleted