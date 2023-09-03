#!bin/bash
id=$(id -u)

if [ $id -ne 0 ]
then
    echo "you dont have the permissions to instll"
    exit 10
fi

yum install mysql -y

if [ $? -ne 0 ]
then 
    echo "installation is not successfull"
    exit 1
else 
    echo "installations is successfull"
fi

yum install postfix -y

if [ $? -ne 0 ]
then 
    echo "postfix installation is not successfull"
    exit 1
else 
    echo " postfixinstallations is successfull"
fi
