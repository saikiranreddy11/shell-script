#!/bin/bash


TO_ADDRESS=$1
SUBJECT=$2
BODY=$(sed -e 's/[]\/$*.^[]/\\&/g' <<<$3)
echo "$BODY"
TEAM_NAME=$4
ALERT_TYPE=$5

FINAL_BODY=$(sed -e "s/TEAM_NAME/$4/g" -e "s/ALERT_TYPE/$5/g" -e "s/MESSAGE/$BODY/g" template.html)

echo "all args: $@"
echo "$FINAL_BODY" | mail -s $(echo -e "$SUBJECT\nContent-Type: text/html") $TO_ADDRESS

