#!bin/bash
id=$(id -u)

if [ $id -ne 0 ]
then
    echo "you dont have the permissions to instll"
    exit 10
fi

yum install mysqllll -y

if [ $? ne 0 ]
then 
    echo "installation is not successfull"
    exit 1
else 
    echo "installations is successfull"