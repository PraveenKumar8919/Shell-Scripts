#!/bin/bash

NUM1=$1
NUM2=$2

SUM=$((NUM1+NUM2))
echo "The total sum is : $SUM"

echo "How many args passed:: $#"
echo "Total args passed:: $@"
echo "Script name :: $0"
