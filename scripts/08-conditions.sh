#!/bin/bash

DATE=$(date)
echo "Script execution date is : $DATE"

NUM1=$1
NUM2=$2

if [ $NUM1 -ge 100 ]
then
   echo "Given number is greater than 100"
else
   echo "Given number is lessthan 100"
fi