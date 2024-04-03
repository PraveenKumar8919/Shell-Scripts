#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE()
{
    if [ $1 -ne 0 ]
    then
        echo -e "$2.. $R ERROR $N"
    else
        echo -e "$2 .. $G SUCCESS $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo -e " $R Please run the script as a root user:: $N"
    exit 1
else
    echo "You are a root user::"
fi

#echo "All arguments passed $@"

for package in $@
do
    yum list installed $package
    if [ $? -ne 0 ]
    then
        yum install $package -y
        VALIDATE $? "Installation of $package"
    else
        echo -e "$package is already installed.. $Y skipping package $N"
        
done