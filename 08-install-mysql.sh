#!bin/bash
id=$(id -u)

if [ $id -ne 0 ]
then
    echo "you dont have the permissions to instll"
fi

yum install mysql -y