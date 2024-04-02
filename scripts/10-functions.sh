#!/bin/bash

ID=$(id -u)
DATE=$(date)
echo "Script executed on :: $DATE"

echo "script name:: $0"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2....failure"
        exit 1
    else
        echo "$2.... sucess"
    fi
}

if [ ID -ne 0 ]
then 
    echo "Please run the script as root user::"
    exit 1
else
    echo "you are root user"
fi

yum install mysql -y
VALIDATE $? "Installation of mysql"

yum install git -y
VALIDATE $? "Installation of git"

echo "This is end of the programm"