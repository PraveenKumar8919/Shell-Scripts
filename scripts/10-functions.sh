#!/bin/bash

DATE=$(date)
echo "Script executed on :: $DATE"

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "Installation of git is not successfull"
        exit 1
    else
        echo "Installation of git is successfull"
    fi
}

yum install mysql -y

yum install git -y

echo "This is end of the programm"