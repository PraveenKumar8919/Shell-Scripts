#!/bin/bash

echo "this script is executed on $(DATE)"

NAMES=("Praveen" "Kumar" "PNS")

echo "First name in the array is: ${NAMES[0]}"
echo "Second name in the array is: ${NAMES[1]}"
echo "Third name in the array is: ${NAMES[2]}"

echo "Getting all names in the array:: ${NAMES[@]}"

echo "this is the end of the code::"

