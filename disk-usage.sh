#!bin/bash

disk_usage= $( df -hT | grep -vE 'tmpfs|Filesystem' |awk -F ' ' '{print $6}')

echo "$disk_usage"