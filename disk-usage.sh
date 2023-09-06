#!bin/bash

disk_usage=$( df -hT | grep -vE 'tmpfs|Filesystem' |awk -F ' ' '{print $6}' |cut -d'%' -f1 )

disk_threshold=1
while IFS= read line
do 
    if [ $line -gt 1 ]
    then
        echo "High Disk usage $line"
    fi
done <<<$disk_usage