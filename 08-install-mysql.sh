#!bin/bash
id=$(id -u)
DATE=$(date +%F-%H-%M-%S)
script_name=$0
logfile=/tmp/$script_name-$DATE.log

validate(){

if [ $1 -ne 0 ]
then 
    echo "$2 is not successfull"
    exit 1
else 
    echo "$2 is successfull"
fi
}


if [ $id -ne 0 ]
then
    echo "you dont have the permissions to instll"
    exit 10
fi

yum install mysql -y>>logfile

validate $? "Installing SQL"

yum install postfix -y>>logfile

validate $? "Installing postfix"
