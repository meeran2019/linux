#!/bin/bash 

if [[ ${#} -eq 0 ]]
then 
    echo 'Enter the argument' >&2
    exit 1 
else 
    echo 'proceed next..' >&2 
fi 

echo "No of failed, IP address, Location" > output.file 
sort $1 | uniq -c  >> output.file 



