#!/bin/bash

if [[ $UID -ne 0 ]]
then 
    echo "User ID is not root" >> acc.err 
    exit 1 
elif [[ ${#} -eq 0 ]] 
then
    echo "Enter the argument as NAME COMMENTS " >> acc.err 
    exit 1
fi 

PASS_WORD=$(date +%s | sha256sum | head -c20)
USER_NAME=$1

shift 
USER_COMMENT=$@

useradd -c USER_COMMENT USER_NAME 2> acc.err 1> acc.out

if [[ ${?} -eq 0 ]]
then 
    echo "User creation completed successfully."
else 
    echo "User creation failed.." >> acc.err 
    exit 1 
fi 

echo "User name is ${USER_NAME}"
echo "USER Comment is ${USER_COMMENT}"
echo "User password is ${PASS_WORD}"

