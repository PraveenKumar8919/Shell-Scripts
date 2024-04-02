#!/bin/bash

DATE=$(date +%F-%H-%M-%S)
LOGGFILE=/tmp/$0-$DATE.log


VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2....failure"
        exit 1
    else
        echo "$2.... sucess"
    fi
}

yum install mysql -y $LOGGFILE
VALIDATE $? "Installation of mysql"

yum install git -y $LOGGFILE
VALIDATE $? "Installation of git"

echo "This is end of the programm"