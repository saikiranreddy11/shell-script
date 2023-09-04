#!bin/bash

id=$(id -u)
R="\e[31m"
N="\e[0m"

if [ $id -ne 0 ]
then
    echo -e "$R ERROR: $N you do not have the sudo access, please install with root access"
    exit 1
fi




for i in $@
do
    sudo yum list installed $i
    if [ $? -ne 0 ]
    then
        echo "$i is not installed ,so installing it"
        yum install $i -y
    else
        echo "$i is already installed"
    fi

done

