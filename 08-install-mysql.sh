#!bin/bash
id=$(id -u)

validate(){

if [ $1 -ne 0 ]
then 
    echo "installation is not successfull"
    exit 1
else 
    echo "installations is successfull"
fi
}


if [ $id -ne 0 ]
then
    echo "you dont have the permissions to instll"
    exit 10
fi

yum install mysql -y

validate $?

yum install pstfix -y

validate $?
