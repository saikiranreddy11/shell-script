#!bin/bash

disk_usage=$( df -hT | grep -vE 'tmpfs|Filesystem' )

disk_threshold=1
while IFS= read line
do 
    usage=$($line | awk -F ' ' '{print $6}' | cut -d '%' -f1)
    if [ $usage -gt $disk_threshold ]
    then
        partition=$($line |awk -F ' ' '{print $1}') 
        echo "High Disk usage on $partition: $usage \n"
    fi
done <<<$disk_usage


