#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGGFILE=/tmp/$0-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[33m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "ERROR: $2....$R failure $N"
        exit 1
    else
        echo -e "$2.... $G sucess $N"
    fi
}

if [ $ID -ne 0 ]
then 
    echo -e " $R Please run the script as root user::"
    exit 1
else
    echo "you are root user"
fi

yum install mysql -y &>> $LOGGFILE
VALIDATE $? "Installation of mysql"

yum install git -y &>> $LOGGFILE
VALIDATE $? "Installation of git"

echo "This is end of the programm"