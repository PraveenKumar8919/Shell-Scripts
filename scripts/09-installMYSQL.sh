#!/bin/bash

DATE=$(date)
echo "Script executed on:: $DATE"

if [ $ID -ne 0]
then
    echo "Please run the script as a root user"
    exit 1
else
    echo "You are a root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation of mysql is failed"
    exit 1
else
    echo "Installation is successfull"
fi

echo "This is the end of the programm ::"
