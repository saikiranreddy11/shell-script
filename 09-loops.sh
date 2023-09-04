#!bin/bash

id=$(id -u)

if [ $id -ne 0 ]
then
    echo "you do not have the sudo access, please install with root access"
    exit 1
fi

for i in $@
do
    yum install $i -y
done

