#!bin/bash

disk_usage= $( df -hT | grep -vE 'tmpfs|Filesystem' |awk -F ' ' '{print $6}')

# while read line
# do 

# done <<<$line