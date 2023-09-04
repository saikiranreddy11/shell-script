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
    yum install $i -y
done




sudo yum list installed