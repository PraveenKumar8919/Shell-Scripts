#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

if [id -ne 0 ]
then
    echo -e " $R Please run the script as a root user:: $N"
    exit 1
else
    echo "You are a root user::"
fi

echo "All arguments passed $@"