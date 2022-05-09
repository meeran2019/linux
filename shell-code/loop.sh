#!/bin/bash

echo "Parameter 1 is ${1}"
echo "Parameter 2 is ${2}"
echo "Parameter 3 is ${3}"

# x=0
# while [[ x -lt 5 ]]
# do 
#     echo "Value of x is ${x}"
#     x=6
# done 

while [[ ${#} -gt 0 ]]
do 
    echo "value of parameter 1 is ${1}"
    echo "value of parameter 2 is ${2}"
    echo "value of parameter 3 is ${3}"
    shift 
done 
