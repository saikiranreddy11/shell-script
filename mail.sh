#!/bin/bash


TO_ADDRESS=$1
SUBJECT=$2
BODY=$3
TEAM_NAME=$4
ALERT_TYPE=$5

echo "$BODY" | mail -s "High Disk Usage" saikiransudhireddy@gmail.com