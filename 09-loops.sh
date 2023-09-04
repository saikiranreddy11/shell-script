#!bin/bash

id=$(id -u)
R="\e[31m"
N="\e[0m"
Y="\e[33m"
date=$(date +%F-%H-%M-%S)
script_name=$0
logfiles=/home/centos/shell-script-logs/$script_name-$date.log
validation 
if [ $id -ne 0 ]
then
    echo -e "$R ERROR: $N you do not have the sudo access, please install with root access"
    exit 1
fi

validate(){
    if [ $? -ne 0]
    then
        echo "$R there is a problem installing the $1, please check$N"
        exit 1
    else 
        echo "$Y $1 is installed successfully"
}


for i in $@
do
    sudo yum list installed $i &>>$logfiles
    if [ $? -ne 0 ]
    then
        echo "$i is not installed ,so installing it"
        yum install $i -y &>>$logfiles
        validate $i
    else
        echo "$i is already installed"
    fi

done

