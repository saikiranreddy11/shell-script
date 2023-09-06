#!bin/bash

disk_usage=$( df -hT | grep -vE 'tmpfs|Filesystem' |awk -F ' ' '{print $6}' |cut -d'%' -f1 )

while IFS= read line
do 
    echo "$line"
done <<<$disk_usage