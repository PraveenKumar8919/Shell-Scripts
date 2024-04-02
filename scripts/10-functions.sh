#!/bin/bash

DATE=$(date)
echo "Script executed on :: $DATE"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2....failure"
        exit 1
    else
        echo "$2.... sucess"
    fi
}

yum install mysql -y
VALIDATE $? "Installation of mysql"

yum install git -y
VALIDATE $? "Installation of git"

echo "This is end of the programm"