#!/bin/bash

SERVER_FILE='/path/to/file'

if [[ ! -e ${SERVER_FILE}]]
then 
    echo 'error open file'
    exit 1 
fi 

for SERVER in $(cat ${SERVER_FILE})
do 
    echo "Pinging ${SERVER}"
    ping -c 1 ${SERVER} &> /dev/null
    if [[ $? -ne 0 ]]
    then 
        echo "not pinging"
    fi 
done 
    
