#!bin/bash

disk_usage=$( df -hT | grep -vE 'tmpfs|Filesystem' )

disk_threshold=1
message=
while IFS= read line
do 
    usage=$(echo $line | awk -F ' ' '{print $6}' | cut -d '%' -f1)
    if [ $usage -gt $disk_threshold ]
    then
        partition=$(echo $line |awk -F ' ' '{print $1}') 
        message+="High Disk usage on $partition: $usage "
     fi
done <<<$disk_usage

echo -e "$message"
echo "$message $(date)" | mail -s "High Disk Usage" saikiransudhireddy@gmail.com