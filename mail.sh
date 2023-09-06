#!/bin/bash


TO_ADDRESS=$1
SUBJECT=$2
BODY=$(sed -e 's/[]\/$*.^[]/\\&/g' <<<$3)
echo "$BODY"
TEAM_NAME=$4
ALERT_TYPE=$5

FINAL_BODY=$(sed -e 's/TEAM_NAME/DevOps Team/g' -e "s/ALERT_TYPE/$5/g" -e "s/MESSAGE/$BODY/g")

echo "all args: $@"
echo "$FINAL_BODY" | mail -s "$SUBJECT" saikiransudhireddy@gmail.com

