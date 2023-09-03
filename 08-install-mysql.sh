#!bin/bash
id=$(id -u)

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

yum install mysqlll -y

validate $? "Installing SQL"

yum install postfix -y

validate $? "Installing postfix"
